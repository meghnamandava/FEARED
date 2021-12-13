// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_substitute_bytes (
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
        m_axi_s_box_V_AWVALID,
        m_axi_s_box_V_AWREADY,
        m_axi_s_box_V_AWADDR,
        m_axi_s_box_V_AWID,
        m_axi_s_box_V_AWLEN,
        m_axi_s_box_V_AWSIZE,
        m_axi_s_box_V_AWBURST,
        m_axi_s_box_V_AWLOCK,
        m_axi_s_box_V_AWCACHE,
        m_axi_s_box_V_AWPROT,
        m_axi_s_box_V_AWQOS,
        m_axi_s_box_V_AWREGION,
        m_axi_s_box_V_AWUSER,
        m_axi_s_box_V_WVALID,
        m_axi_s_box_V_WREADY,
        m_axi_s_box_V_WDATA,
        m_axi_s_box_V_WSTRB,
        m_axi_s_box_V_WLAST,
        m_axi_s_box_V_WID,
        m_axi_s_box_V_WUSER,
        m_axi_s_box_V_ARVALID,
        m_axi_s_box_V_ARREADY,
        m_axi_s_box_V_ARADDR,
        m_axi_s_box_V_ARID,
        m_axi_s_box_V_ARLEN,
        m_axi_s_box_V_ARSIZE,
        m_axi_s_box_V_ARBURST,
        m_axi_s_box_V_ARLOCK,
        m_axi_s_box_V_ARCACHE,
        m_axi_s_box_V_ARPROT,
        m_axi_s_box_V_ARQOS,
        m_axi_s_box_V_ARREGION,
        m_axi_s_box_V_ARUSER,
        m_axi_s_box_V_RVALID,
        m_axi_s_box_V_RREADY,
        m_axi_s_box_V_RDATA,
        m_axi_s_box_V_RLAST,
        m_axi_s_box_V_RID,
        m_axi_s_box_V_RUSER,
        m_axi_s_box_V_RRESP,
        m_axi_s_box_V_BVALID,
        m_axi_s_box_V_BREADY,
        m_axi_s_box_V_BRESP,
        m_axi_s_box_V_BID,
        m_axi_s_box_V_BUSER,
        s_box_V_offset,
        s_box_V_offset_offset
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

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
output   m_axi_s_box_V_AWVALID;
input   m_axi_s_box_V_AWREADY;
output  [31:0] m_axi_s_box_V_AWADDR;
output  [0:0] m_axi_s_box_V_AWID;
output  [31:0] m_axi_s_box_V_AWLEN;
output  [2:0] m_axi_s_box_V_AWSIZE;
output  [1:0] m_axi_s_box_V_AWBURST;
output  [1:0] m_axi_s_box_V_AWLOCK;
output  [3:0] m_axi_s_box_V_AWCACHE;
output  [2:0] m_axi_s_box_V_AWPROT;
output  [3:0] m_axi_s_box_V_AWQOS;
output  [3:0] m_axi_s_box_V_AWREGION;
output  [0:0] m_axi_s_box_V_AWUSER;
output   m_axi_s_box_V_WVALID;
input   m_axi_s_box_V_WREADY;
output  [7:0] m_axi_s_box_V_WDATA;
output  [0:0] m_axi_s_box_V_WSTRB;
output   m_axi_s_box_V_WLAST;
output  [0:0] m_axi_s_box_V_WID;
output  [0:0] m_axi_s_box_V_WUSER;
output   m_axi_s_box_V_ARVALID;
input   m_axi_s_box_V_ARREADY;
output  [31:0] m_axi_s_box_V_ARADDR;
output  [0:0] m_axi_s_box_V_ARID;
output  [31:0] m_axi_s_box_V_ARLEN;
output  [2:0] m_axi_s_box_V_ARSIZE;
output  [1:0] m_axi_s_box_V_ARBURST;
output  [1:0] m_axi_s_box_V_ARLOCK;
output  [3:0] m_axi_s_box_V_ARCACHE;
output  [2:0] m_axi_s_box_V_ARPROT;
output  [3:0] m_axi_s_box_V_ARQOS;
output  [3:0] m_axi_s_box_V_ARREGION;
output  [0:0] m_axi_s_box_V_ARUSER;
input   m_axi_s_box_V_RVALID;
output   m_axi_s_box_V_RREADY;
input  [7:0] m_axi_s_box_V_RDATA;
input   m_axi_s_box_V_RLAST;
input  [0:0] m_axi_s_box_V_RID;
input  [0:0] m_axi_s_box_V_RUSER;
input  [1:0] m_axi_s_box_V_RRESP;
input   m_axi_s_box_V_BVALID;
output   m_axi_s_box_V_BREADY;
input  [1:0] m_axi_s_box_V_BRESP;
input  [0:0] m_axi_s_box_V_BID;
input  [0:0] m_axi_s_box_V_BUSER;
input  [31:0] s_box_V_offset;
input  [1:0] s_box_V_offset_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_matrix_V_address0;
reg state_matrix_V_ce0;
reg state_matrix_V_we0;
reg m_axi_s_box_V_ARVALID;
reg m_axi_s_box_V_RREADY;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    s_box_V_blk_n_AR;
wire    ap_CS_fsm_state5;
reg    s_box_V_blk_n_R;
wire    ap_CS_fsm_state12;
wire  signed [16:0] sext_ln78_cast_fu_119_p1;
reg  signed [16:0] sext_ln78_cast_reg_209;
wire  signed [32:0] sext_ln41_fu_123_p1;
reg  signed [32:0] sext_ln41_reg_214;
wire   [2:0] row_index_fu_133_p2;
reg   [2:0] row_index_reg_222;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln43_fu_147_p1;
reg   [5:0] zext_ln43_reg_227;
wire   [0:0] icmp_ln41_fu_127_p2;
wire   [2:0] column_index_fu_157_p2;
reg   [2:0] column_index_reg_235;
wire    ap_CS_fsm_state3;
reg   [3:0] state_matrix_V_addr_reg_240;
wire   [0:0] icmp_ln43_fu_151_p2;
reg   [31:0] s_box_V_addr_reg_245;
wire    ap_CS_fsm_state4;
reg   [7:0] s_box_V_addr_read_reg_251;
reg   [2:0] row_index_0_reg_89;
reg   [2:0] column_index_0_reg_100;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln45_1_fu_172_p1;
wire  signed [63:0] sext_ln78_2_fu_195_p1;
wire   [9:0] tmp_fu_111_p3;
wire   [4:0] tmp_4_fu_139_p3;
wire   [5:0] zext_ln45_fu_163_p1;
wire   [5:0] add_ln45_fu_167_p2;
wire  signed [15:0] sext_ln78_fu_177_p0;
wire  signed [16:0] sext_ln78_fu_177_p1;
wire   [16:0] add_ln78_fu_181_p2;
wire  signed [32:0] sext_ln78_1_fu_186_p1;
wire   [32:0] add_ln78_1_fu_190_p2;
reg   [12:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln41_fu_127_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        column_index_0_reg_100 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        column_index_0_reg_100 <= column_index_reg_235;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln43_fu_151_p2 == 1'd1))) begin
        row_index_0_reg_89 <= row_index_reg_222;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        row_index_0_reg_89 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        column_index_reg_235 <= column_index_fu_157_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        row_index_reg_222 <= row_index_fu_133_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_s_box_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        s_box_V_addr_read_reg_251 <= m_axi_s_box_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        s_box_V_addr_reg_245 <= sext_ln78_2_fu_195_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sext_ln41_reg_214 <= sext_ln41_fu_123_p1;
        sext_ln78_cast_reg_209[16 : 8] <= sext_ln78_cast_fu_119_p1[16 : 8];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_151_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_matrix_V_addr_reg_240 <= zext_ln45_1_fu_172_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln41_fu_127_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln43_reg_227[4 : 2] <= zext_ln43_fu_147_p1[4 : 2];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln41_fu_127_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln41_fu_127_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_s_box_V_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        m_axi_s_box_V_ARVALID = 1'b1;
    end else begin
        m_axi_s_box_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_s_box_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_s_box_V_RREADY = 1'b1;
    end else begin
        m_axi_s_box_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        s_box_V_blk_n_AR = m_axi_s_box_V_ARREADY;
    end else begin
        s_box_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        s_box_V_blk_n_R = m_axi_s_box_V_RVALID;
    end else begin
        s_box_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        state_matrix_V_address0 = state_matrix_V_addr_reg_240;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_matrix_V_address0 = zext_ln45_1_fu_172_p1;
    end else begin
        state_matrix_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state3))) begin
        state_matrix_V_ce0 = 1'b1;
    end else begin
        state_matrix_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln41_fu_127_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln43_fu_151_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((m_axi_s_box_V_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
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
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((m_axi_s_box_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln45_fu_167_p2 = (zext_ln43_reg_227 + zext_ln45_fu_163_p1);

assign add_ln78_1_fu_190_p2 = ($signed(sext_ln41_reg_214) + $signed(sext_ln78_1_fu_186_p1));

assign add_ln78_fu_181_p2 = ($signed(sext_ln78_cast_reg_209) + $signed(sext_ln78_fu_177_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign column_index_fu_157_p2 = (column_index_0_reg_100 + 3'd1);

assign icmp_ln41_fu_127_p2 = ((row_index_0_reg_89 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln43_fu_151_p2 = ((column_index_0_reg_100 == 3'd4) ? 1'b1 : 1'b0);

assign m_axi_s_box_V_ARADDR = s_box_V_addr_reg_245;

assign m_axi_s_box_V_ARBURST = 2'd0;

assign m_axi_s_box_V_ARCACHE = 4'd0;

assign m_axi_s_box_V_ARID = 1'd0;

assign m_axi_s_box_V_ARLEN = 32'd1;

assign m_axi_s_box_V_ARLOCK = 2'd0;

assign m_axi_s_box_V_ARPROT = 3'd0;

assign m_axi_s_box_V_ARQOS = 4'd0;

assign m_axi_s_box_V_ARREGION = 4'd0;

assign m_axi_s_box_V_ARSIZE = 3'd0;

assign m_axi_s_box_V_ARUSER = 1'd0;

assign m_axi_s_box_V_AWADDR = 32'd0;

assign m_axi_s_box_V_AWBURST = 2'd0;

assign m_axi_s_box_V_AWCACHE = 4'd0;

assign m_axi_s_box_V_AWID = 1'd0;

assign m_axi_s_box_V_AWLEN = 32'd0;

assign m_axi_s_box_V_AWLOCK = 2'd0;

assign m_axi_s_box_V_AWPROT = 3'd0;

assign m_axi_s_box_V_AWQOS = 4'd0;

assign m_axi_s_box_V_AWREGION = 4'd0;

assign m_axi_s_box_V_AWSIZE = 3'd0;

assign m_axi_s_box_V_AWUSER = 1'd0;

assign m_axi_s_box_V_AWVALID = 1'b0;

assign m_axi_s_box_V_BREADY = 1'b0;

assign m_axi_s_box_V_WDATA = 8'd0;

assign m_axi_s_box_V_WID = 1'd0;

assign m_axi_s_box_V_WLAST = 1'b0;

assign m_axi_s_box_V_WSTRB = 1'd0;

assign m_axi_s_box_V_WUSER = 1'd0;

assign m_axi_s_box_V_WVALID = 1'b0;

assign row_index_fu_133_p2 = (row_index_0_reg_89 + 3'd1);

assign sext_ln41_fu_123_p1 = $signed(s_box_V_offset);

assign sext_ln78_1_fu_186_p1 = $signed(add_ln78_fu_181_p2);

assign sext_ln78_2_fu_195_p1 = $signed(add_ln78_1_fu_190_p2);

assign sext_ln78_cast_fu_119_p1 = $signed(tmp_fu_111_p3);

assign sext_ln78_fu_177_p0 = state_matrix_V_q0;

assign sext_ln78_fu_177_p1 = sext_ln78_fu_177_p0;

assign state_matrix_V_d0 = s_box_V_addr_read_reg_251;

assign tmp_4_fu_139_p3 = {{row_index_0_reg_89}, {2'd0}};

assign tmp_fu_111_p3 = {{s_box_V_offset_offset}, {8'd0}};

assign zext_ln43_fu_147_p1 = tmp_4_fu_139_p3;

assign zext_ln45_1_fu_172_p1 = add_ln45_fu_167_p2;

assign zext_ln45_fu_163_p1 = column_index_0_reg_100;

always @ (posedge ap_clk) begin
    sext_ln78_cast_reg_209[7:0] <= 8'b00000000;
    zext_ln43_reg_227[1:0] <= 2'b00;
    zext_ln43_reg_227[5] <= 1'b0;
end

endmodule //aes_substitute_bytes