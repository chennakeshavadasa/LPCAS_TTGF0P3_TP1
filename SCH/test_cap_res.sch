v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 490 -400 1290 0 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.4766333e-05
x2=-4.766333e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
T {PMOS Cap(W=L=1u)=~4.75fF} 130 -220 0 0 0.4 0.4 {}
N 320 -0 350 0 {lab=VDD}
N 350 0 380 0 {lab=VDD}
N 350 -140 350 -40 {lab=Vcap}
N -130 -30 -130 10 {lab=0}
N 180 -40 180 0 {lab=0}
N -130 -150 -130 -90 {lab=VDD}
N 180 -160 180 -100 {lab=#net1}
N 350 -160 350 -140 {lab=Vcap}
N -30 0 -10 0 {lab=0
spice_ignore=true}
N -30 -30 -30 0 {lab=0
spice_ignore=true}
N 300 -160 350 -160 {lab=Vcap}
N 180 -160 240 -160 {lab=#net1}
C {symbols/ppolyf_u_3k.sym} -10 -30 0 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_3k
spiceprefix=X
m=1
spice_ignore=true}
C {symbols/pfet_03v3.sym} 350 -20 1 0 {name=M1
L=1u
W=1u
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
C {vsource.sym} 180 -70 0 0 {name=V1 value="0 ac 1" savecurrent=false}
C {vsource.sym} -130 -60 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -130 10 0 0 {name=l1 lab=0}
C {gnd.sym} 180 0 0 0 {name=l2 lab=0}
C {gnd.sym} -10 0 0 0 {name=l3 lab=0
spice_ignore=true}
C {ammeter.sym} -10 -90 0 0 {name=Vmeas savecurrent=true spice_ignore=true}
C {vdd.sym} -130 -150 0 0 {name=l4 lab=VDD}
C {vdd.sym} -10 -120 0 0 {name=l5 lab=VDD
spice_ignore=true}
C {devices/code_shown.sym} -640 -260 0 0 {name="DC_OP_SIMS" only_toplevel=true 
value="
.option wnflag=1 gmin=1e-18
.option savecurrents
.temp 27
.control
save all
op
write /home/nithin/eda/ttgf0p3/test_cap_res.raw
set appendwrite 
ac dec 20 1 1e15
plot vdb(Vcap)
write /home/nithin/eda/ttgf0p3/test_cap_res.raw
.endc
"
}
C {lab_pin.sym} 350 -160 2 0 {name=p1 sig_type=std_logic lab=Vcap}
C {res.sym} 270 -160 1 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {vdd.sym} 350 0 2 0 {name=l6 lab=VDD}
C {devices/code_shown.sym} -350 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} -330 90 0 0 {name=l7 author="Nithin Purushothama"}
