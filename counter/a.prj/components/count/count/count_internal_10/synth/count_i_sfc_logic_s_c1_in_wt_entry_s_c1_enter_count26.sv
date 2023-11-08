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

// SystemVerilog created from count_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_count26
// SystemVerilog created on Wed Nov  8 08:08:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module count_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_count26 (
    input wire [0:0] in_c1_eni1_0,
    input wire [0:0] in_c1_eni1_1,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c1_exi1_0,
    output wire [31:0] out_c1_exi1_1,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_count0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0gr_q;
    wire [31:0] c_i32_1gr_q;
    wire [32:0] i_inc_count32_a;
    wire [32:0] i_inc_count32_b;
    logic [32:0] i_inc_count32_o;
    wire [32:0] i_inc_count32_q;
    wire [31:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29_out_feedback_stall_out_3;
    wire [31:0] i_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33_out_feedback_valid_out_3;
    wire [31:0] bgTrunc_i_inc_count32_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_in_aunroll_x_in_c1_eni1_1_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // valid_fanout_reg0(REG,16)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= in_i_valid;
        end
    end

    // valid_fanout_reg1(REG,17)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= in_i_valid;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // enable_stall_connector_not_enable(LOGICAL,21)
    assign enable_stall_connector_not_enable_q = ~ (in_enable);

    // valid_fanout_reg2(REG,18)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= in_i_valid;
        end
    end

    // c_i32_1gr(CONSTANT,5)
    assign c_i32_1gr_q = 32'b00000000000000000000000000000001;

    // i_inc_count32(ADD,8)@2
    assign i_inc_count32_a = {1'b0, i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29_out_data_out};
    assign i_inc_count32_b = {1'b0, c_i32_1gr_q};
    assign i_inc_count32_o = $unsigned(i_inc_count32_a) + $unsigned(i_inc_count32_b);
    assign i_inc_count32_q = i_inc_count32_o[32:0];

    // bgTrunc_i_inc_count32_sel_x(BITSELECT,12)@2
    assign bgTrunc_i_inc_count32_sel_x_b = i_inc_count32_q[31:0];

    // i_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33(BLACKBOX,10)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    count_i_llvm_fpga_push_i32_zz5e3cnt_addr_0_push3_count34 thei_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33 (
        .in_data_in(bgTrunc_i_inc_count32_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29_out_feedback_stall_out_3),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_in_aunroll_x_in_c1_eni1_1_1(DELAY,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_in_aunroll_x_in_c1_eni1_1_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_in_aunroll_x_in_c1_eni1_1_1_q <= in_c1_eni1_1;
        end
    end

    // c_i32_0gr(CONSTANT,4)
    assign c_i32_0gr_q = 32'b00000000000000000000000000000000;

    // i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29(BLACKBOX,9)@2
    // out out_feedback_stall_out_3@20000000
    count_i_llvm_fpga_pop_i32_zz5e3cnt_addr_0_pop3_count30 thei_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29 (
        .in_data_in(c_i32_0gr_q),
        .in_dir(redist0_sync_in_aunroll_x_in_c1_eni1_1_1_q),
        .in_feedback_in_3(i_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i32_zz5counte3cnt_addr_0_push3_count33_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_aunroll_x(GPOUT,15)@2
    assign out_c1_exi1_0 = GND_q;
    assign out_c1_exi1_1 = i_llvm_fpga_pop_i32_zz5counte3cnt_addr_0_pop3_count29_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_count0 = GND_q;

endmodule
