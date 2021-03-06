#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("m_axi_data0_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_data0_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_data0_AWADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data0_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_data0_AWLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_data0_AWSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data0_AWBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_data0_AWLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data0_AWCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data0_AWPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_data0_AWQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_data0_AWREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_data0_AWUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_data0_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_data0_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_data0_WDATA", 32, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_data0_WSTRB", 4, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_data0_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_data0_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_data0_WUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_data0_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_data0_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_data0_ARADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data0_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_data0_ARLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_data0_ARSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data0_ARBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_data0_ARLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data0_ARCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data0_ARPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_data0_ARQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_data0_ARREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_data0_ARUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_data0_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_data0_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_data0_RDATA", 32, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_data0_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_data0_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_data0_RUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_data0_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_data0_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_data0_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_data0_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_data0_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_data0_BUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_data1_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_data1_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_data1_AWADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data1_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_data1_AWLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_data1_AWSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data1_AWBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_data1_AWLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data1_AWCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data1_AWPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_data1_AWQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_data1_AWREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_data1_AWUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_data1_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_data1_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_data1_WDATA", 32, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_data1_WSTRB", 4, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_data1_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_data1_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_data1_WUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_data1_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_data1_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_data1_ARADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data1_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_data1_ARLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_data1_ARSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data1_ARBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_data1_ARLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data1_ARCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data1_ARPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_data1_ARQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_data1_ARREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_data1_ARUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_data1_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_data1_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_data1_RDATA", 32, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_data1_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_data1_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_data1_RUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_data1_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_data1_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_data1_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_data1_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_data1_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_data1_BUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_data2_AWVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_data2_AWREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_data2_AWADDR", 32, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data2_AWID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_data2_AWLEN", 8, hls_out, 2, "m_axi", "LEN", 1),
	Port_Property("m_axi_data2_AWSIZE", 3, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data2_AWBURST", 2, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_data2_AWLOCK", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data2_AWCACHE", 4, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data2_AWPROT", 3, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_data2_AWQOS", 4, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_data2_AWREGION", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_data2_AWUSER", 1, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_data2_WVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_data2_WREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_data2_WDATA", 32, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_data2_WSTRB", 4, hls_out, 2, "m_axi", "STRB", 1),
	Port_Property("m_axi_data2_WLAST", 1, hls_out, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_data2_WID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_data2_WUSER", 1, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_data2_ARVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_data2_ARREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_data2_ARADDR", 32, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data2_ARID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_data2_ARLEN", 8, hls_out, 2, "m_axi", "LEN", 1),
	Port_Property("m_axi_data2_ARSIZE", 3, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data2_ARBURST", 2, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_data2_ARLOCK", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data2_ARCACHE", 4, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data2_ARPROT", 3, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_data2_ARQOS", 4, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_data2_ARREGION", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_data2_ARUSER", 1, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_data2_RVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_data2_RREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_data2_RDATA", 32, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_data2_RLAST", 1, hls_in, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_data2_RID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_data2_RUSER", 1, hls_in, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_data2_RRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_data2_BVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_data2_BREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_data2_BRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_data2_BID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_data2_BUSER", 1, hls_in, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_data3_AWVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_data3_AWREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_data3_AWADDR", 32, hls_out, 3, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data3_AWID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_data3_AWLEN", 8, hls_out, 3, "m_axi", "LEN", 1),
	Port_Property("m_axi_data3_AWSIZE", 3, hls_out, 3, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data3_AWBURST", 2, hls_out, 3, "m_axi", "BURST", 1),
	Port_Property("m_axi_data3_AWLOCK", 2, hls_out, 3, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data3_AWCACHE", 4, hls_out, 3, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data3_AWPROT", 3, hls_out, 3, "m_axi", "PROT", 1),
	Port_Property("m_axi_data3_AWQOS", 4, hls_out, 3, "m_axi", "QOS", 1),
	Port_Property("m_axi_data3_AWREGION", 4, hls_out, 3, "m_axi", "REGION", 1),
	Port_Property("m_axi_data3_AWUSER", 1, hls_out, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_data3_WVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_data3_WREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_data3_WDATA", 32, hls_out, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_data3_WSTRB", 4, hls_out, 3, "m_axi", "STRB", 1),
	Port_Property("m_axi_data3_WLAST", 1, hls_out, 3, "m_axi", "LAST", 1),
	Port_Property("m_axi_data3_WID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_data3_WUSER", 1, hls_out, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_data3_ARVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_data3_ARREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_data3_ARADDR", 32, hls_out, 3, "m_axi", "ADDR", 1),
	Port_Property("m_axi_data3_ARID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_data3_ARLEN", 8, hls_out, 3, "m_axi", "LEN", 1),
	Port_Property("m_axi_data3_ARSIZE", 3, hls_out, 3, "m_axi", "SIZE", 1),
	Port_Property("m_axi_data3_ARBURST", 2, hls_out, 3, "m_axi", "BURST", 1),
	Port_Property("m_axi_data3_ARLOCK", 2, hls_out, 3, "m_axi", "LOCK", 1),
	Port_Property("m_axi_data3_ARCACHE", 4, hls_out, 3, "m_axi", "CACHE", 1),
	Port_Property("m_axi_data3_ARPROT", 3, hls_out, 3, "m_axi", "PROT", 1),
	Port_Property("m_axi_data3_ARQOS", 4, hls_out, 3, "m_axi", "QOS", 1),
	Port_Property("m_axi_data3_ARREGION", 4, hls_out, 3, "m_axi", "REGION", 1),
	Port_Property("m_axi_data3_ARUSER", 1, hls_out, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_data3_RVALID", 1, hls_in, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_data3_RREADY", 1, hls_out, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_data3_RDATA", 32, hls_in, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_data3_RLAST", 1, hls_in, 3, "m_axi", "LAST", 1),
	Port_Property("m_axi_data3_RID", 1, hls_in, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_data3_RUSER", 1, hls_in, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_data3_RRESP", 2, hls_in, 3, "m_axi", "RESP", 1),
	Port_Property("m_axi_data3_BVALID", 1, hls_in, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_data3_BREADY", 1, hls_out, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_data3_BRESP", 2, hls_in, 3, "m_axi", "RESP", 1),
	Port_Property("m_axi_data3_BID", 1, hls_in, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_data3_BUSER", 1, hls_in, 3, "m_axi", "USER", 1),
	Port_Property("s_axi_ctrl_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_ctrl_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_ctrl_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_ctrl_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_ctrl_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_ctrl_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_ctrl_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_ctrl_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ctrl_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "xts_aes";
