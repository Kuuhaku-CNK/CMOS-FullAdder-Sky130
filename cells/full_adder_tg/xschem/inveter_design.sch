v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -310 30 {}
N -60 20 -60 50 {lab=Out}
N -140 -40 -100 -40 {lab=In}
N -140 80 -100 80 {lab=In}
N -140 20 -140 80 {lab=In}
N -200 20 -140 20 {lab=In}
N -60 20 40 20 {lab=Out}
N -60 -100 -60 -70 {lab=VDD}
N -60 130 -60 150 {lab=0}
N -140 -40 -140 20 {lab=In}
N -60 -10 -60 20 {lab=Out}
N -60 -40 30 -40 {lab=VDD}
N 30 -100 30 -40 {lab=VDD}
N -60 -100 30 -100 {lab=VDD}
N -60 -120 -60 -100 {lab=VDD}
N -60 80 40 80 {lab=0}
N 40 80 40 130 {lab=0}
N -60 130 40 130 {lab=0}
N -60 110 -60 130 {lab=0}
C {ipin.sym} -200 20 0 0 {name=INPUT lab=In}
C {opin.sym} 40 20 0 0 {name=OUTPUT lab=Out
}
C {gnd.sym} -60 150 0 0 {name=l1 lab=0}
C {vdd.sym} -60 -120 0 0 {name=l2 lab=VDD}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -80 80 0 0 {name=MNMOS
W=2
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -80 -40 0 0 {name=MPMOS
W=5
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
