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
    id 61 \
    name state_matrix_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state_matrix_V \
    op interface \
    ports { state_matrix_V_address0 { O 4 vector } state_matrix_V_ce0 { O 1 bit } state_matrix_V_we0 { O 1 bit } state_matrix_V_d0 { O 16 vector } state_matrix_V_q0 { I 16 vector } state_matrix_V_address1 { O 4 vector } state_matrix_V_ce1 { O 1 bit } state_matrix_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state_matrix_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name constant_matrix_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_constant_matrix_V \
    op interface \
    ports { m_axi_constant_matrix_V_AWVALID { O 1 bit } m_axi_constant_matrix_V_AWREADY { I 1 bit } m_axi_constant_matrix_V_AWADDR { O 32 vector } m_axi_constant_matrix_V_AWID { O 1 vector } m_axi_constant_matrix_V_AWLEN { O 32 vector } m_axi_constant_matrix_V_AWSIZE { O 3 vector } m_axi_constant_matrix_V_AWBURST { O 2 vector } m_axi_constant_matrix_V_AWLOCK { O 2 vector } m_axi_constant_matrix_V_AWCACHE { O 4 vector } m_axi_constant_matrix_V_AWPROT { O 3 vector } m_axi_constant_matrix_V_AWQOS { O 4 vector } m_axi_constant_matrix_V_AWREGION { O 4 vector } m_axi_constant_matrix_V_AWUSER { O 1 vector } m_axi_constant_matrix_V_WVALID { O 1 bit } m_axi_constant_matrix_V_WREADY { I 1 bit } m_axi_constant_matrix_V_WDATA { O 16 vector } m_axi_constant_matrix_V_WSTRB { O 2 vector } m_axi_constant_matrix_V_WLAST { O 1 bit } m_axi_constant_matrix_V_WID { O 1 vector } m_axi_constant_matrix_V_WUSER { O 1 vector } m_axi_constant_matrix_V_ARVALID { O 1 bit } m_axi_constant_matrix_V_ARREADY { I 1 bit } m_axi_constant_matrix_V_ARADDR { O 32 vector } m_axi_constant_matrix_V_ARID { O 1 vector } m_axi_constant_matrix_V_ARLEN { O 32 vector } m_axi_constant_matrix_V_ARSIZE { O 3 vector } m_axi_constant_matrix_V_ARBURST { O 2 vector } m_axi_constant_matrix_V_ARLOCK { O 2 vector } m_axi_constant_matrix_V_ARCACHE { O 4 vector } m_axi_constant_matrix_V_ARPROT { O 3 vector } m_axi_constant_matrix_V_ARQOS { O 4 vector } m_axi_constant_matrix_V_ARREGION { O 4 vector } m_axi_constant_matrix_V_ARUSER { O 1 vector } m_axi_constant_matrix_V_RVALID { I 1 bit } m_axi_constant_matrix_V_RREADY { O 1 bit } m_axi_constant_matrix_V_RDATA { I 16 vector } m_axi_constant_matrix_V_RLAST { I 1 bit } m_axi_constant_matrix_V_RID { I 1 vector } m_axi_constant_matrix_V_RUSER { I 1 vector } m_axi_constant_matrix_V_RRESP { I 2 vector } m_axi_constant_matrix_V_BVALID { I 1 bit } m_axi_constant_matrix_V_BREADY { O 1 bit } m_axi_constant_matrix_V_BRESP { I 2 vector } m_axi_constant_matrix_V_BID { I 1 vector } m_axi_constant_matrix_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name constant_matrix_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_constant_matrix_V_offset \
    op interface \
    ports { constant_matrix_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name multiplication_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_multiplication_V \
    op interface \
    ports { m_axi_multiplication_V_AWVALID { O 1 bit } m_axi_multiplication_V_AWREADY { I 1 bit } m_axi_multiplication_V_AWADDR { O 32 vector } m_axi_multiplication_V_AWID { O 1 vector } m_axi_multiplication_V_AWLEN { O 32 vector } m_axi_multiplication_V_AWSIZE { O 3 vector } m_axi_multiplication_V_AWBURST { O 2 vector } m_axi_multiplication_V_AWLOCK { O 2 vector } m_axi_multiplication_V_AWCACHE { O 4 vector } m_axi_multiplication_V_AWPROT { O 3 vector } m_axi_multiplication_V_AWQOS { O 4 vector } m_axi_multiplication_V_AWREGION { O 4 vector } m_axi_multiplication_V_AWUSER { O 1 vector } m_axi_multiplication_V_WVALID { O 1 bit } m_axi_multiplication_V_WREADY { I 1 bit } m_axi_multiplication_V_WDATA { O 16 vector } m_axi_multiplication_V_WSTRB { O 2 vector } m_axi_multiplication_V_WLAST { O 1 bit } m_axi_multiplication_V_WID { O 1 vector } m_axi_multiplication_V_WUSER { O 1 vector } m_axi_multiplication_V_ARVALID { O 1 bit } m_axi_multiplication_V_ARREADY { I 1 bit } m_axi_multiplication_V_ARADDR { O 32 vector } m_axi_multiplication_V_ARID { O 1 vector } m_axi_multiplication_V_ARLEN { O 32 vector } m_axi_multiplication_V_ARSIZE { O 3 vector } m_axi_multiplication_V_ARBURST { O 2 vector } m_axi_multiplication_V_ARLOCK { O 2 vector } m_axi_multiplication_V_ARCACHE { O 4 vector } m_axi_multiplication_V_ARPROT { O 3 vector } m_axi_multiplication_V_ARQOS { O 4 vector } m_axi_multiplication_V_ARREGION { O 4 vector } m_axi_multiplication_V_ARUSER { O 1 vector } m_axi_multiplication_V_RVALID { I 1 bit } m_axi_multiplication_V_RREADY { O 1 bit } m_axi_multiplication_V_RDATA { I 16 vector } m_axi_multiplication_V_RLAST { I 1 bit } m_axi_multiplication_V_RID { I 1 vector } m_axi_multiplication_V_RUSER { I 1 vector } m_axi_multiplication_V_RRESP { I 2 vector } m_axi_multiplication_V_BVALID { I 1 bit } m_axi_multiplication_V_BREADY { O 1 bit } m_axi_multiplication_V_BRESP { I 2 vector } m_axi_multiplication_V_BID { I 1 vector } m_axi_multiplication_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name multiplication_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_multiplication_V_offset \
    op interface \
    ports { multiplication_V_offset { I 31 vector } } \
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


