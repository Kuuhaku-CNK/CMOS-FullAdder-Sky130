v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 -180 -180 -150 {lab=VDD}
N -180 0 -180 20 {lab=0}
N -80 -180 -80 -120 {lab=A}
N -80 -180 80 -180 {lab=A}
N -10 -160 -10 -70 {lab=B}
N -10 -160 80 -160 {lab=B}
N -80 -60 -80 0 {lab=0}
N -10 -0 220 0 {lab=0}
N -180 -90 -180 0 {lab=0}
N 220 -170 230 -170 {lab=Y}
N 220 -170 220 -150 {lab=Y}
N 190 -170 220 -170 {lab=Y}
N 220 -90 220 0 {lab=0}
N -180 0 -80 0 {lab=0}
N -10 -10 -10 -0 {lab=0}
N -80 0 -10 -0 {lab=0}
C {vsource.sym} -180 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -80 -90 0 0 {name=V2 value="PULSE(0 1.8 2n 100p 100p 9.9n 20n)" savecurrent=false}
C {vsource.sym} -10 -40 0 0 {name=V3 value="PULSE(0 1.8 20n 100p 100p 19.9n 40n)" savecurrent=false}
C {vdd.sym} -180 -180 0 0 {name=l1 lab=VDD}
C {gnd.sym} -180 20 0 0 {name=l2 lab=0}
C {./xor2_design_khaosat.sym} 80 -70 0 0 {name=x1}
C {opin.sym} 230 -170 0 0 {name=p1 lab=Y}
C {lab_pin.sym} -80 -180 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -10 -160 0 0 {name=p3 sig_type=std_logic lab=B}
C {capa.sym} 220 -120 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {code_shown.sym} 350 -100 0 0 {name=s1
place=end
value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27

.control
tran 5p 40n
write tb_xor2_design_khaosat.raw v(A) v(B) v(Y)

meas tran tplh TRIG v(A) VAL=0.9 RISE=1 TARG v(Y) VAL=0.9 RISE=1
meas tran tphl TRIG v(A) VAL=0.9 FALL=1 TARG v(Y) VAL=0.9 FALL=1
meas tran iavg AVG i(V1) FROM=0 TO=40n

let tplh_ps = tplh * 1e12
let tphl_ps = tphl * 1e12
let tpd_ps  = (tplh + tphl) / 2 * 1e12
let pavg_uw = abs(1.8 * iavg) * 1e6
let pdp_fj  = tpd_ps * pavg_uw * 1e-3

echo \\"=== KET QUA CHOT TG-XOR2 (Wp=4, Wn=2, L=0.15) ===\\"
print tplh_ps tphl_ps tpd_ps pavg_uw pdp_fj
.endc"}
