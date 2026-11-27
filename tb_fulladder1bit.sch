v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
save all
tran 50p 80n

plot v(A) v(B) v(C)
plot v(S) v(C0)
write /foss/designs/tb_fulladder1bit.raw 
.endc

.end
}
F {}
E {}
N 70 360 70 390 {lab=#net1}
N 70 390 100 390 {lab=#net1}
N 10 390 70 390 {lab=#net1}
N 10 450 100 450 {lab=gnd}
N 160 360 160 390 {lab=#net2}
N 100 450 160 450 {lab=gnd}
N 70 300 160 300 {lab=#net3}
N 70 250 100 250 {lab=#net3}
N 100 250 100 300 {lab=#net3}
N 70 160 70 190 {lab=#net4}
N 70 100 160 100 {lab=#net5}
N 160 100 160 130 {lab=#net5}
N 160 190 160 300 {lab=#net3}
N 70 70 160 70 {lab=#net5}
N 110 70 110 100 {lab=#net5}
N 70 10 160 10 {lab=vdd}
N 160 300 290 300 {lab=#net3}
N 350 70 350 120 {lab=CO}
N 310 40 310 150 {lab=#net3}
N 160 10 350 10 {lab=vdd}
N 290 90 290 300 {lab=#net3}
N 290 90 310 90 {lab=#net3}
N 350 90 380 90 {lab=CO}
N 560 10 730 10 {lab=vdd}
N 560 70 730 70 {lab=#net6}
N 730 70 730 100 {lab=#net6}
N 730 160 730 190 {lab=#net7}
N 730 250 730 270 {lab=#net8}
N 560 70 560 180 {lab=#net6}
N 560 240 560 330 {lab=#net9}
N 560 330 730 330 {lab=#net9}
N 430 210 520 210 {lab=#net3}
N 430 210 430 310 {lab=#net3}
N 290 300 430 300 {lab=#net3}
N 430 430 520 430 {lab=#net3}
N 430 310 430 430 {lab=#net3}
N 560 330 560 400 {lab=#net9}
N 560 460 560 480 {lab=#net10}
N 490 480 620 480 {lab=#net10}
N 490 540 620 540 {lab=gnd}
N 470 540 490 540 {lab=gnd}
N 620 540 650 540 {lab=gnd}
N 620 480 650 480 {lab=#net10}
N 470 480 490 480 {lab=#net10}
N 730 330 730 370 {lab=#net9}
N 730 430 730 450 {lab=#net11}
N 730 510 730 530 {lab=#net12}
N 650 590 730 590 {lab=gnd}
N 650 540 650 590 {lab=gnd}
N 920 270 920 380 {lab=#net9}
N 730 330 920 330 {lab=#net9}
N 960 300 960 350 {lab=S}
N 960 320 1010 320 {lab=S}
N 350 10 560 10 {lab=vdd}
N 100 450 100 470 {lab=gnd}
N 730 590 730 620 {lab=gnd}
N 440 -10 440 10 {lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 50 330 0 0 {name=M1
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 180 330 0 1 {name=M2
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} -10 420 0 0 {name=M3
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 80 420 0 0 {name=M4
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 180 420 0 1 {name=M5
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 50 220 0 0 {name=M6
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 50 130 0 0 {name=M7
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 50 40 0 0 {name=M8
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 180 40 0 1 {name=M9
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 180 160 0 1 {name=M10
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 330 40 0 0 {name=M11
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 330 150 0 0 {name=M12
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 540 40 0 0 {name=M13
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 630 40 0 0 {name=M14
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 710 40 0 0 {name=M15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 750 130 0 1 {name=M16
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 750 220 0 1 {name=M17
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 750 300 0 1 {name=M18
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 540 210 0 0 {name=M19
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 450 510 0 0 {name=M20
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 540 510 0 0 {name=M21
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 630 510 0 0 {name=M22
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 540 430 0 0 {name=M23
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 750 400 0 1 {name=M24
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 750 480 0 1 {name=M25
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 750 560 0 1 {name=M26
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 940 270 0 0 {name=M27
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 940 380 0 0 {name=M28
W=1
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
C {vdd.sym} 430 -40 0 0 {name=l1 lab=vdd}
C {gnd.sym} 380 600 0 0 {name=l2 lab=gnd

}
C {lab_pin.sym} 70 40 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 160 40 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 70 130 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 160 160 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 70 220 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 350 40 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 560 40 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 650 40 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 730 40 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 560 210 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 730 130 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 730 220 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 730 300 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 960 270 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 70 330 0 0 {name=p15 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 160 330 0 0 {name=p16 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 10 420 0 0 {name=p17 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 100 420 0 0 {name=p18 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 160 420 0 0 {name=p19 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 470 510 0 0 {name=p20 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 560 430 0 0 {name=p21 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 560 510 0 0 {name=p22 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 650 510 0 0 {name=p23 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 730 560 0 0 {name=p24 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 730 480 0 0 {name=p25 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 730 400 0 0 {name=p26 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 960 380 0 0 {name=p27 sig_type=std_logic lab=gnd
}
C {opin.sym} 380 90 0 0 {name=p52 lab=CO}
C {opin.sym} 1010 320 0 0 {name=p53 lab=S}
C {vsource.sym} 950 30 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 1020 30 0 0 {name=V2 value="PULSE(0 1.8 10n 50p 50p 10n 20n)" savecurrent=false}
C {vsource.sym} 1090 30 0 0 {name=V3 value="PULSE(0 1.8 20n 50p 50p 20n 40n)" savecurrent=false}
C {vsource.sym} 1160 30 0 0 {name=V4 value="PULSE(0 1.8 40n 50p 50p 40n 80n)" savecurrent=false}
C {vdd.sym} 950 0 0 0 {name=l3 lab=VDD}
C {gnd.sym} 950 60 0 0 {name=l4 lab=0}
C {gnd.sym} 1020 60 0 0 {name=l5 lab=0}
C {gnd.sym} 1090 60 0 0 {name=l6 lab=0}
C {gnd.sym} 1160 60 0 0 {name=l7 lab=0}
C {lab_pin.sym} 1020 0 0 0 {name=p55 sig_type=std_logic lab=A}
C {lab_pin.sym} 1090 0 0 0 {name=p56 sig_type=std_logic lab=B}
C {lab_pin.sym} 1160 0 0 0 {name=p57 sig_type=std_logic lab=C}
C {lab_pin.sym} 380 600 0 0 {name=p28 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 430 -40 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 30 40 0 0 {name=p30 sig_type=std_logic lab=A}
C {lab_pin.sym} 30 130 0 0 {name=p31 sig_type=std_logic lab=A}
C {lab_pin.sym} 520 40 0 0 {name=p32 sig_type=std_logic lab=A}
C {lab_pin.sym} 430 510 0 0 {name=p33 sig_type=std_logic lab=A}
C {lab_pin.sym} 770 400 0 1 {name=p34 sig_type=std_logic lab=A}
C {lab_pin.sym} 200 330 0 1 {name=p35 sig_type=std_logic lab=A}
C {lab_pin.sym} 200 160 0 1 {name=p36 sig_type=std_logic lab=C}
C {lab_pin.sym} 200 40 0 1 {name=p37 sig_type=std_logic lab=B}
C {lab_pin.sym} 200 420 0 1 {name=p38 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 420 0 0 {name=p39 sig_type=std_logic lab=B}
C {lab_pin.sym} 30 330 0 0 {name=p40 sig_type=std_logic lab=C}
C {lab_pin.sym} -30 420 0 0 {name=p41 sig_type=std_logic lab=A}
C {lab_pin.sym} 30 220 0 0 {name=p42 sig_type=std_logic lab=B}
C {lab_pin.sym} 350 180 0 0 {name=p43 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 350 150 0 1 {name=p44 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 960 410 0 1 {name=p45 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 610 40 0 0 {name=p46 sig_type=std_logic lab=B}
C {lab_pin.sym} 690 40 0 0 {name=p47 sig_type=std_logic lab=C}
C {lab_pin.sym} 520 510 0 0 {name=p48 sig_type=std_logic lab=B}
C {lab_pin.sym} 610 510 0 0 {name=p49 sig_type=std_logic lab=C}
C {lab_pin.sym} 770 480 0 1 {name=p50 sig_type=std_logic lab=B}
C {lab_pin.sym} 770 560 0 1 {name=p51 sig_type=std_logic lab=C}
C {lab_pin.sym} 100 470 0 0 {name=p54 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 730 620 0 0 {name=p58 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 960 240 0 0 {name=p59 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 440 -10 0 0 {name=p60 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 770 130 0 1 {name=p61 sig_type=std_logic lab=A}
C {lab_pin.sym} 770 220 0 1 {name=p62 sig_type=std_logic lab=B}
C {lab_pin.sym} 770 300 0 1 {name=p63 sig_type=std_logic lab=C}
