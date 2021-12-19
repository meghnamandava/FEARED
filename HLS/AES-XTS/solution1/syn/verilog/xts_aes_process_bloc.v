// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xts_aes_process_bloc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        block_V_address0,
        block_V_ce0,
        block_V_we0,
        block_V_d0,
        block_V_q0,
        block_V_offset,
        tweak_V_address0,
        tweak_V_ce0,
        tweak_V_q0,
        mode_V,
        expanded_key_V_address0,
        expanded_key_V_ce0,
        expanded_key_V_q0,
        expanded_key_V_address1,
        expanded_key_V_ce1,
        expanded_key_V_q1,
        s_boxes_V_address0,
        s_boxes_V_ce0,
        s_boxes_V_q0,
        s_boxes_V_address1,
        s_boxes_V_ce1,
        s_boxes_V_q1,
        multiplication_V_address0,
        multiplication_V_ce0,
        multiplication_V_q0,
        multiplication_V_address1,
        multiplication_V_ce1,
        multiplication_V_q1
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] block_V_address0;
output   block_V_ce0;
output   block_V_we0;
output  [15:0] block_V_d0;
input  [15:0] block_V_q0;
input  [6:0] block_V_offset;
output  [3:0] tweak_V_address0;
output   tweak_V_ce0;
input  [15:0] tweak_V_q0;
input  [15:0] mode_V;
output  [7:0] expanded_key_V_address0;
output   expanded_key_V_ce0;
input  [15:0] expanded_key_V_q0;
output  [7:0] expanded_key_V_address1;
output   expanded_key_V_ce1;
input  [15:0] expanded_key_V_q1;
output  [9:0] s_boxes_V_address0;
output   s_boxes_V_ce0;
input  [7:0] s_boxes_V_q0;
output  [9:0] s_boxes_V_address1;
output   s_boxes_V_ce1;
input  [7:0] s_boxes_V_q1;
output  [11:0] multiplication_V_address0;
output   multiplication_V_ce0;
input  [7:0] multiplication_V_q0;
output  [11:0] multiplication_V_address1;
output   multiplication_V_ce1;
input  [7:0] multiplication_V_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] block_V_address0;
reg block_V_ce0;
reg block_V_we0;
reg[15:0] block_V_d0;
reg[3:0] tweak_V_address0;
reg tweak_V_ce0;
reg expanded_key_V_ce0;
reg expanded_key_V_ce1;
reg s_boxes_V_ce0;
reg s_boxes_V_ce1;
reg multiplication_V_ce0;
reg multiplication_V_ce1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [11:0] zext_ln272_fu_156_p1;
reg   [11:0] zext_ln272_reg_241;
wire   [4:0] i_fu_166_p2;
reg   [4:0] i_reg_250;
wire    ap_CS_fsm_state2;
reg   [9:0] block_V_addr_reg_255;
wire   [0:0] icmp_ln274_fu_160_p2;
wire   [0:0] icmp_ln879_fu_191_p2;
reg   [0:0] icmp_ln879_reg_265;
wire   [5:0] empty_8_fu_196_p1;
reg   [5:0] empty_8_reg_269;
wire   [4:0] i_2_fu_206_p2;
reg   [4:0] i_2_reg_277;
wire    ap_CS_fsm_state5;
reg   [9:0] block_V_addr_1_reg_282;
wire   [0:0] icmp_ln288_fu_200_p2;
wire    grp_aes_process_2_fu_122_ap_start;
wire    grp_aes_process_2_fu_122_ap_done;
wire    grp_aes_process_2_fu_122_ap_idle;
wire    grp_aes_process_2_fu_122_ap_ready;
wire   [9:0] grp_aes_process_2_fu_122_text_V_address0;
wire    grp_aes_process_2_fu_122_text_V_ce0;
wire    grp_aes_process_2_fu_122_text_V_we0;
wire   [15:0] grp_aes_process_2_fu_122_text_V_d0;
reg   [5:0] grp_aes_process_2_fu_122_initial_round;
reg   [1:0] grp_aes_process_2_fu_122_round_factor;
wire   [7:0] grp_aes_process_2_fu_122_expanded_key_V_address0;
wire    grp_aes_process_2_fu_122_expanded_key_V_ce0;
wire   [7:0] grp_aes_process_2_fu_122_expanded_key_V_address1;
wire    grp_aes_process_2_fu_122_expanded_key_V_ce1;
wire   [9:0] grp_aes_process_2_fu_122_s_boxes_V_address0;
wire    grp_aes_process_2_fu_122_s_boxes_V_ce0;
wire   [9:0] grp_aes_process_2_fu_122_s_boxes_V_address1;
wire    grp_aes_process_2_fu_122_s_boxes_V_ce1;
wire   [11:0] grp_aes_process_2_fu_122_multiplication_V_address0;
wire    grp_aes_process_2_fu_122_multiplication_V_ce0;
wire   [11:0] grp_aes_process_2_fu_122_multiplication_V_address1;
wire    grp_aes_process_2_fu_122_multiplication_V_ce1;
reg   [4:0] i_0_reg_100;
wire    ap_CS_fsm_state3;
reg   [4:0] i1_0_reg_111;
wire    ap_CS_fsm_state4;
reg    ap_block_state4_on_subcall_done;
wire    ap_CS_fsm_state6;
reg    grp_aes_process_2_fu_122_ap_start_reg;
wire   [63:0] zext_ln1357_1_fu_186_p1;
wire   [63:0] zext_ln276_fu_172_p1;
wire   [63:0] zext_ln1357_3_fu_226_p1;
wire   [63:0] zext_ln290_fu_212_p1;
wire   [15:0] grp_fu_141_p2;
wire   [10:0] tmp_fu_148_p3;
wire   [11:0] zext_ln1357_fu_177_p1;
wire   [11:0] add_ln1357_fu_181_p2;
wire   [11:0] zext_ln1357_2_fu_217_p1;
wire   [11:0] add_ln1357_1_fu_221_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_aes_process_2_fu_122_ap_start_reg = 1'b0;
end

aes_process_2 grp_aes_process_2_fu_122(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_process_2_fu_122_ap_start),
    .ap_done(grp_aes_process_2_fu_122_ap_done),
    .ap_idle(grp_aes_process_2_fu_122_ap_idle),
    .ap_ready(grp_aes_process_2_fu_122_ap_ready),
    .text_V_address0(grp_aes_process_2_fu_122_text_V_address0),
    .text_V_ce0(grp_aes_process_2_fu_122_text_V_ce0),
    .text_V_we0(grp_aes_process_2_fu_122_text_V_we0),
    .text_V_d0(grp_aes_process_2_fu_122_text_V_d0),
    .text_V_q0(block_V_q0),
    .sequence_out_V_offset(empty_8_reg_269),
    .initial_round(grp_aes_process_2_fu_122_initial_round),
    .round_factor(grp_aes_process_2_fu_122_round_factor),
    .expanded_key_V_address0(grp_aes_process_2_fu_122_expanded_key_V_address0),
    .expanded_key_V_ce0(grp_aes_process_2_fu_122_expanded_key_V_ce0),
    .expanded_key_V_q0(expanded_key_V_q0),
    .expanded_key_V_address1(grp_aes_process_2_fu_122_expanded_key_V_address1),
    .expanded_key_V_ce1(grp_aes_process_2_fu_122_expanded_key_V_ce1),
    .expanded_key_V_q1(expanded_key_V_q1),
    .s_boxes_V_address0(grp_aes_process_2_fu_122_s_boxes_V_address0),
    .s_boxes_V_ce0(grp_aes_process_2_fu_122_s_boxes_V_ce0),
    .s_boxes_V_q0(s_boxes_V_q0),
    .s_boxes_V_address1(grp_aes_process_2_fu_122_s_boxes_V_address1),
    .s_boxes_V_ce1(grp_aes_process_2_fu_122_s_boxes_V_ce1),
    .s_boxes_V_q1(s_boxes_V_q1),
    .multiplication_V_address0(grp_aes_process_2_fu_122_multiplication_V_address0),
    .multiplication_V_ce0(grp_aes_process_2_fu_122_multiplication_V_ce0),
    .multiplication_V_q0(multiplication_V_q0),
    .multiplication_V_address1(grp_aes_process_2_fu_122_multiplication_V_address1),
    .multiplication_V_ce1(grp_aes_process_2_fu_122_multiplication_V_ce1),
    .multiplication_V_q1(multiplication_V_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_process_2_fu_122_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln879_fu_191_p2 == 1'd1) & (icmp_ln274_fu_160_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln879_fu_191_p2 == 1'd0) & (icmp_ln274_fu_160_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
            grp_aes_process_2_fu_122_ap_start_reg <= 1'b1;
        end else if ((grp_aes_process_2_fu_122_ap_ready == 1'b1)) begin
            grp_aes_process_2_fu_122_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i1_0_reg_111 <= i_2_reg_277;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
        i1_0_reg_111 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_reg_100 <= i_reg_250;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_100 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln288_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        block_V_addr_1_reg_282 <= zext_ln1357_3_fu_226_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln274_fu_160_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        block_V_addr_reg_255 <= zext_ln1357_1_fu_186_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln274_fu_160_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_8_reg_269 <= empty_8_fu_196_p1;
        icmp_ln879_reg_265 <= icmp_ln879_fu_191_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_2_reg_277 <= i_2_fu_206_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_250 <= i_fu_166_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        zext_ln272_reg_241[10 : 4] <= zext_ln272_fu_156_p1[10 : 4];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln288_fu_200_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln288_fu_200_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        block_V_address0 = block_V_addr_1_reg_282;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        block_V_address0 = zext_ln1357_3_fu_226_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        block_V_address0 = block_V_addr_reg_255;
    end else if (((icmp_ln274_fu_160_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        block_V_address0 = zext_ln1357_1_fu_186_p1;
    end else if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        block_V_address0 = grp_aes_process_2_fu_122_text_V_address0;
    end else begin
        block_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln274_fu_160_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        block_V_ce0 = 1'b1;
    end else if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        block_V_ce0 = grp_aes_process_2_fu_122_text_V_ce0;
    end else begin
        block_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        block_V_d0 = grp_fu_141_p2;
    end else if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        block_V_d0 = grp_aes_process_2_fu_122_text_V_d0;
    end else begin
        block_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        block_V_we0 = 1'b1;
    end else if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        block_V_we0 = grp_aes_process_2_fu_122_text_V_we0;
    end else begin
        block_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        expanded_key_V_ce0 = grp_aes_process_2_fu_122_expanded_key_V_ce0;
    end else begin
        expanded_key_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        expanded_key_V_ce1 = grp_aes_process_2_fu_122_expanded_key_V_ce1;
    end else begin
        expanded_key_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        if ((icmp_ln879_reg_265 == 1'd1)) begin
            grp_aes_process_2_fu_122_initial_round = 6'd0;
        end else if ((icmp_ln879_reg_265 == 1'd0)) begin
            grp_aes_process_2_fu_122_initial_round = 6'd14;
        end else begin
            grp_aes_process_2_fu_122_initial_round = 'bx;
        end
    end else begin
        grp_aes_process_2_fu_122_initial_round = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        if ((icmp_ln879_reg_265 == 1'd1)) begin
            grp_aes_process_2_fu_122_round_factor = 2'd1;
        end else if ((icmp_ln879_reg_265 == 1'd0)) begin
            grp_aes_process_2_fu_122_round_factor = 2'd3;
        end else begin
            grp_aes_process_2_fu_122_round_factor = 'bx;
        end
    end else begin
        grp_aes_process_2_fu_122_round_factor = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        multiplication_V_ce0 = grp_aes_process_2_fu_122_multiplication_V_ce0;
    end else begin
        multiplication_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        multiplication_V_ce1 = grp_aes_process_2_fu_122_multiplication_V_ce1;
    end else begin
        multiplication_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        s_boxes_V_ce0 = grp_aes_process_2_fu_122_s_boxes_V_ce0;
    end else begin
        s_boxes_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln879_reg_265 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln879_reg_265 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        s_boxes_V_ce1 = grp_aes_process_2_fu_122_s_boxes_V_ce1;
    end else begin
        s_boxes_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tweak_V_address0 = zext_ln290_fu_212_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tweak_V_address0 = zext_ln276_fu_172_p1;
    end else begin
        tweak_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        tweak_V_ce0 = 1'b1;
    end else begin
        tweak_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln274_fu_160_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln288_fu_200_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1357_1_fu_221_p2 = (zext_ln272_reg_241 + zext_ln1357_2_fu_217_p1);

assign add_ln1357_fu_181_p2 = (zext_ln272_reg_241 + zext_ln1357_fu_177_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state4_on_subcall_done = (((icmp_ln879_reg_265 == 1'd1) & (grp_aes_process_2_fu_122_ap_done == 1'b0)) | ((icmp_ln879_reg_265 == 1'd0) & (grp_aes_process_2_fu_122_ap_done == 1'b0)));
end

assign empty_8_fu_196_p1 = block_V_offset[5:0];

assign expanded_key_V_address0 = grp_aes_process_2_fu_122_expanded_key_V_address0;

assign expanded_key_V_address1 = grp_aes_process_2_fu_122_expanded_key_V_address1;

assign grp_aes_process_2_fu_122_ap_start = grp_aes_process_2_fu_122_ap_start_reg;

assign grp_fu_141_p2 = (tweak_V_q0 ^ block_V_q0);

assign i_2_fu_206_p2 = (i1_0_reg_111 + 5'd1);

assign i_fu_166_p2 = (i_0_reg_100 + 5'd1);

assign icmp_ln274_fu_160_p2 = ((i_0_reg_100 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln288_fu_200_p2 = ((i1_0_reg_111 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_191_p2 = ((mode_V == 16'd1) ? 1'b1 : 1'b0);

assign multiplication_V_address0 = grp_aes_process_2_fu_122_multiplication_V_address0;

assign multiplication_V_address1 = grp_aes_process_2_fu_122_multiplication_V_address1;

assign s_boxes_V_address0 = grp_aes_process_2_fu_122_s_boxes_V_address0;

assign s_boxes_V_address1 = grp_aes_process_2_fu_122_s_boxes_V_address1;

assign tmp_fu_148_p3 = {{block_V_offset}, {4'd0}};

assign zext_ln1357_1_fu_186_p1 = add_ln1357_fu_181_p2;

assign zext_ln1357_2_fu_217_p1 = i1_0_reg_111;

assign zext_ln1357_3_fu_226_p1 = add_ln1357_1_fu_221_p2;

assign zext_ln1357_fu_177_p1 = i_0_reg_100;

assign zext_ln272_fu_156_p1 = tmp_fu_148_p3;

assign zext_ln276_fu_172_p1 = i_0_reg_100;

assign zext_ln290_fu_212_p1 = i1_0_reg_111;

always @ (posedge ap_clk) begin
    zext_ln272_reg_241[3:0] <= 4'b0000;
    zext_ln272_reg_241[11] <= 1'b0;
end

endmodule //xts_aes_process_bloc
