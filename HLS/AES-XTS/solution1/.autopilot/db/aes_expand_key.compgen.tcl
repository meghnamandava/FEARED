# This script segment is generated automatically by AutoPilot

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
    id 24 \
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
    id 18 \
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
    id 19 \
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
    id 20 \
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
    id 21 \
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
    id 22 \
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
    id 23 \
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


