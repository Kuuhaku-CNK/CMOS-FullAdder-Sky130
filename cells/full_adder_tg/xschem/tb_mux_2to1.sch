v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -270 -350 -270 -330 {lab=VDD}
N -270 -120 -270 -80 {lab=0}
N -80 -140 -80 -120 {lab=0}
N -180 -120 -80 -120 {lab=0}
N -270 -270 -270 -120 {lab=0}
N -180 -210 -180 -120 {lab=0}
N -270 -120 -180 -120 {lab=0}
N -180 -290 -180 -270 {lab=Int_1}
N -180 -290 60 -290 {lab=Int_1}
N -80 -250 60 -250 {lab=Int_0}
N -80 -250 -80 -200 {lab=Int_0}
N -370 -190 -370 -120 {lab=0}
N -370 -120 -270 -120 {lab=0}
N -370 -430 -370 -250 {lab=S}
N 140 -270 200 -270 {lab=Y}
N -370 -430 100 -430 {lab=S}
N 100 -430 100 -330 {lab=S}
C {lab_pin.sym} -370 -430 0 0 {name=p1 sig_type=std_logic lab=S}
C {gnd.sym} -270 -80 0 0 {name=l1 lab=0}
C {vdd.sym} -270 -350 0 0 {name=l2 lab=VDD}
C {vsource.sym} -270 -300 0 0 {name=V value=1.8 savecurrent=false}
C {vsource.sym} -180 -240 0 0 {name=V1 value="PULSE(0 1.8 0 0.1n 0.1n 9.9n 20n)" savecurrent=false}
C {vsource.sym} -80 -170 0 0 {name=V0 value="PULSE(0 1.8 0 0.1n 0.1n 4.9n 10n)" savecurrent=false}
C {vsource.sym} -370 -220 0 0 {name=Vs value="PULSE(0 1.8 0 0.1n 0.1n 19.9n 40n)" savecurrent=false}
C {code_shown.sym} 350 -460 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 0.05n 40n

.control
run
plot v(S)+6 v(Int_1)+4 v(Int_0)+2 v(Y)
.endc"}
C {opin.sym} 200 -270 0 0 {name=p2 lab=Y
}
C {lab_pin.sym} -80 -290 1 0 {name=p3 sig_type=std_logic lab=Int_1
lab=net1}
C {lab_pin.sym} -30 -250 1 0 {name=p4 sig_type=std_logic lab= Int_0
}
C {./mux_2to1_design.sym} 60 -140 0 0 {name=x1}
