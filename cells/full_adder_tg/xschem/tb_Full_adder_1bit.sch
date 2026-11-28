v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -460 -270 -460 -230 {lab=VDD}
N -400 -170 -400 -10 {lab=0}
N -460 -170 -460 -10 {lab=0}
N -400 -240 -190 -240 {lab=B}
N -400 -240 -400 -230 {lab=B}
N -340 -220 -190 -220 {lab=A}
N -460 -10 -460 0 {lab=0}
N -290 -200 -190 -200 {lab=Cin}
N -340 -10 -290 -10 {lab=0}
N -460 -10 -400 -10 {lab=0}
N -340 -120 -340 -10 {lab=0}
N -400 -10 -340 -10 {lab=0}
N -340 -220 -340 -180 {lab=A}
N -290 -200 -290 -120 {lab=Cin}
N -290 -60 -290 -10 {lab=0}
N 290 -240 340 -240 {lab=Sum}
N 110 -220 210 -220 {lab=Cout}
N 290 -240 290 -190 {lab=Sum}
N 110 -240 290 -240 {lab=Sum}
N 210 -220 210 -190 {lab=Cout}
N 210 -220 340 -220 {lab=Cout}
N 210 -10 290 -10 {lab=0}
N 290 -130 290 -10 {lab=0}
N 210 -130 210 -10 {lab=0}
N -290 -10 210 -10 {lab=0}
C {./Full_adder_1bit.sym} -40 -220 0 0 {name=x1}
C {gnd.sym} -460 0 0 0 {name=l1 lab=0}
C {vsource.sym} -460 -200 0 0 {name=V value=1.8 savecurrent=false}
C {vsource.sym} -400 -200 0 0 {name=V_B value="PULSE(0 1.8 10n 100p 100p 9.9n 20n)" savecurrent=false}
C {vdd.sym} -460 -270 0 0 {name=l2 lab=VDD}
C {vsource.sym} -340 -150 0 0 {name=V_A value="PULSE(0 1.8 20n 100p 100p 19.9n 40n)" savecurrent=false}
C {vsource.sym} -290 -90 0 0 {name=V_Cin value="PULSE(0 1.8 40n 100p 100p 39.9n 80n)" savecurrent=false}
C {capa.sym} 210 -160 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 290 -160 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 340 -240 0 0 {name=p1 lab=Sum
}
C {opin.sym} 340 -220 0 0 {name=p2 lab=Cout}
C {lab_pin.sym} -400 -240 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} -340 -220 0 0 {name=p4 sig_type=std_logic lab=A}
C {lab_pin.sym} -290 -200 0 0 {name=p5 sig_type=std_logic lab=Cin}
C {code_shown.sym} 480 -190 0 0 {name=s1
place=end
value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27

.control
tran 0.005n 80n

meas tran iavg AVG i(V) FROM=0n TO=80n

let i_abs = abs(iavg)
let pavg_uw = 1.8 * i_abs * 1e6

echo --- KET QUA FULL ADDER 1-BIT ---
print pavg_uw

write Full_adder_1bit.raw

plot v(Cin)+8 v(A)+6 v(B)+4 v(Sum)+2 v(Cout)

.endc"}
