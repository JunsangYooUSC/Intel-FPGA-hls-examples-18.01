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

// SystemVerilog created from count_i_sfc_s_c1_in_wt_entry_s_c1_enter_count25
// SystemVerilog created on Wed Nov  8 08:08:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module count_i_sfc_s_c1_in_wt_entry_s_c1_enter_count25 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_exe1,
    input wire [0:0] in_c0_exe2,
    input wire [0:0] in_c1_eni1_0,
    input wire [0:0] in_c1_eni1_1,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c1_exit_0,
    output wire [31:0] out_c1_exit_1,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_data_out_0;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_data_out_1;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_c1_exi1_0;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_c1_exi1_1;


    // i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x(BLACKBOX,7)@1
    // out out_o_valid@2
    // out out_unnamed_count0@2
    // out out_c1_exi1_0@2
    // out out_c1_exi1_1@2
    count_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_count26 thei_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x (
        .in_enable(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .in_c1_eni1_0(in_c1_eni1_0),
        .in_c1_eni1_1(in_c1_eni1_1),
        .out_o_valid(i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_o_valid),
        .out_unnamed_count0(),
        .out_c1_exi1_0(i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_c1_exi1_0),
        .out_c1_exi1_1(i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_c1_exi1_1),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,3)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,2)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x(BLACKBOX,6)@20000000
    count_i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_s_c1_exit_count38 thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x (
        .in_dec_pipelined_thread(in_c0_exe1),
        .in_inc_pipelined_thread(in_c0_exe2),
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_o_valid),
        .in_data_in_0(i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_c1_exi1_0),
        .in_data_in_1(i_sfc_logic_s_c1_in_wt_entry_counts_c1_enter_count26_aunroll_x_out_c1_exi1_1),
        .out_enable(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_data_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,5)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,9)@2
    assign out_c1_exit_0 = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_data_out_0;
    assign out_c1_exit_1 = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_data_out_1;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_counts_c1_exit_count37_aunroll_x_out_valid_out;

endmodule
