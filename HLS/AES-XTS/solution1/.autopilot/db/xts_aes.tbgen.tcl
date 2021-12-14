set moduleName xts_aes
set isTopModule 1
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
set C_modelName {xts_aes}
set C_modelType { void 0 }
set C_modelArgList {
	{ data0 int 16 regular {axi_master 0}  }
	{ data1 int 16 regular {axi_master 0}  }
	{ data2 int 16 regular {axi_master 0}  }
	{ data3 int 16 regular {axi_master 1}  }
	{ key_V int 32 regular {axi_slave 0}  }
	{ tweak_V int 32 regular {axi_slave 0}  }
	{ text_V int 32 regular {axi_slave 0}  }
	{ mode_V int 16 regular {axi_slave 0}  }
	{ text_len_V int 16 regular {axi_slave 0}  }
	{ data_ret_V int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "key.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "key_V","bundle": "ctrl"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "data1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "tweak.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "tweak_V","bundle": "ctrl"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "data2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "text.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "text_V","bundle": "ctrl"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "data3", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "data_ret.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "data_ret_V","bundle": "ctrl"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "key_V", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "tweak_V", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "text_V", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "mode_V", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "mode.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "text_len_V", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "text_len.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "data_ret_V", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_data0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_data0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_data0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_data0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_data0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_data0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_data0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_data0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_data1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_data1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_data1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_data1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_data1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_data1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_data1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_data1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_data1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_data1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_data1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_data1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_data2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_data2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_data2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_data2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_data2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_data2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_data2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_data2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_data2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_data2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_data2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_data2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_data3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_data3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_data3_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_data3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_data3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_data3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_data3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_data3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_data3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_data3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_data3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_data3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_data3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_data3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_data3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_data3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_data3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_data3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_data3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_data3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_data3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_data3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_data3_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_data3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_data3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_data3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_data3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_data3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_data3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_data3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_data3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_data3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_data3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_data3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_data3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_data3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_data3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_data3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_data3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_data3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_data3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_data3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_data3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_data3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_data3_BUSER sc_in sc_lv 1 signal 3 } 
	{ s_axi_ctrl_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_ctrl_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_ctrl_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctrl", "role": "AWADDR" },"address":[{"name":"xts_aes","role":"start","value":"0","valid_bit":"0"},{"name":"xts_aes","role":"continue","value":"0","valid_bit":"4"},{"name":"xts_aes","role":"auto_start","value":"0","valid_bit":"7"},{"name":"key_V","role":"data","value":"16"},{"name":"tweak_V","role":"data","value":"24"},{"name":"text_V","role":"data","value":"32"},{"name":"mode_V","role":"data","value":"40"},{"name":"text_len_V","role":"data","value":"48"},{"name":"data_ret_V","role":"data","value":"56"}] },
	{ "name": "s_axi_ctrl_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctrl", "role": "ARADDR" },"address":[{"name":"xts_aes","role":"start","value":"0","valid_bit":"0"},{"name":"xts_aes","role":"done","value":"0","valid_bit":"1"},{"name":"xts_aes","role":"idle","value":"0","valid_bit":"2"},{"name":"xts_aes","role":"ready","value":"0","valid_bit":"3"},{"name":"xts_aes","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_data0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWID" }} , 
 	{ "name": "m_axi_data0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WVALID" }} , 
 	{ "name": "m_axi_data0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WREADY" }} , 
 	{ "name": "m_axi_data0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data0", "role": "WDATA" }} , 
 	{ "name": "m_axi_data0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WLAST" }} , 
 	{ "name": "m_axi_data0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WID" }} , 
 	{ "name": "m_axi_data0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WUSER" }} , 
 	{ "name": "m_axi_data0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARID" }} , 
 	{ "name": "m_axi_data0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RVALID" }} , 
 	{ "name": "m_axi_data0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RREADY" }} , 
 	{ "name": "m_axi_data0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data0", "role": "RDATA" }} , 
 	{ "name": "m_axi_data0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RLAST" }} , 
 	{ "name": "m_axi_data0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RID" }} , 
 	{ "name": "m_axi_data0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RUSER" }} , 
 	{ "name": "m_axi_data0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "RRESP" }} , 
 	{ "name": "m_axi_data0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BVALID" }} , 
 	{ "name": "m_axi_data0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BREADY" }} , 
 	{ "name": "m_axi_data0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "BRESP" }} , 
 	{ "name": "m_axi_data0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BID" }} , 
 	{ "name": "m_axi_data0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BUSER" }} , 
 	{ "name": "m_axi_data1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWID" }} , 
 	{ "name": "m_axi_data1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WVALID" }} , 
 	{ "name": "m_axi_data1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WREADY" }} , 
 	{ "name": "m_axi_data1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data1", "role": "WDATA" }} , 
 	{ "name": "m_axi_data1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WLAST" }} , 
 	{ "name": "m_axi_data1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WID" }} , 
 	{ "name": "m_axi_data1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WUSER" }} , 
 	{ "name": "m_axi_data1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARID" }} , 
 	{ "name": "m_axi_data1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RVALID" }} , 
 	{ "name": "m_axi_data1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RREADY" }} , 
 	{ "name": "m_axi_data1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data1", "role": "RDATA" }} , 
 	{ "name": "m_axi_data1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RLAST" }} , 
 	{ "name": "m_axi_data1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RID" }} , 
 	{ "name": "m_axi_data1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RUSER" }} , 
 	{ "name": "m_axi_data1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "RRESP" }} , 
 	{ "name": "m_axi_data1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BVALID" }} , 
 	{ "name": "m_axi_data1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BREADY" }} , 
 	{ "name": "m_axi_data1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "BRESP" }} , 
 	{ "name": "m_axi_data1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BID" }} , 
 	{ "name": "m_axi_data1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BUSER" }} , 
 	{ "name": "m_axi_data2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWID" }} , 
 	{ "name": "m_axi_data2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WVALID" }} , 
 	{ "name": "m_axi_data2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WREADY" }} , 
 	{ "name": "m_axi_data2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data2", "role": "WDATA" }} , 
 	{ "name": "m_axi_data2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WLAST" }} , 
 	{ "name": "m_axi_data2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WID" }} , 
 	{ "name": "m_axi_data2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WUSER" }} , 
 	{ "name": "m_axi_data2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARID" }} , 
 	{ "name": "m_axi_data2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RVALID" }} , 
 	{ "name": "m_axi_data2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RREADY" }} , 
 	{ "name": "m_axi_data2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data2", "role": "RDATA" }} , 
 	{ "name": "m_axi_data2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RLAST" }} , 
 	{ "name": "m_axi_data2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RID" }} , 
 	{ "name": "m_axi_data2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RUSER" }} , 
 	{ "name": "m_axi_data2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "RRESP" }} , 
 	{ "name": "m_axi_data2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BVALID" }} , 
 	{ "name": "m_axi_data2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BREADY" }} , 
 	{ "name": "m_axi_data2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "BRESP" }} , 
 	{ "name": "m_axi_data2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BID" }} , 
 	{ "name": "m_axi_data2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BUSER" }} , 
 	{ "name": "m_axi_data3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "AWID" }} , 
 	{ "name": "m_axi_data3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "WVALID" }} , 
 	{ "name": "m_axi_data3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "WREADY" }} , 
 	{ "name": "m_axi_data3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data3", "role": "WDATA" }} , 
 	{ "name": "m_axi_data3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "WLAST" }} , 
 	{ "name": "m_axi_data3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "WID" }} , 
 	{ "name": "m_axi_data3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "WUSER" }} , 
 	{ "name": "m_axi_data3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "ARID" }} , 
 	{ "name": "m_axi_data3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "RVALID" }} , 
 	{ "name": "m_axi_data3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "RREADY" }} , 
 	{ "name": "m_axi_data3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data3", "role": "RDATA" }} , 
 	{ "name": "m_axi_data3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "RLAST" }} , 
 	{ "name": "m_axi_data3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "RID" }} , 
 	{ "name": "m_axi_data3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "RUSER" }} , 
 	{ "name": "m_axi_data3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data3", "role": "RRESP" }} , 
 	{ "name": "m_axi_data3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "BVALID" }} , 
 	{ "name": "m_axi_data3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "BREADY" }} , 
 	{ "name": "m_axi_data3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data3", "role": "BRESP" }} , 
 	{ "name": "m_axi_data3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "BID" }} , 
 	{ "name": "m_axi_data3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data3", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "27", "37"],
		"CDFG" : "xts_aes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13783", "EstimateLatencyMax" : "327889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state904", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xts_aes_process_data_fu_24149"},
			{"State" : "ap_ST_fsm_state902", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_process_1_fu_24167"},
			{"State" : "ap_ST_fsm_state898", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expand_key_fu_24182"},
			{"State" : "ap_ST_fsm_state900", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expand_key_fu_24182"}],
		"Port" : [
			{"Name" : "data0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_aes_expand_key_fu_24182", "Port" : "key_V"}]},
			{"Name" : "data1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_aes_process_1_fu_24167", "Port" : "text_V"}]},
			{"Name" : "data2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_xts_aes_process_data_fu_24149", "Port" : "data_V"}]},
			{"Name" : "data3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "data3_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "data3_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "key_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tweak_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "text_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "text_len_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_ret_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_aes_expand_key_fu_24182", "Port" : "rcon"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xts_aes_ctrl_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xts_aes_data0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xts_aes_data1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xts_aes_data2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xts_aes_data3_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.multiplication_table_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_boxes_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mix_column_constant_s_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mix_column_constant_10_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mix_column_constant_19_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mix_column_constant_28_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_expanded_key_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_expanded_key2_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_tweak_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.processed_data_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149", "Parent" : "0", "Child" : ["17"],
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
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "tweak_V"}]},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "s_boxes_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "mix_column_constant_matrices_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "multiplication_V"}]},
			{"Name" : "blocks_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xts_aes_process_bloc_fu_207", "Port" : "block_V"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207", "Parent" : "16", "Child" : ["18"],
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
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "text_V"}]},
			{"Name" : "block_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tweak_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "s_boxes_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "multiplication_V"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130", "Parent" : "17", "Child" : ["19", "20", "21", "23", "24", "25", "26"],
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
					{"ID" : "24", "SubInstance" : "grp_aes_get_round_key5_fu_260", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_aes_substitute_bytes_fu_268", "Port" : "s_box_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "multiplication_V"}]}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.state_matrix_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.round_key_V_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_shift_rows_fu_238", "Parent" : "18", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_shift_rows_fu_238.xts_aes_mux_42_16cud_U24", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_mix_columns8_fu_244", "Parent" : "18",
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_get_round_key5_fu_260", "Parent" : "18",
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_substitute_bytes_fu_268", "Parent" : "18",
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xts_aes_process_data_fu_24149.grp_xts_aes_process_bloc_fu_207.grp_aes_process_2_fu_130.grp_aes_add_round_key_fu_276", "Parent" : "18",
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
			{"Name" : "round_key_matrix_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167", "Parent" : "0", "Child" : ["28", "29", "30", "32", "33", "34", "35", "36"],
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
					{"ID" : "33", "SubInstance" : "grp_aes_sequence_to_matr_fu_217", "Port" : "sequence_V"}]},
			{"Name" : "text_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_aes_get_round_key5_fu_227", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_aes_substitute_bytes_fu_238", "Port" : "s_box_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "constant_matrix_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_aes_mix_columns8_fu_200", "Port" : "multiplication_V"}]},
			{"Name" : "sequence_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.state_matrix_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.round_key_V_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.grp_aes_shift_rows_fu_193", "Parent" : "27", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.grp_aes_shift_rows_fu_193.xts_aes_mux_42_16cud_U24", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.grp_aes_mix_columns8_fu_200", "Parent" : "27",
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
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.grp_aes_sequence_to_matr_fu_217", "Parent" : "27",
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
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.grp_aes_get_round_key5_fu_227", "Parent" : "27",
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.grp_aes_substitute_bytes_fu_238", "Parent" : "27",
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_1_fu_24167.grp_aes_add_round_key_fu_247", "Parent" : "27",
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
			{"Name" : "round_key_matrix_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expand_key_fu_24182", "Parent" : "0", "Child" : ["38", "39", "40", "41", "42", "43"],
		"CDFG" : "aes_expand_key",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2070", "EstimateLatencyMax" : "3266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "key_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "key_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "key_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "key_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_V_offset_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_box_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expanded_key_matrix_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expand_key_fu_24182.rcon_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expand_key_fu_24182.expanded_key_V_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expand_key_fu_24182.xts_aes_mux_42_16cud_U1", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expand_key_fu_24182.xts_aes_mux_42_16cud_U2", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expand_key_fu_24182.xts_aes_mux_42_16cud_U3", "Parent" : "37"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expand_key_fu_24182.xts_aes_mux_42_16cud_U4", "Parent" : "37"}]}


set ArgLastReadFirstWriteLatency {
	xts_aes {
		data0 {Type I LastRead 8 FirstWrite -1}
		data1 {Type I LastRead 10 FirstWrite -1}
		data2 {Type I LastRead 8 FirstWrite -1}
		data3 {Type O LastRead 904 FirstWrite 907}
		key_V {Type I LastRead 895 FirstWrite -1}
		tweak_V {Type I LastRead 895 FirstWrite -1}
		text_V {Type I LastRead 895 FirstWrite -1}
		mode_V {Type I LastRead 895 FirstWrite -1}
		text_len_V {Type I LastRead 895 FirstWrite -1}
		data_ret_V {Type I LastRead 895 FirstWrite -1}
		rcon {Type I LastRead -1 FirstWrite -1}}
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
		round_key_matrix_V {Type I LastRead 2 FirstWrite -1}}
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
		round_key_matrix_V {Type I LastRead 2 FirstWrite -1}}
	aes_expand_key {
		key_V {Type I LastRead 8 FirstWrite -1}
		key_V_offset {Type I LastRead 0 FirstWrite -1}
		key_V_offset_offset {Type I LastRead 0 FirstWrite -1}
		s_box_V {Type I LastRead 12 FirstWrite -1}
		expanded_key_matrix_V {Type O LastRead -1 FirstWrite 12}
		rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13783", "Max" : "327889"}
	, {"Name" : "Interval", "Min" : "13784", "Max" : "327890"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data0 { m_axi {  { m_axi_data0_AWVALID VALID 1 1 }  { m_axi_data0_AWREADY READY 0 1 }  { m_axi_data0_AWADDR ADDR 1 32 }  { m_axi_data0_AWID ID 1 1 }  { m_axi_data0_AWLEN LEN 1 8 }  { m_axi_data0_AWSIZE SIZE 1 3 }  { m_axi_data0_AWBURST BURST 1 2 }  { m_axi_data0_AWLOCK LOCK 1 2 }  { m_axi_data0_AWCACHE CACHE 1 4 }  { m_axi_data0_AWPROT PROT 1 3 }  { m_axi_data0_AWQOS QOS 1 4 }  { m_axi_data0_AWREGION REGION 1 4 }  { m_axi_data0_AWUSER USER 1 1 }  { m_axi_data0_WVALID VALID 1 1 }  { m_axi_data0_WREADY READY 0 1 }  { m_axi_data0_WDATA DATA 1 32 }  { m_axi_data0_WSTRB STRB 1 4 }  { m_axi_data0_WLAST LAST 1 1 }  { m_axi_data0_WID ID 1 1 }  { m_axi_data0_WUSER USER 1 1 }  { m_axi_data0_ARVALID VALID 1 1 }  { m_axi_data0_ARREADY READY 0 1 }  { m_axi_data0_ARADDR ADDR 1 32 }  { m_axi_data0_ARID ID 1 1 }  { m_axi_data0_ARLEN LEN 1 8 }  { m_axi_data0_ARSIZE SIZE 1 3 }  { m_axi_data0_ARBURST BURST 1 2 }  { m_axi_data0_ARLOCK LOCK 1 2 }  { m_axi_data0_ARCACHE CACHE 1 4 }  { m_axi_data0_ARPROT PROT 1 3 }  { m_axi_data0_ARQOS QOS 1 4 }  { m_axi_data0_ARREGION REGION 1 4 }  { m_axi_data0_ARUSER USER 1 1 }  { m_axi_data0_RVALID VALID 0 1 }  { m_axi_data0_RREADY READY 1 1 }  { m_axi_data0_RDATA DATA 0 32 }  { m_axi_data0_RLAST LAST 0 1 }  { m_axi_data0_RID ID 0 1 }  { m_axi_data0_RUSER USER 0 1 }  { m_axi_data0_RRESP RESP 0 2 }  { m_axi_data0_BVALID VALID 0 1 }  { m_axi_data0_BREADY READY 1 1 }  { m_axi_data0_BRESP RESP 0 2 }  { m_axi_data0_BID ID 0 1 }  { m_axi_data0_BUSER USER 0 1 } } }
	data1 { m_axi {  { m_axi_data1_AWVALID VALID 1 1 }  { m_axi_data1_AWREADY READY 0 1 }  { m_axi_data1_AWADDR ADDR 1 32 }  { m_axi_data1_AWID ID 1 1 }  { m_axi_data1_AWLEN LEN 1 8 }  { m_axi_data1_AWSIZE SIZE 1 3 }  { m_axi_data1_AWBURST BURST 1 2 }  { m_axi_data1_AWLOCK LOCK 1 2 }  { m_axi_data1_AWCACHE CACHE 1 4 }  { m_axi_data1_AWPROT PROT 1 3 }  { m_axi_data1_AWQOS QOS 1 4 }  { m_axi_data1_AWREGION REGION 1 4 }  { m_axi_data1_AWUSER USER 1 1 }  { m_axi_data1_WVALID VALID 1 1 }  { m_axi_data1_WREADY READY 0 1 }  { m_axi_data1_WDATA DATA 1 32 }  { m_axi_data1_WSTRB STRB 1 4 }  { m_axi_data1_WLAST LAST 1 1 }  { m_axi_data1_WID ID 1 1 }  { m_axi_data1_WUSER USER 1 1 }  { m_axi_data1_ARVALID VALID 1 1 }  { m_axi_data1_ARREADY READY 0 1 }  { m_axi_data1_ARADDR ADDR 1 32 }  { m_axi_data1_ARID ID 1 1 }  { m_axi_data1_ARLEN LEN 1 8 }  { m_axi_data1_ARSIZE SIZE 1 3 }  { m_axi_data1_ARBURST BURST 1 2 }  { m_axi_data1_ARLOCK LOCK 1 2 }  { m_axi_data1_ARCACHE CACHE 1 4 }  { m_axi_data1_ARPROT PROT 1 3 }  { m_axi_data1_ARQOS QOS 1 4 }  { m_axi_data1_ARREGION REGION 1 4 }  { m_axi_data1_ARUSER USER 1 1 }  { m_axi_data1_RVALID VALID 0 1 }  { m_axi_data1_RREADY READY 1 1 }  { m_axi_data1_RDATA DATA 0 32 }  { m_axi_data1_RLAST LAST 0 1 }  { m_axi_data1_RID ID 0 1 }  { m_axi_data1_RUSER USER 0 1 }  { m_axi_data1_RRESP RESP 0 2 }  { m_axi_data1_BVALID VALID 0 1 }  { m_axi_data1_BREADY READY 1 1 }  { m_axi_data1_BRESP RESP 0 2 }  { m_axi_data1_BID ID 0 1 }  { m_axi_data1_BUSER USER 0 1 } } }
	data2 { m_axi {  { m_axi_data2_AWVALID VALID 1 1 }  { m_axi_data2_AWREADY READY 0 1 }  { m_axi_data2_AWADDR ADDR 1 32 }  { m_axi_data2_AWID ID 1 1 }  { m_axi_data2_AWLEN LEN 1 8 }  { m_axi_data2_AWSIZE SIZE 1 3 }  { m_axi_data2_AWBURST BURST 1 2 }  { m_axi_data2_AWLOCK LOCK 1 2 }  { m_axi_data2_AWCACHE CACHE 1 4 }  { m_axi_data2_AWPROT PROT 1 3 }  { m_axi_data2_AWQOS QOS 1 4 }  { m_axi_data2_AWREGION REGION 1 4 }  { m_axi_data2_AWUSER USER 1 1 }  { m_axi_data2_WVALID VALID 1 1 }  { m_axi_data2_WREADY READY 0 1 }  { m_axi_data2_WDATA DATA 1 32 }  { m_axi_data2_WSTRB STRB 1 4 }  { m_axi_data2_WLAST LAST 1 1 }  { m_axi_data2_WID ID 1 1 }  { m_axi_data2_WUSER USER 1 1 }  { m_axi_data2_ARVALID VALID 1 1 }  { m_axi_data2_ARREADY READY 0 1 }  { m_axi_data2_ARADDR ADDR 1 32 }  { m_axi_data2_ARID ID 1 1 }  { m_axi_data2_ARLEN LEN 1 8 }  { m_axi_data2_ARSIZE SIZE 1 3 }  { m_axi_data2_ARBURST BURST 1 2 }  { m_axi_data2_ARLOCK LOCK 1 2 }  { m_axi_data2_ARCACHE CACHE 1 4 }  { m_axi_data2_ARPROT PROT 1 3 }  { m_axi_data2_ARQOS QOS 1 4 }  { m_axi_data2_ARREGION REGION 1 4 }  { m_axi_data2_ARUSER USER 1 1 }  { m_axi_data2_RVALID VALID 0 1 }  { m_axi_data2_RREADY READY 1 1 }  { m_axi_data2_RDATA DATA 0 32 }  { m_axi_data2_RLAST LAST 0 1 }  { m_axi_data2_RID ID 0 1 }  { m_axi_data2_RUSER USER 0 1 }  { m_axi_data2_RRESP RESP 0 2 }  { m_axi_data2_BVALID VALID 0 1 }  { m_axi_data2_BREADY READY 1 1 }  { m_axi_data2_BRESP RESP 0 2 }  { m_axi_data2_BID ID 0 1 }  { m_axi_data2_BUSER USER 0 1 } } }
	data3 { m_axi {  { m_axi_data3_AWVALID VALID 1 1 }  { m_axi_data3_AWREADY READY 0 1 }  { m_axi_data3_AWADDR ADDR 1 32 }  { m_axi_data3_AWID ID 1 1 }  { m_axi_data3_AWLEN LEN 1 8 }  { m_axi_data3_AWSIZE SIZE 1 3 }  { m_axi_data3_AWBURST BURST 1 2 }  { m_axi_data3_AWLOCK LOCK 1 2 }  { m_axi_data3_AWCACHE CACHE 1 4 }  { m_axi_data3_AWPROT PROT 1 3 }  { m_axi_data3_AWQOS QOS 1 4 }  { m_axi_data3_AWREGION REGION 1 4 }  { m_axi_data3_AWUSER USER 1 1 }  { m_axi_data3_WVALID VALID 1 1 }  { m_axi_data3_WREADY READY 0 1 }  { m_axi_data3_WDATA DATA 1 32 }  { m_axi_data3_WSTRB STRB 1 4 }  { m_axi_data3_WLAST LAST 1 1 }  { m_axi_data3_WID ID 1 1 }  { m_axi_data3_WUSER USER 1 1 }  { m_axi_data3_ARVALID VALID 1 1 }  { m_axi_data3_ARREADY READY 0 1 }  { m_axi_data3_ARADDR ADDR 1 32 }  { m_axi_data3_ARID ID 1 1 }  { m_axi_data3_ARLEN LEN 1 8 }  { m_axi_data3_ARSIZE SIZE 1 3 }  { m_axi_data3_ARBURST BURST 1 2 }  { m_axi_data3_ARLOCK LOCK 1 2 }  { m_axi_data3_ARCACHE CACHE 1 4 }  { m_axi_data3_ARPROT PROT 1 3 }  { m_axi_data3_ARQOS QOS 1 4 }  { m_axi_data3_ARREGION REGION 1 4 }  { m_axi_data3_ARUSER USER 1 1 }  { m_axi_data3_RVALID VALID 0 1 }  { m_axi_data3_RREADY READY 1 1 }  { m_axi_data3_RDATA DATA 0 32 }  { m_axi_data3_RLAST LAST 0 1 }  { m_axi_data3_RID ID 0 1 }  { m_axi_data3_RUSER USER 0 1 }  { m_axi_data3_RRESP RESP 0 2 }  { m_axi_data3_BVALID VALID 0 1 }  { m_axi_data3_BREADY READY 1 1 }  { m_axi_data3_BRESP RESP 0 2 }  { m_axi_data3_BID ID 0 1 }  { m_axi_data3_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ data0 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ data1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ data2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ data3 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ data0 1 }
	{ data1 1 }
	{ data2 1 }
	{ data3 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ data0 1 }
	{ data1 1 }
	{ data2 1 }
	{ data3 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
