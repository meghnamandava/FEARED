set moduleName aes_process_1
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {aes_process.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ text_V int 16 regular {axi_master 0}  }
	{ text_V_offset int 31 regular  }
	{ expanded_key_V int 16 regular {array 240 { 1 3 } 1 1 }  }
	{ s_boxes_V int 8 regular {array 768 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_0_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_1_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_2_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_3_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ multiplication_V int 8 regular {array 3840 { 1 1 } 1 1 }  }
	{ sequence_out_V int 16 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "text_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "text_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "expanded_key_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_boxes_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_0_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_1_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_2_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_3_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "multiplication_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sequence_out_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 80
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_text_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_text_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_text_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_text_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_text_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_text_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_text_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_text_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_text_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_text_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_text_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_text_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_text_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_text_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_text_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_text_V_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_text_V_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_text_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_text_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_text_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_text_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_text_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_text_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_text_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_text_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_text_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_text_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_text_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_text_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_text_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_text_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_text_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_text_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_text_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_text_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_text_V_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_text_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_text_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_text_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_text_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_text_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_text_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_text_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_text_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_text_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ text_V_offset sc_in sc_lv 31 signal 1 } 
	{ expanded_key_V_address0 sc_out sc_lv 8 signal 2 } 
	{ expanded_key_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ expanded_key_V_q0 sc_in sc_lv 16 signal 2 } 
	{ s_boxes_V_address0 sc_out sc_lv 10 signal 3 } 
	{ s_boxes_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ s_boxes_V_q0 sc_in sc_lv 8 signal 3 } 
	{ mix_column_constant_matrices_0_V_address0 sc_out sc_lv 4 signal 4 } 
	{ mix_column_constant_matrices_0_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ mix_column_constant_matrices_0_V_q0 sc_in sc_lv 6 signal 4 } 
	{ mix_column_constant_matrices_1_V_address0 sc_out sc_lv 4 signal 5 } 
	{ mix_column_constant_matrices_1_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ mix_column_constant_matrices_1_V_q0 sc_in sc_lv 6 signal 5 } 
	{ mix_column_constant_matrices_2_V_address0 sc_out sc_lv 4 signal 6 } 
	{ mix_column_constant_matrices_2_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ mix_column_constant_matrices_2_V_q0 sc_in sc_lv 6 signal 6 } 
	{ mix_column_constant_matrices_3_V_address0 sc_out sc_lv 4 signal 7 } 
	{ mix_column_constant_matrices_3_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ mix_column_constant_matrices_3_V_q0 sc_in sc_lv 6 signal 7 } 
	{ multiplication_V_address0 sc_out sc_lv 12 signal 8 } 
	{ multiplication_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ multiplication_V_q0 sc_in sc_lv 8 signal 8 } 
	{ multiplication_V_address1 sc_out sc_lv 12 signal 8 } 
	{ multiplication_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ multiplication_V_q1 sc_in sc_lv 8 signal 8 } 
	{ sequence_out_V_address0 sc_out sc_lv 4 signal 9 } 
	{ sequence_out_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ sequence_out_V_we0 sc_out sc_logic 1 signal 9 } 
	{ sequence_out_V_d0 sc_out sc_lv 16 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_text_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_text_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_text_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "text_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_text_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "AWID" }} , 
 	{ "name": "m_axi_text_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "text_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_text_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "text_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_text_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "text_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_text_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "text_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_text_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "text_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_text_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "text_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_text_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "text_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_text_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "text_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_text_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_text_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_text_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_text_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "text_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_text_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "text_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_text_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_text_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "WID" }} , 
 	{ "name": "m_axi_text_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_text_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_text_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_text_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "text_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_text_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "ARID" }} , 
 	{ "name": "m_axi_text_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "text_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_text_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "text_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_text_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "text_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_text_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "text_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_text_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "text_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_text_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "text_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_text_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "text_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_text_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "text_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_text_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_text_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_text_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_text_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "text_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_text_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_text_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "RID" }} , 
 	{ "name": "m_axi_text_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_text_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "text_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_text_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_text_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_text_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "text_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_text_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "BID" }} , 
 	{ "name": "m_axi_text_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "text_V", "role": "BUSER" }} , 
 	{ "name": "text_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "text_V_offset", "role": "default" }} , 
 	{ "name": "expanded_key_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expanded_key_V", "role": "address0" }} , 
 	{ "name": "expanded_key_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expanded_key_V", "role": "ce0" }} , 
 	{ "name": "expanded_key_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "expanded_key_V", "role": "q0" }} , 
 	{ "name": "s_boxes_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_boxes_V", "role": "address0" }} , 
 	{ "name": "s_boxes_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_boxes_V", "role": "ce0" }} , 
 	{ "name": "s_boxes_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_boxes_V", "role": "q0" }} , 
 	{ "name": "mix_column_constant_matrices_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_0_V", "role": "address0" }} , 
 	{ "name": "mix_column_constant_matrices_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_0_V", "role": "ce0" }} , 
 	{ "name": "mix_column_constant_matrices_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_0_V", "role": "q0" }} , 
 	{ "name": "mix_column_constant_matrices_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_1_V", "role": "address0" }} , 
 	{ "name": "mix_column_constant_matrices_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_1_V", "role": "ce0" }} , 
 	{ "name": "mix_column_constant_matrices_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_1_V", "role": "q0" }} , 
 	{ "name": "mix_column_constant_matrices_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_2_V", "role": "address0" }} , 
 	{ "name": "mix_column_constant_matrices_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_2_V", "role": "ce0" }} , 
 	{ "name": "mix_column_constant_matrices_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_2_V", "role": "q0" }} , 
 	{ "name": "mix_column_constant_matrices_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_3_V", "role": "address0" }} , 
 	{ "name": "mix_column_constant_matrices_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_3_V", "role": "ce0" }} , 
 	{ "name": "mix_column_constant_matrices_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mix_column_constant_matrices_3_V", "role": "q0" }} , 
 	{ "name": "multiplication_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "multiplication_V", "role": "address0" }} , 
 	{ "name": "multiplication_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "multiplication_V", "role": "ce0" }} , 
 	{ "name": "multiplication_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "multiplication_V", "role": "q0" }} , 
 	{ "name": "multiplication_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "multiplication_V", "role": "address1" }} , 
 	{ "name": "multiplication_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "multiplication_V", "role": "ce1" }} , 
 	{ "name": "multiplication_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "multiplication_V", "role": "q1" }} , 
 	{ "name": "sequence_out_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sequence_out_V", "role": "address0" }} , 
 	{ "name": "sequence_out_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sequence_out_V", "role": "ce0" }} , 
 	{ "name": "sequence_out_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sequence_out_V", "role": "we0" }} , 
 	{ "name": "sequence_out_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sequence_out_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "7", "8", "9"],
		"CDFG" : "aes_process_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3223", "EstimateLatencyMax" : "3769",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_shift_rows_fu_193"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_shift_rows_fu_193"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_mix_columns8_fu_200"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_sequence_to_matr_fu_217"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_get_round_key5_fu_227"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_get_round_key5_fu_227"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_get_round_key5_fu_227"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_substitute_bytes_fu_238"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_substitute_bytes_fu_238"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_add_round_key_fu_247"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_add_round_key_fu_247"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_add_round_key_fu_247"}],
		"Port" : [
			{"Name" : "text_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_sequence_to_matr_fu_217", "Port" : "sequence_V"}]},
			{"Name" : "text_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_get_round_key5_fu_227", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aes_substitute_bytes_fu_238", "Port" : "s_box_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "multiplication_V"}]},
			{"Name" : "sequence_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_matrix_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.round_key_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_shift_rows_fu_193", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "aes_shift_rows",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "70",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_matrix_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "round_factor", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_shift_rows_fu_193.xts_aes_mux_42_16cud_U24", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_mix_columns8_fu_200", "Parent" : "0",
		"CDFG" : "aes_mix_columns8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_matrix_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "constant_matrix_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "constant_matrix_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "constant_matrix_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "constant_matrix_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "constant_matrix_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_sequence_to_matr_fu_217", "Parent" : "0",
		"CDFG" : "aes_sequence_to_matr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "169", "EstimateLatencyMax" : "169",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sequence_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sequence_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sequence_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sequence_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_get_round_key5_fu_227", "Parent" : "0",
		"CDFG" : "aes_get_round_key5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "round", "Type" : "None", "Direction" : "I"},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "round_key_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_substitute_bytes_fu_238", "Parent" : "0",
		"CDFG" : "aes_substitute_bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "57",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_matrix_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_box_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_box_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_add_round_key_fu_247", "Parent" : "0",
		"CDFG" : "aes_add_round_key",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_matrix_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "round_key_matrix_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	aes_process_1 {
		text_V {Type I LastRead 10 FirstWrite -1}
		text_V_offset {Type I LastRead 0 FirstWrite -1}
		expanded_key_V {Type I LastRead 2 FirstWrite -1}
		s_boxes_V {Type I LastRead 3 FirstWrite -1}
		mix_column_constant_matrices_0_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_1_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_2_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_3_V {Type I LastRead 4 FirstWrite -1}
		multiplication_V {Type I LastRead 7 FirstWrite -1}
		sequence_out_V {Type O LastRead -1 FirstWrite 12}}
	aes_shift_rows {
		state_matrix_V {Type IO LastRead 4 FirstWrite 4}
		round_factor {Type I LastRead 0 FirstWrite -1}}
	aes_mix_columns8 {
		state_matrix_V {Type IO LastRead 3 FirstWrite 7}
		constant_matrix_0_V {Type I LastRead 4 FirstWrite -1}
		constant_matrix_1_V {Type I LastRead 4 FirstWrite -1}
		constant_matrix_2_V {Type I LastRead 4 FirstWrite -1}
		constant_matrix_3_V {Type I LastRead 4 FirstWrite -1}
		constant_matrix_V_offset {Type I LastRead 0 FirstWrite -1}
		multiplication_V {Type I LastRead 7 FirstWrite -1}}
	aes_sequence_to_matr {
		sequence_V {Type I LastRead 10 FirstWrite -1}
		sequence_V_offset {Type I LastRead 0 FirstWrite -1}
		matrix_out_V {Type O LastRead -1 FirstWrite 11}}
	aes_get_round_key5 {
		round {Type I LastRead 0 FirstWrite -1}
		expanded_key_V {Type I LastRead 2 FirstWrite -1}
		round_key_V {Type O LastRead -1 FirstWrite 3}}
	aes_substitute_bytes {
		state_matrix_V {Type IO LastRead 2 FirstWrite 4}
		s_box_V {Type I LastRead 3 FirstWrite -1}
		s_box_V_offset {Type I LastRead 0 FirstWrite -1}}
	aes_add_round_key {
		state_matrix_V {Type IO LastRead 2 FirstWrite 3}
		round_key_matrix_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3223", "Max" : "3769"}
	, {"Name" : "Interval", "Min" : "3223", "Max" : "3769"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	text_V { m_axi {  { m_axi_text_V_AWVALID VALID 1 1 }  { m_axi_text_V_AWREADY READY 0 1 }  { m_axi_text_V_AWADDR ADDR 1 32 }  { m_axi_text_V_AWID ID 1 1 }  { m_axi_text_V_AWLEN LEN 1 32 }  { m_axi_text_V_AWSIZE SIZE 1 3 }  { m_axi_text_V_AWBURST BURST 1 2 }  { m_axi_text_V_AWLOCK LOCK 1 2 }  { m_axi_text_V_AWCACHE CACHE 1 4 }  { m_axi_text_V_AWPROT PROT 1 3 }  { m_axi_text_V_AWQOS QOS 1 4 }  { m_axi_text_V_AWREGION REGION 1 4 }  { m_axi_text_V_AWUSER USER 1 1 }  { m_axi_text_V_WVALID VALID 1 1 }  { m_axi_text_V_WREADY READY 0 1 }  { m_axi_text_V_WDATA DATA 1 16 }  { m_axi_text_V_WSTRB STRB 1 2 }  { m_axi_text_V_WLAST LAST 1 1 }  { m_axi_text_V_WID ID 1 1 }  { m_axi_text_V_WUSER USER 1 1 }  { m_axi_text_V_ARVALID VALID 1 1 }  { m_axi_text_V_ARREADY READY 0 1 }  { m_axi_text_V_ARADDR ADDR 1 32 }  { m_axi_text_V_ARID ID 1 1 }  { m_axi_text_V_ARLEN LEN 1 32 }  { m_axi_text_V_ARSIZE SIZE 1 3 }  { m_axi_text_V_ARBURST BURST 1 2 }  { m_axi_text_V_ARLOCK LOCK 1 2 }  { m_axi_text_V_ARCACHE CACHE 1 4 }  { m_axi_text_V_ARPROT PROT 1 3 }  { m_axi_text_V_ARQOS QOS 1 4 }  { m_axi_text_V_ARREGION REGION 1 4 }  { m_axi_text_V_ARUSER USER 1 1 }  { m_axi_text_V_RVALID VALID 0 1 }  { m_axi_text_V_RREADY READY 1 1 }  { m_axi_text_V_RDATA DATA 0 16 }  { m_axi_text_V_RLAST LAST 0 1 }  { m_axi_text_V_RID ID 0 1 }  { m_axi_text_V_RUSER USER 0 1 }  { m_axi_text_V_RRESP RESP 0 2 }  { m_axi_text_V_BVALID VALID 0 1 }  { m_axi_text_V_BREADY READY 1 1 }  { m_axi_text_V_BRESP RESP 0 2 }  { m_axi_text_V_BID ID 0 1 }  { m_axi_text_V_BUSER USER 0 1 } } }
	text_V_offset { ap_none {  { text_V_offset in_data 0 31 } } }
	expanded_key_V { ap_memory {  { expanded_key_V_address0 mem_address 1 8 }  { expanded_key_V_ce0 mem_ce 1 1 }  { expanded_key_V_q0 mem_dout 0 16 } } }
	s_boxes_V { ap_memory {  { s_boxes_V_address0 mem_address 1 10 }  { s_boxes_V_ce0 mem_ce 1 1 }  { s_boxes_V_q0 mem_dout 0 8 } } }
	mix_column_constant_matrices_0_V { ap_memory {  { mix_column_constant_matrices_0_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_0_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_0_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_1_V { ap_memory {  { mix_column_constant_matrices_1_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_1_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_1_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_2_V { ap_memory {  { mix_column_constant_matrices_2_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_2_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_2_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_3_V { ap_memory {  { mix_column_constant_matrices_3_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_3_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_3_V_q0 mem_dout 0 6 } } }
	multiplication_V { ap_memory {  { multiplication_V_address0 mem_address 1 12 }  { multiplication_V_ce0 mem_ce 1 1 }  { multiplication_V_q0 mem_dout 0 8 }  { multiplication_V_address1 MemPortADDR2 1 12 }  { multiplication_V_ce1 MemPortCE2 1 1 }  { multiplication_V_q1 MemPortDOUT2 0 8 } } }
	sequence_out_V { ap_memory {  { sequence_out_V_address0 mem_address 1 4 }  { sequence_out_V_ce0 mem_ce 1 1 }  { sequence_out_V_we0 mem_we 1 1 }  { sequence_out_V_d0 mem_din 1 16 } } }
}
