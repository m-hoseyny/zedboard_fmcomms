// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module sinGen_big_mult_v3small_71_24_17_s_pp_V_ram (addr0, ce0, d0, we0, q0,  clk);

parameter DWIDTH = 41;
parameter AWIDTH = 3;
parameter MEM_SIZE = 5;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "distributed" *)reg [DWIDTH-1:0] ram[MEM_SIZE-1:0];




always @(posedge clk)  
begin 
    if (ce0) 
    begin
        if (we0) 
        begin 
            ram[addr0] <= d0; 
            q0 <= d0;
        end 
        else 
            q0 <= ram[addr0];
    end
end


endmodule


`timescale 1 ns / 1 ps
module sinGen_big_mult_v3small_71_24_17_s_pp_V(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    q0);

parameter DataWidth = 32'd41;
parameter AddressRange = 32'd5;
parameter AddressWidth = 32'd3;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;



sinGen_big_mult_v3small_71_24_17_s_pp_V_ram sinGen_big_mult_v3small_71_24_17_s_pp_V_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .d0( d0 ),
    .we0( we0 ),
    .q0( q0 ));

endmodule

