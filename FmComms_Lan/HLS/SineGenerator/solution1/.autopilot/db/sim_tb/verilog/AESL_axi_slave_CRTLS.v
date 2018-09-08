// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module AESL_axi_slave_CRTLS (
    clk,
    reset,
    TRAN_s_axi_CRTLS_AWADDR,
    TRAN_s_axi_CRTLS_AWVALID,
    TRAN_s_axi_CRTLS_AWREADY,
    TRAN_s_axi_CRTLS_WVALID,
    TRAN_s_axi_CRTLS_WREADY,
    TRAN_s_axi_CRTLS_WDATA,
    TRAN_s_axi_CRTLS_WSTRB,
    TRAN_s_axi_CRTLS_ARADDR,
    TRAN_s_axi_CRTLS_ARVALID,
    TRAN_s_axi_CRTLS_ARREADY,
    TRAN_s_axi_CRTLS_RVALID,
    TRAN_s_axi_CRTLS_RREADY,
    TRAN_s_axi_CRTLS_RDATA,
    TRAN_s_axi_CRTLS_RRESP,
    TRAN_s_axi_CRTLS_BVALID,
    TRAN_s_axi_CRTLS_BREADY,
    TRAN_s_axi_CRTLS_BRESP,
    TRAN_CRTLS_write_data_finish,
    TRAN_CRTLS_read_data_finish,
    TRAN_CRTLS_start_in,
    TRAN_CRTLS_idle_out,
    TRAN_CRTLS_ready_out,
    TRAN_CRTLS_ready_in,
    TRAN_CRTLS_done_out,
    TRAN_CRTLS_write_start_in   ,
    TRAN_CRTLS_write_start_finish,
    TRAN_CRTLS_transaction_done_in,
    TRAN_CRTLS_interrupt
    );

//------------------------Parameter----------------------
`define TV_IN_cycle "./c.sinGen.autotvin_cycle.dat"
`define TV_IN_amp "./c.sinGen.autotvin_amp.dat"
`define TV_IN_binOffset "./c.sinGen.autotvin_binOffset.dat"
`define TV_OUT_outIQ "./rtl.sinGen.autotvout_outIQ.dat"
parameter ADDR_WIDTH = 12;
parameter DATA_WIDTH = 32;
parameter cycle_DEPTH = 1;
reg [31 : 0] cycle_OPERATE_DEPTH = 0;
parameter cycle_c_bitwidth = 32;
parameter amp_DEPTH = 1;
reg [31 : 0] amp_OPERATE_DEPTH = 0;
parameter amp_c_bitwidth = 32;
parameter binOffset_DEPTH = 1;
reg [31 : 0] binOffset_OPERATE_DEPTH = 0;
parameter binOffset_c_bitwidth = 32;
parameter outIQ_DEPTH = 256;
reg [31 : 0] outIQ_OPERATE_DEPTH = 0;
parameter outIQ_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter sinGen_continue_addr = 0;
parameter sinGen_auto_start_addr = 0;
parameter Fs_data_in_addr = 16;
parameter cycle_data_in_addr = 24;
parameter amp_data_in_addr = 32;
parameter binOffset_data_in_addr = 40;
parameter outIQ_data_out_addr = 1024;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CRTLS_AWADDR;
output  TRAN_s_axi_CRTLS_AWVALID;
input  TRAN_s_axi_CRTLS_AWREADY;
output  TRAN_s_axi_CRTLS_WVALID;
input  TRAN_s_axi_CRTLS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_CRTLS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_CRTLS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CRTLS_ARADDR;
output  TRAN_s_axi_CRTLS_ARVALID;
input  TRAN_s_axi_CRTLS_ARREADY;
input  TRAN_s_axi_CRTLS_RVALID;
output  TRAN_s_axi_CRTLS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_CRTLS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_CRTLS_RRESP;
input  TRAN_s_axi_CRTLS_BVALID;
output  TRAN_s_axi_CRTLS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_CRTLS_BRESP;
output TRAN_CRTLS_write_data_finish;
output TRAN_CRTLS_read_data_finish;
input     clk;
input     reset;
input     TRAN_CRTLS_start_in;
output    TRAN_CRTLS_done_out;
output    TRAN_CRTLS_ready_out;
input     TRAN_CRTLS_ready_in;
output    TRAN_CRTLS_idle_out;
input  TRAN_CRTLS_write_start_in   ;
output TRAN_CRTLS_write_start_finish;
input     TRAN_CRTLS_interrupt;
input     TRAN_CRTLS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_cycle [cycle_DEPTH - 1 : 0];
reg cycle_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_amp [amp_DEPTH - 1 : 0];
reg amp_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_binOffset [binOffset_DEPTH - 1 : 0];
reg binOffset_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_outIQ [outIQ_DEPTH - 1 : 0];
reg outIQ_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
//write cycle reg
reg [31 : 0] write_cycle_count = 0;
reg write_cycle_run_flag = 0;
reg write_one_cycle_data_done = 0;
//write amp reg
reg [31 : 0] write_amp_count = 0;
reg write_amp_run_flag = 0;
reg write_one_amp_data_done = 0;
//write binOffset reg
reg [31 : 0] write_binOffset_count = 0;
reg write_binOffset_run_flag = 0;
reg write_one_binOffset_data_done = 0;
//read outIQ reg
reg [31 : 0] read_outIQ_count = 0;
reg read_outIQ_run_flag = 0;
reg read_one_outIQ_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_CRTLS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_CRTLS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_CRTLS_WVALID = WVALID_reg;
assign TRAN_s_axi_CRTLS_WDATA = WDATA_reg;
assign TRAN_s_axi_CRTLS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_CRTLS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_CRTLS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_CRTLS_RREADY = RREADY_reg;
assign TRAN_s_axi_CRTLS_BREADY = BREADY_reg;
assign TRAN_CRTLS_write_start_finish = AESL_write_start_finish;
assign TRAN_CRTLS_done_out = AESL_done_index_reg;
assign TRAN_CRTLS_ready_out = AESL_ready_out_index_reg;
assign TRAN_CRTLS_idle_out = AESL_idle_index_reg;
assign TRAN_CRTLS_read_data_finish = 1 & outIQ_read_data_finish;
assign TRAN_CRTLS_write_data_finish = 1 & cycle_write_data_finish & amp_write_data_finish & binOffset_write_data_finish;
always @(TRAN_CRTLS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_CRTLS_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_CRTLS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_CRTLS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_CRTLS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_CRTLS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_CRTLS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_CRTLS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_CRTLS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_CRTLS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        cycle_write_data_finish <= 0;
        write_cycle_run_flag <= 0; 
        write_cycle_count = 0;
        count_operate_depth_by_bitwidth_and_depth (cycle_c_bitwidth, cycle_DEPTH, cycle_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CRTLS_start_in === 1) begin
            cycle_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_cycle_run_flag <= 1; 
            write_cycle_count = 0;
        end
        if (write_one_cycle_data_done === 1) begin
            write_cycle_count = write_cycle_count + 1;
            if (write_cycle_count == cycle_OPERATE_DEPTH) begin
                write_cycle_run_flag <= 0; 
                cycle_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_cycle
    integer write_cycle_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] cycle_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = cycle_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_cycle_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write cycle data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (cycle_c_bitwidth < 32) begin
                        cycle_data_tmp_reg = mem_cycle[write_cycle_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < cycle_c_bitwidth) begin
                                cycle_data_tmp_reg[j] = mem_cycle[write_cycle_count][i*32 + j];
                            end
                            else begin
                                cycle_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (cycle_data_in_addr + write_cycle_count * four_byte_num * 4 + i * 4, cycle_data_tmp_reg, write_cycle_resp);
                end
                process_busy = 0;
                write_one_cycle_data_done <= 1;
                @(posedge clk);
                write_one_cycle_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        amp_write_data_finish <= 0;
        write_amp_run_flag <= 0; 
        write_amp_count = 0;
        count_operate_depth_by_bitwidth_and_depth (amp_c_bitwidth, amp_DEPTH, amp_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CRTLS_start_in === 1) begin
            amp_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_amp_run_flag <= 1; 
            write_amp_count = 0;
        end
        if (write_one_amp_data_done === 1) begin
            write_amp_count = write_amp_count + 1;
            if (write_amp_count == amp_OPERATE_DEPTH) begin
                write_amp_run_flag <= 0; 
                amp_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_amp
    integer write_amp_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] amp_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = amp_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_amp_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write amp data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (amp_c_bitwidth < 32) begin
                        amp_data_tmp_reg = mem_amp[write_amp_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < amp_c_bitwidth) begin
                                amp_data_tmp_reg[j] = mem_amp[write_amp_count][i*32 + j];
                            end
                            else begin
                                amp_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (amp_data_in_addr + write_amp_count * four_byte_num * 4 + i * 4, amp_data_tmp_reg, write_amp_resp);
                end
                process_busy = 0;
                write_one_amp_data_done <= 1;
                @(posedge clk);
                write_one_amp_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        binOffset_write_data_finish <= 0;
        write_binOffset_run_flag <= 0; 
        write_binOffset_count = 0;
        count_operate_depth_by_bitwidth_and_depth (binOffset_c_bitwidth, binOffset_DEPTH, binOffset_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CRTLS_start_in === 1) begin
            binOffset_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_binOffset_run_flag <= 1; 
            write_binOffset_count = 0;
        end
        if (write_one_binOffset_data_done === 1) begin
            write_binOffset_count = write_binOffset_count + 1;
            if (write_binOffset_count == binOffset_OPERATE_DEPTH) begin
                write_binOffset_run_flag <= 0; 
                binOffset_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_binOffset
    integer write_binOffset_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] binOffset_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = binOffset_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_binOffset_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write binOffset data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (binOffset_c_bitwidth < 32) begin
                        binOffset_data_tmp_reg = mem_binOffset[write_binOffset_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < binOffset_c_bitwidth) begin
                                binOffset_data_tmp_reg[j] = mem_binOffset[write_binOffset_count][i*32 + j];
                            end
                            else begin
                                binOffset_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (binOffset_data_in_addr + write_binOffset_count * four_byte_num * 4 + i * 4, binOffset_data_tmp_reg, write_binOffset_resp);
                end
                process_busy = 0;
                write_one_binOffset_data_done <= 1;
                @(posedge clk);
                write_one_binOffset_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_CRTLS_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 4;
    while (1) begin
        process_4_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_4_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        outIQ_read_data_finish <= 0;
        read_outIQ_run_flag <= 0; 
        read_outIQ_count = 0;
        count_operate_depth_by_bitwidth_and_depth (outIQ_c_bitwidth, outIQ_DEPTH, outIQ_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_outIQ_run_flag = 1; 
        end
        if (TRAN_CRTLS_transaction_done_in === 1) begin
            outIQ_read_data_finish <= 0;
            read_outIQ_count = 0; 
        end
        if (read_one_outIQ_data_done === 1) begin
            read_outIQ_count = read_outIQ_count + 1;
            if (read_outIQ_count == outIQ_OPERATE_DEPTH) begin
                read_outIQ_run_flag <= 0; 
                outIQ_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_outIQ
    integer read_outIQ_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = outIQ_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_outIQ_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read outIQ data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (outIQ_data_out_addr + read_outIQ_count * four_byte_num * 4 + i * 4, RDATA_reg, read_outIQ_resp);
                        if (outIQ_c_bitwidth < 32) begin
                            mem_outIQ[read_outIQ_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < outIQ_c_bitwidth) begin
                                    mem_outIQ[read_outIQ_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_outIQ_data_done <= 1;
                    @(posedge clk);
                    read_one_outIQ_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    reg [7:0] c; 
    reg intoken; 
    reg done; 
    begin 
        token = ""; 
        intoken = 0; 
        done = 0; 
        while (!done) begin 
            c = $fgetc(fp); 
            if (c == 8'hff) begin   // EOF 
                done = 1; 
            end 
            else if (c == " " || c == "\011" || c == "\012" || c == "\015") begin   // blank 
                if (intoken) begin 
                    done = 1; 
                end 
            end 
            else begin              // valid character 
                intoken = 1; 
                token = (token << 8) | c; 
            end 
        end 
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_cycle_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [cycle_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (cycle_c_bitwidth , factor);
  fp = $fopen(`TV_IN_cycle ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_cycle); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < cycle_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_cycle [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_cycle [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_cycle [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_cycle [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_cycle [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_amp_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [amp_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (amp_c_bitwidth , factor);
  fp = $fopen(`TV_IN_amp ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_amp); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < amp_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_amp [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_amp [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_amp [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_amp [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_amp [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_binOffset_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [binOffset_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (binOffset_c_bitwidth , factor);
  fp = $fopen(`TV_IN_binOffset ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_binOffset); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < binOffset_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_binOffset [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_binOffset [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_binOffset [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_binOffset [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_binOffset [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_outIQ_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [outIQ_c_bitwidth - 1 : 0] mem_tmp; 
  reg [ 100*8 : 1] str;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (outIQ_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (outIQ_read_data_finish !== 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_outIQ, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_outIQ); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (outIQ_DEPTH - outIQ_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_outIQ[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_outIQ[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  mem_tmp = mem_outIQ[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  mem_tmp = mem_outIQ[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_outIQ[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_outIQ[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_outIQ[i]);
          end
      end 
      if (factor == 4) begin
          if ((outIQ_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_outIQ[outIQ_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_outIQ[outIQ_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_outIQ[outIQ_DEPTH / factor][23:16]);
          end
          if ((outIQ_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_outIQ[outIQ_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_outIQ[outIQ_DEPTH / factor][15:8]);
          end
          if ((outIQ_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_outIQ[outIQ_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((outIQ_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_outIQ[outIQ_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_CRTLS_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule