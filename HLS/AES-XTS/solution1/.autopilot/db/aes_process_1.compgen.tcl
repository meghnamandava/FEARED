# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 46
set hasByteEnable 0
set MemName aes_process_1_staeOg
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 16
set AddrRange 16
set AddrWd 4
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
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
    id 49 \
    name expanded_key_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename expanded_key_V \
    op interface \
    ports { expanded_key_V_address0 { O 8 vector } expanded_key_V_ce0 { O 1 bit } expanded_key_V_q0 { I 16 vector } expanded_key_V_address1 { O 8 vector } expanded_key_V_ce1 { O 1 bit } expanded_key_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'expanded_key_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name s_boxes_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename s_boxes_V \
    op interface \
    ports { s_boxes_V_address0 { O 10 vector } s_boxes_V_ce0 { O 1 bit } s_boxes_V_q0 { I 8 vector } s_boxes_V_address1 { O 10 vector } s_boxes_V_ce1 { O 1 bit } s_boxes_V_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_boxes_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name multiplication_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename multiplication_V \
    op interface \
    ports { multiplication_V_address0 { O 12 vector } multiplication_V_ce0 { O 1 bit } multiplication_V_q0 { I 8 vector } multiplication_V_address1 { O 12 vector } multiplication_V_ce1 { O 1 bit } multiplication_V_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'multiplication_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name sequence_out_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename sequence_out_V \
    op interface \
    ports { sequence_out_V_address0 { O 4 vector } sequence_out_V_ce0 { O 1 bit } sequence_out_V_we0 { O 1 bit } sequence_out_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sequence_out_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name text_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_text_V \
    op interface \
    ports { m_axi_text_V_AWVALID { O 1 bit } m_axi_text_V_AWREADY { I 1 bit } m_axi_text_V_AWADDR { O 32 vector } m_axi_text_V_AWID { O 1 vector } m_axi_text_V_AWLEN { O 32 vector } m_axi_text_V_AWSIZE { O 3 vector } m_axi_text_V_AWBURST { O 2 vector } m_axi_text_V_AWLOCK { O 2 vector } m_axi_text_V_AWCACHE { O 4 vector } m_axi_text_V_AWPROT { O 3 vector } m_axi_text_V_AWQOS { O 4 vector } m_axi_text_V_AWREGION { O 4 vector } m_axi_text_V_AWUSER { O 1 vector } m_axi_text_V_WVALID { O 1 bit } m_axi_text_V_WREADY { I 1 bit } m_axi_text_V_WDATA { O 16 vector } m_axi_text_V_WSTRB { O 2 vector } m_axi_text_V_WLAST { O 1 bit } m_axi_text_V_WID { O 1 vector } m_axi_text_V_WUSER { O 1 vector } m_axi_text_V_ARVALID { O 1 bit } m_axi_text_V_ARREADY { I 1 bit } m_axi_text_V_ARADDR { O 32 vector } m_axi_text_V_ARID { O 1 vector } m_axi_text_V_ARLEN { O 32 vector } m_axi_text_V_ARSIZE { O 3 vector } m_axi_text_V_ARBURST { O 2 vector } m_axi_text_V_ARLOCK { O 2 vector } m_axi_text_V_ARCACHE { O 4 vector } m_axi_text_V_ARPROT { O 3 vector } m_axi_text_V_ARQOS { O 4 vector } m_axi_text_V_ARREGION { O 4 vector } m_axi_text_V_ARUSER { O 1 vector } m_axi_text_V_RVALID { I 1 bit } m_axi_text_V_RREADY { O 1 bit } m_axi_text_V_RDATA { I 16 vector } m_axi_text_V_RLAST { I 1 bit } m_axi_text_V_RID { I 1 vector } m_axi_text_V_RUSER { I 1 vector } m_axi_text_V_RRESP { I 2 vector } m_axi_text_V_BVALID { I 1 bit } m_axi_text_V_BREADY { O 1 bit } m_axi_text_V_BRESP { I 2 vector } m_axi_text_V_BID { I 1 vector } m_axi_text_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name text_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_text_V_offset \
    op interface \
    ports { text_V_offset { I 31 vector } } \
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


