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

-- IP VLNV: analog.com:user:axi_i2s_adi:1.0
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT system_axi_i2s_adi_0
  PORT (
    DATA_CLK_I : IN STD_LOGIC;
    BCLK_O : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    LRCLK_O : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    SDATA_O : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    SDATA_I : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    DMA_REQ_TX_ACLK : IN STD_LOGIC;
    DMA_REQ_TX_RSTN : IN STD_LOGIC;
    DMA_REQ_TX_DAVALID : IN STD_LOGIC;
    DMA_REQ_TX_DATYPE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DMA_REQ_TX_DAREADY : OUT STD_LOGIC;
    DMA_REQ_TX_DRVALID : OUT STD_LOGIC;
    DMA_REQ_TX_DRTYPE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    DMA_REQ_TX_DRLAST : OUT STD_LOGIC;
    DMA_REQ_TX_DRREADY : IN STD_LOGIC;
    DMA_REQ_RX_ACLK : IN STD_LOGIC;
    DMA_REQ_RX_RSTN : IN STD_LOGIC;
    DMA_REQ_RX_DAVALID : IN STD_LOGIC;
    DMA_REQ_RX_DATYPE : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DMA_REQ_RX_DAREADY : OUT STD_LOGIC;
    DMA_REQ_RX_DRVALID : OUT STD_LOGIC;
    DMA_REQ_RX_DRTYPE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    DMA_REQ_RX_DRLAST : OUT STD_LOGIC;
    DMA_REQ_RX_DRREADY : IN STD_LOGIC;
    S_AXI_ACLK : IN STD_LOGIC;
    S_AXI_ARESETN : IN STD_LOGIC;
    S_AXI_AWADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S_AXI_AWVALID : IN STD_LOGIC;
    S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_WVALID : IN STD_LOGIC;
    S_AXI_BREADY : IN STD_LOGIC;
    S_AXI_ARADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S_AXI_ARVALID : IN STD_LOGIC;
    S_AXI_RREADY : IN STD_LOGIC;
    S_AXI_ARREADY : OUT STD_LOGIC;
    S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_RVALID : OUT STD_LOGIC;
    S_AXI_WREADY : OUT STD_LOGIC;
    S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID : OUT STD_LOGIC;
    S_AXI_AWREADY : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : system_axi_i2s_adi_0
  PORT MAP (
    DATA_CLK_I => DATA_CLK_I,
    BCLK_O => BCLK_O,
    LRCLK_O => LRCLK_O,
    SDATA_O => SDATA_O,
    SDATA_I => SDATA_I,
    DMA_REQ_TX_ACLK => DMA_REQ_TX_ACLK,
    DMA_REQ_TX_RSTN => DMA_REQ_TX_RSTN,
    DMA_REQ_TX_DAVALID => DMA_REQ_TX_DAVALID,
    DMA_REQ_TX_DATYPE => DMA_REQ_TX_DATYPE,
    DMA_REQ_TX_DAREADY => DMA_REQ_TX_DAREADY,
    DMA_REQ_TX_DRVALID => DMA_REQ_TX_DRVALID,
    DMA_REQ_TX_DRTYPE => DMA_REQ_TX_DRTYPE,
    DMA_REQ_TX_DRLAST => DMA_REQ_TX_DRLAST,
    DMA_REQ_TX_DRREADY => DMA_REQ_TX_DRREADY,
    DMA_REQ_RX_ACLK => DMA_REQ_RX_ACLK,
    DMA_REQ_RX_RSTN => DMA_REQ_RX_RSTN,
    DMA_REQ_RX_DAVALID => DMA_REQ_RX_DAVALID,
    DMA_REQ_RX_DATYPE => DMA_REQ_RX_DATYPE,
    DMA_REQ_RX_DAREADY => DMA_REQ_RX_DAREADY,
    DMA_REQ_RX_DRVALID => DMA_REQ_RX_DRVALID,
    DMA_REQ_RX_DRTYPE => DMA_REQ_RX_DRTYPE,
    DMA_REQ_RX_DRLAST => DMA_REQ_RX_DRLAST,
    DMA_REQ_RX_DRREADY => DMA_REQ_RX_DRREADY,
    S_AXI_ACLK => S_AXI_ACLK,
    S_AXI_ARESETN => S_AXI_ARESETN,
    S_AXI_AWADDR => S_AXI_AWADDR,
    S_AXI_AWVALID => S_AXI_AWVALID,
    S_AXI_WDATA => S_AXI_WDATA,
    S_AXI_WSTRB => S_AXI_WSTRB,
    S_AXI_WVALID => S_AXI_WVALID,
    S_AXI_BREADY => S_AXI_BREADY,
    S_AXI_ARADDR => S_AXI_ARADDR,
    S_AXI_ARVALID => S_AXI_ARVALID,
    S_AXI_RREADY => S_AXI_RREADY,
    S_AXI_ARREADY => S_AXI_ARREADY,
    S_AXI_RDATA => S_AXI_RDATA,
    S_AXI_RRESP => S_AXI_RRESP,
    S_AXI_RVALID => S_AXI_RVALID,
    S_AXI_WREADY => S_AXI_WREADY,
    S_AXI_BRESP => S_AXI_BRESP,
    S_AXI_BVALID => S_AXI_BVALID,
    S_AXI_AWREADY => S_AXI_AWREADY
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

