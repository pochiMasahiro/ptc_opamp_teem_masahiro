v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 810 260 830 260 {lab=GND}
N 830 260 830 310 {lab=GND}
N 250 330 250 350 {lab=GND}
N 350 330 350 350 {lab=GND}
N 460 330 460 350 {lab=GND}
N 950 340 950 360 {lab=GND}
N 950 220 950 280 {lab=#net1}
N 810 220 950 220 {lab=#net1}
N 460 260 460 270 {lab=#net2}
N 460 260 510 260 {lab=#net2}
N 390 240 500 240 {lab=#net3}
N 500 240 510 240 {lab=#net3}
N 250 220 250 270 {lab=#net4}
N 330 220 510 220 {lab=#net4}
N 810 240 830 240 {lab=out}
N 350 240 350 270 {lab=#net3}
N 350 240 390 240 {lab=#net3}
N 250 220 330 220 {lab=#net4}
C {devices/code.sym} 0 40 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {diff.sym} 660 240 0 0 {name=x1}
C {devices/vsource.sym} 250 300 0 0 {name=Vinn value="DC 2.5" savecurrent=false}
C {devices/vsource.sym} 350 300 0 0 {name=vinp value="DC 2.5 AC 1" savecurrent=false}
C {devices/vsource.sym} 460 300 0 0 {name=vbias value=0.9 savecurrent=false}
C {devices/vsource.sym} 950 310 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 830 310 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 950 360 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 460 350 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 350 350 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 250 350 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 830 240 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 10 230 0 0 {name=s1 only_toplevel=false value="
.option savecurrent
.control
op
show m
save all
ac dec 20 1e3 1e10
plot vdb(out)
print @m.x1.m2[vgs]
print @m.x1.m2[vds]
print @m.x1.m2[vth]
print @m.x1.m2[vgs] - @m.x1.m2[vth]
print @m.x1.m2[gm]
print @m.x1.m2[gds]
print @m.x1.m5[vgs]
print @m.x1.m5[vds]
print @m.x1.m5[vth]
print @m.x1.m5[vgs] - @m.x1.m5[vth]
print @m.x1.m5[gm]
print @m.x1.m5[gds]
print @m.x1.m3[vgs]
print @m.x1.m3[vds]
print @m.x1.m3[vth]
print @m.x1.m3[vgs] - @m.x1.m3[vth]
print @m.x1.m3[gm]
print @m.x1.m3[gds]
.endc
"}
