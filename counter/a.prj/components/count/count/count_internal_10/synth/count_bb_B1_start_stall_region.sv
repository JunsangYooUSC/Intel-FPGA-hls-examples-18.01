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

// SystemVerilog created from count_bb_B1_start_stall_region
// SystemVerilog created on Wed Nov  8 08:08:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module count_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_do_i_fifodata,
    input wire [0:0] in_iord_bl_do_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_iowr_bl_return_i_fifoready,
    output wire [0:0] out_iord_bl_do_o_fifoready,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_iowr_bl_return_o_fifodata,
    output wire [0:0] out_iowr_bl_return_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_do_unnamed_count1_count22_out_iord_bl_do_o_fifoready;
    wire [0:0] i_iord_bl_do_unnamed_count1_count22_out_o_data;
    wire [0:0] i_iord_bl_do_unnamed_count1_count22_out_o_stall;
    wire [0:0] i_iord_bl_do_unnamed_count1_count22_out_o_valid;
    wire [31:0] i_iowr_bl_return_unnamed_count2_count41_out_iowr_bl_return_o_fifodata;
    wire [0:0] i_iowr_bl_return_unnamed_count2_count41_out_iowr_bl_return_o_fifovalid;
    wire [0:0] i_iowr_bl_return_unnamed_count2_count41_out_o_stall;
    wire [0:0] i_iowr_bl_return_unnamed_count2_count41_out_o_valid;
    wire [0:0] count_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] count_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] count_B1_start_merge_reg_aunroll_x_out_data_out_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_c0_exit_1;
    wire [0:0] i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_c0_exit_2;
    wire [0:0] i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_c1_exit_1;
    reg [0:0] redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_q;
    wire [0:0] bubble_join_i_iord_bl_do_unnamed_count1_count22_q;
    wire [0:0] bubble_select_i_iord_bl_do_unnamed_count1_count22_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_count_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_count_B1_start_merge_reg_aunroll_x_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_count1_count22_wireValid;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_count1_count22_backStall;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_count1_count22_V0;
    wire [0:0] SE_out_i_iowr_bl_return_unnamed_count2_count41_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_unnamed_count2_count41_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_count_B1_start_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_V0;
    reg [0:0] SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_R_v_0;
    wire [0:0] SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_v_s_0;
    wire [0:0] SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backEN;
    wire [0:0] SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backStall;
    wire [0:0] SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_V0;


    // bubble_join_stall_entry(BITJOIN,39)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,40)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];

    // SE_stall_entry(STALLENABLE,57)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = count_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // count_B1_start_merge_reg_aunroll_x(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0@1
    count_B1_start_merge_reg thecount_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_count_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0(bubble_select_stall_entry_b),
        .out_stall_out(count_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(count_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0(count_B1_start_merge_reg_aunroll_x_out_data_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_count_B1_start_merge_reg_aunroll_x(BITJOIN,43)
    assign bubble_join_count_B1_start_merge_reg_aunroll_x_q = count_B1_start_merge_reg_aunroll_x_out_data_out_0;

    // bubble_select_count_B1_start_merge_reg_aunroll_x(BITSELECT,44)
    assign bubble_select_count_B1_start_merge_reg_aunroll_x_b = bubble_join_count_B1_start_merge_reg_aunroll_x_q[0:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_i_iowr_bl_return_unnamed_count2_count41(STALLENABLE,56)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_unnamed_count2_count41_backStall = 1'b0;
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_unnamed_count2_count41_wireValid = i_iowr_bl_return_unnamed_count2_count41_out_o_valid;

    // bubble_join_i_iord_bl_do_unnamed_count1_count22(BITJOIN,36)
    assign bubble_join_i_iord_bl_do_unnamed_count1_count22_q = i_iord_bl_do_unnamed_count1_count22_out_o_data;

    // bubble_select_i_iord_bl_do_unnamed_count1_count22(BITSELECT,37)
    assign bubble_select_i_iord_bl_do_unnamed_count1_count22_b = bubble_join_i_iord_bl_do_unnamed_count1_count22_q[0:0];

    // redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_q <= 1'b0;
        end
        else if (SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backEN == 1'b1)
        begin
            redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_q <= bubble_select_i_iord_bl_do_unnamed_count1_count22_b;
        end
    end

    // bubble_join_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x(BITJOIN,51)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_q = i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_c1_exit_1;

    // bubble_select_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x(BITSELECT,52)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_b = bubble_join_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_q[31:0];

    // i_iowr_bl_return_unnamed_count2_count41(BLACKBOX,8)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_return_o_fifodata@20000000
    // out out_iowr_bl_return_o_fifovalid@20000000
    // out out_o_stall@20000000
    count_i_iowr_bl_return_unnamed_2_count42 thei_iowr_bl_return_unnamed_count2_count41 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_b),
        .in_i_dependence(redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_return_unnamed_count2_count41_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_V0),
        .in_iowr_bl_return_i_fifoready(in_iowr_bl_return_i_fifoready),
        .out_iowr_bl_return_o_fifodata(i_iowr_bl_return_unnamed_count2_count41_out_iowr_bl_return_o_fifodata),
        .out_iowr_bl_return_o_fifovalid(i_iowr_bl_return_unnamed_count2_count41_out_iowr_bl_return_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_unnamed_count2_count41_out_o_stall),
        .out_o_valid(i_iowr_bl_return_unnamed_count2_count41_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x(BITJOIN,48)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_c0_exit_2, i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_c0_exit_1};

    // bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x(BITSELECT,49)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_b = bubble_join_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_q[0:0];
    assign bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_c = bubble_join_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_q[1:1];

    // i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x(BLACKBOX,32)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_c1_exit_0@2
    // out out_c1_exit_1@2
    count_i_sfc_s_c1_in_wt_entry_s_c1_enter_count25 thei_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_V0),
        .in_c1_eni1_0(GND_q),
        .in_c1_eni1_1(bubble_select_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_o_valid),
        .out_c1_exit_0(),
        .out_c1_exit_1(i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_c1_exit_1),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_backStall = i_iowr_bl_return_unnamed_count2_count41_out_o_stall | ~ (SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_and0 = i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_wireValid = SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_V0 & SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_and0;

    // SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0(STALLENABLE,65)
    // Valid signal propagation
    assign SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_V0 = SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_s_tv_0 = SE_out_i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_backStall & SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backEN = ~ (SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_v_s_0 = SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backEN & SE_out_i_iord_bl_do_unnamed_count1_count22_V0;
    // Backward Stall generation
    assign SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backStall = ~ (SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_R_v_0 <= SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_R_v_0 & SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_R_v_0 <= SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_do_unnamed_count1_count22(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_iord_bl_do_unnamed_count1_count22_V0 = SE_out_i_iord_bl_do_unnamed_count1_count22_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_do_unnamed_count1_count22_backStall = SE_redist0_i_iord_bl_do_unnamed_count1_count22_out_o_data_1_0_backStall | ~ (SE_out_i_iord_bl_do_unnamed_count1_count22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_do_unnamed_count1_count22_wireValid = i_iord_bl_do_unnamed_count1_count22_out_o_valid;

    // i_iord_bl_do_unnamed_count1_count22(BLACKBOX,7)@1
    // in in_i_stall@20000000
    // out out_iord_bl_do_o_fifoready@20000000
    // out out_o_stall@20000000
    count_i_iord_bl_do_unnamed_1_count23 thei_iord_bl_do_unnamed_count1_count22 (
        .in_i_stall(SE_out_i_iord_bl_do_unnamed_count1_count22_backStall),
        .in_i_valid(SE_out_count_B1_start_merge_reg_aunroll_x_V0),
        .in_iord_bl_do_i_fifodata(in_iord_bl_do_i_fifodata),
        .in_iord_bl_do_i_fifovalid(in_iord_bl_do_i_fifovalid),
        .out_iord_bl_do_o_fifoready(i_iord_bl_do_unnamed_count1_count22_out_iord_bl_do_o_fifoready),
        .out_o_data(i_iord_bl_do_unnamed_count1_count22_out_o_data),
        .out_o_stall(i_iord_bl_do_unnamed_count1_count22_out_o_stall),
        .out_o_valid(i_iord_bl_do_unnamed_count1_count22_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_count_B1_start_merge_reg_aunroll_x(STALLENABLE,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_count_B1_start_merge_reg_aunroll_x_consumed0 = (~ (i_iord_bl_do_unnamed_count1_count22_out_o_stall) & SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0;
    assign SE_out_count_B1_start_merge_reg_aunroll_x_consumed1 = (~ (in_stall_in) & SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1;
    assign SE_out_count_B1_start_merge_reg_aunroll_x_consumed2 = (~ (i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_o_stall) & SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_count_B1_start_merge_reg_aunroll_x_StallValid = SE_out_count_B1_start_merge_reg_aunroll_x_backStall & SE_out_count_B1_start_merge_reg_aunroll_x_wireValid;
    assign SE_out_count_B1_start_merge_reg_aunroll_x_toReg0 = SE_out_count_B1_start_merge_reg_aunroll_x_StallValid & SE_out_count_B1_start_merge_reg_aunroll_x_consumed0;
    assign SE_out_count_B1_start_merge_reg_aunroll_x_toReg1 = SE_out_count_B1_start_merge_reg_aunroll_x_StallValid & SE_out_count_B1_start_merge_reg_aunroll_x_consumed1;
    assign SE_out_count_B1_start_merge_reg_aunroll_x_toReg2 = SE_out_count_B1_start_merge_reg_aunroll_x_StallValid & SE_out_count_B1_start_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_count_B1_start_merge_reg_aunroll_x_or0 = SE_out_count_B1_start_merge_reg_aunroll_x_consumed0;
    assign SE_out_count_B1_start_merge_reg_aunroll_x_or1 = SE_out_count_B1_start_merge_reg_aunroll_x_consumed1 & SE_out_count_B1_start_merge_reg_aunroll_x_or0;
    assign SE_out_count_B1_start_merge_reg_aunroll_x_wireStall = ~ (SE_out_count_B1_start_merge_reg_aunroll_x_consumed2 & SE_out_count_B1_start_merge_reg_aunroll_x_or1);
    assign SE_out_count_B1_start_merge_reg_aunroll_x_backStall = SE_out_count_B1_start_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_count_B1_start_merge_reg_aunroll_x_V0 = SE_out_count_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0);
    assign SE_out_count_B1_start_merge_reg_aunroll_x_V1 = SE_out_count_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1);
    assign SE_out_count_B1_start_merge_reg_aunroll_x_V2 = SE_out_count_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_count_B1_start_merge_reg_aunroll_x_wireValid = count_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_backStall = i_sfc_s_c1_in_wt_entry_counts_c1_enter_count25_aunroll_x_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    count_i_sfc_s_c0_in_wt_entry_s_c0_enter1_count7 thei_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_backStall),
        .in_i_valid(SE_out_count_B1_start_merge_reg_aunroll_x_V2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0(GND_q),
        .in_c0_eni1_1(bubble_select_count_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_stall_out(i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_valid_out(i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0(),
        .out_c0_exit_1(i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_c0_exit_1),
        .out_c0_exit_2(i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_c0_exit_2),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_valid_out = i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_stall_out = i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_count11_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_counts_c0_enter1_count7_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,19)
    assign out_iord_bl_do_o_fifoready = i_iord_bl_do_unnamed_count1_count22_out_iord_bl_do_o_fifoready;

    // dupName_0_sync_out_x(GPOUT,23)@1
    assign out_valid_out = SE_out_count_B1_start_merge_reg_aunroll_x_V1;

    // dupName_1_ext_sig_sync_out_x(GPOUT,24)
    assign out_iowr_bl_return_o_fifodata = i_iowr_bl_return_unnamed_count2_count41_out_iowr_bl_return_o_fifodata;
    assign out_iowr_bl_return_o_fifovalid = i_iowr_bl_return_unnamed_count2_count41_out_iowr_bl_return_o_fifovalid;

endmodule
