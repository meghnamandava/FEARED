// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_shift_rows (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_matrix_V_address0,
        state_matrix_V_ce0,
        state_matrix_V_we0,
        state_matrix_V_d0,
        state_matrix_V_q0,
        round_factor
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] state_matrix_V_address0;
output   state_matrix_V_ce0;
output   state_matrix_V_we0;
output  [15:0] state_matrix_V_d0;
input  [15:0] state_matrix_V_q0;
input  [1:0] round_factor;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_matrix_V_address0;
reg state_matrix_V_ce0;
reg state_matrix_V_we0;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln58_fu_586_p2;
reg   [0:0] icmp_ln58_reg_811;
wire   [5:0] zext_ln58_fu_606_p1;
reg   [5:0] zext_ln58_reg_818;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln55_fu_592_p2;
wire   [1:0] idx_subscript3_fu_620_p2;
reg   [1:0] idx_subscript3_reg_828;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln73_fu_614_p2;
wire   [1:0] trunc_ln80_fu_646_p1;
reg   [1:0] trunc_ln80_reg_838;
wire    ap_CS_fsm_state4;
wire   [1:0] idx_subscript4_fu_656_p2;
reg   [1:0] idx_subscript4_reg_853;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln78_fu_650_p2;
wire   [1:0] add_ln180_fu_675_p2;
reg   [1:0] add_ln180_reg_863;
wire   [1:0] idx_subscript2_fu_690_p2;
reg   [1:0] idx_subscript2_reg_870;
wire   [0:0] icmp_ln65_fu_684_p2;
wire   [1:0] sub_ln180_fu_709_p2;
reg   [1:0] sub_ln180_reg_880;
wire   [1:0] idx_subscript_fu_724_p2;
reg   [1:0] idx_subscript_reg_887;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln60_fu_718_p2;
wire   [1:0] trunc_ln67_fu_750_p1;
reg   [1:0] trunc_ln67_reg_897;
wire    ap_CS_fsm_state9;
wire   [2:0] i_chaining_1_fu_760_p2;
wire    ap_CS_fsm_state12;
wire   [2:0] row_index_fu_799_p2;
wire   [0:0] icmp_ln85_fu_754_p2;
wire   [1:0] add_ln55_fu_805_p2;
reg   [15:0] temp_row_3_V_5_reg_335;
reg   [15:0] temp_row_3_V_0_reg_87;
reg   [15:0] temp_row_2_V_9_reg_348;
reg   [15:0] temp_row_2_V_0_reg_99;
reg   [15:0] temp_row_1_V_9_reg_361;
reg   [15:0] temp_row_1_V_0_reg_111;
reg   [15:0] temp_row_0_V_5_reg_374;
reg   [15:0] temp_row_0_V_0_reg_123;
reg   [1:0] indvars_iv20_reg_135;
reg   [2:0] indvars_iv17_reg_147;
reg   [15:0] temp_row_2_V_5_reg_159;
wire    ap_CS_fsm_state5;
reg   [15:0] temp_row_1_V_53_reg_170;
reg   [15:0] temp_row_0_V_31_reg_181;
reg   [1:0] idx_subscript3_0_reg_192;
reg   [15:0] temp_row_2_V_5_be_reg_204;
reg   [15:0] temp_row_1_V_53_be_reg_219;
reg   [15:0] temp_row_0_V_31_be_reg_234;
reg   [15:0] temp_row_3_V_3_reg_249;
reg   [15:0] ap_phi_mux_temp_row_3_V_3_be_phi_fu_390_p6;
wire    ap_CS_fsm_state7;
reg   [15:0] temp_row_2_V_7_reg_260;
reg   [15:0] ap_phi_mux_temp_row_2_V_7_be_phi_fu_406_p6;
reg   [15:0] temp_row_1_V_7_reg_271;
reg   [15:0] ap_phi_mux_temp_row_1_V_7_be_phi_fu_422_p6;
reg   [1:0] idx_subscript4_0_reg_282;
reg   [15:0] temp_row_3_V_1_reg_293;
reg   [15:0] ap_phi_mux_temp_row_3_V_1_be_phi_fu_531_p6;
wire    ap_CS_fsm_state11;
reg   [15:0] temp_row_2_V_3_reg_304;
reg   [15:0] ap_phi_mux_temp_row_2_V_3_be_phi_fu_547_p6;
reg   [15:0] temp_row_1_V_3_reg_314;
reg   [15:0] ap_phi_mux_temp_row_1_V_3_be_phi_fu_563_p6;
reg   [1:0] idx_subscript2_0_reg_324;
reg   [15:0] temp_row_0_V_1_reg_458;
reg   [15:0] temp_row_2_V_1_reg_434;
wire    ap_CS_fsm_state10;
reg   [15:0] temp_row_1_V_1_reg_446;
reg   [1:0] idx_subscript_0_reg_470;
reg   [15:0] temp_row_2_V_1_be_reg_482;
reg   [15:0] temp_row_1_V_1_be_reg_497;
reg   [15:0] temp_row_0_V_1_be_reg_512;
reg   [2:0] i_chaining_1_0_reg_575;
wire  signed [63:0] sext_ln180_1_fu_641_p1;
wire   [63:0] zext_ln180_2_fu_670_p1;
wire   [63:0] zext_ln180_1_fu_704_p1;
wire   [63:0] zext_ln180_3_fu_745_p1;
wire   [63:0] zext_ln180_5_fu_775_p1;
wire   [15:0] tmp_fu_784_p6;
wire   [4:0] tmp_5_fu_598_p3;
wire   [2:0] zext_ln73_fu_610_p1;
wire   [2:0] sub_ln75_fu_626_p2;
wire  signed [5:0] sext_ln180_fu_632_p1;
wire   [5:0] add_ln180_2_fu_636_p2;
wire   [4:0] tmp_7_fu_662_p3;
wire   [2:0] zext_ln65_fu_680_p1;
wire   [4:0] tmp_6_fu_696_p3;
wire   [2:0] zext_ln60_fu_714_p1;
wire   [2:0] add_ln62_fu_730_p2;
wire   [5:0] zext_ln180_fu_736_p1;
wire   [5:0] add_ln180_1_fu_740_p2;
wire   [5:0] zext_ln180_4_fu_766_p1;
wire   [5:0] add_ln180_3_fu_770_p2;
wire   [1:0] tmp_fu_784_p5;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
end

xts_aes_mux_42_16cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
xts_aes_mux_42_16cud_U37(
    .din0(temp_row_0_V_5_reg_374),
    .din1(temp_row_1_V_9_reg_361),
    .din2(temp_row_2_V_9_reg_348),
    .din3(temp_row_3_V_5_reg_335),
    .din4(tmp_fu_784_p5),
    .dout(tmp_fu_784_p6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_754_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        i_chaining_1_0_reg_575 <= i_chaining_1_fu_760_p2;
    end else if (((1'b1 == ap_CS_fsm_state6) & (((icmp_ln65_fu_684_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd1)) | ((icmp_ln78_fu_650_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd0))))) begin
        i_chaining_1_0_reg_575 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        idx_subscript2_0_reg_324 <= idx_subscript2_reg_870;
    end else if (((icmp_ln60_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        idx_subscript2_0_reg_324 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        idx_subscript3_0_reg_192 <= idx_subscript3_reg_828;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_subscript3_0_reg_192 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        idx_subscript4_0_reg_282 <= idx_subscript4_reg_853;
    end else if (((icmp_ln73_fu_614_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        idx_subscript4_0_reg_282 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        idx_subscript_0_reg_470 <= idx_subscript_reg_887;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_subscript_0_reg_470 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_754_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        indvars_iv17_reg_147 <= row_index_fu_799_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv17_reg_147 <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_754_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        indvars_iv20_reg_135 <= add_ln55_fu_805_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv20_reg_135 <= 2'd3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (idx_subscript_0_reg_470 == 2'd0))) begin
        temp_row_0_V_1_be_reg_512 <= state_matrix_V_q0;
    end else if ((((1'b1 == ap_CS_fsm_state9) & (idx_subscript_0_reg_470 == 2'd1)) | (~(idx_subscript_0_reg_470 == 2'd1) & ~(idx_subscript_0_reg_470 == 2'd0) & (1'b1 == ap_CS_fsm_state9)))) begin
        temp_row_0_V_1_be_reg_512 <= temp_row_0_V_1_reg_458;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        temp_row_0_V_1_reg_458 <= temp_row_0_V_1_be_reg_512;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp_row_0_V_1_reg_458 <= temp_row_0_V_0_reg_123;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (idx_subscript3_0_reg_192 == 2'd0))) begin
        temp_row_0_V_31_be_reg_234 <= state_matrix_V_q0;
    end else if ((((1'b1 == ap_CS_fsm_state4) & (idx_subscript3_0_reg_192 == 2'd1)) | (~(idx_subscript3_0_reg_192 == 2'd1) & ~(idx_subscript3_0_reg_192 == 2'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        temp_row_0_V_31_be_reg_234 <= temp_row_0_V_31_reg_181;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_row_0_V_31_reg_181 <= temp_row_0_V_31_be_reg_234;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        temp_row_0_V_31_reg_181 <= temp_row_0_V_0_reg_123;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if (((icmp_ln65_fu_684_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd1))) begin
            temp_row_0_V_5_reg_374 <= temp_row_0_V_1_reg_458;
        end else if (((icmp_ln78_fu_650_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd0))) begin
            temp_row_0_V_5_reg_374 <= temp_row_0_V_31_reg_181;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (idx_subscript_0_reg_470 == 2'd1))) begin
        temp_row_1_V_1_be_reg_497 <= state_matrix_V_q0;
    end else if (((~(idx_subscript_0_reg_470 == 2'd1) & ~(idx_subscript_0_reg_470 == 2'd0) & (1'b1 == ap_CS_fsm_state9)) | ((1'b1 == ap_CS_fsm_state9) & (idx_subscript_0_reg_470 == 2'd0)))) begin
        temp_row_1_V_1_be_reg_497 <= temp_row_1_V_1_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        temp_row_1_V_1_reg_446 <= temp_row_1_V_1_be_reg_497;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp_row_1_V_1_reg_446 <= temp_row_1_V_0_reg_111;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_row_1_V_3_reg_314 <= ap_phi_mux_temp_row_1_V_3_be_phi_fu_563_p6;
    end else if (((icmp_ln60_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        temp_row_1_V_3_reg_314 <= temp_row_1_V_1_reg_446;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (idx_subscript3_0_reg_192 == 2'd1))) begin
        temp_row_1_V_53_be_reg_219 <= state_matrix_V_q0;
    end else if (((~(idx_subscript3_0_reg_192 == 2'd1) & ~(idx_subscript3_0_reg_192 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (idx_subscript3_0_reg_192 == 2'd0)))) begin
        temp_row_1_V_53_be_reg_219 <= temp_row_1_V_53_reg_170;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_row_1_V_53_reg_170 <= temp_row_1_V_53_be_reg_219;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        temp_row_1_V_53_reg_170 <= temp_row_1_V_0_reg_111;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_row_1_V_7_reg_271 <= ap_phi_mux_temp_row_1_V_7_be_phi_fu_422_p6;
    end else if (((icmp_ln73_fu_614_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        temp_row_1_V_7_reg_271 <= temp_row_1_V_53_reg_170;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if (((icmp_ln65_fu_684_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd1))) begin
            temp_row_1_V_9_reg_361 <= temp_row_1_V_3_reg_314;
        end else if (((icmp_ln78_fu_650_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd0))) begin
            temp_row_1_V_9_reg_361 <= temp_row_1_V_7_reg_271;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (idx_subscript_0_reg_470 == 2'd1)) | ((1'b1 == ap_CS_fsm_state9) & (idx_subscript_0_reg_470 == 2'd0)))) begin
        temp_row_2_V_1_be_reg_482 <= temp_row_2_V_1_reg_434;
    end else if ((~(idx_subscript_0_reg_470 == 2'd1) & ~(idx_subscript_0_reg_470 == 2'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        temp_row_2_V_1_be_reg_482 <= state_matrix_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        temp_row_2_V_1_reg_434 <= temp_row_2_V_1_be_reg_482;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp_row_2_V_1_reg_434 <= temp_row_2_V_0_reg_99;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_row_2_V_3_reg_304 <= ap_phi_mux_temp_row_2_V_3_be_phi_fu_547_p6;
    end else if (((icmp_ln60_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        temp_row_2_V_3_reg_304 <= temp_row_2_V_1_reg_434;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (idx_subscript3_0_reg_192 == 2'd1)) | ((1'b1 == ap_CS_fsm_state4) & (idx_subscript3_0_reg_192 == 2'd0)))) begin
        temp_row_2_V_5_be_reg_204 <= temp_row_2_V_5_reg_159;
    end else if ((~(idx_subscript3_0_reg_192 == 2'd1) & ~(idx_subscript3_0_reg_192 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        temp_row_2_V_5_be_reg_204 <= state_matrix_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_row_2_V_5_reg_159 <= temp_row_2_V_5_be_reg_204;
    end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        temp_row_2_V_5_reg_159 <= temp_row_2_V_0_reg_99;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_row_2_V_7_reg_260 <= ap_phi_mux_temp_row_2_V_7_be_phi_fu_406_p6;
    end else if (((icmp_ln73_fu_614_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        temp_row_2_V_7_reg_260 <= temp_row_2_V_5_reg_159;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if (((icmp_ln65_fu_684_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd1))) begin
            temp_row_2_V_9_reg_348 <= temp_row_2_V_3_reg_304;
        end else if (((icmp_ln78_fu_650_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd0))) begin
            temp_row_2_V_9_reg_348 <= temp_row_2_V_7_reg_260;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_row_3_V_1_reg_293 <= ap_phi_mux_temp_row_3_V_1_be_phi_fu_531_p6;
    end else if (((icmp_ln60_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        temp_row_3_V_1_reg_293 <= temp_row_3_V_0_reg_87;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_row_3_V_3_reg_249 <= ap_phi_mux_temp_row_3_V_3_be_phi_fu_390_p6;
    end else if (((icmp_ln73_fu_614_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        temp_row_3_V_3_reg_249 <= temp_row_3_V_0_reg_87;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if (((icmp_ln65_fu_684_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd1))) begin
            temp_row_3_V_5_reg_335 <= temp_row_3_V_1_reg_293;
        end else if (((icmp_ln78_fu_650_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd0))) begin
            temp_row_3_V_5_reg_335 <= temp_row_3_V_3_reg_249;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln78_fu_650_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln180_reg_863 <= add_ln180_fu_675_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        icmp_ln58_reg_811 <= icmp_ln58_fu_586_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        idx_subscript2_reg_870 <= idx_subscript2_fu_690_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        idx_subscript3_reg_828 <= idx_subscript3_fu_620_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        idx_subscript4_reg_853 <= idx_subscript4_fu_656_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        idx_subscript_reg_887 <= idx_subscript_fu_724_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln65_fu_684_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sub_ln180_reg_880 <= sub_ln180_fu_709_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_754_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        temp_row_0_V_0_reg_123 <= temp_row_0_V_5_reg_374;
        temp_row_1_V_0_reg_111 <= temp_row_1_V_9_reg_361;
        temp_row_2_V_0_reg_99 <= temp_row_2_V_9_reg_348;
        temp_row_3_V_0_reg_87 <= temp_row_3_V_5_reg_335;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln60_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        trunc_ln67_reg_897 <= trunc_ln67_fu_750_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln73_fu_614_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        trunc_ln80_reg_838 <= trunc_ln80_fu_646_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln55_fu_592_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln58_reg_818[4 : 2] <= zext_ln58_fu_606_p1[4 : 2];
    end
end

always @ (*) begin
    if ((((icmp_ln55_fu_592_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (sub_ln180_reg_880 == 2'd1))) begin
        ap_phi_mux_temp_row_1_V_3_be_phi_fu_563_p6 = state_matrix_V_q0;
    end else if ((((1'b1 == ap_CS_fsm_state11) & (sub_ln180_reg_880 == 2'd2)) | (~(sub_ln180_reg_880 == 2'd2) & ~(sub_ln180_reg_880 == 2'd1) & (1'b1 == ap_CS_fsm_state11)))) begin
        ap_phi_mux_temp_row_1_V_3_be_phi_fu_563_p6 = temp_row_1_V_3_reg_314;
    end else begin
        ap_phi_mux_temp_row_1_V_3_be_phi_fu_563_p6 = 'bx;
    end
end

always @ (*) begin
    if (((2'd1 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_temp_row_1_V_7_be_phi_fu_422_p6 = state_matrix_V_q0;
    end else if ((((2'd2 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7)) | (~(2'd2 == add_ln180_reg_863) & ~(2'd1 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7)))) begin
        ap_phi_mux_temp_row_1_V_7_be_phi_fu_422_p6 = temp_row_1_V_7_reg_271;
    end else begin
        ap_phi_mux_temp_row_1_V_7_be_phi_fu_422_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (sub_ln180_reg_880 == 2'd2))) begin
        ap_phi_mux_temp_row_2_V_3_be_phi_fu_547_p6 = state_matrix_V_q0;
    end else if (((~(sub_ln180_reg_880 == 2'd2) & ~(sub_ln180_reg_880 == 2'd1) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_CS_fsm_state11) & (sub_ln180_reg_880 == 2'd1)))) begin
        ap_phi_mux_temp_row_2_V_3_be_phi_fu_547_p6 = temp_row_2_V_3_reg_304;
    end else begin
        ap_phi_mux_temp_row_2_V_3_be_phi_fu_547_p6 = 'bx;
    end
end

always @ (*) begin
    if (((2'd2 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_temp_row_2_V_7_be_phi_fu_406_p6 = state_matrix_V_q0;
    end else if (((~(2'd2 == add_ln180_reg_863) & ~(2'd1 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7)) | ((2'd1 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7)))) begin
        ap_phi_mux_temp_row_2_V_7_be_phi_fu_406_p6 = temp_row_2_V_7_reg_260;
    end else begin
        ap_phi_mux_temp_row_2_V_7_be_phi_fu_406_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state11) & (sub_ln180_reg_880 == 2'd2)) | ((1'b1 == ap_CS_fsm_state11) & (sub_ln180_reg_880 == 2'd1)))) begin
        ap_phi_mux_temp_row_3_V_1_be_phi_fu_531_p6 = temp_row_3_V_1_reg_293;
    end else if ((~(sub_ln180_reg_880 == 2'd2) & ~(sub_ln180_reg_880 == 2'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_phi_mux_temp_row_3_V_1_be_phi_fu_531_p6 = state_matrix_V_q0;
    end else begin
        ap_phi_mux_temp_row_3_V_1_be_phi_fu_531_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((2'd2 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7)) | ((2'd1 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7)))) begin
        ap_phi_mux_temp_row_3_V_3_be_phi_fu_390_p6 = temp_row_3_V_3_reg_249;
    end else if ((~(2'd2 == add_ln180_reg_863) & ~(2'd1 == add_ln180_reg_863) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_temp_row_3_V_3_be_phi_fu_390_p6 = state_matrix_V_q0;
    end else begin
        ap_phi_mux_temp_row_3_V_3_be_phi_fu_390_p6 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln55_fu_592_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_matrix_V_address0 = zext_ln180_5_fu_775_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_matrix_V_address0 = zext_ln180_3_fu_745_p1;
    end else if (((icmp_ln65_fu_684_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        state_matrix_V_address0 = zext_ln180_1_fu_704_p1;
    end else if (((icmp_ln78_fu_650_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        state_matrix_V_address0 = zext_ln180_2_fu_670_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_matrix_V_address0 = sext_ln180_1_fu_641_p1;
    end else begin
        state_matrix_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | ((icmp_ln65_fu_684_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln78_fu_650_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        state_matrix_V_ce0 = 1'b1;
    end else begin
        state_matrix_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln85_fu_754_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        state_matrix_V_we0 = 1'b1;
    end else begin
        state_matrix_V_we0 = 1'b0;
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
            if (((icmp_ln55_fu_592_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln55_fu_592_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln73_fu_614_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (((icmp_ln65_fu_684_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd1)) | ((icmp_ln78_fu_650_p2 == 1'd1) & (icmp_ln58_reg_811 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else if (((icmp_ln65_fu_684_p2 == 1'd0) & (icmp_ln58_reg_811 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln60_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state12 : begin
            if (((icmp_ln85_fu_754_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln180_1_fu_740_p2 = (zext_ln58_reg_818 + zext_ln180_fu_736_p1);

assign add_ln180_2_fu_636_p2 = ($signed(zext_ln58_reg_818) + $signed(sext_ln180_fu_632_p1));

assign add_ln180_3_fu_770_p2 = (zext_ln58_reg_818 + zext_ln180_4_fu_766_p1);

assign add_ln180_fu_675_p2 = (trunc_ln80_reg_838 + idx_subscript4_0_reg_282);

assign add_ln55_fu_805_p2 = ($signed(indvars_iv20_reg_135) + $signed(2'd3));

assign add_ln62_fu_730_p2 = (zext_ln60_fu_714_p1 + indvars_iv17_reg_147);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign i_chaining_1_fu_760_p2 = (i_chaining_1_0_reg_575 + 3'd1);

assign icmp_ln55_fu_592_p2 = ((indvars_iv17_reg_147 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln58_fu_586_p2 = ((round_factor == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln60_fu_718_p2 = ((idx_subscript_0_reg_470 == indvars_iv20_reg_135) ? 1'b1 : 1'b0);

assign icmp_ln65_fu_684_p2 = ((zext_ln65_fu_680_p1 == indvars_iv17_reg_147) ? 1'b1 : 1'b0);

assign icmp_ln73_fu_614_p2 = ((zext_ln73_fu_610_p1 == indvars_iv17_reg_147) ? 1'b1 : 1'b0);

assign icmp_ln78_fu_650_p2 = ((idx_subscript4_0_reg_282 == indvars_iv20_reg_135) ? 1'b1 : 1'b0);

assign icmp_ln85_fu_754_p2 = ((i_chaining_1_0_reg_575 == 3'd4) ? 1'b1 : 1'b0);

assign idx_subscript2_fu_690_p2 = (idx_subscript2_0_reg_324 + 2'd1);

assign idx_subscript3_fu_620_p2 = (idx_subscript3_0_reg_192 + 2'd1);

assign idx_subscript4_fu_656_p2 = (idx_subscript4_0_reg_282 + 2'd1);

assign idx_subscript_fu_724_p2 = (idx_subscript_0_reg_470 + 2'd1);

assign row_index_fu_799_p2 = (indvars_iv17_reg_147 + 3'd1);

assign sext_ln180_1_fu_641_p1 = $signed(add_ln180_2_fu_636_p2);

assign sext_ln180_fu_632_p1 = $signed(sub_ln75_fu_626_p2);

assign state_matrix_V_d0 = tmp_fu_784_p6;

assign sub_ln180_fu_709_p2 = (idx_subscript2_0_reg_324 - trunc_ln67_reg_897);

assign sub_ln75_fu_626_p2 = (zext_ln73_fu_610_p1 - indvars_iv17_reg_147);

assign tmp_5_fu_598_p3 = {{indvars_iv17_reg_147}, {2'd0}};

assign tmp_6_fu_696_p3 = {{indvars_iv17_reg_147}, {idx_subscript2_0_reg_324}};

assign tmp_7_fu_662_p3 = {{indvars_iv17_reg_147}, {idx_subscript4_0_reg_282}};

assign tmp_fu_784_p5 = i_chaining_1_0_reg_575[1:0];

assign trunc_ln67_fu_750_p1 = indvars_iv17_reg_147[1:0];

assign trunc_ln80_fu_646_p1 = indvars_iv17_reg_147[1:0];

assign zext_ln180_1_fu_704_p1 = tmp_6_fu_696_p3;

assign zext_ln180_2_fu_670_p1 = tmp_7_fu_662_p3;

assign zext_ln180_3_fu_745_p1 = add_ln180_1_fu_740_p2;

assign zext_ln180_4_fu_766_p1 = i_chaining_1_0_reg_575;

assign zext_ln180_5_fu_775_p1 = add_ln180_3_fu_770_p2;

assign zext_ln180_fu_736_p1 = add_ln62_fu_730_p2;

assign zext_ln58_fu_606_p1 = tmp_5_fu_598_p3;

assign zext_ln60_fu_714_p1 = idx_subscript_0_reg_470;

assign zext_ln65_fu_680_p1 = idx_subscript2_0_reg_324;

assign zext_ln73_fu_610_p1 = idx_subscript3_0_reg_192;

always @ (posedge ap_clk) begin
    zext_ln58_reg_818[1:0] <= 2'b00;
    zext_ln58_reg_818[5] <= 1'b0;
end

endmodule //aes_shift_rows
