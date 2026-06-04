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
N 220 -300 220 -240 {lab=VICM}
N 650 -370 650 -310 {lab=VDD}
N 650 -430 650 -370 {lab=VDD}
N 670 -430 670 -400 {lab=VDD}
N 650 -430 670 -430 {lab=VDD}
N 670 -340 670 -300 {lab=#net1}
N 650 -150 650 -90 {lab=0}
N 800 -230 920 -230 {lab=VOUT}
N 880 -230 880 -200 {lab=VOUT}
N 880 -140 880 -110 {lab=0}
N 490 -190 550 -190 {lab=VICM}
N 450 -270 550 -270 {lab=#net2}
N 880 -460 880 -230 {lab=VOUT}
N 450 -460 450 -270 {lab=#net2}
N 920 -230 930 -230 {lab=VOUT}
N 450 -190 490 -190 {lab=VICM}
N 450 -520 550 -520 {lab=#net2
}
N 610 -520 730 -520 {lab=probe
}
N 680 -710 680 -670 {lab=0
}
N 680 -610 680 -520 {lab=probe
}
N 450 -520 450 -460 {lab=#net2
spice_ignore=short}
N 880 -520 880 -460 {lab=VOUT
spice_ignore=short}
N 790 -520 880 -520 {lab=VOUT
}
C {/home/nithin/eda/ttgf0p3/TTGF0P3_LPCAS_FC_OTA.sym} 330 -230 0 0 {name=x1}
C {devices/code_shown.sym} -20 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 130 -210 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 220 -210 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 130 -120 0 0 {name=l3 lab=0}
C {gnd.sym} 220 -120 0 0 {name=l4 lab=0}
C {lab_pin.sym} 130 -300 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -300 0 0 {name=p10 sig_type=std_logic lab=VICM }
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
C {lab_pin.sym} 450 -190 0 0 {name=p2 sig_type=std_logic lab=VICM }
C {lab_pin.sym} 930 -230 2 0 {name=p3 sig_type=std_logic lab=VOUT }
C {title.sym} 160 0 0 0 {name=l6 author="Nithin P and Pranay Patil from LPCAS group IITGn"}
C {vsource.sym} 760 -520 3 0 {name=Vprobe1 value="dc 0 ac 1" savecurrent=false
}
C {vsource.sym} 580 -520 1 0 {name=Vprobe2 value=0 savecurrent=false
}
C {isource.sym} 680 -640 0 0 {name=Iprobe1 value="dc 0 ac 1"
}
C {gnd.sym} 680 -710 2 0 {name=l7 lab=0
}
C {lab_pin.sym} 680 -520 3 0 {name=p4 sig_type=std_logic lab=probe
}
C {devices/code.sym} 280 -300 0 0 {name=STB_SIMS only_toplevel=true 
value="
.options savecurrents
.control
 save all
 let runs=2
 let run=0

 alter @Vprobe1[acmag]=1
 alter @iprobe1[acmag]=0

 dowhile run < runs
 set run =”$&run”
 ac dec 20 1 1e8
 write tb_TTGF0P3_LPCAS_FC_OTA_\{$run\}.raw
 all
 alter @Vprobe1[acmag]=0
 alter @iprobe1[acmag]=1
 let run = run + 1
 end

 let ip22 = ac2.i(Vprobe2)
 let vprb1 = ac1.probe
 let mb = 1/(vprb1+ip22)-1
 let phase_mb = 180/PI*vp(mb)
 plot vdb(mb)
 plot phase_mb
 plot vdb(mb) phase_mb
 echo "-------------------------------"
 echo "-------------------------------"
 meas ac peak MAX vmag(mb) FROM=2 TO=1.5GHZ
 let f3db = peak/sqrt(2)
 meas ac f1 WHEN vmag(mb)=f3db RISE=1
 meas ac BW WHEN vmag(mb)=f3db FALL=1
 let GBW = peak*BW
 meas ac pm_deg find phase_mb when vdb(mb)=0
 meas ac dominant_pole_f when vdb(mb)=0
 meas ac loop_gain find vdb(mb) at=0.01
 print GBW
 op
 **show m : gm : gmbs : gds : vds : vdsat : vgs : vth : id
.endc"
}
