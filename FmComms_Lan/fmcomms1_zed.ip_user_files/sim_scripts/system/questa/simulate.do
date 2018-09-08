onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "D:/Xilinx/Vivado/2015.4/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib system_opt

do {wave.do}

view wave
view structure
view signals

do {system.udo}

run -all

source {../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0/bd/bd.tcl}
source {../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0/bd/bd.tcl}


quit -force
