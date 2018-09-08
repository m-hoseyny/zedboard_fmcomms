-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: analog.com:user:util_wfifo:1.0
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT system_util_ad9643_adc_fifo_0
  PORT (
    din_rst : IN STD_LOGIC;
    din_clk : IN STD_LOGIC;
    din_enable_0 : IN STD_LOGIC;
    din_valid_0 : IN STD_LOGIC;
    din_data_0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    din_enable_1 : IN STD_LOGIC;
    din_valid_1 : IN STD_LOGIC;
    din_data_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    din_ovf : OUT STD_LOGIC;
    dout_rstn : IN STD_LOGIC;
    dout_clk : IN STD_LOGIC;
    dout_enable_0 : OUT STD_LOGIC;
    dout_valid_0 : OUT STD_LOGIC;
    dout_data_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dout_enable_1 : OUT STD_LOGIC;
    dout_valid_1 : OUT STD_LOGIC;
    dout_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dout_ovf : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : system_util_ad9643_adc_fifo_0
  PORT MAP (
    din_rst => din_rst,
    din_clk => din_clk,
    din_enable_0 => din_enable_0,
    din_valid_0 => din_valid_0,
    din_data_0 => din_data_0,
    din_enable_1 => din_enable_1,
    din_valid_1 => din_valid_1,
    din_data_1 => din_data_1,
    din_ovf => din_ovf,
    dout_rstn => dout_rstn,
    dout_clk => dout_clk,
    dout_enable_0 => dout_enable_0,
    dout_valid_0 => dout_valid_0,
    dout_data_0 => dout_data_0,
    dout_enable_1 => dout_enable_1,
    dout_valid_1 => dout_valid_1,
    dout_data_1 => dout_data_1,
    dout_ovf => dout_ovf
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

