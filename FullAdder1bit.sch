v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -750 160 -750 190 {lab=#net1}
N -750 190 -720 190 {lab=#net1}
N -810 190 -750 190 {lab=#net1}
N -810 250 -720 250 {lab=gnd}
N -660 160 -660 190 {lab=#net2}
N -720 250 -660 250 {lab=gnd}
N -750 100 -660 100 {lab=#net3}
N -750 50 -720 50 {lab=#net3}
N -720 50 -720 100 {lab=#net3}
N -750 -40 -750 -10 {lab=#net4}
N -750 -100 -660 -100 {lab=#net5}
N -660 -100 -660 -70 {lab=#net5}
N -660 -10 -660 100 {lab=#net3}
N -750 -130 -660 -130 {lab=#net5}
N -710 -130 -710 -100 {lab=#net5}
N -750 -190 -660 -190 {lab=vdd}
N -660 100 -530 100 {lab=#net3}
N -470 -130 -470 -80 {lab=CO}
N -510 -160 -510 -50 {lab=#net3}
N -660 -190 -470 -190 {lab=vdd}
N -530 -110 -530 100 {lab=#net3}
N -530 -110 -510 -110 {lab=#net3}
N -470 -110 -440 -110 {lab=CO}
N -260 -190 -90 -190 {lab=vdd}
N -260 -130 -90 -130 {lab=#net6}
N -90 -130 -90 -100 {lab=#net6}
N -90 -40 -90 -10 {lab=#net7}
N -90 50 -90 70 {lab=#net8}
N -260 -130 -260 -20 {lab=#net6}
N -260 40 -260 130 {lab=#net9}
N -260 130 -90 130 {lab=#net9}
N -390 10 -300 10 {lab=#net3}
N -390 10 -390 110 {lab=#net3}
N -530 100 -390 100 {lab=#net3}
N -390 230 -300 230 {lab=#net3}
N -390 110 -390 230 {lab=#net3}
N -260 130 -260 200 {lab=#net9}
N -260 260 -260 280 {lab=#net10}
N -330 280 -200 280 {lab=#net10}
N -330 340 -200 340 {lab=gnd}
N -350 340 -330 340 {lab=gnd}
N -200 340 -170 340 {lab=gnd}
N -200 280 -170 280 {lab=#net10}
N -350 280 -330 280 {lab=#net10}
N -90 130 -90 170 {lab=#net9}
N -90 230 -90 250 {lab=#net11}
N -90 310 -90 330 {lab=#net12}
N -170 390 -90 390 {lab=gnd}
N -170 340 -170 390 {lab=gnd}
N 100 70 100 180 {lab=#net9}
N -90 130 100 130 {lab=#net9}
N 140 100 140 150 {lab=S}
N 140 120 190 120 {lab=S}
N -470 -190 -260 -190 {lab=vdd}
N -720 250 -720 270 {lab=gnd}
N -90 390 -90 420 {lab=gnd}
N -380 -210 -380 -190 {lab=vdd}
N -1050 -70 -1020 -70 {lab=A}
N -1050 -20 -1020 -20 {lab=B}
N -1050 40 -1020 40 {lab=C}
C {sky130_fd_pr/pfet_01v8.sym} -770 -160 0 0 {name=M8
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -490 -50 0 0 {name=M12
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
C {lab_pin.sym} -750 -160 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -660 -160 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -750 -70 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -660 -40 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -750 20 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -470 -160 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -260 -160 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -170 -160 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 -160 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -260 10 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 -70 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 20 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 100 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 140 70 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -750 130 0 0 {name=p15 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -660 130 0 0 {name=p16 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -810 220 0 0 {name=p17 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -720 220 0 0 {name=p18 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -660 220 0 0 {name=p19 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -350 310 0 0 {name=p20 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -260 230 0 0 {name=p21 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -260 310 0 0 {name=p22 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -170 310 0 0 {name=p23 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -90 360 0 0 {name=p24 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -90 280 0 0 {name=p25 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -90 200 0 0 {name=p26 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 140 180 0 0 {name=p27 sig_type=std_logic lab=gnd
}
C {opin.sym} -440 -110 0 0 {name=p52 lab=CO}
C {opin.sym} 190 120 0 0 {name=p53 lab=S}
C {lab_pin.sym} -440 400 0 0 {name=p28 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -390 -240 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -790 -160 0 0 {name=p30 sig_type=std_logic lab=A}
C {lab_pin.sym} -790 -70 0 0 {name=p31 sig_type=std_logic lab=A}
C {lab_pin.sym} -300 -160 0 0 {name=p32 sig_type=std_logic lab=A}
C {lab_pin.sym} -390 310 0 0 {name=p33 sig_type=std_logic lab=A}
C {lab_pin.sym} -50 360 0 1 {name=p34 sig_type=std_logic lab=A}
C {lab_pin.sym} -620 130 0 1 {name=p35 sig_type=std_logic lab=A}
C {lab_pin.sym} -620 -40 0 1 {name=p36 sig_type=std_logic lab=C}
C {lab_pin.sym} -620 -160 0 1 {name=p37 sig_type=std_logic lab=B}
C {lab_pin.sym} -620 220 0 1 {name=p38 sig_type=std_logic lab=B}
C {lab_pin.sym} -760 220 0 0 {name=p39 sig_type=std_logic lab=B}
C {lab_pin.sym} -790 130 0 0 {name=p40 sig_type=std_logic lab=C}
C {lab_pin.sym} -850 220 0 0 {name=p41 sig_type=std_logic lab=A}
C {lab_pin.sym} -790 20 0 0 {name=p42 sig_type=std_logic lab=B}
C {lab_pin.sym} -470 -20 0 0 {name=p43 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -470 -50 0 1 {name=p44 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 140 210 0 1 {name=p45 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -210 -160 0 0 {name=p46 sig_type=std_logic lab=B}
C {lab_pin.sym} -130 -160 0 0 {name=p47 sig_type=std_logic lab=C}
C {lab_pin.sym} -300 310 0 0 {name=p48 sig_type=std_logic lab=B}
C {lab_pin.sym} -210 310 0 0 {name=p49 sig_type=std_logic lab=C}
C {lab_pin.sym} -50 280 0 1 {name=p50 sig_type=std_logic lab=B}
C {lab_pin.sym} -50 200 0 1 {name=p51 sig_type=std_logic lab=C}
C {lab_pin.sym} -720 270 0 0 {name=p54 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -90 420 0 0 {name=p58 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 140 40 0 0 {name=p59 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -380 -210 0 0 {name=p60 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -50 -70 0 1 {name=p61 sig_type=std_logic lab=A}
C {lab_pin.sym} -50 20 0 1 {name=p62 sig_type=std_logic lab=B}
C {lab_pin.sym} -50 100 0 1 {name=p63 sig_type=std_logic lab=C}
C {sky130_fd_pr/nfet_01v8.sym} -770 130 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -770 -70 0 0 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -770 20 0 0 {name=M7
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -640 -160 0 1 {name=M9
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -640 -40 0 1 {name=M10
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -490 -160 0 0 {name=M11
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -280 -160 0 0 {name=M13
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -190 -160 0 0 {name=M14
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -110 -160 0 0 {name=M15
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -70 -70 0 1 {name=M16
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -70 20 0 1 {name=M17
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -70 100 0 1 {name=M18
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -280 10 0 0 {name=M19
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -830 220 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -740 220 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -640 220 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -640 130 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -280 230 0 0 {name=M20
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
C {sky130_fd_pr/nfet_01v8.sym} -370 310 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} -280 310 0 0 {name=M22
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
C {sky130_fd_pr/nfet_01v8.sym} -190 310 0 0 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} -70 200 0 1 {name=M24
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
C {sky130_fd_pr/nfet_01v8.sym} -70 280 0 1 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} -70 360 0 1 {name=M26
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
C {sky130_fd_pr/nfet_01v8.sym} 120 180 0 0 {name=M27
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
C {sky130_fd_pr/pfet_01v8.sym} 120 70 0 0 {name=M28
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
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -1050 -70 0 0 {name=p55 lab=A}
C {ipin.sym} -1050 -20 0 0 {name=p56 lab=B}
C {ipin.sym} -1050 40 0 0 {name=p57 lab=C}
C {lab_pin.sym} -1020 -70 0 1 {name=p64 sig_type=std_logic lab=A}
C {lab_pin.sym} -1020 -20 0 1 {name=p65 sig_type=std_logic lab=B}
C {lab_pin.sym} -1020 40 0 1 {name=p66 sig_type=std_logic lab=C}
C {iopin.sym} -390 -240 3 0 {name=p67 lab=vdd}
C {iopin.sym} -440 400 1 0 {name=p68 lab=gnd}
