v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {CL=50pF(max)
UGB=5MHz
NMOS(worst case SS) VTH=0.79V
PMOS(worst case SS) VTH=0.77V
} 1230 -700 0 0 0.4 0.4 {}
T {VICM(min)=1V
VICM(min)=Vthn(ss)+Vov+Vds(bias)+50mv(margin)~1V
VICM(max)=2.75V
VICM(min)=Vthn(ss)+VDD(min)-(Vthp(ss)+Vovp+50mV(margin))} 1230 -540 0 0 0.4 0.4 {}
T {Input swing = ~ 1V-2.8V} 1230 -580 0 0 0.4 0.4 {}
T {gm/id=20
id/w=0.151
L=1u
} 740 -350 0 0 0.2 0.2 {}
T {gm/id=8
id/w=0.323
L=2u
} 330 -630 0 0 0.2 0.2 {}
T {~1u} 560 -80 0 0 0.4 0.4 {}
T {~1u} 1070 -90 0 0 0.4 0.4 {}
T {~1u} 80 -90 0 0 0.4 0.4 {}
T {gm/id=12
id/w=0.229
L=1u
} 1110 -570 0 0 0.2 0.2 {}
T {gm/id=20
id/w=0.388
L=3u
} 450 -170 0 0 0.2 0.2 {}
T {~50fF} 960 -640 0 0 0.4 0.4 {}
N 460 -520 560 -520 {lab=#net1}
N 580 -600 580 -520 {lab=#net1}
N 500 -600 560 -600 {lab=#net1}
N 560 -600 660 -600 {lab=#net1}
N 460 -630 460 -600 {lab=VDD}
N 460 -700 460 -630 {lab=VDD}
N 460 -700 700 -700 {lab=VDD}
N 700 -700 700 -630 {lab=VDD}
N 460 -340 460 -280 {lab=#net2}
N 460 -280 700 -280 {lab=#net2}
N 700 -340 700 -280 {lab=#net2}
N 700 -630 700 -600 {lab=VDD}
N 1090 -700 1090 -630 {lab=VDD}
N 700 -700 1090 -700 {lab=VDD}
N 700 -500 800 -500 {lab=#net3}
N 800 -500 840 -500 {lab=#net3}
N 580 -190 580 -160 {lab=0}
N 580 -160 580 -100 {lab=0}
N 1090 -190 1090 -160 {lab=0}
N 1090 -160 1090 -100 {lab=0}
N 580 -100 1090 -100 {lab=0}
N 150 -190 540 -190 {lab=#net4}
N 110 -190 110 -160 {lab=0}
N 110 -160 110 -100 {lab=0}
N 110 -100 570 -100 {lab=0}
N 570 -100 580 -100 {lab=0}
N 110 -700 460 -700 {lab=VDD}
N 110 -700 110 -470 {lab=VDD}
N 110 -410 110 -220 {lab=#net4}
N 220 -280 220 -190 {lab=#net4}
N 110 -280 220 -280 {lab=#net4}
N 760 -190 1050 -190 {lab=#net4}
N 760 -190 760 -140 {lab=#net4}
N 400 -140 760 -140 {lab=#net4}
N 400 -190 400 -140 {lab=#net4}
N 460 -370 700 -370 {lab=0}
N 650 -370 650 -100 {lab=0}
N 1090 -530 1090 -500 {lab=VDD}
N 360 -370 420 -370 {lab=VINP}
N 740 -370 800 -370 {lab=VINN}
N -250 -160 -250 -100 {lab=0}
N -150 -160 -150 -100 {lab=0}
N -50 -160 -50 -100 {lab=0}
N -250 -280 -250 -220 {lab=VDD}
N -150 -280 -150 -220 {lab=VINP}
N -50 -280 -50 -220 {lab=#net5}
N 1090 -630 1090 -530 {lab=VDD}
N 840 -500 1050 -500 {lab=#net3}
N 1090 -470 1090 -280 {lab=VINN}
N 890 -590 920 -590 {lab=VDD}
N 920 -590 950 -590 {lab=VDD}
N 920 -550 920 -500 {lab=#net3}
N 920 -700 920 -590 {lab=VDD}
N 890 -700 890 -590 {lab=VDD}
N 950 -700 950 -590 {lab=VDD}
N 1320 -360 1320 -280 {lab=VINN}
N 1090 -360 1320 -360 {lab=VINN}
N 1090 -100 1320 -100 {lab=0}
N 1320 -220 1320 -100 {lab=0}
N 1320 -360 1380 -360 {lab=VINN}
N 460 -420 460 -400 {lab=#net6}
N 460 -520 460 -480 {lab=#net1}
N 460 -560 460 -520 {lab=#net1}
N 460 -570 460 -560 {lab=#net1}
N 700 -420 700 -400 {lab=#net7}
N 700 -520 700 -480 {lab=#net3}
N 700 -570 700 -520 {lab=#net3}
N 560 -520 580 -520 {lab=#net1}
C {symbols/pfet_03v3.sym} 480 -600 0 1 {name=M1
L=4u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 440 -370 0 0 {name=M3
L=1u
W=8.5u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1070 -500 0 0 {name=M5
L=2u
W=2u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 560 -190 0 0 {name=M7
L=4u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1070 -190 0 0 {name=M6
L=3u
W=3u
nf=5
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {isource.sym} 110 -440 0 0 {name=I0 value=1u}
C {title.sym} 160 0 0 0 {name=l1 author="Nithin P and Pranay Patil from LPCAS group IITGn"}
C {symbols/nfet_03v3.sym} 720 -370 0 1 {name=M4
L=1u
W=8.5u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 680 -600 0 0 {name=M2
L=4u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 130 -190 0 1 {name=M8
L=4u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vsource.sym} -250 -190 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -150 -190 0 0 {name=V2 value="1.5 ac 1 180" savecurrent=false}
C {vsource.sym} -50 -190 0 0 {name=V3 value="1.5 ac 1" savecurrent=false}
C {gnd.sym} 580 -100 0 0 {name=l2 lab=0}
C {gnd.sym} -250 -100 0 0 {name=l3 lab=0}
C {gnd.sym} -150 -100 0 0 {name=l4 lab=0}
C {gnd.sym} -50 -100 0 0 {name=l5 lab=0}
C {lab_pin.sym} -250 -280 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 110 -700 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -150 -280 0 0 {name=p3 sig_type=std_logic lab=VINP }
C {lab_pin.sym} 360 -370 0 0 {name=p5 sig_type=std_logic lab=VINP }
C {lab_pin.sym} 800 -370 2 0 {name=p6 sig_type=std_logic lab=VINN }
C {symbols/pfet_03v3.sym} 920 -570 1 1 {name=M9
L=1u
W=1u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {capa.sym} 1320 -250 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} -460 -670 0 0 {name="DC_OP_SIMS" only_toplevel=true 
value="
.option wnflag=1 gmin=1e-18
.option savecurrents
.temp 27
.control
save all
op
write TT_LPCAS_Miller_OTA.raw
set appendwrite 
ac dec 20 1 1e10
let phase_mb = 180/PI*vp(Vout)
plot vdb(Vout) phase_mb
write TT_LPCAS_Miller_OTA.raw
.endc
"
}
C {devices/code_shown.sym} 1370 -280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/launcher.sym} -395 -345 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {ngspice_probe.sym} 700 -500 0 0 {name=r1}
C {ngspice_probe.sym} 1090 -360 0 0 {name=r2}
C {devices/launcher.sym} -110 -570 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {ammeter.sym} 460 -450 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 700 -450 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 580 -250 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1090 -250 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 1380 -360 2 0 {name=p7 sig_type=std_logic lab=VINN }
C {noconn.sym} -50 -280 2 0 {name=l6}
