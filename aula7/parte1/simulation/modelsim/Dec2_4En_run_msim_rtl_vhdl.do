transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/rubeng/Documents/UAlinux/LSD/lsd-leci-22-23/aula7/parte1/Dec2_4En.vhd}

