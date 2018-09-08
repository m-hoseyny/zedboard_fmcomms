#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_AWADDR", 12, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_ARADDR", 12, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLS_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "sinGen";
