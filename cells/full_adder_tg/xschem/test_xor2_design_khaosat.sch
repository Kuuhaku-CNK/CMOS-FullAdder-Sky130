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
N 370 -230 370 150 {lab=Y}
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
N -260 -280 -260 -130 {lab=0}
N -260 -400 -260 -360 {lab=VDD}
N -170 -150 -170 -130 {lab=0}
N -260 -280 -80 -280 {lab=0}
N -260 -300 -260 -280 {lab=0}
N 370 210 370 250 {lab=0}
N -170 250 370 250 {lab=0}
N -80 -350 -80 -280 {lab=0}
N -170 -230 -170 -210 {lab=A}
N -260 -130 -260 -120 {lab=0}
N -170 -130 -170 250 {lab=0}
N -260 -130 -170 -130 {lab=0}
N -170 -230 100 -230 {lab=A}
N -80 -450 -80 -410 {lab=B}
N -80 -450 510 -450 {lab=B}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 720 -500 0 0 {name=Pmos_inv_1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 720 -390 0 0 {name=Nmos_inv_1
W=1.5
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 510 -330 1 0 {namePmos_xor_1
W=\{wp\}
L=\{L\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 510 -120 3 0 {name=Nmos_xor_1
W=\{wn\}
L=\{L\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 250 -340 0 0 {name=Pmos_xor_2
W=\{wp\}
L=\{L\}
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 250 -70 0 0 {name=Nmos_xor_2
W=\{wn\}
L=\{L\}
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
C {vsource.sym} -260 -330 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -170 -180 0 0 {name=V2 value="PULSE(0 1.8 2n 100p 100p 9.9n 20n)" savecurrent=false}
C {vsource.sym} -80 -380 0 0 {name=V3 value="PULSE(0 1.8 20n 100p 100p 19.9n 40n)" savecurrent=false}
C {vdd.sym} -260 -400 0 0 {name=l3 lab=VDD}
C {gnd.sym} -260 -120 0 0 {name=l4 lab=0}
C {capa.sym} 370 180 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 370 100 0 0 {name=p1 sig_type=std_logic lab=Y}
C {lab_pin.sym} -170 -230 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} -80 -450 0 0 {name=p4 sig_type=std_logic lab=B
}
C {code_shown.sym} 1160 -450 0 0 {name=s1
place=end
value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27
.param L=0.15
.param wn=2.0
.param wp=4.0

.control
echo \\"L_um | tplh_ps | tphl_ps | tpd_ps | Pavg_uW | PDP_fJ\\"
foreach l_val 0.15 0.18 0.20 0.25 0.30
  alterparam L = $l_val
  reset
  tran 5p 40n

  meas tran tplh TRIG v(A) VAL=0.9 RISE=1 TARG v(Y) VAL=0.9 RISE=1
  meas tran tphl TRIG v(A) VAL=0.9 FALL=1 TARG v(Y) VAL=0.9 FALL=1
  meas tran iavg AVG i(V1) FROM=0 TO=40n

  let tplh_ps = tplh * 1e12
  let tphl_ps = tphl * 1e12
  let tpd_ps  = (tplh + tphl) / 2 * 1e12
  let pavg_uw = abs(1.8 * iavg) * 1e6
  let pdp_fj  = tpd_ps * pavg_uw * 1e-3

  echo \\"$l_val | $&tplh_ps | $&tphl_ps | $&tpd_ps | $&pavg_uw | $&pdp_fj\\"
end
write test_xor2_design_khaosat.raw v(A) v(B) v(Y)
.endc"}
