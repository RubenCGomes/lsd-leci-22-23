vcom -work work FreqDividerWVF.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.FreqDividerTest_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
