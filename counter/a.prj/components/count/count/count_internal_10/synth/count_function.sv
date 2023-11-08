// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #222)
// 
// Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from count_function
// SystemVerilog created on Wed Nov  8 08:08:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module count_function (
    input wire [63:0] in_arg_do,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_do_i_fifodata,
    input wire [0:0] in_iord_bl_do_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_do_o_fifoready,
    output wire [31:0] out_iowr_bl_return_o_fifodata,
    output wire [0:0] out_iowr_bl_return_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_count_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_count_B1_start_out_iord_bl_do_o_fifoready;
    wire [31:0] bb_count_B1_start_out_iowr_bl_return_o_fifodata;
    wire [0:0] bb_count_B1_start_out_iowr_bl_return_o_fifovalid;
    wire [0:0] bb_count_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_count_B1_start_out_stall_out_0;
    wire [1:0] c_i2_0gr_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_count11_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_count11_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_count11_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_count11_valid_fifo_out_valid_out;


    // c_i2_0gr(CONSTANT,6)
    assign c_i2_0gr_q = 2'b00;

    // i_llvm_fpga_pipeline_keep_going_count11_valid_fifo(BLACKBOX,9)
    count_i_llvm_fpga_pipeline_keep_going_11_valid_fifo thei_llvm_fpga_pipeline_keep_going_count11_valid_fifo (
        .in_data_in(c_i2_0gr_q),
        .in_stall_in(bb_count_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_count11_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_count11_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_count11_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_count11_sr(BLACKBOX,8)
    count_i_llvm_fpga_pipeline_keep_going_11_sr thei_llvm_fpga_pipeline_keep_going_count11_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_count11_valid_fifo_out_stall_out),
        .in_i_valid(bb_count_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_count11_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_count11_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // bb_count_B1_start(BLACKBOX,3)
    count_bb_B1_start thebb_count_B1_start (
        .in_forked_0(GND_q),
        .in_forked_1(VCC_q),
        .in_iord_bl_do_i_fifodata(in_iord_bl_do_i_fifodata),
        .in_iord_bl_do_i_fifovalid(in_iord_bl_do_i_fifovalid),
        .in_iowr_bl_return_i_fifoready(in_iowr_bl_return_i_fifoready),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_count11_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_count11_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_do_o_fifoready(bb_count_B1_start_out_iord_bl_do_o_fifoready),
        .out_iowr_bl_return_o_fifodata(bb_count_B1_start_out_iowr_bl_return_o_fifodata),
        .out_iowr_bl_return_o_fifovalid(bb_count_B1_start_out_iowr_bl_return_o_fifovalid),
        .out_pipeline_valid_out(bb_count_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_count_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_do_o_fifoready(GPOUT,17)
    assign out_iord_bl_do_o_fifoready = bb_count_B1_start_out_iord_bl_do_o_fifoready;

    // out_iowr_bl_return_o_fifodata(GPOUT,18)
    assign out_iowr_bl_return_o_fifodata = bb_count_B1_start_out_iowr_bl_return_o_fifodata;

    // out_iowr_bl_return_o_fifovalid(GPOUT,19)
    assign out_iowr_bl_return_o_fifovalid = bb_count_B1_start_out_iowr_bl_return_o_fifovalid;

    // bb_count_B0_runOnce(BLACKBOX,2)
    count_bb_B0_runOnce thebb_count_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_count_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,20)
    assign out_stall_out = bb_count_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,21)
    assign out_valid_out = GND_q;

endmodule
