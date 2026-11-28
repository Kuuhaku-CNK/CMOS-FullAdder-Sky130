v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -230 160 -230 {lab=A}
N 160 -340 160 -230 {lab=A}
N 160 -340 230 -340 {lab=A}
N 160 -230 160 -70 {lab=A}
N 160 -70 230 -70 {lab=A}
N 510 -450 620 -450 {lab=B}
N 620 -500 620 -450 {lab=B}
N 620 -500 700 -500 {lab=B}
N 620 -450 620 -390 {lab=B}
N 620 -390 700 -390 {lab=B}
N 740 -560 740 -530 {lab=VDD}
N 740 -440 740 -420 {lab=#net1}
N 740 -330 740 -320 {lab=0}
N 510 -370 510 -350 {lab=B}
N 270 -370 510 -370 {lab=B}
N 510 -450 510 -370 {lab=B}
N 270 -230 270 -100 {lab=Y}
N 510 -40 860 -40 {lab=#net1}
N 860 -440 860 -40 {lab=#net1}
N 740 -440 860 -440 {lab=#net1}
N 740 -470 740 -440 {lab=#net1}
N 540 -310 590 -310 {lab=A}
N 590 -240 590 -140 {lab=A}
N 540 -140 590 -140 {lab=A}
N 420 -140 480 -140 {lab=Y}
N 420 -230 420 -140 {lab=Y}
N 420 -310 480 -310 {lab=Y}
N 420 -310 420 -230 {lab=Y}
N 270 -310 270 -230 {lab=Y}
N 510 -100 510 -40 {lab=#net1}
N 270 -40 510 -40 {lab=#net1}
N 100 -230 100 50 {lab=A}
N 100 50 660 50 {lab=A}
N 660 -240 660 50 {lab=A}
N 590 -240 660 -240 {lab=A}
N 590 -310 590 -240 {lab=A}
N 370 -230 420 -230 {lab=Y}
N 270 -230 370 -230 {lab=Y}
N 740 -390 820 -390 {lab=0}
N 820 -390 820 -330 {lab=0}
N 740 -330 820 -330 {lab=0}
N 740 -360 740 -330 {lab=0}
N 740 -500 820 -500 {lab=VDD}
N 820 -560 820 -500 {lab=VDD}
N 740 -560 820 -560 {lab=VDD}
N 740 -570 740 -560 {lab=VDD}
N 380 -560 740 -560 {lab=VDD}
N 380 -340 380 -280 {lab=VDD}
N 380 -280 510 -280 {lab=VDD}
N 510 -310 510 -280 {lab=VDD}
N 270 -340 380 -340 {lab=VDD}
N 380 -560 380 -340 {lab=VDD}
N 820 -330 820 -210 {lab=0}
N 510 -210 820 -210 {lab=0}
N 510 -210 510 -140 {lab=0}
N 290 -210 510 -210 {lab=0}
N 290 -210 290 -70 {lab=0}
N 270 -70 290 -70 {lab=0}
N -70 -230 100 -230 {lab=A}
N -80 -450 510 -450 {lab=B}
N 370 100 430 100 {lab=Y}
N 370 -230 370 100 {lab=Y}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 720 -500 0 0 {name=MPmos_inv_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 720 -390 0 0 {name=MNmos_inv_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 510 -330 1 0 {name=MPmos_xor_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 510 -120 3 0 {name=MNmos_xor_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 250 -340 0 0 {name=MPmos_xor_2
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 250 -70 0 0 {name=MNmos_xor_2
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
C {gnd.sym} 740 -320 0 0 {name=l1 lab=0}
C {vdd.sym} 740 -570 0 0 {name=l2 lab=VDD}
C {opin.sym} 430 100 0 0 {name=p1 lab=Y}
C {ipin.sym} -80 -450 0 0 {name=p2 lab=B}
C {ipin.sym} -70 -230 0 0 {name=p3 lab=A}
