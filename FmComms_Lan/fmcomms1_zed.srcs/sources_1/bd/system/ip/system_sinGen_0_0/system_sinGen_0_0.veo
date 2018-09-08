// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:hls:sinGen:1.0
// IP Revision: 1809031427

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
system_sinGen_0_0 your_instance_name (
  .s_axi_CRTLS_AWADDR(s_axi_CRTLS_AWADDR),    // input wire [11 : 0] s_axi_CRTLS_AWADDR
  .s_axi_CRTLS_AWVALID(s_axi_CRTLS_AWVALID),  // input wire s_axi_CRTLS_AWVALID
  .s_axi_CRTLS_AWREADY(s_axi_CRTLS_AWREADY),  // output wire s_axi_CRTLS_AWREADY
  .s_axi_CRTLS_WDATA(s_axi_CRTLS_WDATA),      // input wire [31 : 0] s_axi_CRTLS_WDATA
  .s_axi_CRTLS_WSTRB(s_axi_CRTLS_WSTRB),      // input wire [3 : 0] s_axi_CRTLS_WSTRB
  .s_axi_CRTLS_WVALID(s_axi_CRTLS_WVALID),    // input wire s_axi_CRTLS_WVALID
  .s_axi_CRTLS_WREADY(s_axi_CRTLS_WREADY),    // output wire s_axi_CRTLS_WREADY
  .s_axi_CRTLS_BRESP(s_axi_CRTLS_BRESP),      // output wire [1 : 0] s_axi_CRTLS_BRESP
  .s_axi_CRTLS_BVALID(s_axi_CRTLS_BVALID),    // output wire s_axi_CRTLS_BVALID
  .s_axi_CRTLS_BREADY(s_axi_CRTLS_BREADY),    // input wire s_axi_CRTLS_BREADY
  .s_axi_CRTLS_ARADDR(s_axi_CRTLS_ARADDR),    // input wire [11 : 0] s_axi_CRTLS_ARADDR
  .s_axi_CRTLS_ARVALID(s_axi_CRTLS_ARVALID),  // input wire s_axi_CRTLS_ARVALID
  .s_axi_CRTLS_ARREADY(s_axi_CRTLS_ARREADY),  // output wire s_axi_CRTLS_ARREADY
  .s_axi_CRTLS_RDATA(s_axi_CRTLS_RDATA),      // output wire [31 : 0] s_axi_CRTLS_RDATA
  .s_axi_CRTLS_RRESP(s_axi_CRTLS_RRESP),      // output wire [1 : 0] s_axi_CRTLS_RRESP
  .s_axi_CRTLS_RVALID(s_axi_CRTLS_RVALID),    // output wire s_axi_CRTLS_RVALID
  .s_axi_CRTLS_RREADY(s_axi_CRTLS_RREADY),    // input wire s_axi_CRTLS_RREADY
  .ap_clk(ap_clk),                            // input wire ap_clk
  .ap_rst_n(ap_rst_n),                        // input wire ap_rst_n
  .interrupt(interrupt)                      // output wire interrupt
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file system_sinGen_0_0.v when simulating
// the core, system_sinGen_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

