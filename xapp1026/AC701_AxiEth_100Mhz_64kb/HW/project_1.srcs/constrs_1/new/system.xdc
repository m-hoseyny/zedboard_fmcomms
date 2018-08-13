set_property LOC P3 [ get_ports sys_clk_n]
set_property IOSTANDARD DIFF_SSTL15 [ get_ports sys_clk_n] 
set_property LOC R3 [ get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [ get_ports sys_clk_p] 
set_property LOC U4 [ get_ports reset]
set_property IOSTANDARD LVCMOS15 [ get_ports reset]
# additional constraints
#
create_clock -name sys_clk_pin -period "5.0" [get_ports "sys_clk_p"]