set moduleName xts_aes_process_data
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
set C_modelName {xts_aes_process_data}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {axi_master 0}  }
	{ data_V_offset int 31 regular  }
	{ num_blocks_orig_V int 16 regular  }
	{ mode_V int 16 regular  }
	{ tweak_V int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ expanded_key_V int 16 regular {array 240 { 1 3 } 1 1 }  }
	{ s_boxes_V int 8 regular {array 768 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_0_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_1_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_2_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_3_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ multiplication_V int 8 regular {array 3840 { 1 1 } 1 1 }  }
	{ blocks_V int 16 regular {array 1024 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "num_blocks_orig_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mode_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tweak_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "expanded_key_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_boxes_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_0_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_1_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_2_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_3_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "multiplication_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blocks_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_data_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_data_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_data_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_V_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_data_V_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_data_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_data_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_V_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_data_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_data_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ data_V_offset sc_in sc_lv 31 signal 1 } 
	{ num_blocks_orig_V sc_in sc_lv 16 signal 2 } 
	{ mode_V sc_in sc_lv 16 signal 3 } 
	{ tweak_V_address0 sc_out sc_lv 4 signal 4 } 
	{ tweak_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ tweak_V_we0 sc_out sc_logic 1 signal 4 } 
	{ tweak_V_d0 sc_out sc_lv 16 signal 4 } 
	{ tweak_V_q0 sc_in sc_lv 16 signal 4 } 
	{ expanded_key_V_address0 sc_out sc_lv 8 signal 5 } 
	{ expanded_key_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ expanded_key_V_q0 sc_in sc_lv 16 signal 5 } 
	{ s_boxes_V_address0 sc_out sc_lv 10 signal 6 } 
	{ s_boxes_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ s_boxes_V_q0 sc_in sc_lv 8 signal 6 } 
	{ mix_column_constant_matrices_0_V_address0 sc_out sc_lv 4 signal 7 } 
	{ mix_column_constant_matrices_0_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ mix_column_constant_matrices_0_V_q0 sc_in sc_lv 6 signal 7 } 
	{ mix_column_constant_matrices_1_V_address0 sc_out sc_lv 4 signal 8 } 
	{ mix_column_constant_matrices_1_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ mix_column_constant_matrices_1_V_q0 sc_in sc_lv 6 signal 8 } 
	{ mix_column_constant_matrices_2_V_address0 sc_out sc_lv 4 signal 9 } 
	{ mix_column_constant_matrices_2_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ mix_column_constant_matrices_2_V_q0 sc_in sc_lv 6 signal 9 } 
	{ mix_column_constant_matrices_3_V_address0 sc_out sc_lv 4 signal 10 } 
	{ mix_column_constant_matrices_3_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ mix_column_constant_matrices_3_V_q0 sc_in sc_lv 6 signal 10 } 
	{ multiplication_V_address0 sc_out sc_lv 12 signal 11 } 
	{ multiplication_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ multiplication_V_q0 sc_in sc_lv 8 signal 11 } 
	{ multiplication_V_address1 sc_out sc_lv 12 signal 11 } 
	{ multiplication_V_ce1 sc_out sc_logic 1 signal 11 } 
	{ multiplication_V_q1 sc_in sc_lv 8 signal 11 } 
	{ blocks_V_address0 sc_out sc_lv 10 signal 12 } 
	{ blocks_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ blocks_V_we0 sc_out sc_logic 1 signal 12 } 
	{ blocks_V_d0 sc_out sc_lv 16 signal 12 } 
	{ blocks_V_q0 sc_in sc_lv 16 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "WID" }} , 
 	{ "name": "m_axi_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "RID" }} , 
 	{ "name": "m_axi_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "BID" }} , 
 	{ "name": "m_axi_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "BUSER" }} , 
 	{ "name": "data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "data_V_offset", "role": "default" }} , 
 	{ "name": "num_blocks_orig_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "num_blocks_orig_V", "role": "default" }} , 
 	{ "name": "mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mode_V", "role": "default" }} , 
 	{ "name": "tweak_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tweak_V", "role": "address0" }} , 
 	{ "name": "tweak_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tweak_V", "role": "ce0" }} , 
 	{ "name": "tweak_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tweak_V", "role": "we0" }} , 
 	{ "name": "tweak_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tweak_V", "role": "d0" }} , 
 	{ "name": "tweak_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tweak_V", "role": "q0" }} , 
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
 	{ "name": "blocks_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "blocks_V", "role": "address0" }} , 
 	{ "name": "blocks_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blocks_V", "role": "ce0" }} , 
 	{ "name": "blocks_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blocks_V", "role": "we0" }} , 
 	{ "name": "blocks_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blocks_V", "role": "d0" }} , 
 	{ "name": "blocks_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "blocks_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xts_aes_process_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2312", "EstimateLatencyMax" : "313480",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xts_aes_process_bloc_fu_207"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_blocks_orig_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tweak_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "tweak_V"}]},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "s_boxes_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "multiplication_V"}]},
			{"Name" : "blocks_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "block_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "xts_aes_process_bloc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "4828",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_process_2_fu_130"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_process_2_fu_130"}],
		"Port" : [
			{"Name" : "block_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "text_V"}]},
			{"Name" : "block_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tweak_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "s_boxes_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "multiplication_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130", "Parent" : "1", "Child" : ["3", "4", "5", "7", "8", "9", "10"],
		"CDFG" : "aes_process_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3136", "EstimateLatencyMax" : "4761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_shift_rows_fu_238"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_shift_rows_fu_238"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_mix_columns8_fu_244"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_mix_columns8_fu_244"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_get_round_key5_fu_260"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_get_round_key5_fu_260"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_get_round_key5_fu_260"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_substitute_bytes_fu_268"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_substitute_bytes_fu_268"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_add_round_key_fu_276"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_add_round_key_fu_276"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_add_round_key_fu_276"}],
		"Port" : [
			{"Name" : "text_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sequence_out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "initial_round", "Type" : "None", "Direction" : "I"},
			{"Name" : "round_factor", "Type" : "None", "Direction" : "I"},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aes_get_round_key5_fu_260", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_aes_substitute_bytes_fu_268", "Port" : "s_box_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "multiplication_V"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.state_matrix_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.round_key_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_shift_rows_fu_238", "Parent" : "2", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_shift_rows_fu_238.xts_aes_mux_42_16cud_U24", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_mix_columns8_fu_244", "Parent" : "2",
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_get_round_key5_fu_260", "Parent" : "2",
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_substitute_bytes_fu_268", "Parent" : "2",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_add_round_key_fu_276", "Parent" : "2",
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
	xts_aes_process_data {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		num_blocks_orig_V {Type I LastRead 6 FirstWrite -1}
		mode_V {Type I LastRead 6 FirstWrite -1}
		tweak_V {Type IO LastRead 11 FirstWrite -1}
		expanded_key_V {Type I LastRead 2 FirstWrite -1}
		s_boxes_V {Type I LastRead 3 FirstWrite -1}
		mix_column_constant_matrices_0_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_1_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_2_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_3_V {Type I LastRead 4 FirstWrite -1}
		multiplication_V {Type I LastRead 7 FirstWrite -1}
		blocks_V {Type IO LastRead 3 FirstWrite 2}}
	xts_aes_process_bloc {
		block_V {Type IO LastRead 3 FirstWrite 2}
		block_V_offset {Type I LastRead 0 FirstWrite -1}
		tweak_V {Type I LastRead 3 FirstWrite -1}
		mode_V {Type I LastRead 0 FirstWrite -1}
		expanded_key_V {Type I LastRead 2 FirstWrite -1}
		s_boxes_V {Type I LastRead 3 FirstWrite -1}
		mix_column_constant_matrices_0_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_1_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_2_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_3_V {Type I LastRead 4 FirstWrite -1}
		multiplication_V {Type I LastRead 7 FirstWrite -1}}
	aes_process_2 {
		text_V {Type IO LastRead 2 FirstWrite 13}
		sequence_out_V_offset {Type I LastRead 0 FirstWrite -1}
		initial_round {Type I LastRead 0 FirstWrite -1}
		round_factor {Type I LastRead 0 FirstWrite -1}
		expanded_key_V {Type I LastRead 2 FirstWrite -1}
		s_boxes_V {Type I LastRead 3 FirstWrite -1}
		mix_column_constant_matrices_0_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_1_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_2_V {Type I LastRead 4 FirstWrite -1}
		mix_column_constant_matrices_3_V {Type I LastRead 4 FirstWrite -1}
		multiplication_V {Type I LastRead 7 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "2312", "Max" : "313480"}
	, {"Name" : "Interval", "Min" : "2312", "Max" : "313480"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { m_axi {  { m_axi_data_V_AWVALID VALID 1 1 }  { m_axi_data_V_AWREADY READY 0 1 }  { m_axi_data_V_AWADDR ADDR 1 32 }  { m_axi_data_V_AWID ID 1 1 }  { m_axi_data_V_AWLEN LEN 1 32 }  { m_axi_data_V_AWSIZE SIZE 1 3 }  { m_axi_data_V_AWBURST BURST 1 2 }  { m_axi_data_V_AWLOCK LOCK 1 2 }  { m_axi_data_V_AWCACHE CACHE 1 4 }  { m_axi_data_V_AWPROT PROT 1 3 }  { m_axi_data_V_AWQOS QOS 1 4 }  { m_axi_data_V_AWREGION REGION 1 4 }  { m_axi_data_V_AWUSER USER 1 1 }  { m_axi_data_V_WVALID VALID 1 1 }  { m_axi_data_V_WREADY READY 0 1 }  { m_axi_data_V_WDATA DATA 1 16 }  { m_axi_data_V_WSTRB STRB 1 2 }  { m_axi_data_V_WLAST LAST 1 1 }  { m_axi_data_V_WID ID 1 1 }  { m_axi_data_V_WUSER USER 1 1 }  { m_axi_data_V_ARVALID VALID 1 1 }  { m_axi_data_V_ARREADY READY 0 1 }  { m_axi_data_V_ARADDR ADDR 1 32 }  { m_axi_data_V_ARID ID 1 1 }  { m_axi_data_V_ARLEN LEN 1 32 }  { m_axi_data_V_ARSIZE SIZE 1 3 }  { m_axi_data_V_ARBURST BURST 1 2 }  { m_axi_data_V_ARLOCK LOCK 1 2 }  { m_axi_data_V_ARCACHE CACHE 1 4 }  { m_axi_data_V_ARPROT PROT 1 3 }  { m_axi_data_V_ARQOS QOS 1 4 }  { m_axi_data_V_ARREGION REGION 1 4 }  { m_axi_data_V_ARUSER USER 1 1 }  { m_axi_data_V_RVALID VALID 0 1 }  { m_axi_data_V_RREADY READY 1 1 }  { m_axi_data_V_RDATA DATA 0 16 }  { m_axi_data_V_RLAST LAST 0 1 }  { m_axi_data_V_RID ID 0 1 }  { m_axi_data_V_RUSER USER 0 1 }  { m_axi_data_V_RRESP RESP 0 2 }  { m_axi_data_V_BVALID VALID 0 1 }  { m_axi_data_V_BREADY READY 1 1 }  { m_axi_data_V_BRESP RESP 0 2 }  { m_axi_data_V_BID ID 0 1 }  { m_axi_data_V_BUSER USER 0 1 } } }
	data_V_offset { ap_none {  { data_V_offset in_data 0 31 } } }
	num_blocks_orig_V { ap_none {  { num_blocks_orig_V in_data 0 16 } } }
	mode_V { ap_none {  { mode_V in_data 0 16 } } }
	tweak_V { ap_memory {  { tweak_V_address0 mem_address 1 4 }  { tweak_V_ce0 mem_ce 1 1 }  { tweak_V_we0 mem_we 1 1 }  { tweak_V_d0 mem_din 1 16 }  { tweak_V_q0 mem_dout 0 16 } } }
	expanded_key_V { ap_memory {  { expanded_key_V_address0 mem_address 1 8 }  { expanded_key_V_ce0 mem_ce 1 1 }  { expanded_key_V_q0 mem_dout 0 16 } } }
	s_boxes_V { ap_memory {  { s_boxes_V_address0 mem_address 1 10 }  { s_boxes_V_ce0 mem_ce 1 1 }  { s_boxes_V_q0 mem_dout 0 8 } } }
	mix_column_constant_matrices_0_V { ap_memory {  { mix_column_constant_matrices_0_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_0_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_0_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_1_V { ap_memory {  { mix_column_constant_matrices_1_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_1_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_1_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_2_V { ap_memory {  { mix_column_constant_matrices_2_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_2_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_2_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_3_V { ap_memory {  { mix_column_constant_matrices_3_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_3_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_3_V_q0 mem_dout 0 6 } } }
	multiplication_V { ap_memory {  { multiplication_V_address0 mem_address 1 12 }  { multiplication_V_ce0 mem_ce 1 1 }  { multiplication_V_q0 mem_dout 0 8 }  { multiplication_V_address1 MemPortADDR2 1 12 }  { multiplication_V_ce1 MemPortCE2 1 1 }  { multiplication_V_q1 MemPortDOUT2 0 8 } } }
	blocks_V { ap_memory {  { blocks_V_address0 mem_address 1 10 }  { blocks_V_ce0 mem_ce 1 1 }  { blocks_V_we0 mem_we 1 1 }  { blocks_V_d0 mem_din 1 16 }  { blocks_V_q0 mem_dout 0 16 } } }
}
