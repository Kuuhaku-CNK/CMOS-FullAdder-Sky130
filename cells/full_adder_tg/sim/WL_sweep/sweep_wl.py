import subprocess
import re
import csv
from pathlib import Path

ratios = [1, 1.25, 1.5, 1.75, 2, 2.25,
          2.5, 2.75, 3, 3.5, 4]

wn = 2.0
length = 0.15

pulse = "PULSE(0 1.8 5n 100p 100p 20n 40n)"

base = """
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param WP={wp}
.param WN={wn}

.include fa_sweep.spice

.temp 27

VPOWER VDD 0 1.8
XFA B A Sum Cin Cout Full_adder_1bit

CLSUM Sum 0 10f
CLCOUT Cout 0 10f
"""

def simulate(wp, stimulus, commands, tag):
    circuit = "* Full Adder WL Sweep\n"
    circuit += base.format(wp=wp, wn=wn)
    circuit += stimulus + "\n"
    circuit += ".control\n"
    circuit += commands + "\n"
    circuit += "quit\n.endc\n.end\n"

    Path("tb_sweep.spice").write_text(circuit)

    result = subprocess.run(
        ["ngspice", "-b", "tb_sweep.spice"],
        capture_output=True,
        text=True
    )

    log = result.stdout + result.stderr
    Path("sweep_" + tag + ".log").write_text(log)

    if result.returncode != 0:
        raise RuntimeError("Simulation failed: " + tag)

    values = {}

    pattern = r"^\s*(\w+)\s*=\s*([-+0-9.eE]+)"

    for key, val in re.findall(pattern, log, re.M):
        try:
            values[key.lower()] = float(val)
        except ValueError:
            pass

    return values


with open("WL_results.csv", "w", newline="") as f:

    writer = csv.writer(f)

    writer.writerow([
        "Wp_um", "Wn_um", "L_um", "Wp_Wn",
        "Wp_L", "Wn_L", "Functional_PASS",
        "A_Sum_ps", "A_Cout_ps",
        "B_Sum_ps", "B_Cout_ps",
        "Cin_Sum_ps", "Cin_Cout_ps",
        "Sum_max_ps", "Cout_max_ps",
        "Delay_max_ps", "Power_uW", "PDP_fJ"
    ])

    for ratio in ratios:

        wp = ratio * wn
        tag = str(ratio).replace(".", "_")

        stimulus = """
VA A 0 PULSE(0 1.8 20n 100p 100p 19.9n 40n)
VB B 0 PULSE(0 1.8 10n 100p 100p 9.9n 20n)
VC Cin 0 PULSE(0 1.8 40n 100p 100p 39.9n 80n)
"""

        commands = """
tran 5p 80n 0 5p
let pwr = -v(vdd)*i(VPOWER)
meas tran pavg AVG pwr FROM=0n TO=80n
"""

        for j in range(8):
            t = 5 + 10*j

            commands += (
                f"meas tran s{j} FIND v(Sum) AT={t}n\n"
                f"meas tran c{j} FIND v(Cout) AT={t}n\n"
            )

        data = simulate(
            wp, stimulus, commands, tag+"_function"
        )

        power = data["pavg"] * 1e6
        functional_pass = True

        for j in range(8):
            ones = bin(j).count("1")

            expected_sum = ones % 2
            expected_cout = int(ones >= 2)

            for key, expected in [
                (f"s{j}", expected_sum),
                (f"c{j}", expected_cout)
            ]:
                voltage = data[key]

                if expected == 1 and voltage < 1.44:
                    functional_pass = False

                if expected == 0 and voltage > 0.36:
                    functional_pass = False

        delays = []

        for pin in ["A", "B", "Cin"]:

            if pin == "A":
                stimulus = f"""
VA A 0 {pulse}
VB B 0 0
VC Cin 0 1.8
"""

            elif pin == "B":
                stimulus = f"""
VA A 0 0
VB B 0 {pulse}
VC Cin 0 1.8
"""

            else:
                stimulus = f"""
VA A 0 0
VB B 0 1.8
VC Cin 0 {pulse}
"""

            commands = f"""
tran 5p 40n 0 5p

meas tran sphl TRIG v({pin}) VAL=0.9 RISE=1 TARG v(Sum) VAL=0.9 TD=5n FALL=LAST

meas tran splh TRIG v({pin}) VAL=0.9 FALL=1 TARG v(Sum) VAL=0.9 TD=25n RISE=LAST

meas tran cplh TRIG v({pin}) VAL=0.9 RISE=1 TARG v(Cout) VAL=0.9 TD=5n RISE=LAST

meas tran cphl TRIG v({pin}) VAL=0.9 FALL=1 TARG v(Cout) VAL=0.9 TD=25n FALL=LAST
"""

            d = simulate(
                wp, stimulus, commands, tag+"_"+pin
            )

            edges = [
                d[k] for k in
                ["splh", "sphl", "cplh", "cphl"]
            ]

            if min(edges) <= 0:
                raise RuntimeError(
                    f"Invalid delay: ratio={ratio}, pin={pin}"
                )

            t_sum = (d["splh"] + d["sphl"])/2 * 1e12
            t_cout = (d["cplh"] + d["cphl"])/2 * 1e12

            delays.extend([t_sum, t_cout])

        sum_max = max(delays[0::2])
        cout_max = max(delays[1::2])

        delay_max = max(sum_max, cout_max)
        pdp = power * delay_max * 1e-3

        writer.writerow([
            wp, wn, length, ratio,
            round(wp/length, 6),
            round(wn/length, 6),
            "PASS" if functional_pass else "FAIL",
            *[round(x, 6) for x in delays],
            round(sum_max, 6),
            round(cout_max, 6),
            round(delay_max, 6),
            round(power, 6),
            round(pdp, 6)
        ])

        f.flush()

        print(
            f"Ratio={ratio:4.2f} | "
            f"Function={'PASS' if functional_pass else 'FAIL'} | "
            f"Delay={delay_max:.3f} ps | "
            f"Power={power:.3f} uW | "
            f"PDP={pdp:.3f} fJ",
            flush=True
        )

print("Completed: WL_results.csv")
