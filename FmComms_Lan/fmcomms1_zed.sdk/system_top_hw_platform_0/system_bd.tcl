
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ddr [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr ]
  set fixed_io [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 fixed_io ]
  set i2s [ create_bd_intf_port -mode Master -vlnv analog.com:interface:i2s_rtl:1.0 i2s ]
  set iic_fmc [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_fmc ]

  # Create ports
  set adc_clk_in_n [ create_bd_port -dir I adc_clk_in_n ]
  set adc_clk_in_p [ create_bd_port -dir I adc_clk_in_p ]
  set adc_data_in_n [ create_bd_port -dir I -from 13 -to 0 adc_data_in_n ]
  set adc_data_in_p [ create_bd_port -dir I -from 13 -to 0 adc_data_in_p ]
  set adc_or_in_n [ create_bd_port -dir I adc_or_in_n ]
  set adc_or_in_p [ create_bd_port -dir I adc_or_in_p ]
  set dac_clk_in_n [ create_bd_port -dir I dac_clk_in_n ]
  set dac_clk_in_p [ create_bd_port -dir I dac_clk_in_p ]
  set dac_clk_out_n [ create_bd_port -dir O dac_clk_out_n ]
  set dac_clk_out_p [ create_bd_port -dir O dac_clk_out_p ]
  set dac_data_out_n [ create_bd_port -dir O -from 15 -to 0 dac_data_out_n ]
  set dac_data_out_p [ create_bd_port -dir O -from 15 -to 0 dac_data_out_p ]
  set dac_frame_out_n [ create_bd_port -dir O dac_frame_out_n ]
  set dac_frame_out_p [ create_bd_port -dir O dac_frame_out_p ]
  set gpio_i [ create_bd_port -dir I -from 63 -to 0 gpio_i ]
  set gpio_o [ create_bd_port -dir O -from 63 -to 0 gpio_o ]
  set gpio_t [ create_bd_port -dir O -from 63 -to 0 gpio_t ]
  set hdmi_data [ create_bd_port -dir O -from 15 -to 0 hdmi_data ]
  set hdmi_data_e [ create_bd_port -dir O hdmi_data_e ]
  set hdmi_hsync [ create_bd_port -dir O hdmi_hsync ]
  set hdmi_out_clk [ create_bd_port -dir O hdmi_out_clk ]
  set hdmi_vsync [ create_bd_port -dir O hdmi_vsync ]
  set i2s_mclk [ create_bd_port -dir O -type clk i2s_mclk ]
  set iic_mux_scl_i [ create_bd_port -dir I -from 1 -to 0 iic_mux_scl_i ]
  set iic_mux_scl_o [ create_bd_port -dir O -from 1 -to 0 iic_mux_scl_o ]
  set iic_mux_scl_t [ create_bd_port -dir O iic_mux_scl_t ]
  set iic_mux_sda_i [ create_bd_port -dir I -from 1 -to 0 iic_mux_sda_i ]
  set iic_mux_sda_o [ create_bd_port -dir O -from 1 -to 0 iic_mux_sda_o ]
  set iic_mux_sda_t [ create_bd_port -dir O iic_mux_sda_t ]
  set otg_vbusoc [ create_bd_port -dir I otg_vbusoc ]
  set ps_intr_00 [ create_bd_port -dir I -type intr ps_intr_00 ]
  set ps_intr_01 [ create_bd_port -dir I -type intr ps_intr_01 ]
  set ps_intr_02 [ create_bd_port -dir I -type intr ps_intr_02 ]
  set ps_intr_03 [ create_bd_port -dir I -type intr ps_intr_03 ]
  set ps_intr_04 [ create_bd_port -dir I -type intr ps_intr_04 ]
  set ps_intr_05 [ create_bd_port -dir I -type intr ps_intr_05 ]
  set ps_intr_06 [ create_bd_port -dir I -type intr ps_intr_06 ]
  set ps_intr_07 [ create_bd_port -dir I -type intr ps_intr_07 ]
  set ps_intr_08 [ create_bd_port -dir I -type intr ps_intr_08 ]
  set ps_intr_09 [ create_bd_port -dir I -type intr ps_intr_09 ]
  set ps_intr_10 [ create_bd_port -dir I -type intr ps_intr_10 ]
  set ref_clk [ create_bd_port -dir O ref_clk ]
  set spdif [ create_bd_port -dir O spdif ]
  set spi0_clk_i [ create_bd_port -dir I spi0_clk_i ]
  set spi0_clk_o [ create_bd_port -dir O spi0_clk_o ]
  set spi0_csn_0_o [ create_bd_port -dir O spi0_csn_0_o ]
  set spi0_csn_1_o [ create_bd_port -dir O spi0_csn_1_o ]
  set spi0_csn_2_o [ create_bd_port -dir O spi0_csn_2_o ]
  set spi0_csn_i [ create_bd_port -dir I spi0_csn_i ]
  set spi0_sdi_i [ create_bd_port -dir I spi0_sdi_i ]
  set spi0_sdo_i [ create_bd_port -dir I spi0_sdo_i ]
  set spi0_sdo_o [ create_bd_port -dir O spi0_sdo_o ]
  set spi1_clk_i [ create_bd_port -dir I spi1_clk_i ]
  set spi1_clk_o [ create_bd_port -dir O spi1_clk_o ]
  set spi1_csn_0_o [ create_bd_port -dir O spi1_csn_0_o ]
  set spi1_csn_1_o [ create_bd_port -dir O spi1_csn_1_o ]
  set spi1_csn_2_o [ create_bd_port -dir O spi1_csn_2_o ]
  set spi1_csn_i [ create_bd_port -dir I spi1_csn_i ]
  set spi1_sdi_i [ create_bd_port -dir I spi1_sdi_i ]
  set spi1_sdo_i [ create_bd_port -dir I spi1_sdo_i ]
  set spi1_sdo_o [ create_bd_port -dir O spi1_sdo_o ]

  # Create instance: axi_ad9122, and set properties
  set axi_ad9122 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9122:1.0 axi_ad9122 ]

  # Create instance: axi_ad9122_dma, and set properties
  set axi_ad9122_dma [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_ad9122_dma ]
  set_property -dict [ list \
CONFIG.AXI_SLICE_DEST {true} \
CONFIG.AXI_SLICE_SRC {true} \
CONFIG.CYCLIC {true} \
CONFIG.DMA_2D_TRANSFER {false} \
CONFIG.DMA_DATA_WIDTH_DEST {128} \
CONFIG.DMA_TYPE_DEST {2} \
CONFIG.DMA_TYPE_SRC {0} \
CONFIG.FIFO_SIZE {16} \
 ] $axi_ad9122_dma

  # Create instance: axi_ad9643, and set properties
  set axi_ad9643 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9643:1.0 axi_ad9643 ]

  # Create instance: axi_ad9643_dma, and set properties
  set axi_ad9643_dma [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_ad9643_dma ]
  set_property -dict [ list \
CONFIG.AXI_SLICE_DEST {true} \
CONFIG.AXI_SLICE_SRC {true} \
CONFIG.CYCLIC {false} \
CONFIG.DMA_2D_TRANSFER {false} \
CONFIG.DMA_DATA_WIDTH_DEST {64} \
CONFIG.DMA_TYPE_DEST {0} \
CONFIG.DMA_TYPE_SRC {2} \
CONFIG.FIFO_SIZE {16} \
CONFIG.SYNC_TRANSFER_START {true} \
 ] $axi_ad9643_dma

  # Create instance: axi_cpu_interconnect, and set properties
  set axi_cpu_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_cpu_interconnect ]
  set_property -dict [ list \
CONFIG.NUM_MI {12} \
 ] $axi_cpu_interconnect

  # Create instance: axi_hdmi_clkgen, and set properties
  set axi_hdmi_clkgen [ create_bd_cell -type ip -vlnv analog.com:user:axi_clkgen:1.0 axi_hdmi_clkgen ]

  # Create instance: axi_hdmi_core, and set properties
  set axi_hdmi_core [ create_bd_cell -type ip -vlnv analog.com:user:axi_hdmi_tx:1.0 axi_hdmi_core ]

  # Create instance: axi_hdmi_dma, and set properties
  set axi_hdmi_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_hdmi_dma ]
  set_property -dict [ list \
CONFIG.c_include_s2mm {0} \
CONFIG.c_m_axis_mm2s_tdata_width {64} \
CONFIG.c_use_mm2s_fsync {1} \
 ] $axi_hdmi_dma

  # Create instance: axi_hp0_interconnect, and set properties
  set axi_hp0_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_hp0_interconnect ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
 ] $axi_hp0_interconnect

  # Create instance: axi_hp1_interconnect, and set properties
  set axi_hp1_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_hp1_interconnect ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
 ] $axi_hp1_interconnect

  # Create instance: axi_hp2_interconnect, and set properties
  set axi_hp2_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_hp2_interconnect ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
 ] $axi_hp2_interconnect

  # Create instance: axi_i2s_adi, and set properties
  set axi_i2s_adi [ create_bd_cell -type ip -vlnv analog.com:user:axi_i2s_adi:1.0 axi_i2s_adi ]
  set_property -dict [ list \
CONFIG.DMA_TYPE {1} \
CONFIG.S_AXI_ADDRESS_WIDTH {16} \
 ] $axi_i2s_adi

  # Create instance: axi_iic_fmc, and set properties
  set axi_iic_fmc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_fmc ]

  # Create instance: axi_iic_main, and set properties
  set axi_iic_main [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_main ]
  set_property -dict [ list \
CONFIG.IIC_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_main

  # Create instance: axi_spdif_tx_core, and set properties
  set axi_spdif_tx_core [ create_bd_cell -type ip -vlnv analog.com:user:axi_spdif_tx:1.0 axi_spdif_tx_core ]
  set_property -dict [ list \
CONFIG.DMA_TYPE {1} \
CONFIG.S_AXI_ADDRESS_WIDTH {16} \
 ] $axi_spdif_tx_core

  # Create instance: refclk_clkgen, and set properties
  set refclk_clkgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 refclk_clkgen ]
  set_property -dict [ list \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {30} \
CONFIG.JITTER_SEL {Min_O_Jitter} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_PHASE_ALIGNMENT {false} \
CONFIG.USE_RESET {false} \
 ] $refclk_clkgen

  # Create instance: sinGen_0, and set properties
  set sinGen_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:sinGen:1.0 sinGen_0 ]

  # Create instance: sys_audio_clkgen, and set properties
  set sys_audio_clkgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 sys_audio_clkgen ]
  set_property -dict [ list \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.288} \
CONFIG.PRIM_IN_FREQ {200.000} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {true} \
 ] $sys_audio_clkgen

  # Create instance: sys_concat_intc, and set properties
  set sys_concat_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 sys_concat_intc ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {16} \
 ] $sys_concat_intc

  # Create instance: sys_i2c_mixer, and set properties
  set sys_i2c_mixer [ create_bd_cell -type ip -vlnv analog.com:user:util_i2c_mixer:1.0 sys_i2c_mixer ]

  # Create instance: sys_logic_inv, and set properties
  set sys_logic_inv [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 sys_logic_inv ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $sys_logic_inv

  # Create instance: sys_ps7, and set properties
  set sys_ps7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 sys_ps7 ]
  set_property -dict [ list \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.0} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200.0} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {64} \
CONFIG.PCW_IMPORT_BOARD_PRESET {ZedBoard} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_IRQ_F2P_MODE {REVERSE} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SPI0_SPI0_IO {EMIO} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SPI1_SPI1_IO {EMIO} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USE_DMA0 {1} \
CONFIG.PCW_USE_DMA1 {1} \
CONFIG.PCW_USE_DMA2 {1} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {1} \
CONFIG.PCW_USE_S_AXI_HP2 {1} \
 ] $sys_ps7

  # Create instance: sys_rstgen, and set properties
  set sys_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 sys_rstgen ]
  set_property -dict [ list \
CONFIG.C_EXT_RST_WIDTH {1} \
 ] $sys_rstgen

  # Create instance: util_ad9643_adc_fifo, and set properties
  set util_ad9643_adc_fifo [ create_bd_cell -type ip -vlnv analog.com:user:util_wfifo:1.0 util_ad9643_adc_fifo ]
  set_property -dict [ list \
CONFIG.DIN_ADDRESS_WIDTH {4} \
CONFIG.DIN_DATA_WIDTH {16} \
CONFIG.DOUT_DATA_WIDTH {32} \
CONFIG.NUM_OF_CHANNELS {2} \
 ] $util_ad9643_adc_fifo

  # Create instance: util_cpack_ad9643, and set properties
  set util_cpack_ad9643 [ create_bd_cell -type ip -vlnv analog.com:user:util_cpack:1.0 util_cpack_ad9643 ]
  set_property -dict [ list \
CONFIG.CHANNEL_DATA_WIDTH {32} \
CONFIG.NUM_OF_CHANNELS {2} \
 ] $util_cpack_ad9643

  # Create instance: util_upack_ad9122, and set properties
  set util_upack_ad9122 [ create_bd_cell -type ip -vlnv analog.com:user:util_upack:1.0 util_upack_ad9122 ]
  set_property -dict [ list \
CONFIG.CHANNEL_DATA_WIDTH {64} \
CONFIG.NUM_OF_CHANNELS {2} \
 ] $util_upack_ad9122

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_cpu_interconnect/S00_AXI] [get_bd_intf_pins sys_ps7/M_AXI_GP0]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins axi_hdmi_dma/M_AXI_MM2S] [get_bd_intf_pins axi_hp0_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_3 [get_bd_intf_pins axi_ad9643_dma/m_dest_axi] [get_bd_intf_pins axi_hp1_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_4 [get_bd_intf_pins axi_ad9122_dma/m_src_axi] [get_bd_intf_pins axi_hp2_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M00_AXI [get_bd_intf_pins axi_cpu_interconnect/M00_AXI] [get_bd_intf_pins axi_iic_main/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M01_AXI [get_bd_intf_pins axi_cpu_interconnect/M01_AXI] [get_bd_intf_pins axi_hdmi_clkgen/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M02_AXI [get_bd_intf_pins axi_cpu_interconnect/M02_AXI] [get_bd_intf_pins axi_hdmi_dma/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M03_AXI [get_bd_intf_pins axi_cpu_interconnect/M03_AXI] [get_bd_intf_pins axi_hdmi_core/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M04_AXI [get_bd_intf_pins axi_cpu_interconnect/M04_AXI] [get_bd_intf_pins axi_spdif_tx_core/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M05_AXI [get_bd_intf_pins axi_cpu_interconnect/M05_AXI] [get_bd_intf_pins axi_i2s_adi/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M06_AXI [get_bd_intf_pins axi_cpu_interconnect/M06_AXI] [get_bd_intf_pins axi_iic_fmc/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M07_AXI [get_bd_intf_pins axi_ad9122/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M07_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M08_AXI [get_bd_intf_pins axi_ad9643/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M08_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M09_AXI [get_bd_intf_pins axi_ad9643_dma/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M09_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M10_AXI [get_bd_intf_pins axi_ad9122_dma/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M10_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M11_AXI [get_bd_intf_pins axi_cpu_interconnect/M11_AXI] [get_bd_intf_pins sinGen_0/s_axi_CRTLS]
  connect_bd_intf_net -intf_net axi_hp0_interconnect_M00_AXI [get_bd_intf_pins axi_hp0_interconnect/M00_AXI] [get_bd_intf_pins sys_ps7/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_hp1_interconnect_M00_AXI [get_bd_intf_pins axi_hp1_interconnect/M00_AXI] [get_bd_intf_pins sys_ps7/S_AXI_HP1]
  connect_bd_intf_net -intf_net axi_hp2_interconnect_M00_AXI [get_bd_intf_pins axi_hp2_interconnect/M00_AXI] [get_bd_intf_pins sys_ps7/S_AXI_HP2]
  connect_bd_intf_net -intf_net axi_i2s_adi_DMA_REQ_RX [get_bd_intf_pins axi_i2s_adi/DMA_REQ_RX] [get_bd_intf_pins sys_ps7/DMA2_REQ]
  connect_bd_intf_net -intf_net axi_i2s_adi_DMA_REQ_TX [get_bd_intf_pins axi_i2s_adi/DMA_REQ_TX] [get_bd_intf_pins sys_ps7/DMA1_REQ]
  connect_bd_intf_net -intf_net axi_i2s_adi_I2S [get_bd_intf_ports i2s] [get_bd_intf_pins axi_i2s_adi/I2S]
  connect_bd_intf_net -intf_net axi_iic_fmc_IIC [get_bd_intf_ports iic_fmc] [get_bd_intf_pins axi_iic_fmc/IIC]
  connect_bd_intf_net -intf_net axi_iic_main_IIC [get_bd_intf_pins axi_iic_main/IIC] [get_bd_intf_pins sys_i2c_mixer/upstream]
  connect_bd_intf_net -intf_net axi_spdif_tx_core_DMA_REQ [get_bd_intf_pins axi_spdif_tx_core/DMA_REQ] [get_bd_intf_pins sys_ps7/DMA0_REQ]
  connect_bd_intf_net -intf_net sys_ps7_DDR [get_bd_intf_ports ddr] [get_bd_intf_pins sys_ps7/DDR]
  connect_bd_intf_net -intf_net sys_ps7_DMA0_ACK [get_bd_intf_pins axi_spdif_tx_core/DMA_ACK] [get_bd_intf_pins sys_ps7/DMA0_ACK]
  connect_bd_intf_net -intf_net sys_ps7_DMA1_ACK [get_bd_intf_pins axi_i2s_adi/DMA_ACK_TX] [get_bd_intf_pins sys_ps7/DMA1_ACK]
  connect_bd_intf_net -intf_net sys_ps7_DMA2_ACK [get_bd_intf_pins axi_i2s_adi/DMA_ACK_RX] [get_bd_intf_pins sys_ps7/DMA2_ACK]
  connect_bd_intf_net -intf_net sys_ps7_FIXED_IO [get_bd_intf_ports fixed_io] [get_bd_intf_pins sys_ps7/FIXED_IO]

  # Create port connections
  connect_bd_net -net adc_clk [get_bd_pins axi_ad9643/adc_clk] [get_bd_pins util_ad9643_adc_fifo/din_clk]
  connect_bd_net -net adc_clk_in_n_1 [get_bd_ports adc_clk_in_n] [get_bd_pins axi_ad9643/adc_clk_in_n]
  connect_bd_net -net adc_clk_in_p_1 [get_bd_ports adc_clk_in_p] [get_bd_pins axi_ad9643/adc_clk_in_p]
  connect_bd_net -net adc_data_in_n_1 [get_bd_ports adc_data_in_n] [get_bd_pins axi_ad9643/adc_data_in_n]
  connect_bd_net -net adc_data_in_p_1 [get_bd_ports adc_data_in_p] [get_bd_pins axi_ad9643/adc_data_in_p]
  connect_bd_net -net adc_or_in_n_1 [get_bd_ports adc_or_in_n] [get_bd_pins axi_ad9643/adc_or_in_n]
  connect_bd_net -net adc_or_in_p_1 [get_bd_ports adc_or_in_p] [get_bd_pins axi_ad9643/adc_or_in_p]
  connect_bd_net -net adc_rst [get_bd_pins axi_ad9643/adc_rst] [get_bd_pins util_ad9643_adc_fifo/din_rst]
  connect_bd_net -net axi_ad9122_dac_clk_out_n [get_bd_ports dac_clk_out_n] [get_bd_pins axi_ad9122/dac_clk_out_n]
  connect_bd_net -net axi_ad9122_dac_clk_out_p [get_bd_ports dac_clk_out_p] [get_bd_pins axi_ad9122/dac_clk_out_p]
  connect_bd_net -net axi_ad9122_dac_data_out_n [get_bd_ports dac_data_out_n] [get_bd_pins axi_ad9122/dac_data_out_n]
  connect_bd_net -net axi_ad9122_dac_data_out_p [get_bd_ports dac_data_out_p] [get_bd_pins axi_ad9122/dac_data_out_p]
  connect_bd_net -net axi_ad9122_dac_enable_0 [get_bd_pins axi_ad9122/dac_enable_0] [get_bd_pins util_upack_ad9122/dac_enable_0]
  connect_bd_net -net axi_ad9122_dac_enable_1 [get_bd_pins axi_ad9122/dac_enable_1] [get_bd_pins util_upack_ad9122/dac_enable_1]
  connect_bd_net -net axi_ad9122_dac_frame_out_n [get_bd_ports dac_frame_out_n] [get_bd_pins axi_ad9122/dac_frame_out_n]
  connect_bd_net -net axi_ad9122_dac_frame_out_p [get_bd_ports dac_frame_out_p] [get_bd_pins axi_ad9122/dac_frame_out_p]
  connect_bd_net -net axi_ad9122_dac_valid_0 [get_bd_pins axi_ad9122/dac_valid_0] [get_bd_pins util_upack_ad9122/dac_valid_0]
  connect_bd_net -net axi_ad9122_dac_valid_1 [get_bd_pins axi_ad9122/dac_valid_1] [get_bd_pins util_upack_ad9122/dac_valid_1]
  connect_bd_net -net axi_ad9122_dma_fifo_rd_dout [get_bd_pins axi_ad9122_dma/fifo_rd_dout] [get_bd_pins util_upack_ad9122/dac_data]
  connect_bd_net -net axi_ad9122_dma_fifo_rd_underflow [get_bd_pins axi_ad9122/dac_dunf] [get_bd_pins axi_ad9122_dma/fifo_rd_underflow]
  connect_bd_net -net axi_ad9122_dma_irq [get_bd_pins axi_ad9122_dma/irq] [get_bd_pins sys_concat_intc/In12]
  connect_bd_net -net axi_ad9643_adc_data_0 [get_bd_pins axi_ad9643/adc_data_0] [get_bd_pins util_ad9643_adc_fifo/din_data_0]
  connect_bd_net -net axi_ad9643_adc_data_1 [get_bd_pins axi_ad9643/adc_data_1] [get_bd_pins util_ad9643_adc_fifo/din_data_1]
  connect_bd_net -net axi_ad9643_adc_enable_0 [get_bd_pins axi_ad9643/adc_enable_0] [get_bd_pins util_ad9643_adc_fifo/din_enable_0]
  connect_bd_net -net axi_ad9643_adc_enable_1 [get_bd_pins axi_ad9643/adc_enable_1] [get_bd_pins util_ad9643_adc_fifo/din_enable_1]
  connect_bd_net -net axi_ad9643_adc_valid_0 [get_bd_pins axi_ad9643/adc_valid_0] [get_bd_pins util_ad9643_adc_fifo/din_valid_0]
  connect_bd_net -net axi_ad9643_adc_valid_1 [get_bd_pins axi_ad9643/adc_valid_1] [get_bd_pins util_ad9643_adc_fifo/din_valid_1]
  connect_bd_net -net axi_ad9643_dma_fifo_wr_overflow [get_bd_pins axi_ad9643_dma/fifo_wr_overflow] [get_bd_pins util_ad9643_adc_fifo/dout_ovf]
  connect_bd_net -net axi_ad9643_dma_irq [get_bd_pins axi_ad9643_dma/irq] [get_bd_pins sys_concat_intc/In13]
  connect_bd_net -net axi_hdmi_clkgen_clk_0 [get_bd_pins axi_hdmi_clkgen/clk_0] [get_bd_pins axi_hdmi_core/hdmi_clk]
  connect_bd_net -net axi_hdmi_core_hdmi_16_data [get_bd_ports hdmi_data] [get_bd_pins axi_hdmi_core/hdmi_16_data]
  connect_bd_net -net axi_hdmi_core_hdmi_16_data_e [get_bd_ports hdmi_data_e] [get_bd_pins axi_hdmi_core/hdmi_16_data_e]
  connect_bd_net -net axi_hdmi_core_hdmi_16_hsync [get_bd_ports hdmi_hsync] [get_bd_pins axi_hdmi_core/hdmi_16_hsync]
  connect_bd_net -net axi_hdmi_core_hdmi_16_vsync [get_bd_ports hdmi_vsync] [get_bd_pins axi_hdmi_core/hdmi_16_vsync]
  connect_bd_net -net axi_hdmi_core_hdmi_out_clk [get_bd_ports hdmi_out_clk] [get_bd_pins axi_hdmi_core/hdmi_out_clk]
  connect_bd_net -net axi_hdmi_core_vdma_fs [get_bd_pins axi_hdmi_core/vdma_fs] [get_bd_pins axi_hdmi_core/vdma_fs_ret] [get_bd_pins axi_hdmi_dma/mm2s_fsync]
  connect_bd_net -net axi_hdmi_core_vdma_ready [get_bd_pins axi_hdmi_core/vdma_ready] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tready]
  connect_bd_net -net axi_hdmi_dma_m_axis_mm2s_tdata [get_bd_pins axi_hdmi_core/vdma_data] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tdata]
  connect_bd_net -net axi_hdmi_dma_m_axis_mm2s_tvalid [get_bd_pins axi_hdmi_core/vdma_valid] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_tvalid]
  connect_bd_net -net axi_hdmi_dma_mm2s_introut [get_bd_pins axi_hdmi_dma/mm2s_introut] [get_bd_pins sys_concat_intc/In15]
  connect_bd_net -net axi_iic_fmc_iic2intc_irpt [get_bd_pins axi_iic_fmc/iic2intc_irpt] [get_bd_pins sys_concat_intc/In11]
  connect_bd_net -net axi_iic_main_iic2intc_irpt [get_bd_pins axi_iic_main/iic2intc_irpt] [get_bd_pins sys_concat_intc/In14]
  connect_bd_net -net axi_spdif_tx_core_spdif_tx_o [get_bd_ports spdif] [get_bd_pins axi_spdif_tx_core/spdif_tx_o]
  connect_bd_net -net dac_clk [get_bd_pins axi_ad9122/dac_div_clk] [get_bd_pins axi_ad9122_dma/fifo_rd_clk] [get_bd_pins util_upack_ad9122/dac_clk]
  connect_bd_net -net dac_clk_in_n_1 [get_bd_ports dac_clk_in_n] [get_bd_pins axi_ad9122/dac_clk_in_n]
  connect_bd_net -net dac_clk_in_p_1 [get_bd_ports dac_clk_in_p] [get_bd_pins axi_ad9122/dac_clk_in_p]
  connect_bd_net -net gpio_i_1 [get_bd_ports gpio_i] [get_bd_pins sys_ps7/GPIO_I]
  connect_bd_net -net iic_mux_scl_i_1 [get_bd_ports iic_mux_scl_i] [get_bd_pins sys_i2c_mixer/downstream_scl_I]
  connect_bd_net -net iic_mux_sda_i_1 [get_bd_ports iic_mux_sda_i] [get_bd_pins sys_i2c_mixer/downstream_sda_I]
  connect_bd_net -net otg_vbusoc_1 [get_bd_ports otg_vbusoc] [get_bd_pins sys_logic_inv/Op1]
  connect_bd_net -net ps_intr_00_1 [get_bd_ports ps_intr_00] [get_bd_pins sys_concat_intc/In0]
  connect_bd_net -net ps_intr_01_1 [get_bd_ports ps_intr_01] [get_bd_pins sys_concat_intc/In1]
  connect_bd_net -net ps_intr_02_1 [get_bd_ports ps_intr_02] [get_bd_pins sys_concat_intc/In2]
  connect_bd_net -net ps_intr_03_1 [get_bd_ports ps_intr_03] [get_bd_pins sys_concat_intc/In3]
  connect_bd_net -net ps_intr_04_1 [get_bd_ports ps_intr_04] [get_bd_pins sys_concat_intc/In4]
  connect_bd_net -net ps_intr_05_1 [get_bd_ports ps_intr_05] [get_bd_pins sys_concat_intc/In5]
  connect_bd_net -net ps_intr_06_1 [get_bd_ports ps_intr_06] [get_bd_pins sys_concat_intc/In6]
  connect_bd_net -net ps_intr_07_1 [get_bd_ports ps_intr_07] [get_bd_pins sys_concat_intc/In7]
  connect_bd_net -net ps_intr_08_1 [get_bd_ports ps_intr_08] [get_bd_pins sys_concat_intc/In8]
  connect_bd_net -net ps_intr_09_1 [get_bd_ports ps_intr_09] [get_bd_pins sys_concat_intc/In9]
  connect_bd_net -net ps_intr_10_1 [get_bd_ports ps_intr_10] [get_bd_pins sys_concat_intc/In10]
  connect_bd_net -net refclk_clkgen_clk_out1 [get_bd_ports ref_clk] [get_bd_pins refclk_clkgen/clk_out1]
  connect_bd_net -net spi0_clk_i_1 [get_bd_ports spi0_clk_i] [get_bd_pins sys_ps7/SPI0_SCLK_I]
  connect_bd_net -net spi0_csn_i_1 [get_bd_ports spi0_csn_i] [get_bd_pins sys_ps7/SPI0_SS_I]
  connect_bd_net -net spi0_sdi_i_1 [get_bd_ports spi0_sdi_i] [get_bd_pins sys_ps7/SPI0_MISO_I]
  connect_bd_net -net spi0_sdo_i_1 [get_bd_ports spi0_sdo_i] [get_bd_pins sys_ps7/SPI0_MOSI_I]
  connect_bd_net -net spi1_clk_i_1 [get_bd_ports spi1_clk_i] [get_bd_pins sys_ps7/SPI1_SCLK_I]
  connect_bd_net -net spi1_csn_i_1 [get_bd_ports spi1_csn_i] [get_bd_pins sys_ps7/SPI1_SS_I]
  connect_bd_net -net spi1_sdi_i_1 [get_bd_ports spi1_sdi_i] [get_bd_pins sys_ps7/SPI1_MISO_I]
  connect_bd_net -net spi1_sdo_i_1 [get_bd_ports spi1_sdo_i] [get_bd_pins sys_ps7/SPI1_MOSI_I]
  connect_bd_net -net sys_200m_clk [get_bd_pins axi_ad9122_dma/m_src_axi_aclk] [get_bd_pins axi_ad9643/delay_clk] [get_bd_pins axi_ad9643_dma/fifo_wr_clk] [get_bd_pins axi_ad9643_dma/m_dest_axi_aclk] [get_bd_pins axi_hdmi_clkgen/clk] [get_bd_pins axi_hp1_interconnect/ACLK] [get_bd_pins axi_hp1_interconnect/M00_ACLK] [get_bd_pins axi_hp1_interconnect/S00_ACLK] [get_bd_pins axi_hp2_interconnect/ACLK] [get_bd_pins axi_hp2_interconnect/M00_ACLK] [get_bd_pins axi_hp2_interconnect/S00_ACLK] [get_bd_pins refclk_clkgen/clk_in1] [get_bd_pins sys_audio_clkgen/clk_in1] [get_bd_pins sys_ps7/FCLK_CLK1] [get_bd_pins sys_ps7/S_AXI_HP1_ACLK] [get_bd_pins sys_ps7/S_AXI_HP2_ACLK] [get_bd_pins util_ad9643_adc_fifo/dout_clk] [get_bd_pins util_cpack_ad9643/adc_clk]
  connect_bd_net -net sys_audio_clkgen_clk_out1 [get_bd_ports i2s_mclk] [get_bd_pins axi_i2s_adi/DATA_CLK_I] [get_bd_pins axi_spdif_tx_core/spdif_data_clk] [get_bd_pins sys_audio_clkgen/clk_out1]
  connect_bd_net -net sys_concat_intc_dout [get_bd_pins sys_concat_intc/dout] [get_bd_pins sys_ps7/IRQ_F2P]
  connect_bd_net -net sys_cpu_clk [get_bd_pins axi_ad9122/s_axi_aclk] [get_bd_pins axi_ad9122_dma/s_axi_aclk] [get_bd_pins axi_ad9643/s_axi_aclk] [get_bd_pins axi_ad9643_dma/s_axi_aclk] [get_bd_pins axi_cpu_interconnect/ACLK] [get_bd_pins axi_cpu_interconnect/M00_ACLK] [get_bd_pins axi_cpu_interconnect/M01_ACLK] [get_bd_pins axi_cpu_interconnect/M02_ACLK] [get_bd_pins axi_cpu_interconnect/M03_ACLK] [get_bd_pins axi_cpu_interconnect/M04_ACLK] [get_bd_pins axi_cpu_interconnect/M05_ACLK] [get_bd_pins axi_cpu_interconnect/M06_ACLK] [get_bd_pins axi_cpu_interconnect/M07_ACLK] [get_bd_pins axi_cpu_interconnect/M08_ACLK] [get_bd_pins axi_cpu_interconnect/M09_ACLK] [get_bd_pins axi_cpu_interconnect/M10_ACLK] [get_bd_pins axi_cpu_interconnect/M11_ACLK] [get_bd_pins axi_cpu_interconnect/S00_ACLK] [get_bd_pins axi_hdmi_clkgen/s_axi_aclk] [get_bd_pins axi_hdmi_core/s_axi_aclk] [get_bd_pins axi_hdmi_core/vdma_clk] [get_bd_pins axi_hdmi_dma/m_axi_mm2s_aclk] [get_bd_pins axi_hdmi_dma/m_axis_mm2s_aclk] [get_bd_pins axi_hdmi_dma/s_axi_lite_aclk] [get_bd_pins axi_hp0_interconnect/ACLK] [get_bd_pins axi_hp0_interconnect/M00_ACLK] [get_bd_pins axi_hp0_interconnect/S00_ACLK] [get_bd_pins axi_i2s_adi/DMA_REQ_RX_ACLK] [get_bd_pins axi_i2s_adi/DMA_REQ_TX_ACLK] [get_bd_pins axi_i2s_adi/S_AXI_ACLK] [get_bd_pins axi_iic_fmc/s_axi_aclk] [get_bd_pins axi_iic_main/s_axi_aclk] [get_bd_pins axi_spdif_tx_core/DMA_REQ_ACLK] [get_bd_pins axi_spdif_tx_core/S_AXI_ACLK] [get_bd_pins sinGen_0/ap_clk] [get_bd_pins sys_ps7/DMA0_ACLK] [get_bd_pins sys_ps7/DMA1_ACLK] [get_bd_pins sys_ps7/DMA2_ACLK] [get_bd_pins sys_ps7/FCLK_CLK0] [get_bd_pins sys_ps7/M_AXI_GP0_ACLK] [get_bd_pins sys_ps7/S_AXI_HP0_ACLK] [get_bd_pins sys_rstgen/slowest_sync_clk]
  connect_bd_net -net sys_cpu_reset [get_bd_pins sys_rstgen/peripheral_reset] [get_bd_pins util_cpack_ad9643/adc_rst]
  connect_bd_net -net sys_cpu_resetn [get_bd_pins axi_ad9122/s_axi_aresetn] [get_bd_pins axi_ad9122_dma/m_src_axi_aresetn] [get_bd_pins axi_ad9122_dma/s_axi_aresetn] [get_bd_pins axi_ad9643/s_axi_aresetn] [get_bd_pins axi_ad9643_dma/m_dest_axi_aresetn] [get_bd_pins axi_ad9643_dma/s_axi_aresetn] [get_bd_pins axi_cpu_interconnect/ARESETN] [get_bd_pins axi_cpu_interconnect/M00_ARESETN] [get_bd_pins axi_cpu_interconnect/M01_ARESETN] [get_bd_pins axi_cpu_interconnect/M02_ARESETN] [get_bd_pins axi_cpu_interconnect/M03_ARESETN] [get_bd_pins axi_cpu_interconnect/M04_ARESETN] [get_bd_pins axi_cpu_interconnect/M05_ARESETN] [get_bd_pins axi_cpu_interconnect/M06_ARESETN] [get_bd_pins axi_cpu_interconnect/M07_ARESETN] [get_bd_pins axi_cpu_interconnect/M08_ARESETN] [get_bd_pins axi_cpu_interconnect/M09_ARESETN] [get_bd_pins axi_cpu_interconnect/M10_ARESETN] [get_bd_pins axi_cpu_interconnect/M11_ARESETN] [get_bd_pins axi_cpu_interconnect/S00_ARESETN] [get_bd_pins axi_hdmi_clkgen/s_axi_aresetn] [get_bd_pins axi_hdmi_core/s_axi_aresetn] [get_bd_pins axi_hdmi_dma/axi_resetn] [get_bd_pins axi_hp0_interconnect/ARESETN] [get_bd_pins axi_hp0_interconnect/M00_ARESETN] [get_bd_pins axi_hp0_interconnect/S00_ARESETN] [get_bd_pins axi_hp1_interconnect/ARESETN] [get_bd_pins axi_hp1_interconnect/M00_ARESETN] [get_bd_pins axi_hp1_interconnect/S00_ARESETN] [get_bd_pins axi_hp2_interconnect/ARESETN] [get_bd_pins axi_hp2_interconnect/M00_ARESETN] [get_bd_pins axi_hp2_interconnect/S00_ARESETN] [get_bd_pins axi_i2s_adi/DMA_REQ_RX_RSTN] [get_bd_pins axi_i2s_adi/DMA_REQ_TX_RSTN] [get_bd_pins axi_i2s_adi/S_AXI_ARESETN] [get_bd_pins axi_iic_fmc/s_axi_aresetn] [get_bd_pins axi_iic_main/s_axi_aresetn] [get_bd_pins axi_spdif_tx_core/DMA_REQ_RSTN] [get_bd_pins axi_spdif_tx_core/S_AXI_ARESETN] [get_bd_pins sinGen_0/ap_rst_n] [get_bd_pins sys_audio_clkgen/resetn] [get_bd_pins sys_rstgen/peripheral_aresetn] [get_bd_pins util_ad9643_adc_fifo/dout_rstn]
  connect_bd_net -net sys_i2c_mixer_downstream_scl_O [get_bd_ports iic_mux_scl_o] [get_bd_pins sys_i2c_mixer/downstream_scl_O]
  connect_bd_net -net sys_i2c_mixer_downstream_scl_T [get_bd_ports iic_mux_scl_t] [get_bd_pins sys_i2c_mixer/downstream_scl_T]
  connect_bd_net -net sys_i2c_mixer_downstream_sda_O [get_bd_ports iic_mux_sda_o] [get_bd_pins sys_i2c_mixer/downstream_sda_O]
  connect_bd_net -net sys_i2c_mixer_downstream_sda_T [get_bd_ports iic_mux_sda_t] [get_bd_pins sys_i2c_mixer/downstream_sda_T]
  connect_bd_net -net sys_logic_inv_Res [get_bd_pins sys_logic_inv/Res] [get_bd_pins sys_ps7/USB0_VBUS_PWRFAULT]
  connect_bd_net -net sys_ps7_FCLK_RESET0_N [get_bd_pins sys_ps7/FCLK_RESET0_N] [get_bd_pins sys_rstgen/ext_reset_in]
  connect_bd_net -net sys_ps7_GPIO_O [get_bd_ports gpio_o] [get_bd_pins sys_ps7/GPIO_O]
  connect_bd_net -net sys_ps7_GPIO_T [get_bd_ports gpio_t] [get_bd_pins sys_ps7/GPIO_T]
  connect_bd_net -net sys_ps7_SPI0_MOSI_O [get_bd_ports spi0_sdo_o] [get_bd_pins sys_ps7/SPI0_MOSI_O]
  connect_bd_net -net sys_ps7_SPI0_SCLK_O [get_bd_ports spi0_clk_o] [get_bd_pins sys_ps7/SPI0_SCLK_O]
  connect_bd_net -net sys_ps7_SPI0_SS1_O [get_bd_ports spi0_csn_1_o] [get_bd_pins sys_ps7/SPI0_SS1_O]
  connect_bd_net -net sys_ps7_SPI0_SS2_O [get_bd_ports spi0_csn_2_o] [get_bd_pins sys_ps7/SPI0_SS2_O]
  connect_bd_net -net sys_ps7_SPI0_SS_O [get_bd_ports spi0_csn_0_o] [get_bd_pins sys_ps7/SPI0_SS_O]
  connect_bd_net -net sys_ps7_SPI1_MOSI_O [get_bd_ports spi1_sdo_o] [get_bd_pins sys_ps7/SPI1_MOSI_O]
  connect_bd_net -net sys_ps7_SPI1_SCLK_O [get_bd_ports spi1_clk_o] [get_bd_pins sys_ps7/SPI1_SCLK_O]
  connect_bd_net -net sys_ps7_SPI1_SS1_O [get_bd_ports spi1_csn_1_o] [get_bd_pins sys_ps7/SPI1_SS1_O]
  connect_bd_net -net sys_ps7_SPI1_SS2_O [get_bd_ports spi1_csn_2_o] [get_bd_pins sys_ps7/SPI1_SS2_O]
  connect_bd_net -net sys_ps7_SPI1_SS_O [get_bd_ports spi1_csn_0_o] [get_bd_pins sys_ps7/SPI1_SS_O]
  connect_bd_net -net util_ad9643_adc_fifo_din_ovf [get_bd_pins axi_ad9643/adc_dovf] [get_bd_pins util_ad9643_adc_fifo/din_ovf]
  connect_bd_net -net util_ad9643_adc_fifo_dout_data_0 [get_bd_pins util_ad9643_adc_fifo/dout_data_0] [get_bd_pins util_cpack_ad9643/adc_data_0]
  connect_bd_net -net util_ad9643_adc_fifo_dout_data_1 [get_bd_pins util_ad9643_adc_fifo/dout_data_1] [get_bd_pins util_cpack_ad9643/adc_data_1]
  connect_bd_net -net util_ad9643_adc_fifo_dout_enable_0 [get_bd_pins util_ad9643_adc_fifo/dout_enable_0] [get_bd_pins util_cpack_ad9643/adc_enable_0]
  connect_bd_net -net util_ad9643_adc_fifo_dout_enable_1 [get_bd_pins util_ad9643_adc_fifo/dout_enable_1] [get_bd_pins util_cpack_ad9643/adc_enable_1]
  connect_bd_net -net util_ad9643_adc_fifo_dout_valid_0 [get_bd_pins util_ad9643_adc_fifo/dout_valid_0] [get_bd_pins util_cpack_ad9643/adc_valid_0]
  connect_bd_net -net util_ad9643_adc_fifo_dout_valid_1 [get_bd_pins util_ad9643_adc_fifo/dout_valid_1] [get_bd_pins util_cpack_ad9643/adc_valid_1]
  connect_bd_net -net util_cpack_ad9643_adc_data [get_bd_pins axi_ad9643_dma/fifo_wr_din] [get_bd_pins util_cpack_ad9643/adc_data]
  connect_bd_net -net util_cpack_ad9643_adc_sync [get_bd_pins axi_ad9643_dma/fifo_wr_sync] [get_bd_pins util_cpack_ad9643/adc_sync]
  connect_bd_net -net util_cpack_ad9643_adc_valid [get_bd_pins axi_ad9643_dma/fifo_wr_en] [get_bd_pins util_cpack_ad9643/adc_valid]
  connect_bd_net -net util_upack_ad9122_dac_data_0 [get_bd_pins axi_ad9122/dac_ddata_0] [get_bd_pins util_upack_ad9122/dac_data_0]
  connect_bd_net -net util_upack_ad9122_dac_data_1 [get_bd_pins axi_ad9122/dac_ddata_1] [get_bd_pins util_upack_ad9122/dac_data_1]
  connect_bd_net -net util_upack_ad9122_dac_sync [get_bd_pins axi_ad9122/dac_sync_in] [get_bd_pins util_upack_ad9122/dac_sync]
  connect_bd_net -net util_upack_ad9122_dac_valid [get_bd_pins axi_ad9122_dma/fifo_rd_en] [get_bd_pins util_upack_ad9122/dac_valid]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_ad9122_dma/m_src_axi] [get_bd_addr_segs sys_ps7/S_AXI_HP2/HP2_DDR_LOWOCM] SEG_sys_ps7_HP2_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_ad9643_dma/m_dest_axi] [get_bd_addr_segs sys_ps7/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_sys_ps7_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_hdmi_dma/Data_MM2S] [get_bd_addr_segs sys_ps7/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_sys_ps7_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x74200000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_ad9122/s_axi/axi_lite] SEG_data_axi_ad9122
  create_bd_addr_seg -range 0x10000 -offset 0x7C420000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_ad9122_dma/s_axi/axi_lite] SEG_data_axi_ad9122_dma
  create_bd_addr_seg -range 0x10000 -offset 0x79020000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_ad9643/s_axi/axi_lite] SEG_data_axi_ad9643
  create_bd_addr_seg -range 0x10000 -offset 0x7C400000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_ad9643_dma/s_axi/axi_lite] SEG_data_axi_ad9643_dma
  create_bd_addr_seg -range 0x10000 -offset 0x79000000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_clkgen/s_axi/axi_lite] SEG_data_axi_hdmi_clkgen
  create_bd_addr_seg -range 0x10000 -offset 0x70E00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_core/s_axi/axi_lite] SEG_data_axi_hdmi_core
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_hdmi_dma/S_AXI_LITE/Reg] SEG_data_axi_hdmi_dma
  create_bd_addr_seg -range 0x10000 -offset 0x77600000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_i2s_adi/s_axi/axi_lite] SEG_data_axi_i2s_adi
  create_bd_addr_seg -range 0x1000 -offset 0x41620000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_iic_fmc/S_AXI/Reg] SEG_data_axi_iic_fmc
  create_bd_addr_seg -range 0x1000 -offset 0x41600000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_iic_main/S_AXI/Reg] SEG_data_axi_iic_main
  create_bd_addr_seg -range 0x10000 -offset 0x75C00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs axi_spdif_tx_core/s_axi/axi_lite] SEG_data_axi_spdif_tx_core
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces sys_ps7/Data] [get_bd_addr_segs sinGen_0/s_axi_CRTLS/Reg] SEG_sinGen_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port dac_clk_out_p -pg 1 -y 770 -defaultsOSRD
preplace port ps_intr_10 -pg 1 -y 3080 -defaultsOSRD
preplace port spi0_sdi_i -pg 1 -y 3250 -defaultsOSRD
preplace port adc_clk_in_n -pg 1 -y 370 -defaultsOSRD
preplace port dac_clk_in_p -pg 1 -y 630 -defaultsOSRD
preplace port ref_clk -pg 1 -y 2770 -defaultsOSRD
preplace port spi1_csn_1_o -pg 1 -y 2130 -defaultsOSRD
preplace port spi0_csn_2_o -pg 1 -y 1950 -defaultsOSRD
preplace port iic_mux_sda_t -pg 1 -y 1520 -defaultsOSRD
preplace port fixed_io -pg 1 -y 1750 -defaultsOSRD
preplace port ps_intr_00 -pg 1 -y 2880 -defaultsOSRD
preplace port spdif -pg 1 -y 2720 -defaultsOSRD
preplace port hdmi_vsync -pg 1 -y 1140 -defaultsOSRD
preplace port hdmi_hsync -pg 1 -y 1120 -defaultsOSRD
preplace port adc_clk_in_p -pg 1 -y 350 -defaultsOSRD
preplace port ps_intr_01 -pg 1 -y 2900 -defaultsOSRD
preplace port spi1_sdi_i -pg 1 -y 3330 -defaultsOSRD
preplace port spi1_csn_i -pg 1 -y 3310 -defaultsOSRD
preplace port ps_intr_02 -pg 1 -y 2920 -defaultsOSRD
preplace port spi0_clk_o -pg 1 -y 1810 -defaultsOSRD
preplace port spi0_csn_i -pg 1 -y 3230 -defaultsOSRD
preplace port ps_intr_03 -pg 1 -y 2940 -defaultsOSRD
preplace port i2s_mclk -pg 1 -y 2580 -defaultsOSRD
preplace port spi1_sdo_i -pg 1 -y 3350 -defaultsOSRD
preplace port ps_intr_04 -pg 1 -y 2960 -defaultsOSRD
preplace port spi1_clk_i -pg 1 -y 3290 -defaultsOSRD
preplace port spi0_sdo_i -pg 1 -y 3270 -defaultsOSRD
preplace port otg_vbusoc -pg 1 -y 2810 -defaultsOSRD
preplace port adc_or_in_n -pg 1 -y 450 -defaultsOSRD
preplace port dac_frame_out_n -pg 1 -y 830 -defaultsOSRD
preplace port ps_intr_05 -pg 1 -y 2980 -defaultsOSRD
preplace port ddr -pg 1 -y 1730 -defaultsOSRD
preplace port ps_intr_06 -pg 1 -y 3000 -defaultsOSRD
preplace port spi0_csn_1_o -pg 1 -y 1930 -defaultsOSRD
preplace port adc_or_in_p -pg 1 -y 430 -defaultsOSRD
preplace port dac_frame_out_p -pg 1 -y 810 -defaultsOSRD
preplace port ps_intr_07 -pg 1 -y 3020 -defaultsOSRD
preplace port spi1_csn_0_o -pg 1 -y 2110 -defaultsOSRD
preplace port spi0_csn_0_o -pg 1 -y 1910 -defaultsOSRD
preplace port ps_intr_08 -pg 1 -y 3040 -defaultsOSRD
preplace port hdmi_data_e -pg 1 -y 1160 -defaultsOSRD
preplace port hdmi_out_clk -pg 1 -y 1100 -defaultsOSRD
preplace port i2s -pg 1 -y 2530 -defaultsOSRD
preplace port dac_clk_out_n -pg 1 -y 790 -defaultsOSRD
preplace port ps_intr_09 -pg 1 -y 3060 -defaultsOSRD
preplace port spi1_sdo_o -pg 1 -y 2050 -defaultsOSRD
preplace port spi0_clk_i -pg 1 -y 3210 -defaultsOSRD
preplace port iic_mux_scl_t -pg 1 -y 1480 -defaultsOSRD
preplace port dac_clk_in_n -pg 1 -y 650 -defaultsOSRD
preplace port spi1_clk_o -pg 1 -y 2010 -defaultsOSRD
preplace port spi1_csn_2_o -pg 1 -y 2150 -defaultsOSRD
preplace port spi0_sdo_o -pg 1 -y 1850 -defaultsOSRD
preplace port iic_fmc -pg 1 -y 2430 -defaultsOSRD
preplace portBus iic_mux_scl_i -pg 1 -y 1710 -defaultsOSRD
preplace portBus dac_data_out_p -pg 1 -y 850 -defaultsOSRD
preplace portBus gpio_o -pg 1 -y 1690 -defaultsOSRD
preplace portBus iic_mux_sda_i -pg 1 -y 1730 -defaultsOSRD
preplace portBus hdmi_data -pg 1 -y 1180 -defaultsOSRD
preplace portBus iic_mux_scl_o -pg 1 -y 1500 -defaultsOSRD
preplace portBus gpio_t -pg 1 -y 1710 -defaultsOSRD
preplace portBus gpio_i -pg 1 -y 1840 -defaultsOSRD
preplace portBus adc_data_in_n -pg 1 -y 410 -defaultsOSRD
preplace portBus iic_mux_sda_o -pg 1 -y 1540 -defaultsOSRD
preplace portBus adc_data_in_p -pg 1 -y 390 -defaultsOSRD
preplace portBus dac_data_out_n -pg 1 -y 870 -defaultsOSRD
preplace inst axi_i2s_adi -pg 1 -lvl 6 -y 2400 -defaultsOSRD
preplace inst axi_hp2_interconnect -pg 1 -lvl 6 -y 1330 -defaultsOSRD
preplace inst refclk_clkgen -pg 1 -lvl 7 -y 2770 -defaultsOSRD
preplace inst axi_ad9643_dma -pg 1 -lvl 5 -y 1540 -defaultsOSRD
preplace inst axi_hdmi_clkgen -pg 1 -lvl 5 -y 1090 -defaultsOSRD
preplace inst axi_hp0_interconnect -pg 1 -lvl 6 -y 1960 -defaultsOSRD
preplace inst axi_hdmi_core -pg 1 -lvl 7 -y 1250 -defaultsOSRD
preplace inst sys_logic_inv -pg 1 -lvl 1 -y 2810 -defaultsOSRD
preplace inst axi_iic_main -pg 1 -lvl 6 -y 1750 -defaultsOSRD
preplace inst sys_concat_intc -pg 1 -lvl 6 -y 3030 -defaultsOSRD
preplace inst sys_audio_clkgen -pg 1 -lvl 7 -y 2650 -defaultsOSRD
preplace inst axi_hdmi_dma -pg 1 -lvl 5 -y 1300 -defaultsOSRD
preplace inst sys_i2c_mixer -pg 1 -lvl 7 -y 1510 -defaultsOSRD
preplace inst sinGen_0 -pg 1 -lvl 4 -y 2060 -defaultsOSRD
preplace inst util_ad9643_adc_fifo -pg 1 -lvl 2 -y 950 -defaultsOSRD
preplace inst util_upack_ad9122 -pg 1 -lvl 3 -y 120 -defaultsOSRD
preplace inst sys_rstgen -pg 1 -lvl 1 -y 1110 -defaultsOSRD
preplace inst util_cpack_ad9643 -pg 1 -lvl 3 -y 910 -defaultsOSRD
preplace inst axi_ad9643 -pg 1 -lvl 5 -y 450 -defaultsOSRD
preplace inst axi_iic_fmc -pg 1 -lvl 7 -y 2450 -defaultsOSRD
preplace inst axi_cpu_interconnect -pg 1 -lvl 3 -y 1370 -defaultsOSRD
preplace inst axi_spdif_tx_core -pg 1 -lvl 6 -y 2700 -defaultsOSRD
preplace inst sys_ps7 -pg 1 -lvl 7 -y 2000 -defaultsOSRD
preplace inst axi_hp1_interconnect -pg 1 -lvl 6 -y 1550 -defaultsOSRD
preplace inst axi_ad9122_dma -pg 1 -lvl 5 -y 800 -defaultsOSRD
preplace inst axi_ad9122 -pg 1 -lvl 7 -y 880 -defaultsOSRD
preplace netloc S00_AXI_2 1 5 1 2400
preplace netloc adc_clk_in_p_1 1 0 5 NJ 350 NJ 350 NJ 350 NJ 350 NJ
preplace netloc axi_hdmi_core_hdmi_out_clk 1 7 1 NJ
preplace netloc iic_mux_sda_i_1 1 0 7 NJ 1730 NJ 1730 NJ 1730 NJ 1000 NJ 1000 NJ 1000 NJ
preplace netloc S00_AXI_3 1 5 1 2390
preplace netloc axi_ad9122_dac_clk_out_p 1 7 1 NJ
preplace netloc sys_ps7_SPI1_MOSI_O 1 7 1 NJ
preplace netloc dac_clk_in_p_1 1 0 7 NJ 620 NJ 620 NJ 650 NJ 650 NJ 650 NJ 650 NJ
preplace netloc S00_AXI_4 1 5 1 2470
preplace netloc axi_ad9643_dma_irq 1 5 1 2330
preplace netloc adc_clk_in_n_1 1 0 5 NJ 370 NJ 370 NJ 370 NJ 370 NJ
preplace netloc dac_clk_in_n_1 1 0 7 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ
preplace netloc ps_intr_06_1 1 0 6 NJ 3000 NJ 3000 NJ 3000 NJ 3000 NJ 3000 NJ
preplace netloc sys_ps7_GPIO_O 1 7 1 NJ
preplace netloc otg_vbusoc_1 1 0 1 NJ
preplace netloc sys_i2c_mixer_downstream_scl_O 1 7 1 NJ
preplace netloc adc_clk 1 1 5 670 10 NJ 10 NJ 10 N 10 2430
preplace netloc ps_intr_02_1 1 0 6 NJ 2920 NJ 2920 NJ 2920 NJ 2920 NJ 2920 NJ
preplace netloc util_ad9643_adc_fifo_dout_valid_0 1 2 1 1030
preplace netloc axi_hdmi_core_hdmi_16_data 1 7 1 NJ
preplace netloc ps_intr_01_1 1 0 6 NJ 2900 NJ 2900 NJ 2900 NJ 2900 NJ 2900 NJ
preplace netloc sys_audio_clkgen_clk_out1 1 5 3 2460 2820 NJ 2820 3560
preplace netloc util_ad9643_adc_fifo_dout_valid_1 1 2 1 1060
preplace netloc axi_ad9643_adc_valid_0 1 1 5 730 430 NJ 430 NJ 170 N 170 2370
preplace netloc axi_hdmi_core_vdma_fs 1 4 4 NJ 1180 NJ 1180 2830 1590 3370
preplace netloc ps_intr_09_1 1 0 6 NJ 3060 NJ 3060 NJ 3060 NJ 3060 NJ 3060 NJ
preplace netloc util_cpack_ad9643_adc_valid 1 3 2 N 890 1880
preplace netloc axi_ad9643_adc_valid_1 1 1 5 710 660 NJ 660 NJ 660 N 660 2370
preplace netloc sys_ps7_GPIO_T 1 7 1 NJ
preplace netloc sys_i2c_mixer_downstream_scl_T 1 7 1 NJ
preplace netloc axi_hdmi_clkgen_clk_0 1 5 2 NJ 1080 2870
preplace netloc sys_i2c_mixer_downstream_sda_O 1 7 1 NJ
preplace netloc axi_ad9122_dac_valid_0 1 2 6 1090 250 NJ 250 NJ 250 NJ 250 NJ 250 3370
preplace netloc util_ad9643_adc_fifo_dout_enable_0 1 2 1 1020
preplace netloc axi_ad9122_dac_valid_1 1 2 6 1110 260 NJ 260 NJ 260 NJ 260 NJ 260 3390
preplace netloc axi_i2s_adi_I2S 1 6 2 NJ 2530 NJ
preplace netloc util_ad9643_adc_fifo_dout_enable_1 1 2 1 1050
preplace netloc adc_data_in_p_1 1 0 5 NJ 390 NJ 390 NJ 390 NJ 390 NJ
preplace netloc axi_ad9122_dma_fifo_rd_underflow 1 4 3 NJ 940 NJ 930 NJ
preplace netloc ps_intr_05_1 1 0 6 NJ 2980 NJ 2980 NJ 2980 NJ 2980 NJ 2980 NJ
preplace netloc sys_ps7_FCLK_RESET0_N 1 0 8 NJ 300 NJ 300 NJ 300 NJ 300 NJ 240 NJ 240 NJ 240 3490
preplace netloc axi_cpu_interconnect_M11_AXI 1 3 1 1440
preplace netloc axi_cpu_interconnect_M04_AXI 1 3 3 N 1340 NJ 1720 NJ
preplace netloc sys_i2c_mixer_downstream_sda_T 1 7 1 NJ
preplace netloc ps_intr_07_1 1 0 6 NJ 3020 NJ 3020 NJ 3020 NJ 3020 NJ 3020 NJ
preplace netloc sys_ps7_DMA1_ACK 1 5 3 2470 2540 NJ 2540 3390
preplace netloc spi0_sdi_i_1 1 0 8 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 3480
preplace netloc ps_intr_00_1 1 0 6 NJ 2880 NJ 2880 NJ 2880 NJ 2880 NJ 2880 NJ
preplace netloc sys_ps7_SPI1_SS2_O 1 7 1 NJ
preplace netloc axi_cpu_interconnect_M01_AXI 1 3 2 1530 1050 N
preplace netloc axi_spdif_tx_core_DMA_REQ 1 6 1 2830
preplace netloc sys_ps7_SPI0_SS1_O 1 7 1 NJ
preplace netloc axi_hdmi_core_hdmi_16_data_e 1 7 1 NJ
preplace netloc sys_ps7_DDR 1 7 1 NJ
preplace netloc axi_i2s_adi_DMA_REQ_RX 1 6 1 2860
preplace netloc spi1_clk_i_1 1 0 8 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 3510
preplace netloc spi0_csn_i_1 1 0 8 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 3450
preplace netloc sys_logic_inv_Res 1 1 7 NJ 2810 NJ 2810 NJ 2810 NJ 2810 NJ 2810 NJ 2720 3430
preplace netloc axi_hp0_interconnect_M00_AXI 1 6 1 N
preplace netloc axi_iic_main_IIC 1 6 1 2840
preplace netloc refclk_clkgen_clk_out1 1 7 1 NJ
preplace netloc ps_intr_08_1 1 0 6 NJ 3040 NJ 3040 NJ 3040 NJ 3040 NJ 3040 NJ
preplace netloc axi_ad9122_dma_irq 1 5 1 2370
preplace netloc sys_ps7_SPI0_MOSI_O 1 7 1 NJ
preplace netloc sys_ps7_SPI1_SS_O 1 7 1 NJ
preplace netloc axi_cpu_interconnect_M08_AXI 1 3 2 1510 330 N
preplace netloc axi_cpu_interconnect_M03_AXI 1 3 4 1520 980 NJ 980 NJ 980 NJ
preplace netloc adc_rst 1 1 5 690 270 NJ 270 NJ 270 N 270 2440
preplace netloc util_upack_ad9122_dac_sync 1 3 4 N 180 NJ 180 NJ 180 NJ
preplace netloc gpio_i_1 1 0 8 NJ 1840 NJ 1840 NJ 1840 NJ 1840 NJ 1840 NJ 1840 NJ 2570 3460
preplace netloc sys_ps7_SPI1_SCLK_O 1 7 1 NJ
preplace netloc ps_intr_04_1 1 0 6 NJ 2960 NJ 2960 NJ 2960 NJ 2960 NJ 2960 NJ
preplace netloc ps_intr_10_1 1 0 6 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ
preplace netloc util_upack_ad9122_dac_valid 1 3 2 1430 210 1940
preplace netloc axi_hdmi_core_vdma_ready 1 5 3 2330 1050 NJ 1050 3380
preplace netloc axi_cpu_interconnect_M00_AXI 1 3 3 1500 1730 NJ 1730 NJ
preplace netloc axi_ad9643_dma_fifo_wr_overflow 1 1 4 730 1700 NJ 1710 1540 1520 N
preplace netloc axi_ad9643_adc_data_0 1 1 5 660 280 NJ 280 NJ 190 N 190 2380
preplace netloc axi_cpu_interconnect_M05_AXI 1 3 3 N 1360 NJ 1710 NJ
preplace netloc axi_ad9643_adc_data_1 1 1 5 650 290 NJ 290 NJ 280 N 280 2340
preplace netloc axi_hdmi_core_hdmi_16_vsync 1 7 1 NJ
preplace netloc axi_hp1_interconnect_M00_AXI 1 6 1 2810
preplace netloc ps_intr_03_1 1 0 6 NJ 2940 NJ 2940 NJ 2940 NJ 2940 NJ 2940 NJ
preplace netloc axi_hdmi_dma_m_axis_mm2s_tdata 1 5 2 2340 1200 NJ
preplace netloc util_upack_ad9122_dac_data_0 1 3 4 NJ 60 NJ 60 NJ 60 2900
preplace netloc axi_ad9122_dac_data_out_n 1 7 1 NJ
preplace netloc sys_200m_clk 1 1 7 680 790 1030 790 N 790 1920 1700 2380 1170 2800 2580 3400
preplace netloc util_ad9643_adc_fifo_din_ovf 1 2 3 NJ 490 N 490 N
preplace netloc util_upack_ad9122_dac_data_1 1 3 4 N 100 NJ 100 NJ 100 NJ
preplace netloc axi_ad9122_dac_data_out_p 1 7 1 NJ
preplace netloc sys_concat_intc_dout 1 6 1 2900
preplace netloc iic_mux_scl_i_1 1 0 7 NJ 1710 NJ 1710 NJ 1740 NJ 1740 NJ 1740 NJ 1670 NJ
preplace netloc axi_cpu_interconnect_M10_AXI 1 3 2 1540 710 N
preplace netloc axi_i2s_adi_DMA_REQ_TX 1 6 1 2840
preplace netloc axi_ad9122_dac_enable_0 1 2 6 1100 230 NJ 220 NJ 220 NJ 220 NJ 220 3410
preplace netloc axi_iic_main_iic2intc_irpt 1 5 2 2440 1820 2780
preplace netloc spi1_sdi_i_1 1 0 8 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 3500
preplace netloc sys_ps7_FIXED_IO 1 7 1 NJ
preplace netloc axi_ad9122_dac_enable_1 1 2 6 1130 240 NJ 240 NJ 230 NJ 230 NJ 230 3450
preplace netloc axi_iic_fmc_iic2intc_irpt 1 5 3 2460 3270 NJ 3270 3420
preplace netloc axi_ad9643_adc_enable_0 1 1 5 720 310 NJ 310 NJ 160 N 160 2470
preplace netloc adc_data_in_n_1 1 0 5 NJ 410 NJ 410 NJ 410 NJ 410 NJ
preplace netloc axi_iic_fmc_IIC 1 7 1 NJ
preplace netloc util_ad9643_adc_fifo_dout_data_0 1 2 1 1040
preplace netloc axi_ad9643_adc_enable_1 1 1 5 700 630 NJ 630 NJ 630 N 630 2330
preplace netloc dac_clk 1 2 6 1080 1030 1500 990 NJ 990 NJ 990 NJ 1040 3380
preplace netloc axi_cpu_interconnect_M02_AXI 1 3 2 1550 1240 N
preplace netloc util_ad9643_adc_fifo_dout_data_1 1 2 1 1070
preplace netloc axi_hdmi_dma_m_axis_mm2s_tvalid 1 5 2 2350 1210 NJ
preplace netloc spi0_clk_i_1 1 0 8 NJ 3210 NJ 3210 NJ 3210 NJ 3210 NJ 3210 NJ 3240 NJ 3240 3520
preplace netloc axi_cpu_interconnect_M06_AXI 1 3 4 N 1380 NJ 1690 NJ 1680 NJ
preplace netloc axi_ad9122_dma_fifo_rd_dout 1 2 3 1120 770 NJ 770 NJ
preplace netloc spi0_sdo_i_1 1 0 8 NJ 3270 NJ 3270 NJ 3270 NJ 3270 NJ 3270 NJ 3280 NJ 3280 3540
preplace netloc axi_hdmi_core_hdmi_16_hsync 1 7 1 NJ
preplace netloc sys_ps7_DMA0_ACK 1 5 3 2470 2560 NJ 2560 3410
preplace netloc sys_cpu_reset 1 1 2 NJ 800 1020
preplace netloc axi_cpu_interconnect_M09_AXI 1 3 2 N 1440 N
preplace netloc axi_cpu_interconnect_M07_AXI 1 3 4 1490 200 NJ 200 NJ 200 NJ
preplace netloc util_cpack_ad9643_adc_data 1 3 2 N 930 1860
preplace netloc axi_ad9122_dac_frame_out_n 1 7 1 NJ
preplace netloc spi1_csn_i_1 1 0 8 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 3470
preplace netloc sys_ps7_SPI0_SS2_O 1 7 1 NJ
preplace netloc axi_spdif_tx_core_spdif_tx_o 1 6 2 NJ 2710 NJ
preplace netloc sys_ps7_DMA2_ACK 1 5 3 2450 2550 NJ 2550 3380
preplace netloc sys_cpu_clk 1 0 8 NJ 1750 NJ 1750 1110 1750 1520 1750 1890 1750 2410 1830 2890 2520 3370
preplace netloc adc_or_in_n_1 1 0 5 NJ 450 NJ 450 NJ 450 NJ 450 NJ
preplace netloc adc_or_in_p_1 1 0 5 NJ 420 NJ 420 NJ 420 NJ 420 NJ
preplace netloc axi_ad9122_dac_frame_out_p 1 7 1 NJ
preplace netloc sys_cpu_resetn 1 1 6 650 1130 1080 1720 1550 1620 1900 1190 2430 1150 2880
preplace netloc sys_ps7_SPI0_SS_O 1 7 1 NJ
preplace netloc sys_ps7_SPI0_SCLK_O 1 7 1 NJ
preplace netloc axi_hp2_interconnect_M00_AXI 1 6 1 2820
preplace netloc spi1_sdo_i_1 1 0 8 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 3530
preplace netloc S00_AXI_1 1 2 6 1110 610 NJ 610 NJ 620 NJ 620 NJ 620 3440
preplace netloc util_cpack_ad9643_adc_sync 1 3 2 N 910 1870
preplace netloc axi_ad9122_dac_clk_out_n 1 7 1 NJ
preplace netloc axi_hdmi_dma_mm2s_introut 1 5 1 2340
preplace netloc sys_ps7_SPI1_SS1_O 1 7 1 NJ
levelinfo -pg 1 0 480 870 1280 1690 2140 2620 3140 3580 -top 0 -bot 3490
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


