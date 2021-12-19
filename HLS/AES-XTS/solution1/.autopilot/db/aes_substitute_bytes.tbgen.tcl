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
	{ state_matrix_V int 16 regular {array 16 { 2 2 } 1 1 }  }
	{ s_box_V int 8 regular {array 768 { 1 1 } 1 1 }  }
	{ s_box_V_offset int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_matrix_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "s_box_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_box_V_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
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
	{ state_matrix_V_address1 sc_out sc_lv 4 signal 0 } 
	{ state_matrix_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ state_matrix_V_we1 sc_out sc_logic 1 signal 0 } 
	{ state_matrix_V_d1 sc_out sc_lv 16 signal 0 } 
	{ state_matrix_V_q1 sc_in sc_lv 16 signal 0 } 
	{ s_box_V_address0 sc_out sc_lv 10 signal 1 } 
	{ s_box_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_box_V_q0 sc_in sc_lv 8 signal 1 } 
	{ s_box_V_address1 sc_out sc_lv 10 signal 1 } 
	{ s_box_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_box_V_q1 sc_in sc_lv 8 signal 1 } 
	{ s_box_V_offset sc_in sc_lv 2 signal 2 } 
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
 	{ "name": "state_matrix_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "address1" }} , 
 	{ "name": "state_matrix_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "ce1" }} , 
 	{ "name": "state_matrix_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "we1" }} , 
 	{ "name": "state_matrix_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "d1" }} , 
 	{ "name": "state_matrix_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_matrix_V", "role": "q1" }} , 
 	{ "name": "s_box_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_box_V", "role": "address0" }} , 
 	{ "name": "s_box_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "ce0" }} , 
 	{ "name": "s_box_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box_V", "role": "q0" }} , 
 	{ "name": "s_box_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_box_V", "role": "address1" }} , 
 	{ "name": "s_box_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_box_V", "role": "ce1" }} , 
 	{ "name": "s_box_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_box_V", "role": "q1" }} , 
 	{ "name": "s_box_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_box_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "aes_substitute_bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_matrix_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_box_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_box_V_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	aes_substitute_bytes {
		state_matrix_V {Type IO LastRead 3 FirstWrite 3}
		s_box_V {Type I LastRead 4 FirstWrite -1}
		s_box_V_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_matrix_V { ap_memory {  { state_matrix_V_address0 mem_address 1 4 }  { state_matrix_V_ce0 mem_ce 1 1 }  { state_matrix_V_we0 mem_we 1 1 }  { state_matrix_V_d0 mem_din 1 16 }  { state_matrix_V_q0 mem_dout 0 16 }  { state_matrix_V_address1 MemPortADDR2 1 4 }  { state_matrix_V_ce1 MemPortCE2 1 1 }  { state_matrix_V_we1 MemPortWE2 1 1 }  { state_matrix_V_d1 MemPortDIN2 1 16 }  { state_matrix_V_q1 MemPortDOUT2 0 16 } } }
	s_box_V { ap_memory {  { s_box_V_address0 mem_address 1 10 }  { s_box_V_ce0 mem_ce 1 1 }  { s_box_V_q0 mem_dout 0 8 }  { s_box_V_address1 MemPortADDR2 1 10 }  { s_box_V_ce1 MemPortCE2 1 1 }  { s_box_V_q1 MemPortDOUT2 0 8 } } }
	s_box_V_offset { ap_none {  { s_box_V_offset in_data 0 2 } } }
}
