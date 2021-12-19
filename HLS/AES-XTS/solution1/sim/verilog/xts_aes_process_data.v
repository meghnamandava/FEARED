// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xts_aes_process_data (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_data_V_AWVALID,
        m_axi_data_V_AWREADY,
        m_axi_data_V_AWADDR,
        m_axi_data_V_AWID,
        m_axi_data_V_AWLEN,
        m_axi_data_V_AWSIZE,
        m_axi_data_V_AWBURST,
        m_axi_data_V_AWLOCK,
        m_axi_data_V_AWCACHE,
        m_axi_data_V_AWPROT,
        m_axi_data_V_AWQOS,
        m_axi_data_V_AWREGION,
        m_axi_data_V_AWUSER,
        m_axi_data_V_WVALID,
        m_axi_data_V_WREADY,
        m_axi_data_V_WDATA,
        m_axi_data_V_WSTRB,
        m_axi_data_V_WLAST,
        m_axi_data_V_WID,
        m_axi_data_V_WUSER,
        m_axi_data_V_ARVALID,
        m_axi_data_V_ARREADY,
        m_axi_data_V_ARADDR,
        m_axi_data_V_ARID,
        m_axi_data_V_ARLEN,
        m_axi_data_V_ARSIZE,
        m_axi_data_V_ARBURST,
        m_axi_data_V_ARLOCK,
        m_axi_data_V_ARCACHE,
        m_axi_data_V_ARPROT,
        m_axi_data_V_ARQOS,
        m_axi_data_V_ARREGION,
        m_axi_data_V_ARUSER,
        m_axi_data_V_RVALID,
        m_axi_data_V_RREADY,
        m_axi_data_V_RDATA,
        m_axi_data_V_RLAST,
        m_axi_data_V_RID,
        m_axi_data_V_RUSER,
        m_axi_data_V_RRESP,
        m_axi_data_V_BVALID,
        m_axi_data_V_BREADY,
        m_axi_data_V_BRESP,
        m_axi_data_V_BID,
        m_axi_data_V_BUSER,
        data_V_offset,
        num_blocks_orig_V,
        mode_V,
        tweak_V_address0,
        tweak_V_ce0,
        tweak_V_we0,
        tweak_V_d0,
        tweak_V_q0,
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
        multiplication_V_q1,
        blocks_V_address0,
        blocks_V_ce0,
        blocks_V_we0,
        blocks_V_d0,
        blocks_V_q0
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_data_V_AWVALID;
input   m_axi_data_V_AWREADY;
output  [31:0] m_axi_data_V_AWADDR;
output  [0:0] m_axi_data_V_AWID;
output  [31:0] m_axi_data_V_AWLEN;
output  [2:0] m_axi_data_V_AWSIZE;
output  [1:0] m_axi_data_V_AWBURST;
output  [1:0] m_axi_data_V_AWLOCK;
output  [3:0] m_axi_data_V_AWCACHE;
output  [2:0] m_axi_data_V_AWPROT;
output  [3:0] m_axi_data_V_AWQOS;
output  [3:0] m_axi_data_V_AWREGION;
output  [0:0] m_axi_data_V_AWUSER;
output   m_axi_data_V_WVALID;
input   m_axi_data_V_WREADY;
output  [15:0] m_axi_data_V_WDATA;
output  [1:0] m_axi_data_V_WSTRB;
output   m_axi_data_V_WLAST;
output  [0:0] m_axi_data_V_WID;
output  [0:0] m_axi_data_V_WUSER;
output   m_axi_data_V_ARVALID;
input   m_axi_data_V_ARREADY;
output  [31:0] m_axi_data_V_ARADDR;
output  [0:0] m_axi_data_V_ARID;
output  [31:0] m_axi_data_V_ARLEN;
output  [2:0] m_axi_data_V_ARSIZE;
output  [1:0] m_axi_data_V_ARBURST;
output  [1:0] m_axi_data_V_ARLOCK;
output  [3:0] m_axi_data_V_ARCACHE;
output  [2:0] m_axi_data_V_ARPROT;
output  [3:0] m_axi_data_V_ARQOS;
output  [3:0] m_axi_data_V_ARREGION;
output  [0:0] m_axi_data_V_ARUSER;
input   m_axi_data_V_RVALID;
output   m_axi_data_V_RREADY;
input  [15:0] m_axi_data_V_RDATA;
input   m_axi_data_V_RLAST;
input  [0:0] m_axi_data_V_RID;
input  [0:0] m_axi_data_V_RUSER;
input  [1:0] m_axi_data_V_RRESP;
input   m_axi_data_V_BVALID;
output   m_axi_data_V_BREADY;
input  [1:0] m_axi_data_V_BRESP;
input  [0:0] m_axi_data_V_BID;
input  [0:0] m_axi_data_V_BUSER;
input  [30:0] data_V_offset;
input  [15:0] num_blocks_orig_V;
input  [15:0] mode_V;
output  [3:0] tweak_V_address0;
output   tweak_V_ce0;
output   tweak_V_we0;
output  [15:0] tweak_V_d0;
input  [15:0] tweak_V_q0;
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
output  [9:0] blocks_V_address0;
output   blocks_V_ce0;
output   blocks_V_we0;
output  [15:0] blocks_V_d0;
input  [15:0] blocks_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_data_V_ARVALID;
reg m_axi_data_V_RREADY;
reg[3:0] tweak_V_address0;
reg tweak_V_ce0;
reg tweak_V_we0;
reg[15:0] tweak_V_d0;
reg[9:0] blocks_V_address0;
reg blocks_V_ce0;
reg blocks_V_we0;
reg[15:0] blocks_V_d0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    data_V_blk_n_AR;
reg    data_V_blk_n_R;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln299_fu_251_p2;
wire    ap_CS_fsm_state7;
wire   [6:0] i_fu_233_p2;
reg   [6:0] i_reg_365;
wire    ap_CS_fsm_state8;
wire   [11:0] zext_ln301_fu_247_p1;
reg   [11:0] zext_ln301_reg_370;
wire   [0:0] icmp_ln297_fu_227_p2;
wire   [4:0] j_fu_257_p2;
reg   [4:0] j_reg_383;
reg    ap_block_state9;
wire   [11:0] add_ln180_fu_267_p2;
reg   [11:0] add_ln180_reg_388;
reg   [15:0] data_V_addr_read_reg_393;
wire   [6:0] i_1_fu_286_p2;
reg   [6:0] i_1_reg_401;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln887_fu_292_p2;
reg   [0:0] icmp_ln887_reg_406;
wire   [0:0] icmp_ln306_fu_280_p2;
wire   [4:0] j_1_fu_303_p2;
reg   [4:0] j_1_reg_413;
wire    ap_CS_fsm_state13;
reg   [3:0] tweak_V_addr_1_reg_418;
wire   [0:0] icmp_ln258_fu_297_p2;
wire    ap_CS_fsm_state14;
wire    grp_xts_aes_process_bloc_fu_199_ap_start;
wire    grp_xts_aes_process_bloc_fu_199_ap_done;
wire    grp_xts_aes_process_bloc_fu_199_ap_idle;
wire    grp_xts_aes_process_bloc_fu_199_ap_ready;
wire   [9:0] grp_xts_aes_process_bloc_fu_199_block_V_address0;
wire    grp_xts_aes_process_bloc_fu_199_block_V_ce0;
wire    grp_xts_aes_process_bloc_fu_199_block_V_we0;
wire   [15:0] grp_xts_aes_process_bloc_fu_199_block_V_d0;
wire   [3:0] grp_xts_aes_process_bloc_fu_199_tweak_V_address0;
wire    grp_xts_aes_process_bloc_fu_199_tweak_V_ce0;
wire   [7:0] grp_xts_aes_process_bloc_fu_199_expanded_key_V_address0;
wire    grp_xts_aes_process_bloc_fu_199_expanded_key_V_ce0;
wire   [7:0] grp_xts_aes_process_bloc_fu_199_expanded_key_V_address1;
wire    grp_xts_aes_process_bloc_fu_199_expanded_key_V_ce1;
wire   [9:0] grp_xts_aes_process_bloc_fu_199_s_boxes_V_address0;
wire    grp_xts_aes_process_bloc_fu_199_s_boxes_V_ce0;
wire   [9:0] grp_xts_aes_process_bloc_fu_199_s_boxes_V_address1;
wire    grp_xts_aes_process_bloc_fu_199_s_boxes_V_ce1;
wire   [11:0] grp_xts_aes_process_bloc_fu_199_multiplication_V_address0;
wire    grp_xts_aes_process_bloc_fu_199_multiplication_V_ce0;
wire   [11:0] grp_xts_aes_process_bloc_fu_199_multiplication_V_address1;
wire    grp_xts_aes_process_bloc_fu_199_multiplication_V_ce1;
reg   [6:0] i_0_reg_142;
reg   [4:0] j_0_reg_153;
wire    ap_CS_fsm_state10;
reg   [6:0] i_op_assign_reg_164;
wire    ap_CS_fsm_state15;
wire   [0:0] ap_phi_mux_p_0111_0_i_phi_fu_180_p4;
reg   [0:0] p_0111_0_i_reg_176;
wire    ap_CS_fsm_state12;
reg   [4:0] j_0_i_reg_188;
reg    grp_xts_aes_process_bloc_fu_199_ap_start_reg;
wire   [63:0] zext_ln180_2_fu_272_p1;
wire   [63:0] zext_ln260_fu_309_p1;
wire   [63:0] zext_ln180_fu_216_p1;
wire   [15:0] zext_ln68_fu_334_p1;
wire   [15:0] xor_ln719_fu_339_p2;
wire   [10:0] tmp_1_fu_239_p3;
wire   [11:0] zext_ln180_1_fu_263_p1;
wire   [15:0] zext_ln306_fu_276_p1;
wire   [6:0] trunc_ln68_fu_322_p1;
wire   [7:0] or_ln_fu_326_p3;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_xts_aes_process_bloc_fu_199_ap_start_reg = 1'b0;
end

xts_aes_process_bloc grp_xts_aes_process_bloc_fu_199(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xts_aes_process_bloc_fu_199_ap_start),
    .ap_done(grp_xts_aes_process_bloc_fu_199_ap_done),
    .ap_idle(grp_xts_aes_process_bloc_fu_199_ap_idle),
    .ap_ready(grp_xts_aes_process_bloc_fu_199_ap_ready),
    .block_V_address0(grp_xts_aes_process_bloc_fu_199_block_V_address0),
    .block_V_ce0(grp_xts_aes_process_bloc_fu_199_block_V_ce0),
    .block_V_we0(grp_xts_aes_process_bloc_fu_199_block_V_we0),
    .block_V_d0(grp_xts_aes_process_bloc_fu_199_block_V_d0),
    .block_V_q0(blocks_V_q0),
    .block_V_offset(i_op_assign_reg_164),
    .tweak_V_address0(grp_xts_aes_process_bloc_fu_199_tweak_V_address0),
    .tweak_V_ce0(grp_xts_aes_process_bloc_fu_199_tweak_V_ce0),
    .tweak_V_q0(tweak_V_q0),
    .mode_V(mode_V),
    .expanded_key_V_address0(grp_xts_aes_process_bloc_fu_199_expanded_key_V_address0),
    .expanded_key_V_ce0(grp_xts_aes_process_bloc_fu_199_expanded_key_V_ce0),
    .expanded_key_V_q0(expanded_key_V_q0),
    .expanded_key_V_address1(grp_xts_aes_process_bloc_fu_199_expanded_key_V_address1),
    .expanded_key_V_ce1(grp_xts_aes_process_bloc_fu_199_expanded_key_V_ce1),
    .expanded_key_V_q1(expanded_key_V_q1),
    .s_boxes_V_address0(grp_xts_aes_process_bloc_fu_199_s_boxes_V_address0),
    .s_boxes_V_ce0(grp_xts_aes_process_bloc_fu_199_s_boxes_V_ce0),
    .s_boxes_V_q0(s_boxes_V_q0),
    .s_boxes_V_address1(grp_xts_aes_process_bloc_fu_199_s_boxes_V_address1),
    .s_boxes_V_ce1(grp_xts_aes_process_bloc_fu_199_s_boxes_V_ce1),
    .s_boxes_V_q1(s_boxes_V_q1),
    .multiplication_V_address0(grp_xts_aes_process_bloc_fu_199_multiplication_V_address0),
    .multiplication_V_ce0(grp_xts_aes_process_bloc_fu_199_multiplication_V_ce0),
    .multiplication_V_q0(multiplication_V_q0),
    .multiplication_V_address1(grp_xts_aes_process_bloc_fu_199_multiplication_V_address1),
    .multiplication_V_ce1(grp_xts_aes_process_bloc_fu_199_multiplication_V_ce1),
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
        grp_xts_aes_process_bloc_fu_199_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln306_fu_280_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln887_fu_292_p2 == 1'd1))) begin
            grp_xts_aes_process_bloc_fu_199_ap_start_reg <= 1'b1;
        end else if ((grp_xts_aes_process_bloc_fu_199_ap_ready == 1'b1)) begin
            grp_xts_aes_process_bloc_fu_199_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln299_fu_251_p2 == 1'd0) & (m_axi_data_V_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln299_fu_251_p2 == 1'd1))) begin
        i_0_reg_142 <= i_reg_365;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_0_reg_142 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln297_fu_227_p2 == 1'd1))) begin
        i_op_assign_reg_164 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        i_op_assign_reg_164 <= i_1_reg_401;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        j_0_i_reg_188 <= j_1_reg_413;
    end else if (((grp_xts_aes_process_bloc_fu_199_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        j_0_i_reg_188 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        j_0_reg_153 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        j_0_reg_153 <= j_reg_383;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_0111_0_i_reg_176 <= tweak_V_q0[32'd7];
    end else if (((grp_xts_aes_process_bloc_fu_199_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        p_0111_0_i_reg_176 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln299_fu_251_p2 == 1'd0) & (m_axi_data_V_RVALID == 1'b0)) & (icmp_ln299_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        add_ln180_reg_388 <= add_ln180_fu_267_p2;
        data_V_addr_read_reg_393 <= m_axi_data_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        i_1_reg_401 <= i_1_fu_286_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_365 <= i_fu_233_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln306_fu_280_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        icmp_ln887_reg_406 <= icmp_ln887_fu_292_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        j_1_reg_413 <= j_1_fu_303_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln299_fu_251_p2 == 1'd0) & (m_axi_data_V_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
        j_reg_383 <= j_fu_257_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln258_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        tweak_V_addr_1_reg_418 <= zext_ln260_fu_309_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln297_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        zext_ln301_reg_370[10 : 4] <= zext_ln301_fu_247_p1[10 : 4];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln306_fu_280_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln306_fu_280_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        blocks_V_address0 = zext_ln180_2_fu_272_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        blocks_V_address0 = grp_xts_aes_process_bloc_fu_199_block_V_address0;
    end else begin
        blocks_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        blocks_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        blocks_V_ce0 = grp_xts_aes_process_bloc_fu_199_block_V_ce0;
    end else begin
        blocks_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        blocks_V_d0 = data_V_addr_read_reg_393;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        blocks_V_d0 = grp_xts_aes_process_bloc_fu_199_block_V_d0;
    end else begin
        blocks_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        blocks_V_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        blocks_V_we0 = grp_xts_aes_process_bloc_fu_199_block_V_we0;
    end else begin
        blocks_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        data_V_blk_n_AR = m_axi_data_V_ARREADY;
    end else begin
        data_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln299_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        data_V_blk_n_R = m_axi_data_V_RVALID;
    end else begin
        data_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((~((m_axi_data_V_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_data_V_ARVALID = 1'b1;
    end else begin
        m_axi_data_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln299_fu_251_p2 == 1'd0) & (m_axi_data_V_RVALID == 1'b0)) & (icmp_ln299_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_data_V_RREADY = 1'b1;
    end else begin
        m_axi_data_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        tweak_V_address0 = tweak_V_addr_1_reg_418;
    end else if (((1'b1 == ap_CS_fsm_state15) | ((1'b1 == ap_CS_fsm_state13) & (ap_phi_mux_p_0111_0_i_phi_fu_180_p4 == 1'd1) & (icmp_ln258_fu_297_p2 == 1'd1)))) begin
        tweak_V_address0 = 64'd0;
    end else if (((icmp_ln258_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        tweak_V_address0 = zext_ln260_fu_309_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        tweak_V_address0 = grp_xts_aes_process_bloc_fu_199_tweak_V_address0;
    end else begin
        tweak_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state13) & (ap_phi_mux_p_0111_0_i_phi_fu_180_p4 == 1'd1) & (icmp_ln258_fu_297_p2 == 1'd1)) | ((icmp_ln258_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13)))) begin
        tweak_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        tweak_V_ce0 = grp_xts_aes_process_bloc_fu_199_tweak_V_ce0;
    end else begin
        tweak_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tweak_V_d0 = xor_ln719_fu_339_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        tweak_V_d0 = zext_ln68_fu_334_p1;
    end else begin
        tweak_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | ((1'b1 == ap_CS_fsm_state15) & (p_0111_0_i_reg_176 == 1'd1) & (icmp_ln887_reg_406 == 1'd1)))) begin
        tweak_V_we0 = 1'b1;
    end else begin
        tweak_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((m_axi_data_V_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
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
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln297_fu_227_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~((icmp_ln299_fu_251_p2 == 1'd0) & (m_axi_data_V_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln299_fu_251_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~((icmp_ln299_fu_251_p2 == 1'd0) & (m_axi_data_V_RVALID == 1'b0)) & (icmp_ln299_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln306_fu_280_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln306_fu_280_p2 == 1'd0) & (icmp_ln887_fu_292_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((grp_xts_aes_process_bloc_fu_199_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln258_fu_297_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln180_fu_267_p2 = (zext_ln301_reg_370 + zext_ln180_1_fu_263_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state9 = ((icmp_ln299_fu_251_p2 == 1'd0) & (m_axi_data_V_RVALID == 1'b0));
end

assign ap_phi_mux_p_0111_0_i_phi_fu_180_p4 = p_0111_0_i_reg_176;

assign expanded_key_V_address0 = grp_xts_aes_process_bloc_fu_199_expanded_key_V_address0;

assign expanded_key_V_address1 = grp_xts_aes_process_bloc_fu_199_expanded_key_V_address1;

assign expanded_key_V_ce0 = grp_xts_aes_process_bloc_fu_199_expanded_key_V_ce0;

assign expanded_key_V_ce1 = grp_xts_aes_process_bloc_fu_199_expanded_key_V_ce1;

assign grp_xts_aes_process_bloc_fu_199_ap_start = grp_xts_aes_process_bloc_fu_199_ap_start_reg;

assign i_1_fu_286_p2 = (i_op_assign_reg_164 + 7'd1);

assign i_fu_233_p2 = (i_0_reg_142 + 7'd1);

assign icmp_ln258_fu_297_p2 = ((j_0_i_reg_188 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln297_fu_227_p2 = ((i_0_reg_142 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln299_fu_251_p2 = ((j_0_reg_153 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln306_fu_280_p2 = ((i_op_assign_reg_164 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln887_fu_292_p2 = (($signed(zext_ln306_fu_276_p1) < $signed(num_blocks_orig_V)) ? 1'b1 : 1'b0);

assign j_1_fu_303_p2 = (j_0_i_reg_188 + 5'd1);

assign j_fu_257_p2 = (j_0_reg_153 + 5'd1);

assign m_axi_data_V_ARADDR = zext_ln180_fu_216_p1;

assign m_axi_data_V_ARBURST = 2'd0;

assign m_axi_data_V_ARCACHE = 4'd0;

assign m_axi_data_V_ARID = 1'd0;

assign m_axi_data_V_ARLEN = 32'd1024;

assign m_axi_data_V_ARLOCK = 2'd0;

assign m_axi_data_V_ARPROT = 3'd0;

assign m_axi_data_V_ARQOS = 4'd0;

assign m_axi_data_V_ARREGION = 4'd0;

assign m_axi_data_V_ARSIZE = 3'd0;

assign m_axi_data_V_ARUSER = 1'd0;

assign m_axi_data_V_AWADDR = 32'd0;

assign m_axi_data_V_AWBURST = 2'd0;

assign m_axi_data_V_AWCACHE = 4'd0;

assign m_axi_data_V_AWID = 1'd0;

assign m_axi_data_V_AWLEN = 32'd0;

assign m_axi_data_V_AWLOCK = 2'd0;

assign m_axi_data_V_AWPROT = 3'd0;

assign m_axi_data_V_AWQOS = 4'd0;

assign m_axi_data_V_AWREGION = 4'd0;

assign m_axi_data_V_AWSIZE = 3'd0;

assign m_axi_data_V_AWUSER = 1'd0;

assign m_axi_data_V_AWVALID = 1'b0;

assign m_axi_data_V_BREADY = 1'b0;

assign m_axi_data_V_WDATA = 16'd0;

assign m_axi_data_V_WID = 1'd0;

assign m_axi_data_V_WLAST = 1'b0;

assign m_axi_data_V_WSTRB = 2'd0;

assign m_axi_data_V_WUSER = 1'd0;

assign m_axi_data_V_WVALID = 1'b0;

assign multiplication_V_address0 = grp_xts_aes_process_bloc_fu_199_multiplication_V_address0;

assign multiplication_V_address1 = grp_xts_aes_process_bloc_fu_199_multiplication_V_address1;

assign multiplication_V_ce0 = grp_xts_aes_process_bloc_fu_199_multiplication_V_ce0;

assign multiplication_V_ce1 = grp_xts_aes_process_bloc_fu_199_multiplication_V_ce1;

assign or_ln_fu_326_p3 = {{trunc_ln68_fu_322_p1}, {p_0111_0_i_reg_176}};

assign s_boxes_V_address0 = grp_xts_aes_process_bloc_fu_199_s_boxes_V_address0;

assign s_boxes_V_address1 = grp_xts_aes_process_bloc_fu_199_s_boxes_V_address1;

assign s_boxes_V_ce0 = grp_xts_aes_process_bloc_fu_199_s_boxes_V_ce0;

assign s_boxes_V_ce1 = grp_xts_aes_process_bloc_fu_199_s_boxes_V_ce1;

assign tmp_1_fu_239_p3 = {{i_0_reg_142}, {4'd0}};

assign trunc_ln68_fu_322_p1 = tweak_V_q0[6:0];

assign xor_ln719_fu_339_p2 = (tweak_V_q0 ^ 16'd135);

assign zext_ln180_1_fu_263_p1 = j_0_reg_153;

assign zext_ln180_2_fu_272_p1 = add_ln180_reg_388;

assign zext_ln180_fu_216_p1 = data_V_offset;

assign zext_ln260_fu_309_p1 = j_0_i_reg_188;

assign zext_ln301_fu_247_p1 = tmp_1_fu_239_p3;

assign zext_ln306_fu_276_p1 = i_op_assign_reg_164;

assign zext_ln68_fu_334_p1 = or_ln_fu_326_p3;

always @ (posedge ap_clk) begin
    zext_ln301_reg_370[3:0] <= 4'b0000;
    zext_ln301_reg_370[11] <= 1'b0;
end

endmodule //xts_aes_process_data
