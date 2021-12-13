# This script segment is generated automatically by AutoPilot

set id 1
set name xts_aes_mux_42_16cud
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 16
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 6
set hasByteEnable 0
set MemName aes_expand_key58_bkb
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 240
set AddrWd 8
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name expanded_key_matrix_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename expanded_key_matrix_V \
    op interface \
    ports { expanded_key_matrix_V_address0 { O 8 vector } expanded_key_matrix_V_ce0 { O 1 bit } expanded_key_matrix_V_we0 { O 1 bit } expanded_key_matrix_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'expanded_key_matrix_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name key_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_key_V \
    op interface \
    ports { m_axi_key_V_AWVALID { O 1 bit } m_axi_key_V_AWREADY { I 1 bit } m_axi_key_V_AWADDR { O 32 vector } m_axi_key_V_AWID { O 1 vector } m_axi_key_V_AWLEN { O 32 vector } m_axi_key_V_AWSIZE { O 3 vector } m_axi_key_V_AWBURST { O 2 vector } m_axi_key_V_AWLOCK { O 2 vector } m_axi_key_V_AWCACHE { O 4 vector } m_axi_key_V_AWPROT { O 3 vector } m_axi_key_V_AWQOS { O 4 vector } m_axi_key_V_AWREGION { O 4 vector } m_axi_key_V_AWUSER { O 1 vector } m_axi_key_V_WVALID { O 1 bit } m_axi_key_V_WREADY { I 1 bit } m_axi_key_V_WDATA { O 16 vector } m_axi_key_V_WSTRB { O 2 vector } m_axi_key_V_WLAST { O 1 bit } m_axi_key_V_WID { O 1 vector } m_axi_key_V_WUSER { O 1 vector } m_axi_key_V_ARVALID { O 1 bit } m_axi_key_V_ARREADY { I 1 bit } m_axi_key_V_ARADDR { O 32 vector } m_axi_key_V_ARID { O 1 vector } m_axi_key_V_ARLEN { O 32 vector } m_axi_key_V_ARSIZE { O 3 vector } m_axi_key_V_ARBURST { O 2 vector } m_axi_key_V_ARLOCK { O 2 vector } m_axi_key_V_ARCACHE { O 4 vector } m_axi_key_V_ARPROT { O 3 vector } m_axi_key_V_ARQOS { O 4 vector } m_axi_key_V_ARREGION { O 4 vector } m_axi_key_V_ARUSER { O 1 vector } m_axi_key_V_RVALID { I 1 bit } m_axi_key_V_RREADY { O 1 bit } m_axi_key_V_RDATA { I 16 vector } m_axi_key_V_RLAST { I 1 bit } m_axi_key_V_RID { I 1 vector } m_axi_key_V_RUSER { I 1 vector } m_axi_key_V_RRESP { I 2 vector } m_axi_key_V_BVALID { I 1 bit } m_axi_key_V_BREADY { O 1 bit } m_axi_key_V_BRESP { I 2 vector } m_axi_key_V_BID { I 1 vector } m_axi_key_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name key_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_key_V_offset \
    op interface \
    ports { key_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name s_box_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_box_V \
    op interface \
    ports { m_axi_s_box_V_AWVALID { O 1 bit } m_axi_s_box_V_AWREADY { I 1 bit } m_axi_s_box_V_AWADDR { O 32 vector } m_axi_s_box_V_AWID { O 1 vector } m_axi_s_box_V_AWLEN { O 32 vector } m_axi_s_box_V_AWSIZE { O 3 vector } m_axi_s_box_V_AWBURST { O 2 vector } m_axi_s_box_V_AWLOCK { O 2 vector } m_axi_s_box_V_AWCACHE { O 4 vector } m_axi_s_box_V_AWPROT { O 3 vector } m_axi_s_box_V_AWQOS { O 4 vector } m_axi_s_box_V_AWREGION { O 4 vector } m_axi_s_box_V_AWUSER { O 1 vector } m_axi_s_box_V_WVALID { O 1 bit } m_axi_s_box_V_WREADY { I 1 bit } m_axi_s_box_V_WDATA { O 8 vector } m_axi_s_box_V_WSTRB { O 1 vector } m_axi_s_box_V_WLAST { O 1 bit } m_axi_s_box_V_WID { O 1 vector } m_axi_s_box_V_WUSER { O 1 vector } m_axi_s_box_V_ARVALID { O 1 bit } m_axi_s_box_V_ARREADY { I 1 bit } m_axi_s_box_V_ARADDR { O 32 vector } m_axi_s_box_V_ARID { O 1 vector } m_axi_s_box_V_ARLEN { O 32 vector } m_axi_s_box_V_ARSIZE { O 3 vector } m_axi_s_box_V_ARBURST { O 2 vector } m_axi_s_box_V_ARLOCK { O 2 vector } m_axi_s_box_V_ARCACHE { O 4 vector } m_axi_s_box_V_ARPROT { O 3 vector } m_axi_s_box_V_ARQOS { O 4 vector } m_axi_s_box_V_ARREGION { O 4 vector } m_axi_s_box_V_ARUSER { O 1 vector } m_axi_s_box_V_RVALID { I 1 bit } m_axi_s_box_V_RREADY { O 1 bit } m_axi_s_box_V_RDATA { I 8 vector } m_axi_s_box_V_RLAST { I 1 bit } m_axi_s_box_V_RID { I 1 vector } m_axi_s_box_V_RUSER { I 1 vector } m_axi_s_box_V_RRESP { I 2 vector } m_axi_s_box_V_BVALID { I 1 bit } m_axi_s_box_V_BREADY { O 1 bit } m_axi_s_box_V_BRESP { I 2 vector } m_axi_s_box_V_BID { I 1 vector } m_axi_s_box_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name s_box_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_box_V_offset \
    op interface \
    ports { s_box_V_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name rcon_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcon_V \
    op interface \
    ports { m_axi_rcon_V_AWVALID { O 1 bit } m_axi_rcon_V_AWREADY { I 1 bit } m_axi_rcon_V_AWADDR { O 32 vector } m_axi_rcon_V_AWID { O 1 vector } m_axi_rcon_V_AWLEN { O 32 vector } m_axi_rcon_V_AWSIZE { O 3 vector } m_axi_rcon_V_AWBURST { O 2 vector } m_axi_rcon_V_AWLOCK { O 2 vector } m_axi_rcon_V_AWCACHE { O 4 vector } m_axi_rcon_V_AWPROT { O 3 vector } m_axi_rcon_V_AWQOS { O 4 vector } m_axi_rcon_V_AWREGION { O 4 vector } m_axi_rcon_V_AWUSER { O 1 vector } m_axi_rcon_V_WVALID { O 1 bit } m_axi_rcon_V_WREADY { I 1 bit } m_axi_rcon_V_WDATA { O 64 vector } m_axi_rcon_V_WSTRB { O 8 vector } m_axi_rcon_V_WLAST { O 1 bit } m_axi_rcon_V_WID { O 1 vector } m_axi_rcon_V_WUSER { O 1 vector } m_axi_rcon_V_ARVALID { O 1 bit } m_axi_rcon_V_ARREADY { I 1 bit } m_axi_rcon_V_ARADDR { O 32 vector } m_axi_rcon_V_ARID { O 1 vector } m_axi_rcon_V_ARLEN { O 32 vector } m_axi_rcon_V_ARSIZE { O 3 vector } m_axi_rcon_V_ARBURST { O 2 vector } m_axi_rcon_V_ARLOCK { O 2 vector } m_axi_rcon_V_ARCACHE { O 4 vector } m_axi_rcon_V_ARPROT { O 3 vector } m_axi_rcon_V_ARQOS { O 4 vector } m_axi_rcon_V_ARREGION { O 4 vector } m_axi_rcon_V_ARUSER { O 1 vector } m_axi_rcon_V_RVALID { I 1 bit } m_axi_rcon_V_RREADY { O 1 bit } m_axi_rcon_V_RDATA { I 64 vector } m_axi_rcon_V_RLAST { I 1 bit } m_axi_rcon_V_RID { I 1 vector } m_axi_rcon_V_RUSER { I 1 vector } m_axi_rcon_V_RRESP { I 2 vector } m_axi_rcon_V_BVALID { I 1 bit } m_axi_rcon_V_BREADY { O 1 bit } m_axi_rcon_V_BRESP { I 2 vector } m_axi_rcon_V_BID { I 1 vector } m_axi_rcon_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name rcon_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcon_V_offset \
    op interface \
    ports { rcon_V_offset { I 29 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


