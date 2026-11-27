v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.param wp=2 wn=1 lch=0.15
.control
foreach w 1 1.5 2 2.5 3 3.5 4 4.5 5
    alterparam wp = $w
    reset
    dc V2 0 1.8 0.02
    meas dc vm_sum WHEN v(s)=0.9
    meas dc vm_cout WHEN v(co)=0.9

    echo $w $&vm_sum $&vm_cout >> /foss/designs/dc_results_20T.txt
    write /foss/designs/dc_wp_20T\{$w\}.raw v(a) v(s) v(co)
end
.endc
.end

}
F {}
E {}
N -900 -380 -900 -340 {lab=#net1}
N -900 -160 -900 -120 {lab=#net2}
N -480 -400 -480 -360 {lab=#net3}
N -480 -190 -480 -150 {lab=#net4}
N -730 -390 -730 -350 {lab=A}
N -670 -390 -670 -350 {lab=#net5}
N -730 -170 -730 -130 {lab=#net2}
N -670 -170 -670 -130 {lab=#net5}
N -270 -580 -270 -540 {lab=C}
N -210 -580 -210 -540 {lab=S}
N -270 -430 -270 -390 {lab=#net3}
N -210 -430 -210 -390 {lab=S}
N -270 -250 -270 -210 {lab=C}
N -210 -250 -210 -210 {lab=CO}
N -270 -100 -270 -60 {lab=A}
N -210 -100 -210 -60 {lab=CO}
N -940 -410 -940 -310 {lab=B}
N -940 -190 -940 -90 {lab=A}
N -970 -360 -940 -360 {lab=B}
N -900 -150 -730 -150 {lab=#net2}
N -700 -310 -700 -210 {lab=#net1}
N -800 -370 -730 -370 {lab=A}
N -800 -370 -800 -240 {lab=A}
N -940 -500 -940 -410 {lab=B}
N -940 -500 -700 -500 {lab=B}
N -700 -500 -700 -430 {lab=B}
N -840 -90 -700 -90 {lab=B}
N -840 -500 -840 -90 {lab=B}
N -520 -220 -520 -120 {lab=#net5}
N -520 -430 -520 -330 {lab=C}
N -670 -350 -670 -170 {lab=#net5}
N -370 -20 -240 -20 {lab=#net4}
N -370 -650 -240 -650 {lab=#net5}
N -240 -650 -240 -620 {lab=#net5}
N -210 -540 -210 -430 {lab=S}
N -210 -490 -160 -490 {lab=S}
N -210 -210 -210 -100 {lab=CO}
N -210 -160 -160 -160 {lab=CO}
N -240 -500 -240 -470 {lab=#net4}
N -240 -170 -240 -140 {lab=#net5}
N -520 -120 -520 -40 {lab=#net5}
N -520 -40 -310 -40 {lab=#net5}
N -310 -150 -310 -40 {lab=#net5}
N -310 -150 -240 -150 {lab=#net5}
N -480 -170 -420 -170 {lab=#net4}
N -420 -170 -370 -170 {lab=#net4}
N -420 -490 -240 -490 {lab=#net4}
N -420 -490 -420 -170 {lab=#net4}
N -480 -380 -310 -380 {lab=#net3}
N -310 -410 -310 -380 {lab=#net3}
N -310 -410 -270 -410 {lab=#net3}
N -940 -90 -940 -10 {lab=A}
N -940 -10 -940 10 {lab=A}
N -940 10 -290 10 {lab=A}
N -290 -70 -290 10 {lab=A}
N -290 -70 -270 -70 {lab=A}
N -520 -550 -520 -430 {lab=C}
N -520 -550 -270 -550 {lab=C}
N -940 -240 -800 -240 {lab=A}
N -940 -240 -940 -190 {lab=A}
N -360 -350 -240 -350 {lab=#net5}
N -370 -350 -360 -350 {lab=#net5}
N -370 -650 -370 -350 {lab=#net5}
N -370 -290 -240 -290 {lab=#net4}
N -370 -290 -370 -20 {lab=#net4}
N -520 -330 -520 -280 {lab=C}
N -520 -280 -520 -270 {lab=C}
N -520 -270 -320 -270 {lab=C}
N -320 -270 -320 -230 {lab=C}
N -320 -230 -270 -230 {lab=C}
N -970 -190 -940 -190 {lab=A}
N -1240 -350 -1210 -350 {lab=A}
N -1240 -300 -1210 -300 {lab=B}
N -1240 -240 -1210 -240 {lab=C}
N -570 -520 -520 -520 {lab=C}
N -900 -360 -820 -360 {lab=#net1}
N -820 -360 -820 -290 {lab=#net1}
N -820 -290 -700 -290 {lab=#net1}
N -670 -230 -580 -230 {lab=#net5}
N -580 -230 -580 -160 {lab=#net5}
N -580 -160 -520 -160 {lab=#net5}
N -400 -350 -370 -350 {lab=#net5}
N -400 -350 -400 -260 {lab=#net5}
N -520 -260 -400 -260 {lab=#net5}
N -520 -260 -520 -220 {lab=#net5}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -920 -310 0 0 {name=M1
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -920 -410 0 0 {name=M2
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -500 -220 0 0 {name=M8
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -240 -520 1 1 {name=M14
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
C {lab_pin.sym} -900 -410 0 1 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -900 -310 0 1 {name=p2 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -700 -390 1 1 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -700 -350 2 1 {name=p4 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -900 -190 2 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -900 -90 2 0 {name=p6 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -900 -60 2 0 {name=p7 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -900 -220 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -900 -440 2 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -900 -280 2 0 {name=p10 sig_type=std_logic lab=gnd}
C {ipin.sym} -1240 -350 0 0 {name=p55 lab=A}
C {ipin.sym} -1240 -300 0 0 {name=p56 lab=B}
C {ipin.sym} -1240 -240 0 0 {name=p57 lab=C}
C {lab_pin.sym} -1210 -350 0 1 {name=p64 sig_type=std_logic lab=A}
C {lab_pin.sym} -1210 -300 0 1 {name=p65 sig_type=std_logic lab=B}
C {lab_pin.sym} -1210 -240 0 1 {name=p66 sig_type=std_logic lab=C}
C {lab_pin.sym} -970 -360 0 0 {name=p30 sig_type=std_logic lab=B}
C {lab_pin.sym} -970 -190 0 0 {name=p29 sig_type=std_logic lab=A}
C {lab_pin.sym} -570 -520 0 0 {name=p31 sig_type=std_logic lab=C}
C {lab_pin.sym} -700 -170 1 1 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -480 -430 1 1 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -480 -220 1 1 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -240 -580 1 1 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -240 -430 1 1 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -240 -250 1 1 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -240 -100 1 1 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -480 -460 1 1 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -480 -250 1 1 {name=p19 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -700 -130 2 1 {name=p20 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -480 -330 2 1 {name=p21 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -480 -120 2 1 {name=p22 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -240 -540 2 1 {name=p23 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -240 -390 2 1 {name=p24 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -240 -210 2 1 {name=p25 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -240 -60 2 1 {name=p26 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -480 -90 2 1 {name=p27 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -480 -300 2 1 {name=p28 sig_type=std_logic lab=gnd}
C {opin.sym} -160 -490 0 0 {name=p32 lab=S}
C {opin.sym} -160 -160 0 0 {name=p33 lab=CO}
C {vsource.sym} 0 -580 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 70 -580 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 140 -580 0 0 {name=V3 value=1.8 savecurrent=false}
C {vsource.sym} 210 -580 0 0 {name=V4 value=0 savecurrent=false}
C {vdd.sym} 0 -610 0 0 {name=l3 lab=VDD}
C {gnd.sym} 0 -550 0 0 {name=l4 lab=0}
C {gnd.sym} 70 -550 0 0 {name=l5 lab=0}
C {gnd.sym} 140 -550 0 0 {name=l6 lab=0}
C {gnd.sym} 210 -550 0 0 {name=l7 lab=0}
C {lab_pin.sym} 70 -610 0 0 {name=p36 sig_type=std_logic lab=A}
C {lab_pin.sym} 140 -610 0 0 {name=p37 sig_type=std_logic lab=B}
C {lab_pin.sym} 210 -610 0 0 {name=p38 sig_type=std_logic lab=C}
C {vdd.sym} -710 -650 0 0 {name=l1 lab=vdd}
C {lab_pin.sym} -710 -650 0 0 {name=p39 sig_type=std_logic lab=vdd}
C {gnd.sym} -710 -590 0 0 {name=l2 lab=gnd

}
C {lab_pin.sym} -710 -590 0 0 {name=p34 sig_type=std_logic lab=gnd
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -700 -410 1 0 {name=M4
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -920 -190 0 0 {name=M6
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -700 -190 1 0 {name=M9
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -500 -430 0 0 {name=M11
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -240 -600 1 0 {name=M13
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -240 -450 1 0 {name=M15
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -240 -270 1 0 {name=M17
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -240 -120 1 0 {name=M19
W=\{wp\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -920 -90 0 0 {name=M3
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -700 -330 1 1 {name=M5
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -700 -110 1 1 {name=M7
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -240 -370 1 1 {name=M12
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -240 -190 1 1 {name=M16
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -240 -40 1 1 {name=M18
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -500 -120 2 1 {name=M20
W=\{wn\}
L=\{lch\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -500 -330 0 0 {name=M10
W=\{wn\}
L=\{lch\}
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
