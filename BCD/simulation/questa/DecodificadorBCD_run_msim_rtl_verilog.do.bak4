transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/dante/Practicas_FPGAs/BCD {C:/Users/dante/Practicas_FPGAs/BCD/DecodificadorBCD.v}
vlog -vlog01compat -work work +incdir+C:/Users/dante/Practicas_FPGAs/BCD {C:/Users/dante/Practicas_FPGAs/BCD/Decoder.v}

vlog -sv -work work +incdir+C:/Users/dante/Practicas_FPGAs/BCD {C:/Users/dante/Practicas_FPGAs/BCD/DecodificadorBCD_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  DecodificadorBCD_tb

add wave *
view structure
view signals
run -all
