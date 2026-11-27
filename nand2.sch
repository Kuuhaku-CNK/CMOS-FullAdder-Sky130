v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 -30 120 -30 {lab=output}
N 80 -30 80 -10 {lab=output}
N 50 -10 80 -10 {lab=output}
N 50 50 50 70 {lab=#net1}
N 50 -90 120 -90 {lab=VDD}
N 50 -60 70 -60 {lab=VDD}
N 70 -90 70 -60 {lab=VDD}
N 100 -60 120 -60 {lab=VDD}
N 100 -90 100 -60 {lab=VDD}
N 80 -120 80 -90 {lab=VDD}
N 50 20 90 20 {lab=0}
N 90 20 90 120 {lab=0}
N 50 100 90 100 {lab=0}
N 80 -10 170 -10 {lab=output}
N 90 120 90 130 {lab=0}
N 50 130 90 130 {lab=0}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 30 20 0 0 {name=M1
W=3
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 30 -60 0 0 {name=M2
W=6
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 140 -60 0 1 {name=M3
W=6
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 30 100 0 0 {name=M4
W=3
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vdd.sym} 80 -120 0 0 {name=l1 lab=VDD}
C {gnd.sym} 50 130 0 0 {name=l2 lab=0}
C {opin.sym} 170 -10 0 0 {name=p5 lab=output}
C {ipin.sym} 10 -60 0 0 {name=p1 lab=A}
C {ipin.sym} 160 -60 0 1 {name=p3 lab=B}
C {lab_pin.sym} 10 20 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} 10 100 0 0 {name=p4 sig_type=std_logic lab=B}
