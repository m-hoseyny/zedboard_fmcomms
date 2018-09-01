
set req_clk [get_clocks -of_objects [get_ports s_axi_aclk]]
set src_clk [get_clocks -of_objects [get_ports -quiet {fifo_wr_clk s_axis_aclk m_src_axi_aclk}]]
set dest_clk [get_clocks -of_objects [get_ports -quiet {fifo_rd_clk m_axis_aclk m_dest_axi_aclk}]]

set_property ASYNC_REG TRUE \
	[get_cells -quiet -hier *cdc_sync_stage1_reg*] \
	[get_cells -quiet -hier *cdc_sync_stage2_reg*]

set_max_delay -quiet -datapath_only \
	-from $req_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_sync_src_request_id* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $req_clk]

set_false_path -quiet \
	-from $src_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_sync_status_src* && PRIMITIVE_SUBGROUP == flop}]

set_false_path -quiet \
	-from $req_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_sync_control_src* && PRIMITIVE_SUBGROUP == flop}]

set_max_delay -quiet -datapath_only \
	-from $req_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_src_req_fifo/i_waddr_sync* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $req_clk]

set_max_delay -quiet -datapath_only \
	-from $src_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_src_req_fifo/i_raddr_sync* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $src_clk]

set_max_delay -quiet -datapath_only \
	-from [get_cells -quiet -hier *cdc_sync_fifo_ram_reg* \
		-filter {NAME =~ *i_src_req_fifo* && PRIMITIVE_SUBGROUP == flop}] \
	-to $src_clk \
	[get_property -min PERIOD $src_clk]

set_max_delay -quiet -datapath_only \
	-from [get_cells -quiet -hier *eot_mem_reg* \
		-filter {NAME =~ *i_request_arb* && PRIMITIVE_SUBGROUP == flop}] \
	-to $src_clk \
	[get_property -min PERIOD $src_clk]

set_max_delay -quiet -datapath_only \
	-from $dest_clk \
	-to [get_cells -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_sync_req_response_id* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $dest_clk]

set_false_path -quiet \
	-from $dest_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_sync_status_dest* && PRIMITIVE_SUBGROUP == flop}]

set_false_path -quiet \
	-from $req_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_sync_control_dest* && PRIMITIVE_SUBGROUP == flop}]

set_max_delay -quiet -datapath_only \
	-from $req_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_dest_req_fifo/i_waddr_sync* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $req_clk]

set_max_delay -quiet -datapath_only \
	-from $dest_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_dest_req_fifo/i_raddr_sync* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $dest_clk]

set_max_delay -quiet -datapath_only \
	-from [get_cells -quiet -hier *cdc_sync_fifo_ram_reg* \
		-filter {NAME =~ *i_dest_req_fifo* && PRIMITIVE_SUBGROUP == flop}] \
	-to $dest_clk \
	[get_property -min PERIOD $dest_clk]

set_max_delay -quiet -datapath_only \
	-from $dest_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_dest_response_fifo/i_waddr_sync* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $dest_clk]

set_max_delay -quiet -datapath_only \
	-from $req_clk \
	-to [get_cells -quiet -hier *cdc_sync_stage1_reg* \
		-filter {NAME =~ *i_dest_response_fifo/i_raddr_sync* && PRIMITIVE_SUBGROUP == flop}] \
	[get_property -min PERIOD $req_clk]
set_max_delay -quiet -datapath_only \
	-from [get_cells -quiet -hier *cdc_sync_fifo_ram_reg* \
		-filter {NAME =~ *i_dest_response_fifo* && PRIMITIVE_SUBGROUP == flop}] \
	-to $req_clk \
	[get_property -min PERIOD $req_clk]

set_max_delay -quiet -datapath_only \
	-from [get_cells -quiet -hier *eot_mem_reg* \
		-filter {NAME =~ *i_request_arb* && PRIMITIVE_SUBGROUP == flop}] \
	-to $dest_clk \
	[get_property -min PERIOD $dest_clk]

# Reset signals
set_false_path -quiet \
	-from $req_clk \
	-to [get_pins -quiet -hier *reset_shift_reg*/PRE]

# Ignore timing for debug signals to register map
set_false_path -quiet \
	-from [get_cells -quiet -hier *cdc_sync_stage2_reg* \
		-filter {name =~ *i_sync_src_request_id* && primitive_subgroup == flop}] \
	-to [get_cells -quiet -hier *up_rdata_reg* -filter {primitive_subgroup == flop}]
set_false_path -quiet \
	-from [get_cells -quiet -hier *cdc_sync_stage2_reg* \
		-filter {name =~ *i_sync_dest_request_id* && primitive_subgroup == flop}] \
	-to [get_cells -quiet -hier *up_rdata_reg* -filter {primitive_subgroup == flop}]
set_false_path -quiet \
	-from [get_cells -quiet -hier *id_reg* -filter {name =~ *i_request_arb* && primitive_subgroup == flop}] \
	-to [get_cells -quiet -hier *up_rdata_reg* -filter {primitive_subgroup == flop}]
set_false_path -quiet \
	-from [get_cells -quiet -hier *address_reg* -filter {name =~ *i_addr_gen* && primitive_subgroup == flop}] \
	-to [get_cells -quiet -hier *up_rdata_reg* -filter {primitive_subgroup == flop}]
