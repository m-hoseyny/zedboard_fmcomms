# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.cache/wt [current_project]
set_property parent.project_path C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths c:/Users/ArzhangJunior/Desktop/lwipRTOS/tamu.edu_user_ZedboardOLED_1.0 [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files c:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/ip/design_1_ZedboardOLED_0_0/src/charLib/charLib.coe
add_files C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/ip/design_1_ZedboardOLED_0_0/src/charLib/charLib_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/ArzhangJunior/Desktop/lwipRTOS/lwipRTOS.srcs/constrs_1/new/constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top design_1_wrapper -part xc7z020clg484-1
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
