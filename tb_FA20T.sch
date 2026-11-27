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
write /foss/designs/tb_FA20T.raw 
.endc

.end
}
F {}
E {}
N -80 -110 -80 -70 {lab=#net1}
N -80 110 -80 150 {lab=#net2}
N 340 -130 340 -90 {lab=#net3}
N 340 80 340 120 {lab=#net4}
N 90 -120 90 -80 {lab=A}
N 150 -120 150 -80 {lab=#net5}
N 90 100 90 140 {lab=#net2}
N 150 100 150 140 {lab=#net5}
N 550 -310 550 -270 {lab=C}
N 610 -310 610 -270 {lab=SUM}
N 550 -160 550 -120 {lab=#net3}
N 610 -160 610 -120 {lab=SUM}
N 550 20 550 60 {lab=C}
N 610 20 610 60 {lab=CO}
N 550 170 550 210 {lab=A}
N 610 170 610 210 {lab=CO}
N -120 -140 -120 -40 {lab=B}
N -120 80 -120 180 {lab=A}
N -150 -90 -120 -90 {lab=B}
N -80 120 90 120 {lab=#net2}
N 120 -40 120 60 {lab=#net1}
N 20 -100 90 -100 {lab=A}
N 20 -100 20 30 {lab=A}
N -120 -230 -120 -140 {lab=B}
N -120 -230 120 -230 {lab=B}
N 120 -230 120 -160 {lab=B}
N -20 180 120 180 {lab=B}
N -20 -230 -20 180 {lab=B}
N 300 50 300 150 {lab=#net5}
N 300 -160 300 -60 {lab=C}
N 150 -80 150 100 {lab=#net5}
N 450 250 580 250 {lab=#net4}
N 450 -380 580 -380 {lab=#net5}
N 580 -380 580 -350 {lab=#net5}
N 610 -270 610 -160 {lab=SUM}
N 610 -220 660 -220 {lab=SUM}
N 610 60 610 170 {lab=CO}
N 610 110 660 110 {lab=CO}
N 580 -230 580 -200 {lab=#net4}
N 580 100 580 130 {lab=#net5}
N 300 150 300 230 {lab=#net5}
N 300 230 510 230 {lab=#net5}
N 510 120 510 230 {lab=#net5}
N 510 120 580 120 {lab=#net5}
N 340 100 400 100 {lab=#net4}
N 400 100 450 100 {lab=#net4}
N 400 -220 580 -220 {lab=#net4}
N 400 -220 400 100 {lab=#net4}
N 340 -110 510 -110 {lab=#net3}
N 510 -140 510 -110 {lab=#net3}
N 510 -140 550 -140 {lab=#net3}
N -120 180 -120 260 {lab=A}
N -120 260 -120 280 {lab=A}
N -120 280 530 280 {lab=A}
N 530 200 530 280 {lab=A}
N 530 200 550 200 {lab=A}
N 300 -280 300 -160 {lab=C}
N 300 -280 550 -280 {lab=C}
N -120 30 20 30 {lab=A}
N -120 30 -120 80 {lab=A}
N 460 -80 580 -80 {lab=#net5}
N 450 -80 460 -80 {lab=#net5}
N 450 -380 450 -80 {lab=#net5}
N 450 -20 580 -20 {lab=#net4}
N 450 -20 450 250 {lab=#net4}
N 300 -60 300 -10 {lab=C}
N 300 -10 300 -0 {lab=C}
N 300 -0 500 0 {lab=C}
N 500 0 500 40 {lab=C}
N 500 40 550 40 {lab=C}
N -150 80 -120 80 {lab=A}
N -420 -80 -390 -80 {lab=A}
N -420 -30 -390 -30 {lab=B}
N -420 30 -390 30 {lab=C}
N 250 -250 300 -250 {lab=C}
N -80 -90 0 -90 {lab=#net1}
N -0 -90 0 -20 {lab=#net1}
N -0 -20 120 -20 {lab=#net1}
N 150 40 240 40 {lab=#net5}
N 240 40 240 110 {lab=#net5}
N 240 110 300 110 {lab=#net5}
N 420 -80 450 -80 {lab=#net5}
N 420 -80 420 10 {lab=#net5}
N 300 10 420 10 {lab=#net5}
N 300 10 300 50 {lab=#net5}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -100 -40 0 0 {name=M1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -100 -140 0 0 {name=M2
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -100 180 0 0 {name=M3
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -100 80 0 0 {name=M4
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 320 -60 0 0 {name=M5
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 320 -160 0 0 {name=M6
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 320 150 0 0 {name=M7
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 320 50 0 0 {name=M8
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 120 -140 1 0 {name=M9
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 120 -60 1 1 {name=M10
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 120 80 1 0 {name=M11
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 120 160 1 1 {name=M12
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 580 -330 1 0 {name=M13
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 580 -250 1 1 {name=M14
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 580 -180 1 0 {name=M15
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 580 -100 1 1 {name=M16
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 580 0 1 0 {name=M17
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 580 80 1 1 {name=M18
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 580 150 1 0 {name=M19
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 580 230 1 1 {name=M20
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
C {lab_pin.sym} -80 -140 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -80 -40 0 1 {name=p2 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 120 -120 1 1 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 120 -80 2 1 {name=p4 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -80 80 2 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -80 180 2 0 {name=p6 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -80 210 2 0 {name=p7 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -80 50 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -80 -170 2 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -80 -10 2 0 {name=p10 sig_type=std_logic lab=gnd}
C {ipin.sym} -420 -80 0 0 {name=p55 lab=A}
C {ipin.sym} -420 -30 0 0 {name=p56 lab=B}
C {ipin.sym} -420 30 0 0 {name=p57 lab=C}
C {lab_pin.sym} -390 -80 0 1 {name=p64 sig_type=std_logic lab=A}
C {lab_pin.sym} -390 -30 0 1 {name=p65 sig_type=std_logic lab=B}
C {lab_pin.sym} -390 30 0 1 {name=p66 sig_type=std_logic lab=C}
C {lab_pin.sym} -150 -90 0 0 {name=p30 sig_type=std_logic lab=B}
C {lab_pin.sym} -150 80 0 0 {name=p29 sig_type=std_logic lab=A}
C {lab_pin.sym} 250 -250 0 0 {name=p31 sig_type=std_logic lab=C}
C {lab_pin.sym} 120 100 1 1 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 340 -160 1 1 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 340 50 1 1 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 580 -310 1 1 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 580 -160 1 1 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 580 20 1 1 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 580 170 1 1 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 340 -190 1 1 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 340 20 1 1 {name=p19 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 120 140 2 1 {name=p20 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 340 -60 2 1 {name=p21 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 340 150 2 1 {name=p22 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 580 -270 2 1 {name=p23 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 580 -120 2 1 {name=p24 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 580 60 2 1 {name=p25 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 580 210 2 1 {name=p26 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 340 180 2 1 {name=p27 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 340 -30 2 1 {name=p28 sig_type=std_logic lab=gnd}
C {opin.sym} 660 -220 0 0 {name=p32 lab=SUM}
C {opin.sym} 660 110 0 0 {name=p33 lab=CO}
C {vsource.sym} 680 -400 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 750 -400 0 0 {name=V2 value="PULSE(0 1.8 10n 50p 50p 10n 20n)" savecurrent=false}
C {vsource.sym} 820 -400 0 0 {name=V3 value="PULSE(0 1.8 20n 50p 50p 20n 40n)" savecurrent=false}
C {vsource.sym} 890 -400 0 0 {name=V4 value="PULSE(0 1.8 40n 50p 50p 40n 80n)" savecurrent=false}
C {vdd.sym} 680 -430 0 0 {name=l3 lab=VDD}
C {gnd.sym} 680 -370 0 0 {name=l4 lab=0}
C {gnd.sym} 750 -370 0 0 {name=l5 lab=0}
C {gnd.sym} 820 -370 0 0 {name=l6 lab=0}
C {gnd.sym} 890 -370 0 0 {name=l7 lab=0}
C {lab_pin.sym} 750 -430 0 0 {name=p36 sig_type=std_logic lab=A}
C {lab_pin.sym} 820 -430 0 0 {name=p37 sig_type=std_logic lab=B}
C {lab_pin.sym} 890 -430 0 0 {name=p38 sig_type=std_logic lab=C}
C {vdd.sym} -10 -410 0 0 {name=l1 lab=vdd}
C {lab_pin.sym} -10 -410 0 0 {name=p39 sig_type=std_logic lab=vdd}
C {gnd.sym} -10 -350 0 0 {name=l2 lab=gnd

}
C {lab_pin.sym} -10 -350 0 0 {name=p34 sig_type=std_logic lab=gnd
}
