v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 590 -830 640 -830 {lab=Int_1}
N 590 -750 590 -660 {lab=Int_1}
N 590 -660 640 -660 {lab=Int_1}
N 700 -830 750 -830 {lab=Y}
N 750 -750 750 -660 {lab=Y}
N 700 -660 750 -660 {lab=Y}
N 590 -480 640 -480 {lab=Int_0}
N 590 -400 590 -310 {lab=Int_0}
N 590 -310 640 -310 {lab=Int_0}
N 700 -480 750 -480 {lab=Y}
N 750 -390 750 -310 {lab=Y}
N 700 -310 750 -310 {lab=Y}
N 920 -570 1000 -570 {lab=Y}
N 920 -750 920 -570 {lab=Y}
N 750 -750 920 -750 {lab=Y}
N 750 -830 750 -750 {lab=Y}
N 920 -570 920 -390 {lab=Y}
N 750 -390 920 -390 {lab=Y}
N 750 -480 750 -390 {lab=Y}
N 540 -750 590 -750 {lab=Int_1}
N 590 -830 590 -750 {lab=Int_1}
N 540 -400 590 -400 {lab=Int_0}
N 590 -480 590 -400 {lab=Int_0}
N 670 -560 670 -520 {lab=#net1}
N 630 -560 670 -560 {lab=#net1}
N 670 -620 670 -560 {lab=#net1}
N 460 -870 670 -870 {lab=S}
N 460 -870 460 -560 {lab=S}
N 460 -560 510 -560 {lab=S}
N 430 -560 460 -560 {lab=S}
N 460 -270 670 -270 {lab=S}
N 460 -560 460 -270 {lab=S}
N 670 -360 670 -310 {lab=VDD}
N 670 -710 670 -660 {lab=VDD}
N 670 -830 670 -790 {lab=0}
N 670 -480 670 -440 {lab=0}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 670 -850 1 0 {name=MNmos_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 670 -640 3 0 {name=MPmos_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 670 -500 1 0 {name= MNmos_2
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 670 -290 3 0 {name=MPmos_2
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
C {ipin.sym} 540 -750 0 0 {name=p1 lab=Int_1}
C {ipin.sym} 540 -400 0 0 {name=p2 lab=Int_0}
C {opin.sym} 1000 -570 0 0 {name=p3 lab=Y}
C {ipin.sym} 430 -560 0 0 {name=p4 lab=S}
C {./inveter_design.sym} 630 -470 0 0 {name=x1}
C {vdd.sym} 670 -360 0 0 {name=l1 lab=VDD}
C {vdd.sym} 670 -710 0 0 {name=l2 lab=VDD}
C {gnd.sym} 670 -790 0 0 {name=l3 lab=0}
C {gnd.sym} 670 -440 0 0 {name=l4 lab=0}
