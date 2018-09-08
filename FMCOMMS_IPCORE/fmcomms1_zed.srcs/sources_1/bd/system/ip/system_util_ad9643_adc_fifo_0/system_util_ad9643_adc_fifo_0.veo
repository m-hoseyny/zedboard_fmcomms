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

// IP VLNV: analog.com:user:util_wfifo:1.0
// IP Revision: 1

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
system_util_ad9643_adc_fifo_0 your_instance_name (
  .din_rst(din_rst),              // input wire din_rst
  .din_clk(din_clk),              // input wire din_clk
  .din_enable_0(din_enable_0),    // input wire din_enable_0
  .din_valid_0(din_valid_0),      // input wire din_valid_0
  .din_data_0(din_data_0),        // input wire [15 : 0] din_data_0
  .din_enable_1(din_enable_1),    // input wire din_enable_1
  .din_valid_1(din_valid_1),      // input wire din_valid_1
  .din_data_1(din_data_1),        // input wire [15 : 0] din_data_1
  .din_ovf(din_ovf),              // output wire din_ovf
  .dout_rstn(dout_rstn),          // input wire dout_rstn
  .dout_clk(dout_clk),            // input wire dout_clk
  .dout_enable_0(dout_enable_0),  // output wire dout_enable_0
  .dout_valid_0(dout_valid_0),    // output wire dout_valid_0
  .dout_data_0(dout_data_0),      // output wire [31 : 0] dout_data_0
  .dout_enable_1(dout_enable_1),  // output wire dout_enable_1
  .dout_valid_1(dout_valid_1),    // output wire dout_valid_1
  .dout_data_1(dout_data_1),      // output wire [31 : 0] dout_data_1
  .dout_ovf(dout_ovf)            // input wire dout_ovf
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

