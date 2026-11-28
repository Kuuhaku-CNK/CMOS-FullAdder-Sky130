v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 80 -100 130 {lab=0}
N 40 -20 40 80 {lab=0}
N -100 80 40 80 {lab=0}
N -100 -20 -100 80 {lab=0}
N -100 -170 -100 -80 {lab=VDD}
N 40 -130 90 -130 {lab=vin}
N 40 -130 40 -80 {lab=vin}
N 210 -130 260 -130 {lab=Y}
C {vsource.sym} -100 -50 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 40 -50 0 0 {name=V2 value="pulse(0 1.8 0 0.1n 0.1n 5n 10n)" savecurrent=false}
C {gnd.sym} -100 130 0 0 {name=l1 lab=0}
C {vdd.sym} -100 -170 0 0 {name=l2 lab=VDD}
C {./inveter_design.sym} 210 -40 0 0 {name=x1}
C {opin.sym} 260 -130 0 0 {name=p1 lab=Y}
C {code_shown.sym} 120 50 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
tran 0.05n 20n
write tb_inveter_part.raw v(vin) v(Y)
.endc"}
C {lab_pin.sym} 40 -130 0 0 {name=p2 sig_type=std_logic lab=vin}
