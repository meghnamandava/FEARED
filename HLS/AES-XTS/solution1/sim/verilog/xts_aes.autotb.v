// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      xts_aes
`define AUTOTB_DUT_INST AESL_inst_xts_aes
`define AUTOTB_TOP      apatb_xts_aes_top
`define AUTOTB_LAT_RESULT_FILE "xts_aes.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "xts_aes.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_xts_aes_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_data0 1
`define AESL_DEPTH_data1 1
`define AESL_DEPTH_data2 1
`define AESL_DEPTH_data3 1
`define AESL_DEPTH_key_V 1
`define AESL_DEPTH_tweak_V 1
`define AESL_DEPTH_text_V 1
`define AESL_DEPTH_mode_V 1
`define AESL_DEPTH_text_len_V 1
`define AESL_DEPTH_data_ret_V 1
`define AUTOTB_TVIN_data0  "../tv/cdatafile/c.xts_aes.autotvin_data0.dat"
`define AUTOTB_TVIN_data1  "../tv/cdatafile/c.xts_aes.autotvin_data1.dat"
`define AUTOTB_TVIN_data2  "../tv/cdatafile/c.xts_aes.autotvin_data2.dat"
`define AUTOTB_TVIN_key_V  "../tv/cdatafile/c.xts_aes.autotvin_key_V.dat"
`define AUTOTB_TVIN_tweak_V  "../tv/cdatafile/c.xts_aes.autotvin_tweak_V.dat"
`define AUTOTB_TVIN_text_V  "../tv/cdatafile/c.xts_aes.autotvin_text_V.dat"
`define AUTOTB_TVIN_mode_V  "../tv/cdatafile/c.xts_aes.autotvin_mode_V.dat"
`define AUTOTB_TVIN_text_len_V  "../tv/cdatafile/c.xts_aes.autotvin_text_len_V.dat"
`define AUTOTB_TVIN_data_ret_V  "../tv/cdatafile/c.xts_aes.autotvin_data_ret_V.dat"
`define AUTOTB_TVIN_data0_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_data0.dat"
`define AUTOTB_TVIN_data1_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_data1.dat"
`define AUTOTB_TVIN_data2_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_data2.dat"
`define AUTOTB_TVIN_key_V_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_key_V.dat"
`define AUTOTB_TVIN_tweak_V_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_tweak_V.dat"
`define AUTOTB_TVIN_text_V_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_text_V.dat"
`define AUTOTB_TVIN_mode_V_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_mode_V.dat"
`define AUTOTB_TVIN_text_len_V_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_text_len_V.dat"
`define AUTOTB_TVIN_data_ret_V_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvin_data_ret_V.dat"
`define AUTOTB_TVOUT_data3  "../tv/cdatafile/c.xts_aes.autotvout_data3.dat"
`define AUTOTB_TVOUT_data3_out_wrapc  "../tv/rtldatafile/rtl.xts_aes.autotvout_data3.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 2;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 181605;
parameter LENGTH_data0 = 64;
parameter LENGTH_data1 = 16;
parameter LENGTH_data2 = 1024;
parameter LENGTH_data3 = 1024;
parameter LENGTH_key_V = 1;
parameter LENGTH_tweak_V = 1;
parameter LENGTH_text_V = 1;
parameter LENGTH_mode_V = 1;
parameter LENGTH_text_len_V = 1;
parameter LENGTH_data_ret_V = 1;

task read_token;
    input integer fp;
    output reg [183 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] ctrl_AWADDR;
wire  ctrl_AWVALID;
wire  ctrl_AWREADY;
wire  ctrl_WVALID;
wire  ctrl_WREADY;
wire [31 : 0] ctrl_WDATA;
wire [3 : 0] ctrl_WSTRB;
wire [5 : 0] ctrl_ARADDR;
wire  ctrl_ARVALID;
wire  ctrl_ARREADY;
wire  ctrl_RVALID;
wire  ctrl_RREADY;
wire [31 : 0] ctrl_RDATA;
wire [1 : 0] ctrl_RRESP;
wire  ctrl_BVALID;
wire  ctrl_BREADY;
wire [1 : 0] ctrl_BRESP;
wire  ctrl_INTERRUPT;
wire  data0_AWVALID;
wire  data0_AWREADY;
wire [31 : 0] data0_AWADDR;
wire [0 : 0] data0_AWID;
wire [7 : 0] data0_AWLEN;
wire [2 : 0] data0_AWSIZE;
wire [1 : 0] data0_AWBURST;
wire [1 : 0] data0_AWLOCK;
wire [3 : 0] data0_AWCACHE;
wire [2 : 0] data0_AWPROT;
wire [3 : 0] data0_AWQOS;
wire [3 : 0] data0_AWREGION;
wire [0 : 0] data0_AWUSER;
wire  data0_WVALID;
wire  data0_WREADY;
wire [31 : 0] data0_WDATA;
wire [3 : 0] data0_WSTRB;
wire  data0_WLAST;
wire [0 : 0] data0_WID;
wire [0 : 0] data0_WUSER;
wire  data0_ARVALID;
wire  data0_ARREADY;
wire [31 : 0] data0_ARADDR;
wire [0 : 0] data0_ARID;
wire [7 : 0] data0_ARLEN;
wire [2 : 0] data0_ARSIZE;
wire [1 : 0] data0_ARBURST;
wire [1 : 0] data0_ARLOCK;
wire [3 : 0] data0_ARCACHE;
wire [2 : 0] data0_ARPROT;
wire [3 : 0] data0_ARQOS;
wire [3 : 0] data0_ARREGION;
wire [0 : 0] data0_ARUSER;
wire  data0_RVALID;
wire  data0_RREADY;
wire [31 : 0] data0_RDATA;
wire  data0_RLAST;
wire [0 : 0] data0_RID;
wire [0 : 0] data0_RUSER;
wire [1 : 0] data0_RRESP;
wire  data0_BVALID;
wire  data0_BREADY;
wire [1 : 0] data0_BRESP;
wire [0 : 0] data0_BID;
wire [0 : 0] data0_BUSER;
wire  data1_AWVALID;
wire  data1_AWREADY;
wire [31 : 0] data1_AWADDR;
wire [0 : 0] data1_AWID;
wire [7 : 0] data1_AWLEN;
wire [2 : 0] data1_AWSIZE;
wire [1 : 0] data1_AWBURST;
wire [1 : 0] data1_AWLOCK;
wire [3 : 0] data1_AWCACHE;
wire [2 : 0] data1_AWPROT;
wire [3 : 0] data1_AWQOS;
wire [3 : 0] data1_AWREGION;
wire [0 : 0] data1_AWUSER;
wire  data1_WVALID;
wire  data1_WREADY;
wire [31 : 0] data1_WDATA;
wire [3 : 0] data1_WSTRB;
wire  data1_WLAST;
wire [0 : 0] data1_WID;
wire [0 : 0] data1_WUSER;
wire  data1_ARVALID;
wire  data1_ARREADY;
wire [31 : 0] data1_ARADDR;
wire [0 : 0] data1_ARID;
wire [7 : 0] data1_ARLEN;
wire [2 : 0] data1_ARSIZE;
wire [1 : 0] data1_ARBURST;
wire [1 : 0] data1_ARLOCK;
wire [3 : 0] data1_ARCACHE;
wire [2 : 0] data1_ARPROT;
wire [3 : 0] data1_ARQOS;
wire [3 : 0] data1_ARREGION;
wire [0 : 0] data1_ARUSER;
wire  data1_RVALID;
wire  data1_RREADY;
wire [31 : 0] data1_RDATA;
wire  data1_RLAST;
wire [0 : 0] data1_RID;
wire [0 : 0] data1_RUSER;
wire [1 : 0] data1_RRESP;
wire  data1_BVALID;
wire  data1_BREADY;
wire [1 : 0] data1_BRESP;
wire [0 : 0] data1_BID;
wire [0 : 0] data1_BUSER;
wire  data2_AWVALID;
wire  data2_AWREADY;
wire [31 : 0] data2_AWADDR;
wire [0 : 0] data2_AWID;
wire [7 : 0] data2_AWLEN;
wire [2 : 0] data2_AWSIZE;
wire [1 : 0] data2_AWBURST;
wire [1 : 0] data2_AWLOCK;
wire [3 : 0] data2_AWCACHE;
wire [2 : 0] data2_AWPROT;
wire [3 : 0] data2_AWQOS;
wire [3 : 0] data2_AWREGION;
wire [0 : 0] data2_AWUSER;
wire  data2_WVALID;
wire  data2_WREADY;
wire [31 : 0] data2_WDATA;
wire [3 : 0] data2_WSTRB;
wire  data2_WLAST;
wire [0 : 0] data2_WID;
wire [0 : 0] data2_WUSER;
wire  data2_ARVALID;
wire  data2_ARREADY;
wire [31 : 0] data2_ARADDR;
wire [0 : 0] data2_ARID;
wire [7 : 0] data2_ARLEN;
wire [2 : 0] data2_ARSIZE;
wire [1 : 0] data2_ARBURST;
wire [1 : 0] data2_ARLOCK;
wire [3 : 0] data2_ARCACHE;
wire [2 : 0] data2_ARPROT;
wire [3 : 0] data2_ARQOS;
wire [3 : 0] data2_ARREGION;
wire [0 : 0] data2_ARUSER;
wire  data2_RVALID;
wire  data2_RREADY;
wire [31 : 0] data2_RDATA;
wire  data2_RLAST;
wire [0 : 0] data2_RID;
wire [0 : 0] data2_RUSER;
wire [1 : 0] data2_RRESP;
wire  data2_BVALID;
wire  data2_BREADY;
wire [1 : 0] data2_BRESP;
wire [0 : 0] data2_BID;
wire [0 : 0] data2_BUSER;
wire  data3_AWVALID;
wire  data3_AWREADY;
wire [31 : 0] data3_AWADDR;
wire [0 : 0] data3_AWID;
wire [7 : 0] data3_AWLEN;
wire [2 : 0] data3_AWSIZE;
wire [1 : 0] data3_AWBURST;
wire [1 : 0] data3_AWLOCK;
wire [3 : 0] data3_AWCACHE;
wire [2 : 0] data3_AWPROT;
wire [3 : 0] data3_AWQOS;
wire [3 : 0] data3_AWREGION;
wire [0 : 0] data3_AWUSER;
wire  data3_WVALID;
wire  data3_WREADY;
wire [31 : 0] data3_WDATA;
wire [3 : 0] data3_WSTRB;
wire  data3_WLAST;
wire [0 : 0] data3_WID;
wire [0 : 0] data3_WUSER;
wire  data3_ARVALID;
wire  data3_ARREADY;
wire [31 : 0] data3_ARADDR;
wire [0 : 0] data3_ARID;
wire [7 : 0] data3_ARLEN;
wire [2 : 0] data3_ARSIZE;
wire [1 : 0] data3_ARBURST;
wire [1 : 0] data3_ARLOCK;
wire [3 : 0] data3_ARCACHE;
wire [2 : 0] data3_ARPROT;
wire [3 : 0] data3_ARQOS;
wire [3 : 0] data3_ARREGION;
wire [0 : 0] data3_ARUSER;
wire  data3_RVALID;
wire  data3_RREADY;
wire [31 : 0] data3_RDATA;
wire  data3_RLAST;
wire [0 : 0] data3_RID;
wire [0 : 0] data3_RUSER;
wire [1 : 0] data3_RRESP;
wire  data3_BVALID;
wire  data3_BREADY;
wire [1 : 0] data3_BRESP;
wire [0 : 0] data3_BID;
wire [0 : 0] data3_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire ctrl_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_ctrl_AWADDR(ctrl_AWADDR),
    .s_axi_ctrl_AWVALID(ctrl_AWVALID),
    .s_axi_ctrl_AWREADY(ctrl_AWREADY),
    .s_axi_ctrl_WVALID(ctrl_WVALID),
    .s_axi_ctrl_WREADY(ctrl_WREADY),
    .s_axi_ctrl_WDATA(ctrl_WDATA),
    .s_axi_ctrl_WSTRB(ctrl_WSTRB),
    .s_axi_ctrl_ARADDR(ctrl_ARADDR),
    .s_axi_ctrl_ARVALID(ctrl_ARVALID),
    .s_axi_ctrl_ARREADY(ctrl_ARREADY),
    .s_axi_ctrl_RVALID(ctrl_RVALID),
    .s_axi_ctrl_RREADY(ctrl_RREADY),
    .s_axi_ctrl_RDATA(ctrl_RDATA),
    .s_axi_ctrl_RRESP(ctrl_RRESP),
    .s_axi_ctrl_BVALID(ctrl_BVALID),
    .s_axi_ctrl_BREADY(ctrl_BREADY),
    .s_axi_ctrl_BRESP(ctrl_BRESP),
    .interrupt(ctrl_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_data0_AWVALID(data0_AWVALID),
    .m_axi_data0_AWREADY(data0_AWREADY),
    .m_axi_data0_AWADDR(data0_AWADDR),
    .m_axi_data0_AWID(data0_AWID),
    .m_axi_data0_AWLEN(data0_AWLEN),
    .m_axi_data0_AWSIZE(data0_AWSIZE),
    .m_axi_data0_AWBURST(data0_AWBURST),
    .m_axi_data0_AWLOCK(data0_AWLOCK),
    .m_axi_data0_AWCACHE(data0_AWCACHE),
    .m_axi_data0_AWPROT(data0_AWPROT),
    .m_axi_data0_AWQOS(data0_AWQOS),
    .m_axi_data0_AWREGION(data0_AWREGION),
    .m_axi_data0_AWUSER(data0_AWUSER),
    .m_axi_data0_WVALID(data0_WVALID),
    .m_axi_data0_WREADY(data0_WREADY),
    .m_axi_data0_WDATA(data0_WDATA),
    .m_axi_data0_WSTRB(data0_WSTRB),
    .m_axi_data0_WLAST(data0_WLAST),
    .m_axi_data0_WID(data0_WID),
    .m_axi_data0_WUSER(data0_WUSER),
    .m_axi_data0_ARVALID(data0_ARVALID),
    .m_axi_data0_ARREADY(data0_ARREADY),
    .m_axi_data0_ARADDR(data0_ARADDR),
    .m_axi_data0_ARID(data0_ARID),
    .m_axi_data0_ARLEN(data0_ARLEN),
    .m_axi_data0_ARSIZE(data0_ARSIZE),
    .m_axi_data0_ARBURST(data0_ARBURST),
    .m_axi_data0_ARLOCK(data0_ARLOCK),
    .m_axi_data0_ARCACHE(data0_ARCACHE),
    .m_axi_data0_ARPROT(data0_ARPROT),
    .m_axi_data0_ARQOS(data0_ARQOS),
    .m_axi_data0_ARREGION(data0_ARREGION),
    .m_axi_data0_ARUSER(data0_ARUSER),
    .m_axi_data0_RVALID(data0_RVALID),
    .m_axi_data0_RREADY(data0_RREADY),
    .m_axi_data0_RDATA(data0_RDATA),
    .m_axi_data0_RLAST(data0_RLAST),
    .m_axi_data0_RID(data0_RID),
    .m_axi_data0_RUSER(data0_RUSER),
    .m_axi_data0_RRESP(data0_RRESP),
    .m_axi_data0_BVALID(data0_BVALID),
    .m_axi_data0_BREADY(data0_BREADY),
    .m_axi_data0_BRESP(data0_BRESP),
    .m_axi_data0_BID(data0_BID),
    .m_axi_data0_BUSER(data0_BUSER),
    .m_axi_data1_AWVALID(data1_AWVALID),
    .m_axi_data1_AWREADY(data1_AWREADY),
    .m_axi_data1_AWADDR(data1_AWADDR),
    .m_axi_data1_AWID(data1_AWID),
    .m_axi_data1_AWLEN(data1_AWLEN),
    .m_axi_data1_AWSIZE(data1_AWSIZE),
    .m_axi_data1_AWBURST(data1_AWBURST),
    .m_axi_data1_AWLOCK(data1_AWLOCK),
    .m_axi_data1_AWCACHE(data1_AWCACHE),
    .m_axi_data1_AWPROT(data1_AWPROT),
    .m_axi_data1_AWQOS(data1_AWQOS),
    .m_axi_data1_AWREGION(data1_AWREGION),
    .m_axi_data1_AWUSER(data1_AWUSER),
    .m_axi_data1_WVALID(data1_WVALID),
    .m_axi_data1_WREADY(data1_WREADY),
    .m_axi_data1_WDATA(data1_WDATA),
    .m_axi_data1_WSTRB(data1_WSTRB),
    .m_axi_data1_WLAST(data1_WLAST),
    .m_axi_data1_WID(data1_WID),
    .m_axi_data1_WUSER(data1_WUSER),
    .m_axi_data1_ARVALID(data1_ARVALID),
    .m_axi_data1_ARREADY(data1_ARREADY),
    .m_axi_data1_ARADDR(data1_ARADDR),
    .m_axi_data1_ARID(data1_ARID),
    .m_axi_data1_ARLEN(data1_ARLEN),
    .m_axi_data1_ARSIZE(data1_ARSIZE),
    .m_axi_data1_ARBURST(data1_ARBURST),
    .m_axi_data1_ARLOCK(data1_ARLOCK),
    .m_axi_data1_ARCACHE(data1_ARCACHE),
    .m_axi_data1_ARPROT(data1_ARPROT),
    .m_axi_data1_ARQOS(data1_ARQOS),
    .m_axi_data1_ARREGION(data1_ARREGION),
    .m_axi_data1_ARUSER(data1_ARUSER),
    .m_axi_data1_RVALID(data1_RVALID),
    .m_axi_data1_RREADY(data1_RREADY),
    .m_axi_data1_RDATA(data1_RDATA),
    .m_axi_data1_RLAST(data1_RLAST),
    .m_axi_data1_RID(data1_RID),
    .m_axi_data1_RUSER(data1_RUSER),
    .m_axi_data1_RRESP(data1_RRESP),
    .m_axi_data1_BVALID(data1_BVALID),
    .m_axi_data1_BREADY(data1_BREADY),
    .m_axi_data1_BRESP(data1_BRESP),
    .m_axi_data1_BID(data1_BID),
    .m_axi_data1_BUSER(data1_BUSER),
    .m_axi_data2_AWVALID(data2_AWVALID),
    .m_axi_data2_AWREADY(data2_AWREADY),
    .m_axi_data2_AWADDR(data2_AWADDR),
    .m_axi_data2_AWID(data2_AWID),
    .m_axi_data2_AWLEN(data2_AWLEN),
    .m_axi_data2_AWSIZE(data2_AWSIZE),
    .m_axi_data2_AWBURST(data2_AWBURST),
    .m_axi_data2_AWLOCK(data2_AWLOCK),
    .m_axi_data2_AWCACHE(data2_AWCACHE),
    .m_axi_data2_AWPROT(data2_AWPROT),
    .m_axi_data2_AWQOS(data2_AWQOS),
    .m_axi_data2_AWREGION(data2_AWREGION),
    .m_axi_data2_AWUSER(data2_AWUSER),
    .m_axi_data2_WVALID(data2_WVALID),
    .m_axi_data2_WREADY(data2_WREADY),
    .m_axi_data2_WDATA(data2_WDATA),
    .m_axi_data2_WSTRB(data2_WSTRB),
    .m_axi_data2_WLAST(data2_WLAST),
    .m_axi_data2_WID(data2_WID),
    .m_axi_data2_WUSER(data2_WUSER),
    .m_axi_data2_ARVALID(data2_ARVALID),
    .m_axi_data2_ARREADY(data2_ARREADY),
    .m_axi_data2_ARADDR(data2_ARADDR),
    .m_axi_data2_ARID(data2_ARID),
    .m_axi_data2_ARLEN(data2_ARLEN),
    .m_axi_data2_ARSIZE(data2_ARSIZE),
    .m_axi_data2_ARBURST(data2_ARBURST),
    .m_axi_data2_ARLOCK(data2_ARLOCK),
    .m_axi_data2_ARCACHE(data2_ARCACHE),
    .m_axi_data2_ARPROT(data2_ARPROT),
    .m_axi_data2_ARQOS(data2_ARQOS),
    .m_axi_data2_ARREGION(data2_ARREGION),
    .m_axi_data2_ARUSER(data2_ARUSER),
    .m_axi_data2_RVALID(data2_RVALID),
    .m_axi_data2_RREADY(data2_RREADY),
    .m_axi_data2_RDATA(data2_RDATA),
    .m_axi_data2_RLAST(data2_RLAST),
    .m_axi_data2_RID(data2_RID),
    .m_axi_data2_RUSER(data2_RUSER),
    .m_axi_data2_RRESP(data2_RRESP),
    .m_axi_data2_BVALID(data2_BVALID),
    .m_axi_data2_BREADY(data2_BREADY),
    .m_axi_data2_BRESP(data2_BRESP),
    .m_axi_data2_BID(data2_BID),
    .m_axi_data2_BUSER(data2_BUSER),
    .m_axi_data3_AWVALID(data3_AWVALID),
    .m_axi_data3_AWREADY(data3_AWREADY),
    .m_axi_data3_AWADDR(data3_AWADDR),
    .m_axi_data3_AWID(data3_AWID),
    .m_axi_data3_AWLEN(data3_AWLEN),
    .m_axi_data3_AWSIZE(data3_AWSIZE),
    .m_axi_data3_AWBURST(data3_AWBURST),
    .m_axi_data3_AWLOCK(data3_AWLOCK),
    .m_axi_data3_AWCACHE(data3_AWCACHE),
    .m_axi_data3_AWPROT(data3_AWPROT),
    .m_axi_data3_AWQOS(data3_AWQOS),
    .m_axi_data3_AWREGION(data3_AWREGION),
    .m_axi_data3_AWUSER(data3_AWUSER),
    .m_axi_data3_WVALID(data3_WVALID),
    .m_axi_data3_WREADY(data3_WREADY),
    .m_axi_data3_WDATA(data3_WDATA),
    .m_axi_data3_WSTRB(data3_WSTRB),
    .m_axi_data3_WLAST(data3_WLAST),
    .m_axi_data3_WID(data3_WID),
    .m_axi_data3_WUSER(data3_WUSER),
    .m_axi_data3_ARVALID(data3_ARVALID),
    .m_axi_data3_ARREADY(data3_ARREADY),
    .m_axi_data3_ARADDR(data3_ARADDR),
    .m_axi_data3_ARID(data3_ARID),
    .m_axi_data3_ARLEN(data3_ARLEN),
    .m_axi_data3_ARSIZE(data3_ARSIZE),
    .m_axi_data3_ARBURST(data3_ARBURST),
    .m_axi_data3_ARLOCK(data3_ARLOCK),
    .m_axi_data3_ARCACHE(data3_ARCACHE),
    .m_axi_data3_ARPROT(data3_ARPROT),
    .m_axi_data3_ARQOS(data3_ARQOS),
    .m_axi_data3_ARREGION(data3_ARREGION),
    .m_axi_data3_ARUSER(data3_ARUSER),
    .m_axi_data3_RVALID(data3_RVALID),
    .m_axi_data3_RREADY(data3_RREADY),
    .m_axi_data3_RDATA(data3_RDATA),
    .m_axi_data3_RLAST(data3_RLAST),
    .m_axi_data3_RID(data3_RID),
    .m_axi_data3_RUSER(data3_RUSER),
    .m_axi_data3_RRESP(data3_RRESP),
    .m_axi_data3_BVALID(data3_BVALID),
    .m_axi_data3_BREADY(data3_BREADY),
    .m_axi_data3_BRESP(data3_BRESP),
    .m_axi_data3_BID(data3_BID),
    .m_axi_data3_BUSER(data3_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & ctrl_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end










wire    AESL_axi_master_data0_ready;
wire    AESL_axi_master_data0_done;
wire [32 - 1:0] key_V;
AESL_axi_master_data0 AESL_AXI_MASTER_data0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_data0_AWVALID (data0_AWVALID),
    .TRAN_data0_AWREADY (data0_AWREADY),
    .TRAN_data0_AWADDR (data0_AWADDR),
    .TRAN_data0_AWID (data0_AWID),
    .TRAN_data0_AWLEN (data0_AWLEN),
    .TRAN_data0_AWSIZE (data0_AWSIZE),
    .TRAN_data0_AWBURST (data0_AWBURST),
    .TRAN_data0_AWLOCK (data0_AWLOCK),
    .TRAN_data0_AWCACHE (data0_AWCACHE),
    .TRAN_data0_AWPROT (data0_AWPROT),
    .TRAN_data0_AWQOS (data0_AWQOS),
    .TRAN_data0_AWREGION (data0_AWREGION),
    .TRAN_data0_AWUSER (data0_AWUSER),
    .TRAN_data0_WVALID (data0_WVALID),
    .TRAN_data0_WREADY (data0_WREADY),
    .TRAN_data0_WDATA (data0_WDATA),
    .TRAN_data0_WSTRB (data0_WSTRB),
    .TRAN_data0_WLAST (data0_WLAST),
    .TRAN_data0_WID (data0_WID),
    .TRAN_data0_WUSER (data0_WUSER),
    .TRAN_data0_ARVALID (data0_ARVALID),
    .TRAN_data0_ARREADY (data0_ARREADY),
    .TRAN_data0_ARADDR (data0_ARADDR),
    .TRAN_data0_ARID (data0_ARID),
    .TRAN_data0_ARLEN (data0_ARLEN),
    .TRAN_data0_ARSIZE (data0_ARSIZE),
    .TRAN_data0_ARBURST (data0_ARBURST),
    .TRAN_data0_ARLOCK (data0_ARLOCK),
    .TRAN_data0_ARCACHE (data0_ARCACHE),
    .TRAN_data0_ARPROT (data0_ARPROT),
    .TRAN_data0_ARQOS (data0_ARQOS),
    .TRAN_data0_ARREGION (data0_ARREGION),
    .TRAN_data0_ARUSER (data0_ARUSER),
    .TRAN_data0_RVALID (data0_RVALID),
    .TRAN_data0_RREADY (data0_RREADY),
    .TRAN_data0_RDATA (data0_RDATA),
    .TRAN_data0_RLAST (data0_RLAST),
    .TRAN_data0_RID (data0_RID),
    .TRAN_data0_RUSER (data0_RUSER),
    .TRAN_data0_RRESP (data0_RRESP),
    .TRAN_data0_BVALID (data0_BVALID),
    .TRAN_data0_BREADY (data0_BREADY),
    .TRAN_data0_BRESP (data0_BRESP),
    .TRAN_data0_BID (data0_BID),
    .TRAN_data0_BUSER (data0_BUSER),
    .TRAN_data0_key_V (key_V),
    .ready (AESL_axi_master_data0_ready),
    .done  (AESL_axi_master_data0_done)
);
assign    AESL_axi_master_data0_ready    =   ready;
assign    AESL_axi_master_data0_done    =   AESL_done_delay;
wire    AESL_axi_master_data1_ready;
wire    AESL_axi_master_data1_done;
wire [32 - 1:0] tweak_V;
AESL_axi_master_data1 AESL_AXI_MASTER_data1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_data1_AWVALID (data1_AWVALID),
    .TRAN_data1_AWREADY (data1_AWREADY),
    .TRAN_data1_AWADDR (data1_AWADDR),
    .TRAN_data1_AWID (data1_AWID),
    .TRAN_data1_AWLEN (data1_AWLEN),
    .TRAN_data1_AWSIZE (data1_AWSIZE),
    .TRAN_data1_AWBURST (data1_AWBURST),
    .TRAN_data1_AWLOCK (data1_AWLOCK),
    .TRAN_data1_AWCACHE (data1_AWCACHE),
    .TRAN_data1_AWPROT (data1_AWPROT),
    .TRAN_data1_AWQOS (data1_AWQOS),
    .TRAN_data1_AWREGION (data1_AWREGION),
    .TRAN_data1_AWUSER (data1_AWUSER),
    .TRAN_data1_WVALID (data1_WVALID),
    .TRAN_data1_WREADY (data1_WREADY),
    .TRAN_data1_WDATA (data1_WDATA),
    .TRAN_data1_WSTRB (data1_WSTRB),
    .TRAN_data1_WLAST (data1_WLAST),
    .TRAN_data1_WID (data1_WID),
    .TRAN_data1_WUSER (data1_WUSER),
    .TRAN_data1_ARVALID (data1_ARVALID),
    .TRAN_data1_ARREADY (data1_ARREADY),
    .TRAN_data1_ARADDR (data1_ARADDR),
    .TRAN_data1_ARID (data1_ARID),
    .TRAN_data1_ARLEN (data1_ARLEN),
    .TRAN_data1_ARSIZE (data1_ARSIZE),
    .TRAN_data1_ARBURST (data1_ARBURST),
    .TRAN_data1_ARLOCK (data1_ARLOCK),
    .TRAN_data1_ARCACHE (data1_ARCACHE),
    .TRAN_data1_ARPROT (data1_ARPROT),
    .TRAN_data1_ARQOS (data1_ARQOS),
    .TRAN_data1_ARREGION (data1_ARREGION),
    .TRAN_data1_ARUSER (data1_ARUSER),
    .TRAN_data1_RVALID (data1_RVALID),
    .TRAN_data1_RREADY (data1_RREADY),
    .TRAN_data1_RDATA (data1_RDATA),
    .TRAN_data1_RLAST (data1_RLAST),
    .TRAN_data1_RID (data1_RID),
    .TRAN_data1_RUSER (data1_RUSER),
    .TRAN_data1_RRESP (data1_RRESP),
    .TRAN_data1_BVALID (data1_BVALID),
    .TRAN_data1_BREADY (data1_BREADY),
    .TRAN_data1_BRESP (data1_BRESP),
    .TRAN_data1_BID (data1_BID),
    .TRAN_data1_BUSER (data1_BUSER),
    .TRAN_data1_tweak_V (tweak_V),
    .ready (AESL_axi_master_data1_ready),
    .done  (AESL_axi_master_data1_done)
);
assign    AESL_axi_master_data1_ready    =   ready;
assign    AESL_axi_master_data1_done    =   AESL_done_delay;
wire    AESL_axi_master_data2_ready;
wire    AESL_axi_master_data2_done;
wire [32 - 1:0] text_V;
AESL_axi_master_data2 AESL_AXI_MASTER_data2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_data2_AWVALID (data2_AWVALID),
    .TRAN_data2_AWREADY (data2_AWREADY),
    .TRAN_data2_AWADDR (data2_AWADDR),
    .TRAN_data2_AWID (data2_AWID),
    .TRAN_data2_AWLEN (data2_AWLEN),
    .TRAN_data2_AWSIZE (data2_AWSIZE),
    .TRAN_data2_AWBURST (data2_AWBURST),
    .TRAN_data2_AWLOCK (data2_AWLOCK),
    .TRAN_data2_AWCACHE (data2_AWCACHE),
    .TRAN_data2_AWPROT (data2_AWPROT),
    .TRAN_data2_AWQOS (data2_AWQOS),
    .TRAN_data2_AWREGION (data2_AWREGION),
    .TRAN_data2_AWUSER (data2_AWUSER),
    .TRAN_data2_WVALID (data2_WVALID),
    .TRAN_data2_WREADY (data2_WREADY),
    .TRAN_data2_WDATA (data2_WDATA),
    .TRAN_data2_WSTRB (data2_WSTRB),
    .TRAN_data2_WLAST (data2_WLAST),
    .TRAN_data2_WID (data2_WID),
    .TRAN_data2_WUSER (data2_WUSER),
    .TRAN_data2_ARVALID (data2_ARVALID),
    .TRAN_data2_ARREADY (data2_ARREADY),
    .TRAN_data2_ARADDR (data2_ARADDR),
    .TRAN_data2_ARID (data2_ARID),
    .TRAN_data2_ARLEN (data2_ARLEN),
    .TRAN_data2_ARSIZE (data2_ARSIZE),
    .TRAN_data2_ARBURST (data2_ARBURST),
    .TRAN_data2_ARLOCK (data2_ARLOCK),
    .TRAN_data2_ARCACHE (data2_ARCACHE),
    .TRAN_data2_ARPROT (data2_ARPROT),
    .TRAN_data2_ARQOS (data2_ARQOS),
    .TRAN_data2_ARREGION (data2_ARREGION),
    .TRAN_data2_ARUSER (data2_ARUSER),
    .TRAN_data2_RVALID (data2_RVALID),
    .TRAN_data2_RREADY (data2_RREADY),
    .TRAN_data2_RDATA (data2_RDATA),
    .TRAN_data2_RLAST (data2_RLAST),
    .TRAN_data2_RID (data2_RID),
    .TRAN_data2_RUSER (data2_RUSER),
    .TRAN_data2_RRESP (data2_RRESP),
    .TRAN_data2_BVALID (data2_BVALID),
    .TRAN_data2_BREADY (data2_BREADY),
    .TRAN_data2_BRESP (data2_BRESP),
    .TRAN_data2_BID (data2_BID),
    .TRAN_data2_BUSER (data2_BUSER),
    .TRAN_data2_text_V (text_V),
    .ready (AESL_axi_master_data2_ready),
    .done  (AESL_axi_master_data2_done)
);
assign    AESL_axi_master_data2_ready    =   ready;
assign    AESL_axi_master_data2_done    =   AESL_done_delay;
wire    AESL_axi_master_data3_ready;
wire    AESL_axi_master_data3_done;
wire [32 - 1:0] data_ret_V;
AESL_axi_master_data3 AESL_AXI_MASTER_data3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_data3_AWVALID (data3_AWVALID),
    .TRAN_data3_AWREADY (data3_AWREADY),
    .TRAN_data3_AWADDR (data3_AWADDR),
    .TRAN_data3_AWID (data3_AWID),
    .TRAN_data3_AWLEN (data3_AWLEN),
    .TRAN_data3_AWSIZE (data3_AWSIZE),
    .TRAN_data3_AWBURST (data3_AWBURST),
    .TRAN_data3_AWLOCK (data3_AWLOCK),
    .TRAN_data3_AWCACHE (data3_AWCACHE),
    .TRAN_data3_AWPROT (data3_AWPROT),
    .TRAN_data3_AWQOS (data3_AWQOS),
    .TRAN_data3_AWREGION (data3_AWREGION),
    .TRAN_data3_AWUSER (data3_AWUSER),
    .TRAN_data3_WVALID (data3_WVALID),
    .TRAN_data3_WREADY (data3_WREADY),
    .TRAN_data3_WDATA (data3_WDATA),
    .TRAN_data3_WSTRB (data3_WSTRB),
    .TRAN_data3_WLAST (data3_WLAST),
    .TRAN_data3_WID (data3_WID),
    .TRAN_data3_WUSER (data3_WUSER),
    .TRAN_data3_ARVALID (data3_ARVALID),
    .TRAN_data3_ARREADY (data3_ARREADY),
    .TRAN_data3_ARADDR (data3_ARADDR),
    .TRAN_data3_ARID (data3_ARID),
    .TRAN_data3_ARLEN (data3_ARLEN),
    .TRAN_data3_ARSIZE (data3_ARSIZE),
    .TRAN_data3_ARBURST (data3_ARBURST),
    .TRAN_data3_ARLOCK (data3_ARLOCK),
    .TRAN_data3_ARCACHE (data3_ARCACHE),
    .TRAN_data3_ARPROT (data3_ARPROT),
    .TRAN_data3_ARQOS (data3_ARQOS),
    .TRAN_data3_ARREGION (data3_ARREGION),
    .TRAN_data3_ARUSER (data3_ARUSER),
    .TRAN_data3_RVALID (data3_RVALID),
    .TRAN_data3_RREADY (data3_RREADY),
    .TRAN_data3_RDATA (data3_RDATA),
    .TRAN_data3_RLAST (data3_RLAST),
    .TRAN_data3_RID (data3_RID),
    .TRAN_data3_RUSER (data3_RUSER),
    .TRAN_data3_RRESP (data3_RRESP),
    .TRAN_data3_BVALID (data3_BVALID),
    .TRAN_data3_BREADY (data3_BREADY),
    .TRAN_data3_BRESP (data3_BRESP),
    .TRAN_data3_BID (data3_BID),
    .TRAN_data3_BUSER (data3_BUSER),
    .TRAN_data3_data_ret_V (data_ret_V),
    .ready (AESL_axi_master_data3_ready),
    .done  (AESL_axi_master_data3_done)
);
assign    AESL_axi_master_data3_ready    =   ready;
assign    AESL_axi_master_data3_done    =   AESL_done_delay;

AESL_axi_slave_ctrl AESL_AXI_SLAVE_ctrl(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_ctrl_AWADDR (ctrl_AWADDR),
    .TRAN_s_axi_ctrl_AWVALID (ctrl_AWVALID),
    .TRAN_s_axi_ctrl_AWREADY (ctrl_AWREADY),
    .TRAN_s_axi_ctrl_WVALID (ctrl_WVALID),
    .TRAN_s_axi_ctrl_WREADY (ctrl_WREADY),
    .TRAN_s_axi_ctrl_WDATA (ctrl_WDATA),
    .TRAN_s_axi_ctrl_WSTRB (ctrl_WSTRB),
    .TRAN_s_axi_ctrl_ARADDR (ctrl_ARADDR),
    .TRAN_s_axi_ctrl_ARVALID (ctrl_ARVALID),
    .TRAN_s_axi_ctrl_ARREADY (ctrl_ARREADY),
    .TRAN_s_axi_ctrl_RVALID (ctrl_RVALID),
    .TRAN_s_axi_ctrl_RREADY (ctrl_RREADY),
    .TRAN_s_axi_ctrl_RDATA (ctrl_RDATA),
    .TRAN_s_axi_ctrl_RRESP (ctrl_RRESP),
    .TRAN_s_axi_ctrl_BVALID (ctrl_BVALID),
    .TRAN_s_axi_ctrl_BREADY (ctrl_BREADY),
    .TRAN_s_axi_ctrl_BRESP (ctrl_BRESP),
    .TRAN_ctrl_interrupt (ctrl_INTERRUPT),
    .TRAN_key_V (key_V),
    .TRAN_tweak_V (tweak_V),
    .TRAN_text_V (text_V),
    .TRAN_data_ret_V (data_ret_V),
    .TRAN_ctrl_write_data_finish(ctrl_write_data_finish),
    .TRAN_ctrl_ready_out (AESL_ready),
    .TRAN_ctrl_ready_in (AESL_slave_ready),
    .TRAN_ctrl_done_out (AESL_slave_output_done),
    .TRAN_ctrl_idle_out (AESL_idle),
    .TRAN_ctrl_write_start_in     (AESL_slave_write_start_in),
    .TRAN_ctrl_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_ctrl_transaction_done_in (AESL_done_delay),
    .TRAN_ctrl_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_data0;
reg [31:0] size_data0;
reg [31:0] size_data0_backup;
reg end_data1;
reg [31:0] size_data1;
reg [31:0] size_data1_backup;
reg end_data2;
reg [31:0] size_data2;
reg [31:0] size_data2_backup;
reg end_key_V;
reg [31:0] size_key_V;
reg [31:0] size_key_V_backup;
reg end_tweak_V;
reg [31:0] size_tweak_V;
reg [31:0] size_tweak_V_backup;
reg end_text_V;
reg [31:0] size_text_V;
reg [31:0] size_text_V_backup;
reg end_mode_V;
reg [31:0] size_mode_V;
reg [31:0] size_mode_V_backup;
reg end_text_len_V;
reg [31:0] size_text_len_V;
reg [31:0] size_text_len_V_backup;
reg end_data_ret_V;
reg [31:0] size_data_ret_V;
reg [31:0] size_data_ret_V_backup;
reg end_data3;
reg [31:0] size_data3;
reg [31:0] size_data3_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_data3;

initial begin : dump_tvout_runtime_sign_data3
    integer fp;
    dump_tvout_finish_data3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_data3_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data3_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data3 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
