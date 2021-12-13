// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_get_round_key5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        round,
        expanded_key_V_address0,
        expanded_key_V_ce0,
        expanded_key_V_q0,
        round_key_V_address0,
        round_key_V_ce0,
        round_key_V_we0,
        round_key_V_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] round;
output  [7:0] expanded_key_V_address0;
output   expanded_key_V_ce0;
input  [15:0] expanded_key_V_q0;
output  [3:0] round_key_V_address0;
output   round_key_V_ce0;
output   round_key_V_we0;
output  [15:0] round_key_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg expanded_key_V_ce0;
reg round_key_V_ce0;
reg round_key_V_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [8:0] key_column_index_V_fu_93_p1;
reg  signed [8:0] key_column_index_V_reg_183;
wire   [2:0] i_fu_103_p2;
reg   [2:0] i_reg_191;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln180_fu_125_p1;
reg   [5:0] zext_ln180_reg_196;
wire   [0:0] icmp_ln131_fu_97_p2;
wire   [8:0] sub_ln180_fu_133_p2;
reg   [8:0] sub_ln180_reg_201;
wire   [2:0] j_fu_145_p2;
reg   [2:0] j_reg_209;
wire    ap_CS_fsm_state3;
wire   [5:0] add_ln180_fu_155_p2;
reg   [5:0] add_ln180_reg_214;
wire   [0:0] icmp_ln133_fu_139_p2;
reg   [2:0] i_0_reg_63;
reg   [2:0] i_op_assign_reg_74;
wire    ap_CS_fsm_state4;
wire  signed [63:0] sext_ln180_fu_174_p1;
wire   [63:0] zext_ln180_38_fu_179_p1;
wire   [6:0] tmp_63_fu_85_p3;
wire   [4:0] tmp_s_fu_117_p3;
wire   [8:0] tmp_fu_109_p3;
wire   [8:0] zext_ln180_36_fu_129_p1;
wire   [5:0] zext_ln180_37_fu_151_p1;
wire   [8:0] zext_ln215_fu_160_p1;
wire   [8:0] ret_V_fu_164_p2;
wire   [8:0] add_ln180_9_fu_169_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln133_fu_139_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_63 <= i_reg_191;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_63 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_op_assign_reg_74 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_op_assign_reg_74 <= j_reg_209;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln133_fu_139_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln180_reg_214 <= add_ln180_fu_155_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_191 <= i_fu_103_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_209 <= j_fu_145_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        key_column_index_V_reg_183[8 : 2] <= key_column_index_V_fu_93_p1[8 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sub_ln180_reg_201[8 : 2] <= sub_ln180_fu_133_p2[8 : 2];
        zext_ln180_reg_196[4 : 2] <= zext_ln180_fu_125_p1[4 : 2];
    end
end

always @ (*) begin
    if ((((icmp_ln131_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln131_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        expanded_key_V_ce0 = 1'b1;
    end else begin
        expanded_key_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        round_key_V_ce0 = 1'b1;
    end else begin
        round_key_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        round_key_V_we0 = 1'b1;
    end else begin
        round_key_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln131_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln133_fu_139_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln180_9_fu_169_p2 = (sub_ln180_reg_201 + ret_V_fu_164_p2);

assign add_ln180_fu_155_p2 = (zext_ln180_reg_196 + zext_ln180_37_fu_151_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign expanded_key_V_address0 = sext_ln180_fu_174_p1;

assign i_fu_103_p2 = (i_0_reg_63 + 3'd1);

assign icmp_ln131_fu_97_p2 = ((i_0_reg_63 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln133_fu_139_p2 = ((i_op_assign_reg_74 == 3'd4) ? 1'b1 : 1'b0);

assign j_fu_145_p2 = (i_op_assign_reg_74 + 3'd1);

assign key_column_index_V_fu_93_p1 = $signed(tmp_63_fu_85_p3);

assign ret_V_fu_164_p2 = ($signed(key_column_index_V_reg_183) + $signed(zext_ln215_fu_160_p1));

assign round_key_V_address0 = zext_ln180_38_fu_179_p1;

assign round_key_V_d0 = expanded_key_V_q0;

assign sext_ln180_fu_174_p1 = $signed(add_ln180_9_fu_169_p2);

assign sub_ln180_fu_133_p2 = (tmp_fu_109_p3 - zext_ln180_36_fu_129_p1);

assign tmp_63_fu_85_p3 = {{round}, {2'd0}};

assign tmp_fu_109_p3 = {{i_0_reg_63}, {6'd0}};

assign tmp_s_fu_117_p3 = {{i_0_reg_63}, {2'd0}};

assign zext_ln180_36_fu_129_p1 = tmp_s_fu_117_p3;

assign zext_ln180_37_fu_151_p1 = i_op_assign_reg_74;

assign zext_ln180_38_fu_179_p1 = add_ln180_reg_214;

assign zext_ln180_fu_125_p1 = tmp_s_fu_117_p3;

assign zext_ln215_fu_160_p1 = i_op_assign_reg_74;

always @ (posedge ap_clk) begin
    key_column_index_V_reg_183[1:0] <= 2'b00;
    zext_ln180_reg_196[1:0] <= 2'b00;
    zext_ln180_reg_196[5] <= 1'b0;
    sub_ln180_reg_201[1:0] <= 2'b00;
end

endmodule //aes_get_round_key5
