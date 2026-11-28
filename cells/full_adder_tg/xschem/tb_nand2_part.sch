v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -230 70 -200 {lab=VDD}
N 200 -80 300 -80 {lab=0}
N 70 -80 70 -60 {lab=0}
N 70 -140 70 -80 {lab=0}
N 200 -140 200 -80 {lab=0}
N 200 -240 200 -200 {lab=A}
N 200 -240 390 -240 {lab=A}
N 300 -220 390 -220 {lab=B}
N 300 -220 300 -140 {lab=B}
N 550 -230 600 -230 {lab=Y}
N 70 -80 200 -80 {lab=0}
N 290 -220 300 -220 {lab=B}
C {vsource.sym} 70 -170 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 200 -170 0 0 {name=V2 value="pulse(0 1.8 0 0.1n 0.1n 5n 10n)" savecurrent=false}
C {vdd.sym} 70 -230 0 0 {name=l1 lab=VDD}
C {gnd.sym} 70 -60 0 0 {name=l2 lab=0}
C {vsource.sym} 300 -110 0 0 {name=V3 value="pulse(0 1.8 0 0.1n 0.1n 10n 20n)" savecurrent=false}
C {opin.sym} 600 -230 0 0 {name=p1 lab=Y}
C {./nand2_design.sym} 370 -60 0 0 {name=x1}
C {code_shown.sym} 520 -130 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
tran 0.05n 20n
write tb_nand2.raw v(A) v(B) v(Y)
.endc"}
C {lab_pin.sym} 200 -240 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} 300 -220 0 0 {name=p3 sig_type=std_logic lab=B}
