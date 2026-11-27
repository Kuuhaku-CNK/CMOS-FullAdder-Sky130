v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/designs/fulladder1bit_LPE.spice
XFA A B C CO S vdd 0 fulladder1bit

.control
save all
tran 50p 400n

plot v(a)
plot v(b)
plot v(c)
plot v(co)
plot v(s)

write /foss/designs/tb_WLfulladder_post.raw

.endc
}
F {}
E {}
C {vsource.sym} 400 -140 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 470 -140 0 0 {name=V2 value="PULSE(0 1.8 200n 100p 100p 200n 400n)" savecurrent=false}
C {vsource.sym} 540 -140 0 0 {name=V3 value="PULSE(0 1.8 100n 100p 100p 100n 200n)" savecurrent=false}
C {vsource.sym} 610 -140 0 0 {name=V4 value="PULSE(0 1.8 50n 100p 100p 50n 100n)" savecurrent=false}
C {vdd.sym} 400 -170 0 0 {name=l3 lab=VDD}
C {gnd.sym} 400 -110 0 0 {name=l4 lab=0}
C {gnd.sym} 470 -110 0 0 {name=l5 lab=0}
C {gnd.sym} 540 -110 0 0 {name=l6 lab=0}
C {gnd.sym} 610 -110 0 0 {name=l7 lab=0}
C {lab_pin.sym} 470 -170 0 0 {name=p55 sig_type=std_logic lab=A}
C {lab_pin.sym} 540 -170 0 0 {name=p56 sig_type=std_logic lab=B}
C {lab_pin.sym} 610 -170 0 0 {name=p57 sig_type=std_logic lab=C}
