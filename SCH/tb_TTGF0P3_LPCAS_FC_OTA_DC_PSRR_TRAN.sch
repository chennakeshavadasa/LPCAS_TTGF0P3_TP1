v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {~2Meg Resistor
for Biasing} 720 -375 0 0 0.2 0.2 {}
N 130 -180 130 -120 {lab=0}
N 220 -180 220 -120 {lab=0}
N 130 -300 130 -240 {lab=VDD}
N 220 -300 220 -240 {lab=VINP}
N 650 -370 650 -310 {lab=VDD}
N 650 -430 650 -370 {lab=VDD}
N 670 -430 670 -400 {lab=VDD}
N 650 -430 670 -430 {lab=VDD}
N 670 -340 670 -300 {lab=#net1}
N 650 -150 650 -90 {lab=0}
N 800 -230 920 -230 {lab=VOUT}
N 880 -230 880 -200 {lab=VOUT}
N 880 -140 880 -110 {lab=0}
N 490 -190 550 -190 {lab=VINP}
N 450 -270 550 -270 {lab=VOUT}
N 880 -460 880 -230 {lab=VOUT}
N 450 -460 450 -270 {lab=VOUT}
N 920 -230 930 -230 {lab=VOUT}
N 450 -190 490 -190 {lab=VINP}
N 450 -460 870 -460 {lab=VOUT}
N 870 -460 880 -460 {lab=VOUT}
C {/home/nithin/eda/ttgf0p3/TTGF0P3_LPCAS_FC_OTA.sym} 330 -230 0 0 {name=x1}
C {devices/code_shown.sym} 980 -530 0 0 {name="DC_OP_SIMS" only_toplevel=true 
value="
.option wnflag=1 gmin=1e-18
.option savecurrents
.temp 27
.control
save all
op
write tb_TTGF0P3_LPCAS_FC_OTA_DC_PSRR_TRAN.raw
set appendwrite 
**psrr sims
ac dec 20 1 1e12
plot vdb(VOUT) 
write tb_TTGF0P3_LPCAS_FC_OTA_DC_PSRR_TRAN.raw
**ip swing DC
dc v2 0 3.3 10m
plot v(VOUT) v(VINP)
**ip swing tran
tran 0.1m 10m uic
let Voffs_tran=v(Vout)-v(Vinp)
plot v(Voffs_tran) 
plot v(VINP) v(Vout)
.endc
"
}
C {devices/code_shown.sym} -30 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 130 -210 0 0 {name=V1 value="dc 3.3 ac 1" savecurrent=false}
C {vsource.sym} 220 -210 0 0 {name=V2 value="dc 1.5 sin(1.5 1.4 1k)" savecurrent=false}
C {gnd.sym} 130 -120 0 0 {name=l3 lab=0}
C {gnd.sym} 220 -120 0 0 {name=l4 lab=0}
C {lab_pin.sym} 130 -300 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -300 0 0 {name=p10 sig_type=std_logic lab=VINP }
C {devices/launcher.sym} 270 -60 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_pin.sym} 650 -430 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {res.sym} 670 -370 0 0 {name=R1
value=2Meg
footprint=1206
device=resistor
m=1}
C {gnd.sym} 650 -90 0 0 {name=l1 lab=0}
C {capa.sym} 880 -170 0 0 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 880 -110 0 0 {name=l2 lab=0}
C {lab_pin.sym} 450 -190 0 0 {name=p2 sig_type=std_logic lab=VINP }
C {lab_pin.sym} 930 -230 2 0 {name=p3 sig_type=std_logic lab=VOUT }
C {title.sym} 160 0 0 0 {name=l6 author="Nithin P and Pranay Patil from LPCAS group IITGn"}
