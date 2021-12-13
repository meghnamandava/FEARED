// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_sequence_to_matr (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_sequence_V_AWVALID,
        m_axi_sequence_V_AWREADY,
        m_axi_sequence_V_AWADDR,
        m_axi_sequence_V_AWID,
        m_axi_sequence_V_AWLEN,
        m_axi_sequence_V_AWSIZE,
        m_axi_sequence_V_AWBURST,
        m_axi_sequence_V_AWLOCK,
        m_axi_sequence_V_AWCACHE,
        m_axi_sequence_V_AWPROT,
        m_axi_sequence_V_AWQOS,
        m_axi_sequence_V_AWREGION,
        m_axi_sequence_V_AWUSER,
        m_axi_sequence_V_WVALID,
        m_axi_sequence_V_WREADY,
        m_axi_sequence_V_WDATA,
        m_axi_sequence_V_WSTRB,
        m_axi_sequence_V_WLAST,
        m_axi_sequence_V_WID,
        m_axi_sequence_V_WUSER,
        m_axi_sequence_V_ARVALID,
        m_axi_sequence_V_ARREADY,
        m_axi_sequence_V_ARADDR,
        m_axi_sequence_V_ARID,
        m_axi_sequence_V_ARLEN,
        m_axi_sequence_V_ARSIZE,
        m_axi_sequence_V_ARBURST,
        m_axi_sequence_V_ARLOCK,
        m_axi_sequence_V_ARCACHE,
        m_axi_sequence_V_ARPROT,
        m_axi_sequence_V_ARQOS,
        m_axi_sequence_V_ARREGION,
        m_axi_sequence_V_ARUSER,
        m_axi_sequence_V_RVALID,
        m_axi_sequence_V_RREADY,
        m_axi_sequence_V_RDATA,
        m_axi_sequence_V_RLAST,
        m_axi_sequence_V_RID,
        m_axi_sequence_V_RUSER,
        m_axi_sequence_V_RRESP,
        m_axi_sequence_V_BVALID,
        m_axi_sequence_V_BREADY,
        m_axi_sequence_V_BRESP,
        m_axi_sequence_V_BID,
        m_axi_sequence_V_BUSER,
        sequence_V_offset,
        matrix_out_V_address0,
        matrix_out_V_ce0,
        matrix_out_V_we0,
        matrix_out_V_d0
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
output   m_axi_sequence_V_AWVALID;
input   m_axi_sequence_V_AWREADY;
output  [31:0] m_axi_sequence_V_AWADDR;
output  [0:0] m_axi_sequence_V_AWID;
output  [31:0] m_axi_sequence_V_AWLEN;
output  [2:0] m_axi_sequence_V_AWSIZE;
output  [1:0] m_axi_sequence_V_AWBURST;
output  [1:0] m_axi_sequence_V_AWLOCK;
output  [3:0] m_axi_sequence_V_AWCACHE;
output  [2:0] m_axi_sequence_V_AWPROT;
output  [3:0] m_axi_sequence_V_AWQOS;
output  [3:0] m_axi_sequence_V_AWREGION;
output  [0:0] m_axi_sequence_V_AWUSER;
output   m_axi_sequence_V_WVALID;
input   m_axi_sequence_V_WREADY;
output  [15:0] m_axi_sequence_V_WDATA;
output  [1:0] m_axi_sequence_V_WSTRB;
output   m_axi_sequence_V_WLAST;
output  [0:0] m_axi_sequence_V_WID;
output  [0:0] m_axi_sequence_V_WUSER;
output   m_axi_sequence_V_ARVALID;
input   m_axi_sequence_V_ARREADY;
output  [31:0] m_axi_sequence_V_ARADDR;
output  [0:0] m_axi_sequence_V_ARID;
output  [31:0] m_axi_sequence_V_ARLEN;
output  [2:0] m_axi_sequence_V_ARSIZE;
output  [1:0] m_axi_sequence_V_ARBURST;
output  [1:0] m_axi_sequence_V_ARLOCK;
output  [3:0] m_axi_sequence_V_ARCACHE;
output  [2:0] m_axi_sequence_V_ARPROT;
output  [3:0] m_axi_sequence_V_ARQOS;
output  [3:0] m_axi_sequence_V_ARREGION;
output  [0:0] m_axi_sequence_V_ARUSER;
input   m_axi_sequence_V_RVALID;
output   m_axi_sequence_V_RREADY;
input  [15:0] m_axi_sequence_V_RDATA;
input   m_axi_sequence_V_RLAST;
input  [0:0] m_axi_sequence_V_RID;
input  [0:0] m_axi_sequence_V_RUSER;
input  [1:0] m_axi_sequence_V_RRESP;
input   m_axi_sequence_V_BVALID;
output   m_axi_sequence_V_BREADY;
input  [1:0] m_axi_sequence_V_BRESP;
input  [0:0] m_axi_sequence_V_BID;
input  [0:0] m_axi_sequence_V_BUSER;
input  [30:0] sequence_V_offset;
output  [3:0] matrix_out_V_address0;
output   matrix_out_V_ce0;
output   matrix_out_V_we0;
output  [15:0] matrix_out_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_sequence_V_ARVALID;
reg m_axi_sequence_V_RREADY;
reg matrix_out_V_ce0;
reg matrix_out_V_we0;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    sequence_V_blk_n_AR;
wire    ap_CS_fsm_state4;
reg    sequence_V_blk_n_R;
wire    ap_CS_fsm_state11;
wire   [31:0] sequence_V_offset_ca_fu_99_p1;
reg   [31:0] sequence_V_offset_ca_reg_192;
wire   [2:0] i_fu_109_p2;
reg   [2:0] i_reg_200;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln223_1_fu_123_p1;
reg   [5:0] zext_ln223_1_reg_205;
wire   [0:0] icmp_ln221_fu_103_p2;
wire   [3:0] zext_ln223_fu_127_p1;
reg   [3:0] zext_ln223_reg_210;
wire   [2:0] j_fu_137_p2;
reg   [2:0] j_reg_218;
wire    ap_CS_fsm_state3;
wire   [5:0] add_ln180_fu_147_p2;
reg   [5:0] add_ln180_reg_223;
wire   [0:0] icmp_ln223_fu_131_p2;
reg   [31:0] sequence_V_addr_reg_228;
reg   [15:0] sequence_V_addr_read_reg_234;
reg   [2:0] i_op_assign_1_reg_77;
reg   [2:0] i_op_assign_reg_88;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln180_6_fu_188_p1;
wire   [63:0] zext_ln180_8_fu_178_p1;
wire   [4:0] tmp_fu_115_p3;
wire   [5:0] zext_ln180_fu_143_p1;
wire   [1:0] trunc_ln1352_fu_152_p1;
wire   [3:0] ret_V_fu_156_p3;
wire   [3:0] ret_V_2_fu_164_p2;
wire   [31:0] zext_ln180_7_fu_169_p1;
wire   [31:0] add_ln180_4_fu_173_p2;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln223_fu_131_p2 == 1'd1))) begin
        i_op_assign_1_reg_77 <= i_reg_200;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_op_assign_1_reg_77 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln221_fu_103_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_op_assign_reg_88 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        i_op_assign_reg_88 <= j_reg_218;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln223_fu_131_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln180_reg_223 <= add_ln180_fu_147_p2;
        sequence_V_addr_reg_228 <= zext_ln180_8_fu_178_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_200 <= i_fu_109_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_218 <= j_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_sequence_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        sequence_V_addr_read_reg_234 <= m_axi_sequence_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sequence_V_offset_ca_reg_192[30 : 0] <= sequence_V_offset_ca_fu_99_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln221_fu_103_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln223_1_reg_205[4 : 2] <= zext_ln223_1_fu_123_p1[4 : 2];
        zext_ln223_reg_210[2 : 0] <= zext_ln223_fu_127_p1[2 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_103_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_103_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_sequence_V_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_sequence_V_ARVALID = 1'b1;
    end else begin
        m_axi_sequence_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_sequence_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        m_axi_sequence_V_RREADY = 1'b1;
    end else begin
        m_axi_sequence_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        matrix_out_V_ce0 = 1'b1;
    end else begin
        matrix_out_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        matrix_out_V_we0 = 1'b1;
    end else begin
        matrix_out_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sequence_V_blk_n_AR = m_axi_sequence_V_ARREADY;
    end else begin
        sequence_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        sequence_V_blk_n_R = m_axi_sequence_V_RVALID;
    end else begin
        sequence_V_blk_n_R = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_103_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln223_fu_131_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((m_axi_sequence_V_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((m_axi_sequence_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln180_4_fu_173_p2 = (zext_ln180_7_fu_169_p1 + sequence_V_offset_ca_reg_192);

assign add_ln180_fu_147_p2 = (zext_ln180_fu_143_p1 + zext_ln223_1_reg_205);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign i_fu_109_p2 = (i_op_assign_1_reg_77 + 3'd1);

assign icmp_ln221_fu_103_p2 = ((i_op_assign_1_reg_77 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln223_fu_131_p2 = ((i_op_assign_reg_88 == 3'd4) ? 1'b1 : 1'b0);

assign j_fu_137_p2 = (i_op_assign_reg_88 + 3'd1);

assign m_axi_sequence_V_ARADDR = sequence_V_addr_reg_228;

assign m_axi_sequence_V_ARBURST = 2'd0;

assign m_axi_sequence_V_ARCACHE = 4'd0;

assign m_axi_sequence_V_ARID = 1'd0;

assign m_axi_sequence_V_ARLEN = 32'd1;

assign m_axi_sequence_V_ARLOCK = 2'd0;

assign m_axi_sequence_V_ARPROT = 3'd0;

assign m_axi_sequence_V_ARQOS = 4'd0;

assign m_axi_sequence_V_ARREGION = 4'd0;

assign m_axi_sequence_V_ARSIZE = 3'd0;

assign m_axi_sequence_V_ARUSER = 1'd0;

assign m_axi_sequence_V_AWADDR = 32'd0;

assign m_axi_sequence_V_AWBURST = 2'd0;

assign m_axi_sequence_V_AWCACHE = 4'd0;

assign m_axi_sequence_V_AWID = 1'd0;

assign m_axi_sequence_V_AWLEN = 32'd0;

assign m_axi_sequence_V_AWLOCK = 2'd0;

assign m_axi_sequence_V_AWPROT = 3'd0;

assign m_axi_sequence_V_AWQOS = 4'd0;

assign m_axi_sequence_V_AWREGION = 4'd0;

assign m_axi_sequence_V_AWSIZE = 3'd0;

assign m_axi_sequence_V_AWUSER = 1'd0;

assign m_axi_sequence_V_AWVALID = 1'b0;

assign m_axi_sequence_V_BREADY = 1'b0;

assign m_axi_sequence_V_WDATA = 16'd0;

assign m_axi_sequence_V_WID = 1'd0;

assign m_axi_sequence_V_WLAST = 1'b0;

assign m_axi_sequence_V_WSTRB = 2'd0;

assign m_axi_sequence_V_WUSER = 1'd0;

assign m_axi_sequence_V_WVALID = 1'b0;

assign matrix_out_V_address0 = zext_ln180_6_fu_188_p1;

assign matrix_out_V_d0 = sequence_V_addr_read_reg_234;

assign ret_V_2_fu_164_p2 = (ret_V_fu_156_p3 + zext_ln223_reg_210);

assign ret_V_fu_156_p3 = {{trunc_ln1352_fu_152_p1}, {2'd0}};

assign sequence_V_offset_ca_fu_99_p1 = sequence_V_offset;

assign tmp_fu_115_p3 = {{i_op_assign_1_reg_77}, {2'd0}};

assign trunc_ln1352_fu_152_p1 = i_op_assign_reg_88[1:0];

assign zext_ln180_6_fu_188_p1 = add_ln180_reg_223;

assign zext_ln180_7_fu_169_p1 = ret_V_2_fu_164_p2;

assign zext_ln180_8_fu_178_p1 = add_ln180_4_fu_173_p2;

assign zext_ln180_fu_143_p1 = i_op_assign_reg_88;

assign zext_ln223_1_fu_123_p1 = tmp_fu_115_p3;

assign zext_ln223_fu_127_p1 = i_op_assign_1_reg_77;

always @ (posedge ap_clk) begin
    sequence_V_offset_ca_reg_192[31] <= 1'b0;
    zext_ln223_1_reg_205[1:0] <= 2'b00;
    zext_ln223_1_reg_205[5] <= 1'b0;
    zext_ln223_reg_210[3] <= 1'b0;
end

endmodule //aes_sequence_to_matr
