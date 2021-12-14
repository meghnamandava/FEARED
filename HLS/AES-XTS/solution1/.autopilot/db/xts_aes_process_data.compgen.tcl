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
    id 72 \
    name tweak_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tweak_V \
    op interface \
    ports { tweak_V_address0 { O 4 vector } tweak_V_ce0 { O 1 bit } tweak_V_we0 { O 1 bit } tweak_V_d0 { O 16 vector } tweak_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tweak_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name s_boxes_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename s_boxes_V \
    op interface \
    ports { s_boxes_V_address0 { O 10 vector } s_boxes_V_ce0 { O 1 bit } s_boxes_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_boxes_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name mix_column_constant_matrices_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mix_column_constant_matrices_0_V \
    op interface \
    ports { mix_column_constant_matrices_0_V_address0 { O 4 vector } mix_column_constant_matrices_0_V_ce0 { O 1 bit } mix_column_constant_matrices_0_V_q0 { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mix_column_constant_matrices_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name mix_column_constant_matrices_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mix_column_constant_matrices_1_V \
    op interface \
    ports { mix_column_constant_matrices_1_V_address0 { O 4 vector } mix_column_constant_matrices_1_V_ce0 { O 1 bit } mix_column_constant_matrices_1_V_q0 { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mix_column_constant_matrices_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name mix_column_constant_matrices_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mix_column_constant_matrices_2_V \
    op interface \
    ports { mix_column_constant_matrices_2_V_address0 { O 4 vector } mix_column_constant_matrices_2_V_ce0 { O 1 bit } mix_column_constant_matrices_2_V_q0 { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mix_column_constant_matrices_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name mix_column_constant_matrices_3_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mix_column_constant_matrices_3_V \
    op interface \
    ports { mix_column_constant_matrices_3_V_address0 { O 4 vector } mix_column_constant_matrices_3_V_ce0 { O 1 bit } mix_column_constant_matrices_3_V_q0 { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mix_column_constant_matrices_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
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
    id 80 \
    name blocks_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename blocks_V \
    op interface \
    ports { blocks_V_address0 { O 10 vector } blocks_V_ce0 { O 1 bit } blocks_V_we0 { O 1 bit } blocks_V_d0 { O 16 vector } blocks_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'blocks_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name data_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V \
    op interface \
    ports { m_axi_data_V_AWVALID { O 1 bit } m_axi_data_V_AWREADY { I 1 bit } m_axi_data_V_AWADDR { O 32 vector } m_axi_data_V_AWID { O 1 vector } m_axi_data_V_AWLEN { O 32 vector } m_axi_data_V_AWSIZE { O 3 vector } m_axi_data_V_AWBURST { O 2 vector } m_axi_data_V_AWLOCK { O 2 vector } m_axi_data_V_AWCACHE { O 4 vector } m_axi_data_V_AWPROT { O 3 vector } m_axi_data_V_AWQOS { O 4 vector } m_axi_data_V_AWREGION { O 4 vector } m_axi_data_V_AWUSER { O 1 vector } m_axi_data_V_WVALID { O 1 bit } m_axi_data_V_WREADY { I 1 bit } m_axi_data_V_WDATA { O 16 vector } m_axi_data_V_WSTRB { O 2 vector } m_axi_data_V_WLAST { O 1 bit } m_axi_data_V_WID { O 1 vector } m_axi_data_V_WUSER { O 1 vector } m_axi_data_V_ARVALID { O 1 bit } m_axi_data_V_ARREADY { I 1 bit } m_axi_data_V_ARADDR { O 32 vector } m_axi_data_V_ARID { O 1 vector } m_axi_data_V_ARLEN { O 32 vector } m_axi_data_V_ARSIZE { O 3 vector } m_axi_data_V_ARBURST { O 2 vector } m_axi_data_V_ARLOCK { O 2 vector } m_axi_data_V_ARCACHE { O 4 vector } m_axi_data_V_ARPROT { O 3 vector } m_axi_data_V_ARQOS { O 4 vector } m_axi_data_V_ARREGION { O 4 vector } m_axi_data_V_ARUSER { O 1 vector } m_axi_data_V_RVALID { I 1 bit } m_axi_data_V_RREADY { O 1 bit } m_axi_data_V_RDATA { I 16 vector } m_axi_data_V_RLAST { I 1 bit } m_axi_data_V_RID { I 1 vector } m_axi_data_V_RUSER { I 1 vector } m_axi_data_V_RRESP { I 2 vector } m_axi_data_V_BVALID { I 1 bit } m_axi_data_V_BREADY { O 1 bit } m_axi_data_V_BRESP { I 2 vector } m_axi_data_V_BID { I 1 vector } m_axi_data_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name data_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_offset \
    op interface \
    ports { data_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name num_blocks_orig_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_num_blocks_orig_V \
    op interface \
    ports { num_blocks_orig_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
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


