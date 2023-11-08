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

// SystemVerilog created from count_i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_s_c1_exit_count38
// SystemVerilog created on Wed Nov  8 08:08:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module count_i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_s_c1_exit_count38 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_data_in_0,
    input wire [31:0] in_data_in_1,
    input wire [0:0] in_dec_pipelined_thread,
    input wire [0:0] in_inc_pipelined_thread,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0,
    output wire [31:0] out_data_out_1,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] adapt_scalar_trunc_in;
    wire [0:0] adapt_scalar_trunc_q;
    wire [23:0] c_i24_0gr_q;
    wire [6:0] c_i7_0gr_q;
    wire [63:0] dsdk_ip_adapt_bitjoin_q;
    wire [7:0] element_extension_q;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_enable;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_b;
    wire [31:0] ip_dsdk_adapt_cast_b;
    wire [0:0] not_keep_going_q;
    wire [31:0] dupName_0_ip_dsdk_adapt_bitselect_x_b;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_keep_going(LOGICAL,10)
    assign not_keep_going_q = ~ (in_dec_pipelined_thread);

    // c_i24_0gr(CONSTANT,3)
    assign c_i24_0gr_q = 24'b000000000000000000000000;

    // c_i7_0gr(CONSTANT,4)
    assign c_i7_0gr_q = 7'b0000000;

    // element_extension(BITJOIN,6)
    assign element_extension_q = {c_i7_0gr_q, in_data_in_0};

    // dsdk_ip_adapt_bitjoin(BITJOIN,5)
    assign dsdk_ip_adapt_bitjoin_q = {in_data_in_1, c_i24_0gr_q, element_extension_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39(EXTIFACE,7)
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_data_in = dsdk_ip_adapt_bitjoin_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_dec_pipelined_thread = not_keep_going_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_inc_pipelined_thread = in_inc_pipelined_thread;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_enable[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_out[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(1),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(64),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39 (
        .data_in(dsdk_ip_adapt_bitjoin_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,12)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_stall_entry;

    // dupName_0_ip_dsdk_adapt_bitselect_x(BITSELECT,13)
    assign dupName_0_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_data_out[63:32];

    // ip_dsdk_adapt_cast(BITSELECT,9)
    assign ip_dsdk_adapt_cast_b = dupName_0_ip_dsdk_adapt_bitselect_x_b[31:0];

    // ip_dsdk_adapt_bitselect(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_data_out[0:0];

    // adapt_scalar_trunc(ROUND,2)
    assign adapt_scalar_trunc_in = ip_dsdk_adapt_bitselect_b;
    assign adapt_scalar_trunc_q = adapt_scalar_trunc_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,15)@20000000
    assign out_data_out_0 = adapt_scalar_trunc_q;
    assign out_data_out_1 = ip_dsdk_adapt_cast_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count39_valid_out;

endmodule
