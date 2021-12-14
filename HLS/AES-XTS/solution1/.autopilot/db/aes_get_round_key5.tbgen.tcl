set moduleName aes_get_round_key5
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
set C_modelName {aes_get_round_key5}
set C_modelType { void 0 }
set C_modelArgList {
	{ round int 7 regular  }
	{ expanded_key_V int 16 regular {array 240 { 1 3 } 1 1 }  }
	{ round_key_V int 16 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "round", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "expanded_key_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "round_key_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ round sc_in sc_lv 7 signal 0 } 
	{ expanded_key_V_address0 sc_out sc_lv 8 signal 1 } 
	{ expanded_key_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ expanded_key_V_q0 sc_in sc_lv 16 signal 1 } 
	{ round_key_V_address0 sc_out sc_lv 4 signal 2 } 
	{ round_key_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ round_key_V_we0 sc_out sc_logic 1 signal 2 } 
	{ round_key_V_d0 sc_out sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "round", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "round", "role": "default" }} , 
 	{ "name": "expanded_key_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expanded_key_V", "role": "address0" }} , 
 	{ "name": "expanded_key_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expanded_key_V", "role": "ce0" }} , 
 	{ "name": "expanded_key_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "expanded_key_V", "role": "q0" }} , 
 	{ "name": "round_key_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "round_key_V", "role": "address0" }} , 
 	{ "name": "round_key_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "round_key_V", "role": "ce0" }} , 
 	{ "name": "round_key_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "round_key_V", "role": "we0" }} , 
 	{ "name": "round_key_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "round_key_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "round_key_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	aes_get_round_key5 {
		round {Type I LastRead 0 FirstWrite -1}
		expanded_key_V {Type I LastRead 2 FirstWrite -1}
		round_key_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	round { ap_none {  { round in_data 0 7 } } }
	expanded_key_V { ap_memory {  { expanded_key_V_address0 mem_address 1 8 }  { expanded_key_V_ce0 mem_ce 1 1 }  { expanded_key_V_q0 mem_dout 0 16 } } }
	round_key_V { ap_memory {  { round_key_V_address0 mem_address 1 4 }  { round_key_V_ce0 mem_ce 1 1 }  { round_key_V_we0 mem_we 1 1 }  { round_key_V_d0 mem_din 1 16 } } }
}
