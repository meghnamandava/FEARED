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
    id 46 \
    name text_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename text_V \
    op interface \
    ports { text_V_address0 { O 10 vector } text_V_ce0 { O 1 bit } text_V_we0 { O 1 bit } text_V_d0 { O 16 vector } text_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'text_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
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
    id 51 \
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
    id 52 \
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
    id 53 \
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
    id 54 \
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
    id 55 \
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
    id 56 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name sequence_out_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sequence_out_V_offset \
    op interface \
    ports { sequence_out_V_offset { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name initial_round \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_initial_round \
    op interface \
    ports { initial_round { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name round_factor \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_round_factor \
    op interface \
    ports { round_factor { I 2 vector } } \
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


