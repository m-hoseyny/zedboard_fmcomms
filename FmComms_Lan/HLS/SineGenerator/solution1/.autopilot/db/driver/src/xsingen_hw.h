// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

// CRTLS
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x010 : Data signal of Fs
//         bit 31~0 - Fs[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of cycle
//         bit 31~0 - cycle[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of amp
//         bit 31~0 - amp[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of binOffset
//         bit 31~0 - binOffset[31:0] (Read/Write)
// 0x02c : reserved
// 0x400 ~
// 0x7ff : Memory 'outIQ' (256 * 32b)
//         Word n : bit [31:0] - outIQ[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSINGEN_CRTLS_ADDR_AP_CTRL        0x000
#define XSINGEN_CRTLS_ADDR_GIE            0x004
#define XSINGEN_CRTLS_ADDR_IER            0x008
#define XSINGEN_CRTLS_ADDR_ISR            0x00c
#define XSINGEN_CRTLS_ADDR_FS_DATA        0x010
#define XSINGEN_CRTLS_BITS_FS_DATA        32
#define XSINGEN_CRTLS_ADDR_CYCLE_DATA     0x018
#define XSINGEN_CRTLS_BITS_CYCLE_DATA     32
#define XSINGEN_CRTLS_ADDR_AMP_DATA       0x020
#define XSINGEN_CRTLS_BITS_AMP_DATA       32
#define XSINGEN_CRTLS_ADDR_BINOFFSET_DATA 0x028
#define XSINGEN_CRTLS_BITS_BINOFFSET_DATA 32
#define XSINGEN_CRTLS_ADDR_OUTIQ_BASE     0x400
#define XSINGEN_CRTLS_ADDR_OUTIQ_HIGH     0x7ff
#define XSINGEN_CRTLS_WIDTH_OUTIQ         32
#define XSINGEN_CRTLS_DEPTH_OUTIQ         256

