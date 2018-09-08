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

-- IP VLNV: xilinx.com:hls:sinGen:1.0
-- IP Revision: 1809031427

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_sinGen_0_0 IS
  PORT (
    s_axi_CRTLS_AWADDR : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_CRTLS_AWVALID : IN STD_LOGIC;
    s_axi_CRTLS_AWREADY : OUT STD_LOGIC;
    s_axi_CRTLS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CRTLS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CRTLS_WVALID : IN STD_LOGIC;
    s_axi_CRTLS_WREADY : OUT STD_LOGIC;
    s_axi_CRTLS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CRTLS_BVALID : OUT STD_LOGIC;
    s_axi_CRTLS_BREADY : IN STD_LOGIC;
    s_axi_CRTLS_ARADDR : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_CRTLS_ARVALID : IN STD_LOGIC;
    s_axi_CRTLS_ARREADY : OUT STD_LOGIC;
    s_axi_CRTLS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CRTLS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CRTLS_RVALID : OUT STD_LOGIC;
    s_axi_CRTLS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC
  );
END system_sinGen_0_0;

ARCHITECTURE system_sinGen_0_0_arch OF system_sinGen_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_sinGen_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT sinGen IS
    GENERIC (
      C_S_AXI_CRTLS_ADDR_WIDTH : INTEGER;
      C_S_AXI_CRTLS_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_CRTLS_AWADDR : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axi_CRTLS_AWVALID : IN STD_LOGIC;
      s_axi_CRTLS_AWREADY : OUT STD_LOGIC;
      s_axi_CRTLS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CRTLS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CRTLS_WVALID : IN STD_LOGIC;
      s_axi_CRTLS_WREADY : OUT STD_LOGIC;
      s_axi_CRTLS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CRTLS_BVALID : OUT STD_LOGIC;
      s_axi_CRTLS_BREADY : IN STD_LOGIC;
      s_axi_CRTLS_ARADDR : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axi_CRTLS_ARVALID : IN STD_LOGIC;
      s_axi_CRTLS_ARREADY : OUT STD_LOGIC;
      s_axi_CRTLS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CRTLS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CRTLS_RVALID : OUT STD_LOGIC;
      s_axi_CRTLS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC
    );
  END COMPONENT sinGen;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CRTLS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CRTLS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
BEGIN
  U0 : sinGen
    GENERIC MAP (
      C_S_AXI_CRTLS_ADDR_WIDTH => 12,
      C_S_AXI_CRTLS_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_CRTLS_AWADDR => s_axi_CRTLS_AWADDR,
      s_axi_CRTLS_AWVALID => s_axi_CRTLS_AWVALID,
      s_axi_CRTLS_AWREADY => s_axi_CRTLS_AWREADY,
      s_axi_CRTLS_WDATA => s_axi_CRTLS_WDATA,
      s_axi_CRTLS_WSTRB => s_axi_CRTLS_WSTRB,
      s_axi_CRTLS_WVALID => s_axi_CRTLS_WVALID,
      s_axi_CRTLS_WREADY => s_axi_CRTLS_WREADY,
      s_axi_CRTLS_BRESP => s_axi_CRTLS_BRESP,
      s_axi_CRTLS_BVALID => s_axi_CRTLS_BVALID,
      s_axi_CRTLS_BREADY => s_axi_CRTLS_BREADY,
      s_axi_CRTLS_ARADDR => s_axi_CRTLS_ARADDR,
      s_axi_CRTLS_ARVALID => s_axi_CRTLS_ARVALID,
      s_axi_CRTLS_ARREADY => s_axi_CRTLS_ARREADY,
      s_axi_CRTLS_RDATA => s_axi_CRTLS_RDATA,
      s_axi_CRTLS_RRESP => s_axi_CRTLS_RRESP,
      s_axi_CRTLS_RVALID => s_axi_CRTLS_RVALID,
      s_axi_CRTLS_RREADY => s_axi_CRTLS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt
    );
END system_sinGen_0_0_arch;
