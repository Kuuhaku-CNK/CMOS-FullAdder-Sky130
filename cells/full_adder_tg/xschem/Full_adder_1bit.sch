v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 750 -850 780 -850 {lab=P}
N 730 -830 780 -830 {lab=Cin}
N 730 -830 730 -790 {lab=Cin}
N 340 -790 730 -790 {lab=Cin}
N 890 -840 1090 -840 {lab=Sum}
N 330 -860 550 -860 {lab=A}
N 450 -840 550 -840 {lab=B}
N 330 -840 450 -840 {lab=B}
N 730 -790 730 -700 {lab=Cin}
N 450 -660 910 -660 {lab=B}
N 990 -680 1030 -680 {lab=Cout}
N 750 -740 950 -740 {lab=P}
N 750 -850 750 -740 {lab=P}
N 660 -850 750 -850 {lab=P}
N 450 -840 450 -660 {lab=B}
N 730 -700 910 -700 {lab=Cin}
C {ipin.sym} 330 -840 0 0 {name=p1 lab=B}
C {ipin.sym} 330 -860 0 0 {name=p2 lab=A}
C {ipin.sym} 340 -790 0 0 {name=Carry_in lab=Cin
}
C {./xor2_design_khaosat.sym} 550 -950 2 1 {name=x1}
C {./xor2_design_khaosat.sym} 780 -940 2 1 {name=x2}
C {opin.sym} 1090 -840 0 0 {name=p3 lab=Sum}
C {lab_pin.sym} 710 -850 1 0 {name=p4 sig_type=std_logic lab=P}
C {opin.sym} 1030 -680 0 0 {name=p5 lab=Cout}
C {./mux_2to1_design.sym} 910 -550 0 0 {name=x3}
