set moduleName aes_substitute_bytes
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
set C_modelName {aes_substitute_bytes}
set C_modelType { void 0 }
set C_modelArgList {
	{ state_matrix_V int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ s_box_V int 8 regular {axi_master 0}  }
	{ s_box_V_offset int 32 regular  }
	{ s_box_V_offset_offset int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_matrix_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "s_box_V", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_box_V_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_box_V_offset_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_matrix_V_address0 sc_out sc_lv 4 signal 0 } 
	{ state_matrix_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ state_matrix_V_we0 sc_out sc_logic 1 signal 0 } 
	{ state_matrix_V_d0 sc_out sc_lv 16 signal 0 } 
	{ state_matrix_V_q0 sc_in sc_lv 16 signal 0 } 
	{ m_axi_s_box_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_s_box_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_s_box_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_s_box_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_s_box_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_s_box_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_s_box_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_s_box_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_s_box_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_s_box_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_WDATA sc_out sc_lv 8 signal 1 } 
	{ m_axi_s_box_V_WSTRB sc_out sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_s_box_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_s_box_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_s_box_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_s_box_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_s_box_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_s_box_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_s_box_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_s_box_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_s_box_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_RDATA sc_in sc_lv 8 signal 1 } 
	{ m_axi_s_box_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_s_box_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_s_box_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_s_box_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_s_box_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_box_V_offset sc_in sc_lv 32 signal 2 } 
	{ s_box_V_offset_offset sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_matrix_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "address0" }} , 
 	{ "name": "state_matrix_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "ce0" }} , 
 	{ "name": "state_matrix_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "we0" }} , 
 	{ "name": "state_matrix_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "d0" }} , 
 	{ "name": "state_matrix_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "q0" }} , 
 	{ "name": "m_axi_s_box_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_s_box_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_s_box_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_s_box_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWID" }} , 
 	{ "name": "m_axi_s_box_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_s_box_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_s_box_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_s_box_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_s_box_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_s_box_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_s_box_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_s_box_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_s_box_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_s_box_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_s_box_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_s_box_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_s_box_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_s_box_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_s_box_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "WID" }} , 
 	{ "name": "m_axi_s_box_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_s_box_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_s_box_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_s_box_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_s_box_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARID" }} , 
 	{ "name": "m_axi_s_box_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_s_box_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_s_box_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_s_box_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_s_box_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_s_box_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_s_box_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_s_box_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_s_box_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_s_box_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_s_box_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_s_box_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_s_box_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_s_box_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "RID" }} , 
 	{ "name": "m_axi_s_box_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_s_box_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_s_box_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_s_box_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_s_box_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_s_box_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "BID" }} , 
 	{ "name": "m_axi_s_box_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "BUSER" }} , 
 	{ "name": "s_box_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_box_V_offset", "role": "default" }} , 
 	{ "name": "s_box_V_offset_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V_offset_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "aes_substitute_bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "185", "EstimateLatencyMax" : "185",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_matrix_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_box_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_box_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "s_box_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "s_box_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_box_V_offset_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	aes_substitute_bytes {
		state_matrix_V {Type IO LastRead 2 FirstWrite 12}
		s_box_V {Type I LastRead 11 FirstWrite -1}
		s_box_V_offset {Type I LastRead 0 FirstWrite -1}
		s_box_V_offset_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "185", "Max" : "185"}
	, {"Name" : "Interval", "Min" : "185", "Max" : "185"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_matrix_V { ap_memory {  { state_matrix_V_address0 mem_address 1 4 }  { state_matrix_V_ce0 mem_ce 1 1 }  { state_matrix_V_we0 mem_we 1 1 }  { state_matrix_V_d0 mem_din 1 16 }  { state_matrix_V_q0 mem_dout 0 16 } } }
	s_box_V { m_axi {  { m_axi_s_box_V_AWVALID VALID 1 1 }  { m_axi_s_box_V_AWREADY READY 0 1 }  { m_axi_s_box_V_AWADDR ADDR 1 32 }  { m_axi_s_box_V_AWID ID 1 1 }  { m_axi_s_box_V_AWLEN LEN 1 32 }  { m_axi_s_box_V_AWSIZE SIZE 1 3 }  { m_axi_s_box_V_AWBURST BURST 1 2 }  { m_axi_s_box_V_AWLOCK LOCK 1 2 }  { m_axi_s_box_V_AWCACHE CACHE 1 4 }  { m_axi_s_box_V_AWPROT PROT 1 3 }  { m_axi_s_box_V_AWQOS QOS 1 4 }  { m_axi_s_box_V_AWREGION REGION 1 4 }  { m_axi_s_box_V_AWUSER USER 1 1 }  { m_axi_s_box_V_WVALID VALID 1 1 }  { m_axi_s_box_V_WREADY READY 0 1 }  { m_axi_s_box_V_WDATA DATA 1 8 }  { m_axi_s_box_V_WSTRB STRB 1 1 }  { m_axi_s_box_V_WLAST LAST 1 1 }  { m_axi_s_box_V_WID ID 1 1 }  { m_axi_s_box_V_WUSER USER 1 1 }  { m_axi_s_box_V_ARVALID VALID 1 1 }  { m_axi_s_box_V_ARREADY READY 0 1 }  { m_axi_s_box_V_ARADDR ADDR 1 32 }  { m_axi_s_box_V_ARID ID 1 1 }  { m_axi_s_box_V_ARLEN LEN 1 32 }  { m_axi_s_box_V_ARSIZE SIZE 1 3 }  { m_axi_s_box_V_ARBURST BURST 1 2 }  { m_axi_s_box_V_ARLOCK LOCK 1 2 }  { m_axi_s_box_V_ARCACHE CACHE 1 4 }  { m_axi_s_box_V_ARPROT PROT 1 3 }  { m_axi_s_box_V_ARQOS QOS 1 4 }  { m_axi_s_box_V_ARREGION REGION 1 4 }  { m_axi_s_box_V_ARUSER USER 1 1 }  { m_axi_s_box_V_RVALID VALID 0 1 }  { m_axi_s_box_V_RREADY READY 1 1 }  { m_axi_s_box_V_RDATA DATA 0 8 }  { m_axi_s_box_V_RLAST LAST 0 1 }  { m_axi_s_box_V_RID ID 0 1 }  { m_axi_s_box_V_RUSER USER 0 1 }  { m_axi_s_box_V_RRESP RESP 0 2 }  { m_axi_s_box_V_BVALID VALID 0 1 }  { m_axi_s_box_V_BREADY READY 1 1 }  { m_axi_s_box_V_BRESP RESP 0 2 }  { m_axi_s_box_V_BID ID 0 1 }  { m_axi_s_box_V_BUSER USER 0 1 } } }
	s_box_V_offset { ap_none {  { s_box_V_offset in_data 0 32 } } }
	s_box_V_offset_offset { ap_none {  { s_box_V_offset_offset in_data 0 2 } } }
}