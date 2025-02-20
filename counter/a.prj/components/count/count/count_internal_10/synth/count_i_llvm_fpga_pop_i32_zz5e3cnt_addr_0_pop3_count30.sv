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

// SystemVerilog created from count_i_llvm_fpga_pop_i32_zz5e3cnt_addr_0_pop3_count30
// SystemVerilog created on Wed Nov  8 08:08:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module count_i_llvm_fpga_pop_i32_zz5e3cnt_addr_0_pop3_count30 (
    input wire [31:0] in_feedback_in_3,
    input wire [0:0] in_feedback_valid_in_3,
    output wire [0:0] out_feedback_stall_out_3,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_data_in;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_dir;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_dir_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_in;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_valid_in;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_predicate;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_in;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_in;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_stall_out;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_out;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_out;
    wire i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_out_bitsignaltemp;


    // i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31(EXTIFACE,4)@2
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_data_in = in_data_in;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_dir = in_dir;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_in = in_feedback_in_3;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_valid_in = in_feedback_valid_in_3;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_predicate = in_predicate;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_in = in_stall_in;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_dir_bitsignaltemp = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_dir[0];
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_valid_in[0];
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_predicate_bitsignaltemp = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_predicate[0];
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_in_bitsignaltemp = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_in[0];
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_in_bitsignaltemp = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_in[0];
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_stall_out[0] = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_out[0] = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_out[0] = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(1),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(32),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31 (
        .data_in(in_data_in),
        .dir(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_dir_bitsignaltemp),
        .feedback_in(in_feedback_in_3),
        .feedback_valid_in(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_data_out),
        .feedback_stall_out(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,3)
    assign out_feedback_stall_out_3 = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_feedback_stall_out;

    // sync_out(GPOUT,7)@2
    assign out_stall_out = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_stall_out;

    // dupName_0_sync_out_x(GPOUT,9)@2
    assign out_data_out = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_data_out;
    assign out_valid_out = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count31_valid_out;

endmodule
