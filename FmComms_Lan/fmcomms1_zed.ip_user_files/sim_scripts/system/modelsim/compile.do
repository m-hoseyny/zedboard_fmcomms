vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_cdc_v1_0_2
vlib msim/axi_lite_ipif_v3_0_3
vlib msim/interrupt_control_v3_1_3
vlib msim/axi_iic_v2_0_10
vlib msim/proc_sys_reset_v5_0_8
vlib msim/util_vector_logic_v2_0
vlib msim/lib_fifo_v1_0_4
vlib msim/lib_bmg_v1_0_3
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_9
vlib msim/axi_vdma_v6_2_6
vlib msim/fifo_generator_v13_0_1
vlib msim/blk_mem_gen_v8_3_1
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_7
vlib msim/axi_data_fifo_v2_1_6
vlib msim/axi_crossbar_v2_1_8
vlib msim/xbip_utils_v3_0_5
vlib msim/axi_utils_v2_0_1
vlib msim/xbip_pipe_v3_0_1
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_dsp48_addsub_v3_0_1
vlib msim/xbip_dsp48_multadd_v3_0_1
vlib msim/xbip_bram18k_v3_0_1
vlib msim/mult_gen_v12_0_10
vlib msim/floating_point_v7_1_1
vlib msim/axi_protocol_converter_v2_1_7

vmap xil_defaultlib msim/xil_defaultlib
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap interrupt_control_v3_1_3 msim/interrupt_control_v3_1_3
vmap axi_iic_v2_0_10 msim/axi_iic_v2_0_10
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap util_vector_logic_v2_0 msim/util_vector_logic_v2_0
vmap lib_fifo_v1_0_4 msim/lib_fifo_v1_0_4
vmap lib_bmg_v1_0_3 msim/lib_bmg_v1_0_3
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_9 msim/axi_datamover_v5_1_9
vmap axi_vdma_v6_2_6 msim/axi_vdma_v6_2_6
vmap fifo_generator_v13_0_1 msim/fifo_generator_v13_0_1
vmap blk_mem_gen_v8_3_1 msim/blk_mem_gen_v8_3_1
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_7 msim/axi_register_slice_v2_1_7
vmap axi_data_fifo_v2_1_6 msim/axi_data_fifo_v2_1_6
vmap axi_crossbar_v2_1_8 msim/axi_crossbar_v2_1_8
vmap xbip_utils_v3_0_5 msim/xbip_utils_v3_0_5
vmap axi_utils_v2_0_1 msim/axi_utils_v2_0_1
vmap xbip_pipe_v3_0_1 msim/xbip_pipe_v3_0_1
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_1 msim/xbip_dsp48_addsub_v3_0_1
vmap xbip_dsp48_multadd_v3_0_1 msim/xbip_dsp48_multadd_v3_0_1
vmap xbip_bram18k_v3_0_1 msim/xbip_bram18k_v3_0_1
vmap mult_gen_v12_0_10 msim/mult_gen_v12_0_10
vmap floating_point_v7_1_1 msim/floating_point_v7_1_1
vmap axi_protocol_converter_v2_1_7 msim/axi_protocol_converter_v2_1_7

vlog -work xil_defaultlib -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \
"../../../bd/system/ip/system_sys_ps7_0/sim/system_sys_ps7_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work axi_lite_ipif_v3_0_3 -64 -93 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work interrupt_control_v3_1_3 -64 -93 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_iic_v2_0_10 -64 -93 \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/soft_reset.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/srl_fifo.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/shift8.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic_pkg.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/debounce.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/reg_interface.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic_control.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/filter.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/dynamic_master.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/axi_ipif_ssp1.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/axi_iic.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_iic_main_0/sim/system_axi_iic_main_0.vhd" \
"../../../bd/system/ipshared/analog.com/util_i2c_mixer_v1_0/util_i2c_mixer.vhd" \
"../../../bd/system/ip/system_sys_i2c_mixer_0/sim/system_sys_i2c_mixer_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../bd/system/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.v" \
"../../../bd/system/ip/system_sys_concat_intc_0/sim/system_sys_concat_intc_0.v" \

vcom -work proc_sys_reset_v5_0_8 -64 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_sys_rstgen_0/sim/system_sys_rstgen_0.vhd" \

vcom -work util_vector_logic_v2_0 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/util_vector_logic_v2_0/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_sys_logic_inv_0/sim/system_sys_logic_inv_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../bd/system/ipshared/analog.com/common/ad_rst.v" \
"../../../bd/system/ipshared/analog.com/common/ad_mmcm_drp.v" \
"../../../bd/system/ipshared/analog.com/common/up_axi.v" \
"../../../bd/system/ipshared/analog.com/common/up_clkgen.v" \
"../../../bd/system/ipshared/analog.com/axi_clkgen_v1_0/axi_clkgen.v" \
"../../../bd/system/ip/system_axi_hdmi_clkgen_0/sim/system_axi_hdmi_clkgen_0.v" \
"../../../bd/system/ipshared/analog.com/common/ad_csc_1_mul.v" \
"../../../bd/system/ipshared/analog.com/common/ad_csc_1_add.v" \
"../../../bd/system/ipshared/analog.com/common/ad_csc_1.v" \
"../../../bd/system/ipshared/analog.com/common/ad_mem.v" \
"../../../bd/system/ipshared/analog.com/common/ad_csc_RGB2CrYCb.v" \
"../../../bd/system/ipshared/analog.com/common/ad_ss_444to422.v" \
"../../../bd/system/ipshared/analog.com/common/up_xfer_cntrl.v" \
"../../../bd/system/ipshared/analog.com/common/up_xfer_status.v" \
"../../../bd/system/ipshared/analog.com/common/up_clock_mon.v" \
"../../../bd/system/ipshared/analog.com/axi_hdmi_tx_v1_0/axi_hdmi_tx_es.v" \
"../../../bd/system/ipshared/analog.com/common/up_hdmi_tx.v" \
"../../../bd/system/ipshared/analog.com/axi_hdmi_tx_v1_0/axi_hdmi_tx_vdma.v" \
"../../../bd/system/ipshared/analog.com/axi_hdmi_tx_v1_0/axi_hdmi_tx_core.v" \
"../../../bd/system/ipshared/analog.com/axi_hdmi_tx_v1_0/axi_hdmi_tx.v" \
"../../../bd/system/ip/system_axi_hdmi_core_0/sim/system_axi_hdmi_core_0.v" \

vcom -work lib_fifo_v1_0_4 -64 -93 \
"../../../ipstatic/lib_fifo_v1_0/hdl/src/vhdl/async_fifo_fg.vhd" \
"../../../ipstatic/lib_fifo_v1_0/hdl/src/vhdl/sync_fifo_fg.vhd" \

vcom -work lib_bmg_v1_0_3 -64 -93 \
"../../../ipstatic/lib_bmg_v1_0/hdl/src/vhdl/blk_mem_gen_wrapper.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_datamover_v5_1_9 -64 -93 \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_reset.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_afifo_autord.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_sfifo_autord.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_fifo.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_cmd_status.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_scc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_strb_gen2.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_pcc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_addr_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rdmux.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rddata_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_status_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_demux.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wrdata_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_status_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid2mm_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_sf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_sf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set_nodre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ibttcc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_indet_btt.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux2_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux4_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux8_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_dre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_dre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ms_strb_set.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mssai_skid_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_slice.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_scatter.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_realign.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_basic_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_omit_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_full_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_basic_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_omit_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_full_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover.vhd" \

vlog -work axi_vdma_v6_2_6 -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_axis2vector.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_vector2axis.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axisc_register_slice.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axis_register_slice.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_upsizer.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_downsizer.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axis_dwidth_converter.v" \

vcom -work axi_vdma_v6_2_6 -64 -93 \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_pkg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_pntr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_afifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_queue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_noqueue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_q_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_queue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_noqueue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_q_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_intrpt.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_pkg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vid_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reset.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_rst_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_lite_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_register.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_regdirect.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_intrpt.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sof_gen.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_skid_buf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_builtin.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_linebuf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_linebuf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_blkmem.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_fsync_gen.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sgregister.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_greycoder.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sts_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_axis_dwidth_converter.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_axis_dwidth_converter.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma.vhd" \

vcom -work fifo_generator_v13_0_1 -64 -93 \
"../../../ipstatic/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../ipstatic/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vcom -work blk_mem_gen_v8_3_1 -64 -93 \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_hdmi_dma_0/sim/system_axi_hdmi_dma_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_clk_wiz.v" \
"../../../bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/analog.com/common/dma_fifo.vhd" \
"../../../bd/system/ipshared/analog.com/common/axi_ctrlif.vhd" \
"../../../bd/system/ipshared/analog.com/common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/system/ipshared/analog.com/common/pl330_dma_fifo.vhd" \
"../../../bd/system/ipshared/analog.com/axi_spdif_tx_v1_0/tx_package.vhd" \
"../../../bd/system/ipshared/analog.com/axi_spdif_tx_v1_0/tx_encoder.vhd" \
"../../../bd/system/ipshared/analog.com/axi_spdif_tx_v1_0/axi_spdif_tx.vhd" \
"../../../bd/system/ip/system_axi_spdif_tx_core_0/sim/system_axi_spdif_tx_core_0.vhd" \
"../../../bd/system/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_rx.vhd" \
"../../../bd/system/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_tx.vhd" \
"../../../bd/system/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_clkgen.vhd" \
"../../../bd/system/ipshared/analog.com/axi_i2s_adi_v1_0/fifo_synchronizer.vhd" \
"../../../bd/system/ipshared/analog.com/common/axi_streaming_dma_rx_fifo.vhd" \
"../../../bd/system/ipshared/analog.com/axi_i2s_adi_v1_0/i2s_controller.vhd" \
"../../../bd/system/ipshared/analog.com/axi_i2s_adi_v1_0/axi_i2s_adi.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_0/sim/system_axi_i2s_adi_0.vhd" \
"../../../bd/system/ip/system_axi_iic_fmc_0/sim/system_axi_iic_fmc_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_7 -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work axi_data_fifo_v2_1_6 -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_8 -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ipshared/analog.com/common/ad_mul.v" \
"../../../bd/system/ipshared/analog.com/common/ad_dds_sine.v" \
"../../../bd/system/ipshared/analog.com/common/ad_dds_1.v" \
"../../../bd/system/ipshared/analog.com/common/ad_dds.v" \
"../../../bd/system/ipshared/analog.com/common/up_dac_channel.v" \
"../../../bd/system/ipshared/analog.com/common/ad_serdes_out.v" \
"../../../bd/system/ipshared/analog.com/common/ad_serdes_clk.v" \
"../../../bd/system/ipshared/analog.com/common/up_dac_common.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9122_v1_0/axi_ad9122_channel.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9122_v1_0/axi_ad9122_core.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9122_v1_0/axi_ad9122_if.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9122_v1_0/axi_ad9122.v" \
"../../../bd/system/ip/system_axi_ad9122_0/sim/system_axi_ad9122_0.v" \
"../../../bd/system/ipshared/analog.com/util_axis_resize_v1_0/util_axis_resize.v" \
"../../../bd/system/ipshared/analog.com/common/sync_gray.v" \
"../../../bd/system/ipshared/analog.com/common/sync_bits.v" \
"../../../bd/system/ipshared/analog.com/util_axis_fifo_v1_0/address_gray_pipelined.v" \
"../../../bd/system/ipshared/analog.com/util_axis_fifo_v1_0/address_sync.v" \
"../../../bd/system/ipshared/analog.com/util_axis_fifo_v1_0/util_axis_fifo.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/address_generator.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/data_mover.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/response_handler.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/splitter.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/response_generator.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/request_generator.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/axi_register_slice.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/dest_axi_mm.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/dest_axi_stream.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/dest_fifo_inf.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/src_axi_mm.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/src_axi_stream.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/src_fifo_inf.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/request_arb.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/2d_transfer.v" \
"../../../bd/system/ipshared/analog.com/axi_dmac_v1_0/axi_dmac.v" \
"../../../bd/system/ip/system_axi_ad9122_dma_0/sim/system_axi_ad9122_dma_0.v" \
"../../../bd/system/ipshared/analog.com/util_upack_v1_0/util_upack_dmx.v" \
"../../../bd/system/ipshared/analog.com/util_upack_v1_0/util_upack_dsf.v" \
"../../../bd/system/ipshared/analog.com/util_upack_v1_0/util_upack.v" \
"../../../bd/system/ip/system_util_upack_ad9122_0/sim/system_util_upack_ad9122_0.v" \
"../../../bd/system/ipshared/analog.com/common/ad_pnmon.v" \
"../../../bd/system/ipshared/analog.com/common/ad_lvds_clk.v" \
"../../../bd/system/ipshared/analog.com/common/ad_lvds_in.v" \
"../../../bd/system/ipshared/analog.com/common/ad_datafmt.v" \
"../../../bd/system/ipshared/analog.com/common/ad_dcfilter.v" \
"../../../bd/system/ipshared/analog.com/common/ad_iqcor.v" \
"../../../bd/system/ipshared/analog.com/common/up_adc_channel.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9643_v1_0/axi_ad9643_pnmon.v" \
"../../../bd/system/ipshared/analog.com/common/up_delay_cntrl.v" \
"../../../bd/system/ipshared/analog.com/common/up_adc_common.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9643_v1_0/axi_ad9643_channel.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9643_v1_0/axi_ad9643_if.v" \
"../../../bd/system/ipshared/analog.com/axi_ad9643_v1_0/axi_ad9643.v" \
"../../../bd/system/ip/system_axi_ad9643_0/sim/system_axi_ad9643_0.v" \
"../../../bd/system/ip/system_axi_ad9643_dma_0/sim/system_axi_ad9643_dma_0.v" \
"../../../bd/system/ipshared/analog.com/util_cpack_v1_0/util_cpack_mux.v" \
"../../../bd/system/ipshared/analog.com/util_cpack_v1_0/util_cpack_dsf.v" \
"../../../bd/system/ipshared/analog.com/util_cpack_v1_0/util_cpack.v" \
"../../../bd/system/ip/system_util_cpack_ad9643_0/sim/system_util_cpack_ad9643_0.v" \
"../../../bd/system/ipshared/analog.com/util_wfifo_v1_0/util_wfifo.v" \
"../../../bd/system/ip/system_util_ad9643_adc_fifo_0/sim/system_util_ad9643_adc_fifo_0.v" \
"../../../bd/system/ip/system_refclk_clkgen_0/system_refclk_clkgen_0_clk_wiz.v" \
"../../../bd/system/ip/system_refclk_clkgen_0/system_refclk_clkgen_0.v" \
"../../../bd/system/hdl/system.v" \

vcom -work xbip_utils_v3_0_5 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/xbip_utils_v3_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_1 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/axi_utils_v2_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_1 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/xbip_pipe_v3_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
"../../../bd/system/ipshared/xilinx.com/xbip_pipe_v3_0/hdl/xbip_pipe_v3_0.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/xbip_dsp48_wrapper_v3_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_1 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/xbip_dsp48_addsub_v3_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
"../../../bd/system/ipshared/xilinx.com/xbip_dsp48_addsub_v3_0/hdl/xbip_dsp48_addsub_v3_0.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_1 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/xbip_dsp48_multadd_v3_0/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
"../../../bd/system/ipshared/xilinx.com/xbip_dsp48_multadd_v3_0/hdl/xbip_dsp48_multadd_v3_0.vhd" \

vcom -work xbip_bram18k_v3_0_1 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/xbip_bram18k_v3_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
"../../../bd/system/ipshared/xilinx.com/xbip_bram18k_v3_0/hdl/xbip_bram18k_v3_0.vhd" \

vcom -work mult_gen_v12_0_10 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/mult_gen_v12_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \
"../../../bd/system/ipshared/xilinx.com/mult_gen_v12_0/hdl/mult_gen_v12_0.vhd" \

vcom -work floating_point_v7_1_1 -64 -93 \
"../../../bd/system/ipshared/xilinx.com/floating_point_v7_1/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_big_mult_v3small_71_24_17_s.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_big_mult_v3small_71_24_17_s_pp_V.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_CRTLS_s_axi.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_dmul_64ns_64ns_64_6_max_dsp.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_fadd_32ns_32ns_32_5_full_dsp.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_fcmp_32ns_32ns_1_1.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_fdiv_32ns_32ns_32_16.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_fmul_32ns_32ns_32_4_max_dsp.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_fptrunc_64ns_32_1.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_max.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_mul_32s_31ns_62_6.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_mul_41s_24ns_41_4.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_mul_mul_17ns_15s_32_1.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_mul_mul_23s_17ns_40_1.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_mux_16to1_sel4_1_1.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_mux_8to1_sel3_1_1.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_my_to_float_31_1_s.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_rawI.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_sinf_or_cosf.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_sinf_or_cosf_hls_ref_4oPi_table_100_V.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_sinf_or_cosf_hls_sin_cos_K0_V.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_sinf_or_cosf_hls_sin_cos_K1_V.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_sinf_or_cosf_hls_sin_cos_K2_V.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_sitodp_64ns_64_6.v" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/verilog/sinGen_sitofp_64ns_32_6.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_dmul_4_max_dsp_64.vhd" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_fadd_3_full_dsp_32.vhd" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_fcmp_0_no_dsp_32.vhd" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_fdiv_14_no_dsp_32.vhd" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_fptrunc_0_no_dsp_64.vhd" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_sitodp_4_no_dsp_64.vhd" \
"../../../bd/system/ipshared/xilinx.com/singen_v1_0/hdl/ip/sinGen_ap_sitofp_4_no_dsp_64.vhd" \
"../../../bd/system/ip/system_sinGen_0_0/sim/system_sinGen_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_7 -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" "+incdir+../../../bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/analog.com/axi_dmac_v1_0" "+incdir+../../../../fmcomms1_zed.srcs/sources_1/bd/system/ipshared/xilinx.com/singen_v1_0/drivers/sinGen_v1_0/src" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \

vlog -work xil_defaultlib "glbl.v"

