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
    id 90 \
    name block_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_V \
    op interface \
    ports { block_V_address0 { O 10 vector } block_V_ce0 { O 1 bit } block_V_we0 { O 1 bit } block_V_d0 { O 16 vector } block_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 92 \
    name tweak_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tweak_V \
    op interface \
    ports { tweak_V_address0 { O 4 vector } tweak_V_ce0 { O 1 bit } tweak_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tweak_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name expanded_key_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename expanded_key_V \
    op interface \
    ports { expanded_key_V_address0 { O 8 vector } expanded_key_V_ce0 { O 1 bit } expanded_key_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'expanded_key_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name block_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_V_offset \
    op interface \
    ports { block_V_offset { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name mode_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mode_V \
    op interface \
    ports { mode_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name s_boxes_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_boxes_V \
    op interface \
    ports { m_axi_s_boxes_V_AWVALID { O 1 bit } m_axi_s_boxes_V_AWREADY { I 1 bit } m_axi_s_boxes_V_AWADDR { O 32 vector } m_axi_s_boxes_V_AWID { O 1 vector } m_axi_s_boxes_V_AWLEN { O 32 vector } m_axi_s_boxes_V_AWSIZE { O 3 vector } m_axi_s_boxes_V_AWBURST { O 2 vector } m_axi_s_boxes_V_AWLOCK { O 2 vector } m_axi_s_boxes_V_AWCACHE { O 4 vector } m_axi_s_boxes_V_AWPROT { O 3 vector } m_axi_s_boxes_V_AWQOS { O 4 vector } m_axi_s_boxes_V_AWREGION { O 4 vector } m_axi_s_boxes_V_AWUSER { O 1 vector } m_axi_s_boxes_V_WVALID { O 1 bit } m_axi_s_boxes_V_WREADY { I 1 bit } m_axi_s_boxes_V_WDATA { O 8 vector } m_axi_s_boxes_V_WSTRB { O 1 vector } m_axi_s_boxes_V_WLAST { O 1 bit } m_axi_s_boxes_V_WID { O 1 vector } m_axi_s_boxes_V_WUSER { O 1 vector } m_axi_s_boxes_V_ARVALID { O 1 bit } m_axi_s_boxes_V_ARREADY { I 1 bit } m_axi_s_boxes_V_ARADDR { O 32 vector } m_axi_s_boxes_V_ARID { O 1 vector } m_axi_s_boxes_V_ARLEN { O 32 vector } m_axi_s_boxes_V_ARSIZE { O 3 vector } m_axi_s_boxes_V_ARBURST { O 2 vector } m_axi_s_boxes_V_ARLOCK { O 2 vector } m_axi_s_boxes_V_ARCACHE { O 4 vector } m_axi_s_boxes_V_ARPROT { O 3 vector } m_axi_s_boxes_V_ARQOS { O 4 vector } m_axi_s_boxes_V_ARREGION { O 4 vector } m_axi_s_boxes_V_ARUSER { O 1 vector } m_axi_s_boxes_V_RVALID { I 1 bit } m_axi_s_boxes_V_RREADY { O 1 bit } m_axi_s_boxes_V_RDATA { I 8 vector } m_axi_s_boxes_V_RLAST { I 1 bit } m_axi_s_boxes_V_RID { I 1 vector } m_axi_s_boxes_V_RUSER { I 1 vector } m_axi_s_boxes_V_RRESP { I 2 vector } m_axi_s_boxes_V_BVALID { I 1 bit } m_axi_s_boxes_V_BREADY { O 1 bit } m_axi_s_boxes_V_BRESP { I 2 vector } m_axi_s_boxes_V_BID { I 1 vector } m_axi_s_boxes_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name s_boxes_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_boxes_V_offset \
    op interface \
    ports { s_boxes_V_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name mix_column_constant_matrices_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mix_column_constant_matrices_V \
    op interface \
    ports { m_axi_mix_column_constant_matrices_V_AWVALID { O 1 bit } m_axi_mix_column_constant_matrices_V_AWREADY { I 1 bit } m_axi_mix_column_constant_matrices_V_AWADDR { O 32 vector } m_axi_mix_column_constant_matrices_V_AWID { O 1 vector } m_axi_mix_column_constant_matrices_V_AWLEN { O 32 vector } m_axi_mix_column_constant_matrices_V_AWSIZE { O 3 vector } m_axi_mix_column_constant_matrices_V_AWBURST { O 2 vector } m_axi_mix_column_constant_matrices_V_AWLOCK { O 2 vector } m_axi_mix_column_constant_matrices_V_AWCACHE { O 4 vector } m_axi_mix_column_constant_matrices_V_AWPROT { O 3 vector } m_axi_mix_column_constant_matrices_V_AWQOS { O 4 vector } m_axi_mix_column_constant_matrices_V_AWREGION { O 4 vector } m_axi_mix_column_constant_matrices_V_AWUSER { O 1 vector } m_axi_mix_column_constant_matrices_V_WVALID { O 1 bit } m_axi_mix_column_constant_matrices_V_WREADY { I 1 bit } m_axi_mix_column_constant_matrices_V_WDATA { O 16 vector } m_axi_mix_column_constant_matrices_V_WSTRB { O 2 vector } m_axi_mix_column_constant_matrices_V_WLAST { O 1 bit } m_axi_mix_column_constant_matrices_V_WID { O 1 vector } m_axi_mix_column_constant_matrices_V_WUSER { O 1 vector } m_axi_mix_column_constant_matrices_V_ARVALID { O 1 bit } m_axi_mix_column_constant_matrices_V_ARREADY { I 1 bit } m_axi_mix_column_constant_matrices_V_ARADDR { O 32 vector } m_axi_mix_column_constant_matrices_V_ARID { O 1 vector } m_axi_mix_column_constant_matrices_V_ARLEN { O 32 vector } m_axi_mix_column_constant_matrices_V_ARSIZE { O 3 vector } m_axi_mix_column_constant_matrices_V_ARBURST { O 2 vector } m_axi_mix_column_constant_matrices_V_ARLOCK { O 2 vector } m_axi_mix_column_constant_matrices_V_ARCACHE { O 4 vector } m_axi_mix_column_constant_matrices_V_ARPROT { O 3 vector } m_axi_mix_column_constant_matrices_V_ARQOS { O 4 vector } m_axi_mix_column_constant_matrices_V_ARREGION { O 4 vector } m_axi_mix_column_constant_matrices_V_ARUSER { O 1 vector } m_axi_mix_column_constant_matrices_V_RVALID { I 1 bit } m_axi_mix_column_constant_matrices_V_RREADY { O 1 bit } m_axi_mix_column_constant_matrices_V_RDATA { I 16 vector } m_axi_mix_column_constant_matrices_V_RLAST { I 1 bit } m_axi_mix_column_constant_matrices_V_RID { I 1 vector } m_axi_mix_column_constant_matrices_V_RUSER { I 1 vector } m_axi_mix_column_constant_matrices_V_RRESP { I 2 vector } m_axi_mix_column_constant_matrices_V_BVALID { I 1 bit } m_axi_mix_column_constant_matrices_V_BREADY { O 1 bit } m_axi_mix_column_constant_matrices_V_BRESP { I 2 vector } m_axi_mix_column_constant_matrices_V_BID { I 1 vector } m_axi_mix_column_constant_matrices_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name mix_column_constant_matrices_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mix_column_constant_matrices_V_offset \
    op interface \
    ports { mix_column_constant_matrices_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
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
    id 100 \
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


