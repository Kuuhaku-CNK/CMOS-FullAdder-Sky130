v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.temp 27

.save all

.control

tran 10p 40n

plot v(a) v(b) v(y)

write /foss/designs/nand2_tran.raw all

.endc}
F {}
E {}
P 4 1 -130 40 {}
N -150 -20 -120 -20 {lab=A}
N -150 -0 -120 -0 {lab=B}
N -20 -10 20 -10 {lab=Y}
C {nand2.sym} -10 -20 0 0 {name=x1}
C {vsource.sym} -310 -60 0 0 {name=V1 value="PULSE(0 1.8 20n 100p 100p 20n 40n)" savecurrent=false}
C {vsource.sym} -310 50 0 0 {name=V2 value="PULSE(0 1.8 10n 100p 100p 10n 20n)" savecurrent=false}
C {vsource.sym} -60 -100 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -310 80 0 0 {name=l1 lab=0}
C {gnd.sym} -60 -70 0 0 {name=l2 lab=0}
C {gnd.sym} -310 -30 0 0 {name=l3 lab=0}
C {vdd.sym} -60 -130 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} -310 -90 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -310 20 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} -150 -20 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} -150 0 0 0 {name=p4 sig_type=std_logic lab=B}
C {opin.sym} 20 -10 0 0 {name=p5 lab=Y}
C {capa.sym} -20 20 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -20 50 0 0 {name=l5 lab=0}
