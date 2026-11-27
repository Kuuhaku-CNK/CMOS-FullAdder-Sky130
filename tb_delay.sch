v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param wp=2.5 wn=1 lch=0.15
.param alo=0 ahi=1.8 blo=0 bhi=0 clo=0 chi=0

.control
echo Ratio SUM_AVG_ps SUM_WORST_ps COUT_AVG_ps COUT_WORST_ps ALL_AVG_ps ALL_WORST_ps > /foss/designs/tpd_fulladder.txt

foreach w 2.5 2.6 2.7 2.8 2.9 3.0
    setplot const
    let sum_s = 0
    let sum_co = 0
    let worst_s = 0
    let worst_co = 0

    alterparam wp = $w

    foreach sel 1 2 3
        foreach u 0 1.8
            foreach v 0 1.8

                if $sel = 1
                    set pin = a
                    alterparam alo = 0
                    alterparam ahi = 1.8
                    alterparam blo = $u
                    alterparam bhi = $u
                    alterparam clo = $v
                    alterparam chi = $v
                end

                if $sel = 2
                    set pin = b
                    alterparam alo = $u
                    alterparam ahi = $u
                    alterparam blo = 0
                    alterparam bhi = 1.8
                    alterparam clo = $v
                    alterparam chi = $v
                end

                if $sel = 3
                    set pin = c
                    alterparam alo = $u
                    alterparam ahi = $u
                    alterparam blo = $v
                    alterparam bhi = $v
                    alterparam clo = 0
                    alterparam chi = 1.8
                end

                reset
                tran 5p 10n

                if $u = $v
                    meas tran slh TRIG v($pin) VAL=0.9 RISE=1 TD=1.9n TARG v(s) VAL=0.9 RISE=1 TD=1.9n
                    meas tran shl TRIG v($pin) VAL=0.9 FALL=1 TD=6n TARG v(s) VAL=0.9 FALL=1 TD=6n
                else
                    meas tran shl TRIG v($pin) VAL=0.9 RISE=1 TD=1.9n TARG v(s) VAL=0.9 FALL=1 TD=1.9n
                    meas tran slh TRIG v($pin) VAL=0.9 FALL=1 TD=6n TARG v(s) VAL=0.9 RISE=1 TD=6n

                    meas tran clh TRIG v($pin) VAL=0.9 RISE=1 TD=1.9n TARG v(co) VAL=0.9 RISE=1 TD=1.9n
                    meas tran chl TRIG v($pin) VAL=0.9 FALL=1 TD=6n TARG v(co) VAL=0.9 FALL=1 TD=6n
                end

                set ds_lh = "$&slh"
                set ds_hl = "$&shl"

                if $u <> $v
                    set dc_lh = "$&clh"
                    set dc_hl = "$&chl"
                end

                setplot const

                let sum_s = sum_s + $ds_lh + $ds_hl
                let worst_s = (worst_s + $ds_lh + abs(worst_s-$ds_lh))/2
                let worst_s = (worst_s + $ds_hl + abs(worst_s-$ds_hl))/2

                if $u <> $v
                    let sum_co = sum_co + $dc_lh + $dc_hl
                    let worst_co = (worst_co + $dc_lh + abs(worst_co-$dc_lh))/2
                    let worst_co = (worst_co + $dc_hl + abs(worst_co-$dc_hl))/2
                end

            end
        end
    end

    let avg_s = sum_s*1e12/24
    let avg_co = sum_co*1e12/12
    let avg_all = (sum_s+sum_co)*1e12/36

    let ws_ps = worst_s*1e12
    let wc_ps = worst_co*1e12
    let worst_all = (worst_s+worst_co+abs(worst_s-worst_co))*1e12/2

    echo $w $&avg_s $&ws_ps $&avg_co $&wc_ps $&avg_all $&worst_all >> /foss/designs/tpd_fulladder.txt

end
.endc

.end



}
F {}
E {}
N -480 190 -480 220 {lab=#net1}
N -480 220 -450 220 {lab=#net1}
N -540 220 -480 220 {lab=#net1}
N -540 280 -450 280 {lab=gnd}
N -390 190 -390 220 {lab=#net2}
N -450 280 -390 280 {lab=gnd}
N -480 130 -390 130 {lab=#net3}
N -480 80 -450 80 {lab=#net3}
N -450 80 -450 130 {lab=#net3}
N -480 -10 -480 20 {lab=#net4}
N -480 -70 -390 -70 {lab=#net5}
N -390 -70 -390 -40 {lab=#net5}
N -390 20 -390 130 {lab=#net3}
N -480 -100 -390 -100 {lab=#net5}
N -440 -100 -440 -70 {lab=#net5}
N -480 -160 -390 -160 {lab=vdd}
N -390 130 -260 130 {lab=#net3}
N -200 -100 -200 -50 {lab=CO}
N -240 -130 -240 -20 {lab=#net3}
N -390 -160 -200 -160 {lab=vdd}
N -260 -80 -260 130 {lab=#net3}
N -260 -80 -240 -80 {lab=#net3}
N -200 -80 -170 -80 {lab=CO}
N 10 -160 180 -160 {lab=vdd}
N 10 -100 180 -100 {lab=#net6}
N 180 -100 180 -70 {lab=#net6}
N 180 -10 180 20 {lab=#net7}
N 180 80 180 100 {lab=#net8}
N 10 -100 10 10 {lab=#net6}
N 10 70 10 160 {lab=#net9}
N 10 160 180 160 {lab=#net9}
N -120 40 -30 40 {lab=#net3}
N -120 40 -120 140 {lab=#net3}
N -260 130 -120 130 {lab=#net3}
N -120 260 -30 260 {lab=#net3}
N -120 140 -120 260 {lab=#net3}
N 10 160 10 230 {lab=#net9}
N 10 290 10 310 {lab=#net10}
N -60 310 70 310 {lab=#net10}
N -60 370 70 370 {lab=gnd}
N -80 370 -60 370 {lab=gnd}
N 70 370 100 370 {lab=gnd}
N 70 310 100 310 {lab=#net10}
N -80 310 -60 310 {lab=#net10}
N 180 160 180 200 {lab=#net9}
N 180 260 180 280 {lab=#net11}
N 180 340 180 360 {lab=#net12}
N 100 420 180 420 {lab=gnd}
N 100 370 100 420 {lab=gnd}
N 370 100 370 210 {lab=#net9}
N 180 160 370 160 {lab=#net9}
N 410 130 410 180 {lab=S}
N 410 150 460 150 {lab=S}
N -200 -160 10 -160 {lab=vdd}
N -450 280 -450 300 {lab=gnd}
N 180 420 180 450 {lab=gnd}
N -110 -180 -110 -160 {lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -370 160 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -500 -130 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} -220 -20 0 0 {name=M12
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
C {vdd.sym} -120 -210 0 0 {name=l1 lab=vdd}
C {gnd.sym} -170 430 0 0 {name=l2 lab=gnd

}
C {lab_pin.sym} -480 -130 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -390 -130 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -480 -40 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -390 -10 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -480 50 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -200 -130 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 10 -130 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 100 -130 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 180 -130 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 10 40 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 180 -40 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 180 50 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 180 130 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 410 100 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -480 160 0 0 {name=p15 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -390 160 0 0 {name=p16 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -540 250 0 0 {name=p17 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -450 250 0 0 {name=p18 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -390 250 0 0 {name=p19 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -80 340 0 0 {name=p20 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 10 260 0 0 {name=p21 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 10 340 0 0 {name=p22 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 100 340 0 0 {name=p23 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 180 390 0 0 {name=p24 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 180 310 0 0 {name=p25 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 180 230 0 0 {name=p26 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 410 210 0 0 {name=p27 sig_type=std_logic lab=gnd
}
C {opin.sym} -170 -80 0 0 {name=p52 lab=CO}
C {opin.sym} 460 150 0 0 {name=p53 lab=S}
C {vsource.sym} 400 -140 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 470 -140 0 0 {name=V2 value="DC \{alo\} PULSE(\{alo\} \{ahi\} 2n 100p 100p 4n 20n)" savecurrent=false}
C {vsource.sym} 540 -140 0 0 {name=V3 value="DC \{blo\} PULSE(\{blo\} \{bhi\} 2n 100p 100p 4n 20n)" savecurrent=false}
C {vsource.sym} 610 -140 0 0 {name=V4 value="DC \{clo\} PULSE(\{clo\} \{chi\} 2n 100p 100p 4n 20n)" savecurrent=false}
C {vdd.sym} 400 -170 0 0 {name=l3 lab=VDD}
C {gnd.sym} 400 -110 0 0 {name=l4 lab=0}
C {gnd.sym} 470 -110 0 0 {name=l5 lab=0}
C {gnd.sym} 540 -110 0 0 {name=l6 lab=0}
C {gnd.sym} 610 -110 0 0 {name=l7 lab=0}
C {lab_pin.sym} 470 -170 0 0 {name=p55 sig_type=std_logic lab=A}
C {lab_pin.sym} 540 -170 0 0 {name=p56 sig_type=std_logic lab=B}
C {lab_pin.sym} 610 -170 0 0 {name=p57 sig_type=std_logic lab=C}
C {lab_pin.sym} -170 430 0 0 {name=p28 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -120 -210 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -520 -130 0 0 {name=p30 sig_type=std_logic lab=A}
C {lab_pin.sym} -520 -40 0 0 {name=p31 sig_type=std_logic lab=A}
C {lab_pin.sym} -30 -130 0 0 {name=p32 sig_type=std_logic lab=A}
C {lab_pin.sym} -120 340 0 0 {name=p33 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 230 0 1 {name=p34 sig_type=std_logic lab=A}
C {lab_pin.sym} -350 160 0 1 {name=p35 sig_type=std_logic lab=A}
C {lab_pin.sym} -350 -10 0 1 {name=p36 sig_type=std_logic lab=C}
C {lab_pin.sym} -350 -130 0 1 {name=p37 sig_type=std_logic lab=B}
C {lab_pin.sym} -350 250 0 1 {name=p38 sig_type=std_logic lab=B}
C {lab_pin.sym} -490 250 0 0 {name=p39 sig_type=std_logic lab=B}
C {lab_pin.sym} -520 160 0 0 {name=p40 sig_type=std_logic lab=C}
C {lab_pin.sym} -580 250 0 0 {name=p41 sig_type=std_logic lab=A}
C {lab_pin.sym} -520 50 0 0 {name=p42 sig_type=std_logic lab=B}
C {lab_pin.sym} -200 10 0 0 {name=p43 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -200 -20 0 1 {name=p44 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 410 240 0 1 {name=p45 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 60 -130 0 0 {name=p46 sig_type=std_logic lab=B}
C {lab_pin.sym} 140 -130 0 0 {name=p47 sig_type=std_logic lab=C}
C {lab_pin.sym} -30 340 0 0 {name=p48 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 340 0 0 {name=p49 sig_type=std_logic lab=C}
C {lab_pin.sym} 220 310 0 1 {name=p50 sig_type=std_logic lab=B}
C {lab_pin.sym} 220 390 0 1 {name=p51 sig_type=std_logic lab=C}
C {lab_pin.sym} -450 300 0 0 {name=p54 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 180 450 0 0 {name=p58 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 410 70 0 0 {name=p59 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -110 -180 0 0 {name=p60 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 220 -40 0 1 {name=p61 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 50 0 1 {name=p62 sig_type=std_logic lab=B}
C {lab_pin.sym} 220 130 0 1 {name=p63 sig_type=std_logic lab=C}
C {sky130_fd_pr/pfet_01v8.sym} -370 -130 0 1 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} -10 -130 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -130 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 160 -130 0 0 {name=M10
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
C {sky130_fd_pr/pfet_01v8.sym} 200 -40 0 1 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 200 50 0 1 {name=M13
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
C {sky130_fd_pr/pfet_01v8.sym} 200 130 0 1 {name=M14
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
C {sky130_fd_pr/pfet_01v8.sym} -10 40 0 0 {name=M15
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
C {sky130_fd_pr/pfet_01v8.sym} 390 100 0 0 {name=M16
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
C {sky130_fd_pr/pfet_01v8.sym} -220 -130 0 0 {name=M17
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
C {sky130_fd_pr/pfet_01v8.sym} -500 -40 0 0 {name=M18
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
C {sky130_fd_pr/pfet_01v8.sym} -500 50 0 0 {name=M19
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
C {sky130_fd_pr/pfet_01v8.sym} -370 -10 0 1 {name=M27
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
C {sky130_fd_pr/nfet_01v8.sym} -500 160 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -370 250 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -470 250 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -560 250 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -100 340 0 0 {name=M20
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
C {sky130_fd_pr/nfet_01v8.sym} -10 340 0 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 80 340 0 0 {name=M22
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
C {sky130_fd_pr/nfet_01v8.sym} -10 260 0 0 {name=M23
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
C {sky130_fd_pr/nfet_01v8.sym} 200 230 0 1 {name=M24
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
C {sky130_fd_pr/nfet_01v8.sym} 200 310 0 1 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 200 390 0 1 {name=M26
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
C {sky130_fd_pr/nfet_01v8.sym} 390 210 0 0 {name=M28
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
