v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27
.param lch=0.15
.param wn=3.0
.param wp=6.0
.control
echo L_um "|" Wn_um "|" Wp_um "|" tplh_A_ps "|" tphl_A_ps "|" tplh_B_ps "|" tphl_B_ps "|" tpd_A_ps "|" tpd_B_ps "|" Pavg_uW "|" Cin_A_fF "|" Cin_B_fF > /foss/designs/nand_L_results.txt
foreach l 0.15 0.18 0.20 0.25 0.30 0.40
    alterparam lch=$l
    reset
    tran 5p 80n

    meas tran tplh_a TRIG v(a) VAL=0.9 FALL=1 TARG v(output) VAL=0.9 RISE=1
    meas tran tphl_a TRIG v(a) VAL=0.9 RISE=1 TARG v(output) VAL=0.9 FALL=1
    meas tran tplh_b TRIG v(b) VAL=0.9 FALL=1 TARG v(output) VAL=0.9 RISE=2
    meas tran tphl_b TRIG v(b) VAL=0.9 RISE=1 TARG v(output) VAL=0.9 FALL=2

    let tplh_a_ps = tplh_a*1e12
    let tphl_a_ps = tphl_a*1e12
    let tplh_b_ps = tplh_b*1e12
    let tphl_b_ps = tphl_b*1e12
    let tpd_a_ps = (tplh_a + tphl_a)/2*1e12
    let tpd_b_ps = (tplh_b + tphl_b)/2*1e12

    meas tran iavg AVG i(v3) FROM=0 TO=80n
    let pavg_uw = -1.8*iavg*1e6
    meas tran qa INTEG i(v1) FROM=12n TO=14n
    meas tran qb INTEG i(v2) FROM=32n TO=34n

    let cin_a_ff = -qa/1.8*1e15
    let cin_b_ff = -qb/1.8*1e15

    echo $l "|" 3.0 "|" 6.0 "|" $&tplh_a_ps "|" $&tphl_a_ps "|" $&tplh_b_ps "|" $&tphl_b_ps "|" $&tpd_a_ps "|" $&tpd_b_ps "|" $&pavg_uw "|" $&cin_a_ff "|" $&cin_b_ff >> /foss/designs/nand_L_results.txt

end

.endc}
F {}
E {}
N -60 -70 10 -70 {lab=output}
N -30 -70 -30 -50 {lab=output}
N -60 -50 -30 -50 {lab=output}
N -60 10 -60 30 {lab=#net1}
N -60 -130 10 -130 {lab=VDD}
N -40 -130 -40 -100 {lab=VDD}
N -10 -100 10 -100 {lab=VDD}
N -10 -130 -10 -100 {lab=VDD}
N -30 -160 -30 -130 {lab=VDD}
N -60 -20 -20 -20 {lab=0}
N -20 -20 -20 80 {lab=0}
N -60 60 -20 60 {lab=0}
N -30 -50 60 -50 {lab=output}
N -20 80 -20 90 {lab=0}
N -60 90 -20 90 {lab=0}
N -150 -70 -60 -70 {lab=output}
N -150 -130 -60 -130 {lab=VDD}
N -150 -100 -40 -100 {lab=VDD}
N 10 -130 80 -130 {lab=VDD}
N 10 -100 80 -100 {lab=VDD}
N 10 -70 80 -70 {lab=output}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -80 -20 0 0 {name=M1
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -170 -100 0 0 {name=M2
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 100 -100 0 1 {name=M3
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
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -80 60 0 0 {name=M4
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
C {vdd.sym} -30 -160 0 0 {name=l1 lab=VDD}
C {gnd.sym} -60 90 0 0 {name=l2 lab=0}
C {opin.sym} 60 -50 0 0 {name=p5 lab=output}
C {ipin.sym} -190 -100 0 0 {name=p1 lab=A}
C {ipin.sym} 120 -100 0 1 {name=p3 lab=B}
C {lab_pin.sym} -100 -20 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -100 60 0 0 {name=p4 sig_type=std_logic lab=B}
C {vsource.sym} -440 -110 0 0 {name=V1 value="PULSE(1.8 0 2n 100p 100p 9.9n 80n)" savecurrent=false}
C {vsource.sym} -440 10 0 0 {name=V2 value="PULSE(1.8 0 22n 100p 100p 9.9n 80n)" savecurrent=false}
C {vsource.sym} -310 -160 0 0 {name=V3 value=1.8 savecurrent=false}
C {vdd.sym} -310 -190 0 0 {name=l3 lab=VDD}
C {gnd.sym} -310 -130 0 0 {name=l4 lab=0}
C {gnd.sym} -440 -80 0 0 {name=l5 lab=0}
C {gnd.sym} -440 40 0 0 {name=l6 lab=0}
C {lab_pin.sym} -440 -140 0 0 {name=p6 sig_type=std_logic lab=A}
C {lab_pin.sym} -440 -20 0 0 {name=p7 sig_type=std_logic lab=B}
C {capa.sym} 50 -20 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 50 10 0 0 {name=l7 lab=0}
