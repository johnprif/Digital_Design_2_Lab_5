transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/altera/13.0sp1/lab_5/full_adder.vhd}
vcom -2008 -work work {C:/altera/13.0sp1/lab_5/full_adder_8.vhd}

vcom -2008 -work work {C:/altera/13.0sp1/lab_5/simulation/modelsim/full_adder_8_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  full_adder_8

add wave *
view structure
view signals
run -all
