v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 720 -860 720 -830 {lab=VDD}
N 790 -860 900 -860 {lab=VDD}
N 820 -800 860 -800 {lab=B}
N 820 -800 820 -720 {lab=B}
N 560 -720 820 -720 {lab=B}
N 820 -600 860 -600 {lab=B}
N 820 -720 820 -600 {lab=B}
N 900 -860 900 -830 {lab=VDD}
N 720 -770 720 -740 {lab=Y}
N 900 -740 1040 -740 {lab=Y}
N 900 -770 900 -740 {lab=Y}
N 720 -740 900 -740 {lab=Y}
N 900 -740 900 -710 {lab=Y}
N 900 -880 900 -860 {lab=VDD}
N 900 -650 900 -630 {lab=#net1}
N 900 -560 900 -540 {lab=0}
N 640 -800 680 -800 {lab=A}
N 560 -760 640 -760 {lab=A}
N 640 -760 640 -680 {lab=A}
N 640 -680 860 -680 {lab=A}
N 640 -800 640 -760 {lab=A}
N 900 -800 1000 -800 {lab=VDD}
N 1000 -860 1000 -800 {lab=VDD}
N 900 -860 1000 -860 {lab=VDD}
N 720 -800 790 -800 {lab=VDD}
N 790 -860 790 -800 {lab=VDD}
N 720 -860 790 -860 {lab=VDD}
N 900 -600 1000 -600 {lab=0}
N 1000 -600 1000 -560 {lab=0}
N 900 -560 1000 -560 {lab=0}
N 900 -570 900 -560 {lab=0}
N 900 -680 1000 -680 {lab=0}
N 1000 -680 1000 -600 {lab=0}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 700 -800 0 0 {name=PMOS_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 880 -800 0 0 {name=PMOS_2
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 880 -680 0 0 {name=NMOS_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 880 -600 0 0 {name=NMOS_2
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
C {vdd.sym} 900 -880 0 0 {name=l1 lab=VDD}
C {gnd.sym} 900 -540 0 0 {name=l2 lab=0}
C {ipin.sym} 560 -760 0 0 {name=In1 lab=A}
C {ipin.sym} 560 -720 0 0 {name=In2 lab=B}
C {opin.sym} 1040 -740 0 0 {name=Out1 lab=Y}
