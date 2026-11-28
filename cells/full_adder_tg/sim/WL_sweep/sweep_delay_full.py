import subprocess
import csv
import itertools
from pathlib import Path
from statistics import mean

ratios = [1, 1.25, 1.5, 1.75, 2, 2.25,
          2.5, 2.75, 3, 3.5, 4]

wn = 2.0
pins = ["A", "B", "Cin"]
outputs = ["Sum", "Cout"]

vdd = 1.8
threshold = 0.9

def logic(state):
    n = sum(state.values())
    return {"Sum": n % 2, "Cout": int(n >= 2)}

def crossing(data, col, edge, start, stop):
    hits = []

    for a, b in zip(data, data[1:]):
        t1, t2 = a[0], b[0]
        v1, v2 = a[col], b[col]

        if edge == "RISE":
            hit = v1 < threshold <= v2
        else:
            hit = v1 > threshold >= v2

        if hit and v2 != v1:
            t = t1 + (threshold-v1)*(t2-t1)/(v2-v1)
            if start <= t <= stop:
                hits.append(t)

    return hits

def simulate(wp, pin, fixed):

    circuit = f"""* Full Adder detailed delay sweep
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

    for p in pins:
        if p == pin:
            value = "PULSE(0 1.8 5n 100p 100p 20n 40n)"
        else:
            value = str(fixed[p]*vdd)

        circuit += f"V_{p} {p} 0 {value}\n"

    circuit += """
.control
tran 5p 40n 0 5p
set wr_singlescale
set wr_vecnames
wrdata sweep_wave.dat v(A) v(B) v(Cin) v(Sum) v(Cout)
quit
.endc
.end
"""

    Path("tb_sweep_full.spice").write_text(circuit)

    wave = Path("sweep_wave.dat")

    if wave.exists():
        wave.unlink()

    result = subprocess.run(
        ["ngspice", "-b", "tb_sweep_full.spice"],
        capture_output=True,
        text=True
    )

    Path("sweep_full.log").write_text(
        result.stdout + result.stderr
    )

    if result.returncode != 0 or not wave.exists():
        raise RuntimeError("Ngspice simulation failed")

    data = []

    for line in wave.read_text().splitlines():
        try:
            row = [float(x) for x in line.split()]
        except ValueError:
            continue

        if len(row) == 6:
            data.append(row)

    if len(data) < 2 or data[-1][0] < 39.9e-9:
        raise RuntimeError("Incomplete waveform")

    return data

def check_level(data, col, target, expected):
    row = min(data, key=lambda r: abs(r[0]-target))
    voltage = row[col]

    if expected == 0:
        return voltage <= 0.36

    return voltage >= 1.44

def state_text(state):
    return "".join(str(state[p]) for p in pins)

with open("tpd_detail.csv", "w", newline="") as fd, \
     open("tpd_fulladder.txt", "w") as fs:

    writer = csv.writer(fd)

    writer.writerow([
        "Ratio", "Wp_um", "Wn_um", "Input",
        "State_before_ABCin", "State_after_ABCin",
        "Input_edge", "Output", "Output_edge",
        "TRIG_ns", "TARG_ns", "Delay_ps",
        "Crossings", "Status"
    ])

    header = (
        "Ratio SUM_AVG_ps SUM_WORST_ps "
        "COUT_AVG_ps COUT_WORST_ps "
        "ALL_AVG_ps ALL_WORST_ps Status"
    )

    print(header)
    fs.write(header + "\n")

    for ratio in ratios:

        wp = wn * ratio

        sum_delays = []
        cout_delays = []
        errors = 0

        for pin in pins:

            others = [p for p in pins if p != pin]

            for bits in itertools.product([0, 1], repeat=2):

                fixed = dict(zip(others, bits))

                data = simulate(wp, pin, fixed)

                for old, new, start, stop in [
                    (0, 1, 5e-9, 15e-9),
                    (1, 0, 25e-9, 35e-9)
                ]:

                    before = dict(fixed)
                    after = dict(fixed)

                    before[pin] = old
                    after[pin] = new

                    old_logic = logic(before)
                    new_logic = logic(after)

                    input_edge = "RISE" if new else "FALL"

                    input_col = pins.index(pin) + 1

                    trig_hits = crossing(
                        data, input_col,
                        input_edge, start, stop
                    )

                    for output in outputs:

                        output_col = outputs.index(output) + 4

                        valid_logic = (
                            check_level(
                                data, output_col,
                                start-1e-9, old_logic[output]
                            )
                            and
                            check_level(
                                data, output_col,
                                stop, new_logic[output]
                            )
                        )

                        if old_logic[output] == new_logic[output]:
                            if not valid_logic:
                                errors += 1
                            continue

                        edge = (
                            "RISE" if new_logic[output]
                            else "FALL"
                        )

                        edge_name = (
                            "tPLH" if edge == "RISE"
                            else "tPHL"
                        )

                        targ_hits = crossing(
                            data, output_col,
                            edge, start, stop
                        )

                        status = "PASS"
                        delay = ""
                        trig_ns = ""
                        targ_ns = ""

                        if not valid_logic:
                            status = "FAIL_LOGIC"

                        elif not trig_hits or not targ_hits:
                            status = "FAIL_CROSSING"

                        else:
                            trig = trig_hits[0]
                            targ = targ_hits[-1]

                            trig_ns = trig*1e9
                            targ_ns = targ*1e9
                            delay = (targ-trig)*1e12

                            if delay <= 0:
                                status = "CHECK_DELAY"

                        if status == "PASS":
                            if output == "Sum":
                                sum_delays.append(delay)
                            else:
                                cout_delays.append(delay)
                        else:
                            errors += 1

                        writer.writerow([
                            ratio, wp, wn, pin,
                            state_text(before),
                            state_text(after),
                            input_edge, output, edge_name,
                            trig_ns, targ_ns, delay,
                            len(targ_hits), status
                        ])

        all_delays = sum_delays + cout_delays

        if (
            errors == 0
            and len(sum_delays) == 24
            and len(cout_delays) == 12
        ):
            line = (
                f"{ratio:.2f} "
                f"{mean(sum_delays):.3f} "
                f"{max(sum_delays):.3f} "
                f"{mean(cout_delays):.3f} "
                f"{max(cout_delays):.3f} "
                f"{mean(all_delays):.3f} "
                f"{max(all_delays):.3f} PASS"
            )
        else:
            line = (
                f"{ratio:.2f} NA NA NA NA NA NA "
                f"CHECK_{errors}_ERRORS"
            )

        print(line, flush=True)

        fs.write(line + "\n")

        fs.flush()
        fd.flush()

print("Completed: tpd_fulladder.txt")
print("Completed: tpd_detail.csv")
