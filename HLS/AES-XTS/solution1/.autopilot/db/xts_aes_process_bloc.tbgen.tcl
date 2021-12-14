set moduleName xts_aes_process_bloc
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
set C_modelName {xts_aes_process_bloc}
set C_modelType { void 0 }
set C_modelArgList {
	{ block_V int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ block_V_offset int 7 regular  }
	{ tweak_V int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ mode_V int 16 regular  }
	{ expanded_key_V int 16 regular {array 240 { 1 3 } 1 1 }  }
	{ s_boxes_V int 8 regular {array 768 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_0_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_1_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_2_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ mix_column_constant_matrices_3_V int 6 regular {array 12 { 1 3 } 1 1 }  }
	{ multiplication_V int 8 regular {array 3840 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "block_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "block_V_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "tweak_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mode_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "expanded_key_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_boxes_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_0_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_1_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_2_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "mix_column_constant_matrices_3_V", "interface" : "memory", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "multiplication_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ block_V_address0 sc_out sc_lv 10 signal 0 } 
	{ block_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ block_V_we0 sc_out sc_logic 1 signal 0 } 
	{ block_V_d0 sc_out sc_lv 16 signal 0 } 
	{ block_V_q0 sc_in sc_lv 16 signal 0 } 
	{ block_V_offset sc_in sc_lv 7 signal 1 } 
	{ tweak_V_address0 sc_out sc_lv 4 signal 2 } 
	{ tweak_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ tweak_V_q0 sc_in sc_lv 16 signal 2 } 
	{ mode_V sc_in sc_lv 16 signal 3 } 
	{ expanded_key_V_address0 sc_out sc_lv 8 signal 4 } 
	{ expanded_key_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ expanded_key_V_q0 sc_in sc_lv 16 signal 4 } 
	{ s_boxes_V_address0 sc_out sc_lv 10 signal 5 } 
	{ s_boxes_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ s_boxes_V_q0 sc_in sc_lv 8 signal 5 } 
	{ mix_column_constant_matrices_0_V_address0 sc_out sc_lv 4 signal 6 } 
	{ mix_column_constant_matrices_0_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ mix_column_constant_matrices_0_V_q0 sc_in sc_lv 6 signal 6 } 
	{ mix_column_constant_matrices_1_V_address0 sc_out sc_lv 4 signal 7 } 
	{ mix_column_constant_matrices_1_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ mix_column_constant_matrices_1_V_q0 sc_in sc_lv 6 signal 7 } 
	{ mix_column_constant_matrices_2_V_address0 sc_out sc_lv 4 signal 8 } 
	{ mix_column_constant_matrices_2_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ mix_column_constant_matrices_2_V_q0 sc_in sc_lv 6 signal 8 } 
	{ mix_column_constant_matrices_3_V_address0 sc_out sc_lv 4 signal 9 } 
	{ mix_column_constant_matrices_3_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ mix_column_constant_matrices_3_V_q0 sc_in sc_lv 6 signal 9 } 
	{ multiplication_V_address0 sc_out sc_lv 12 signal 10 } 
	{ multiplication_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ multiplication_V_q0 sc_in sc_lv 8 signal 10 } 
	{ multiplication_V_address1 sc_out sc_lv 12 signal 10 } 
	{ multiplication_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ multiplication_V_q1 sc_in sc_lv 8 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "block_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "block_V", "role": "address0" }} , 
 	{ "name": "block_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_V", "role": "ce0" }} , 
 	{ "name": "block_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_V", "role": "we0" }} , 
 	{ "name": "block_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "block_V", "role": "d0" }} , 
 	{ "name": "block_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "block_V", "role": "q0" }} , 
 	{ "name": "block_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "block_V_offset", "role": "default" }} , 
 	{ "name": "tweak_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tweak_V", "role": "address0" }} , 
 	{ "name": "tweak_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tweak_V", "role": "ce0" }} , 
 	{ "name": "tweak_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tweak_V", "role": "q0" }} , 
 	{ "name": "mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mode_V", "role": "default" }} , 
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
 	{ "name": "multiplication_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "multiplication_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "text_V"}]},
			{"Name" : "block_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tweak_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "expanded_key_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "s_boxes_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "mix_column_constant_matrices_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_process_2_fu_130", "Port" : "multiplication_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130", "Parent" : "0", "Child" : ["2", "3", "4", "6", "7", "8", "9"],
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
					{"ID" : "7", "SubInstance" : "grp_aes_get_round_key5_fu_260", "Port" : "expanded_key_V"}]},
			{"Name" : "s_boxes_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aes_substitute_bytes_fu_268", "Port" : "s_box_V"}]},
			{"Name" : "mix_column_constant_matrices_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_0_V"}]},
			{"Name" : "mix_column_constant_matrices_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_1_V"}]},
			{"Name" : "mix_column_constant_matrices_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_2_V"}]},
			{"Name" : "mix_column_constant_matrices_3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "constant_matrix_3_V"}]},
			{"Name" : "multiplication_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_mix_columns8_fu_244", "Port" : "multiplication_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.state_matrix_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.round_key_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.grp_aes_shift_rows_fu_238", "Parent" : "1", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.grp_aes_shift_rows_fu_238.xts_aes_mux_42_16cud_U24", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.grp_aes_mix_columns8_fu_244", "Parent" : "1",
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.grp_aes_get_round_key5_fu_260", "Parent" : "1",
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.grp_aes_substitute_bytes_fu_268", "Parent" : "1",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_process_2_fu_130.grp_aes_add_round_key_fu_276", "Parent" : "1",
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
	{"Name" : "Latency", "Min" : "3203", "Max" : "4828"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "4828"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	block_V { ap_memory {  { block_V_address0 mem_address 1 10 }  { block_V_ce0 mem_ce 1 1 }  { block_V_we0 mem_we 1 1 }  { block_V_d0 mem_din 1 16 }  { block_V_q0 mem_dout 0 16 } } }
	block_V_offset { ap_none {  { block_V_offset in_data 0 7 } } }
	tweak_V { ap_memory {  { tweak_V_address0 mem_address 1 4 }  { tweak_V_ce0 mem_ce 1 1 }  { tweak_V_q0 mem_dout 0 16 } } }
	mode_V { ap_none {  { mode_V in_data 0 16 } } }
	expanded_key_V { ap_memory {  { expanded_key_V_address0 mem_address 1 8 }  { expanded_key_V_ce0 mem_ce 1 1 }  { expanded_key_V_q0 mem_dout 0 16 } } }
	s_boxes_V { ap_memory {  { s_boxes_V_address0 mem_address 1 10 }  { s_boxes_V_ce0 mem_ce 1 1 }  { s_boxes_V_q0 mem_dout 0 8 } } }
	mix_column_constant_matrices_0_V { ap_memory {  { mix_column_constant_matrices_0_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_0_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_0_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_1_V { ap_memory {  { mix_column_constant_matrices_1_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_1_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_1_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_2_V { ap_memory {  { mix_column_constant_matrices_2_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_2_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_2_V_q0 mem_dout 0 6 } } }
	mix_column_constant_matrices_3_V { ap_memory {  { mix_column_constant_matrices_3_V_address0 mem_address 1 4 }  { mix_column_constant_matrices_3_V_ce0 mem_ce 1 1 }  { mix_column_constant_matrices_3_V_q0 mem_dout 0 6 } } }
	multiplication_V { ap_memory {  { multiplication_V_address0 mem_address 1 12 }  { multiplication_V_ce0 mem_ce 1 1 }  { multiplication_V_q0 mem_dout 0 8 }  { multiplication_V_address1 MemPortADDR2 1 12 }  { multiplication_V_ce1 MemPortCE2 1 1 }  { multiplication_V_q1 MemPortDOUT2 0 8 } } }
}
