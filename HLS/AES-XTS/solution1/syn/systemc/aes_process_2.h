// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_process_2_HH_
#define _aes_process_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_mix_columns8.h"
#include "aes_shift_rows.h"
#include "aes_substitute_bytes.h"
#include "aes_get_round_key5.h"
#include "aes_add_round_key.h"
#include "aes_process_1_staeOg.h"

namespace ap_rtl {

struct aes_process_2 : public sc_module {
    // Port declarations 32
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > text_V_address0;
    sc_out< sc_logic > text_V_ce0;
    sc_out< sc_logic > text_V_we0;
    sc_out< sc_lv<16> > text_V_d0;
    sc_in< sc_lv<16> > text_V_q0;
    sc_in< sc_lv<6> > sequence_out_V_offset;
    sc_in< sc_lv<6> > initial_round;
    sc_in< sc_lv<2> > round_factor;
    sc_out< sc_lv<8> > expanded_key_V_address0;
    sc_out< sc_logic > expanded_key_V_ce0;
    sc_in< sc_lv<16> > expanded_key_V_q0;
    sc_out< sc_lv<8> > expanded_key_V_address1;
    sc_out< sc_logic > expanded_key_V_ce1;
    sc_in< sc_lv<16> > expanded_key_V_q1;
    sc_out< sc_lv<10> > s_boxes_V_address0;
    sc_out< sc_logic > s_boxes_V_ce0;
    sc_in< sc_lv<8> > s_boxes_V_q0;
    sc_out< sc_lv<10> > s_boxes_V_address1;
    sc_out< sc_logic > s_boxes_V_ce1;
    sc_in< sc_lv<8> > s_boxes_V_q1;
    sc_out< sc_lv<12> > multiplication_V_address0;
    sc_out< sc_logic > multiplication_V_ce0;
    sc_in< sc_lv<8> > multiplication_V_q0;
    sc_out< sc_lv<12> > multiplication_V_address1;
    sc_out< sc_logic > multiplication_V_ce1;
    sc_in< sc_lv<8> > multiplication_V_q1;


    // Module declarations
    aes_process_2(sc_module_name name);
    SC_HAS_PROCESS(aes_process_2);

    ~aes_process_2();

    sc_trace_file* mVcdFile;

    aes_process_1_staeOg* state_matrix_V_U;
    aes_process_1_staeOg* round_key_V_U;
    aes_mix_columns8* grp_aes_mix_columns8_fu_230;
    aes_shift_rows* grp_aes_shift_rows_fu_238;
    aes_substitute_bytes* grp_aes_substitute_bytes_fu_244;
    aes_get_round_key5* grp_aes_get_round_key5_fu_252;
    aes_add_round_key* grp_aes_add_round_key_fu_260;
    sc_signal< sc_lv<25> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > zext_ln180_cast_fu_274_p1;
    sc_signal< sc_lv<11> > zext_ln180_cast_reg_536;
    sc_signal< sc_lv<3> > i_3_fu_284_p2;
    sc_signal< sc_lv<3> > i_3_reg_544;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > zext_ln230_2_fu_298_p1;
    sc_signal< sc_lv<6> > zext_ln230_2_reg_549;
    sc_signal< sc_lv<1> > icmp_ln228_fu_278_p2;
    sc_signal< sc_lv<4> > zext_ln230_fu_302_p1;
    sc_signal< sc_lv<4> > zext_ln230_reg_554;
    sc_signal< sc_lv<7> > zext_ln14_fu_306_p1;
    sc_signal< sc_lv<7> > zext_ln14_reg_559;
    sc_signal< sc_lv<3> > j_fu_316_p2;
    sc_signal< sc_lv<3> > j_reg_568;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > add_ln180_fu_326_p2;
    sc_signal< sc_lv<6> > add_ln180_reg_573;
    sc_signal< sc_lv<1> > icmp_ln230_fu_310_p2;
    sc_signal< sc_lv<7> > round_fu_397_p2;
    sc_signal< sc_lv<7> > round_reg_583;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_ap_ready;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_ap_done;
    sc_signal< sc_lv<2> > select_ln26_fu_402_p3;
    sc_signal< sc_lv<2> > select_ln26_reg_588;
    sc_signal< sc_lv<1> > icmp_ln30_fu_410_p2;
    sc_signal< sc_lv<1> > icmp_ln30_reg_594;
    sc_signal< sc_lv<6> > sext_ln16_fu_415_p1;
    sc_signal< sc_lv<6> > sext_ln16_reg_598;
    sc_signal< sc_lv<6> > add_ln16_fu_418_p2;
    sc_signal< sc_lv<6> > add_ln16_reg_603;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > i_fu_429_p2;
    sc_signal< sc_lv<4> > i_reg_611;
    sc_signal< sc_lv<7> > sext_ln29_fu_435_p1;
    sc_signal< sc_lv<7> > sext_ln29_reg_616;
    sc_signal< sc_lv<1> > icmp_ln24_fu_423_p2;
    sc_signal< sc_lv<3> > column_fu_446_p2;
    sc_signal< sc_lv<3> > column_reg_624;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<5> > i_V_fu_452_p2;
    sc_signal< sc_lv<5> > i_V_reg_629;
    sc_signal< sc_lv<1> > icmp_ln242_fu_440_p2;
    sc_signal< sc_lv<6> > zext_ln244_fu_458_p1;
    sc_signal< sc_lv<6> > zext_ln244_reg_634;
    sc_signal< sc_lv<3> > row_fu_468_p2;
    sc_signal< sc_lv<3> > row_reg_642;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<11> > add_ln180_4_fu_478_p2;
    sc_signal< sc_lv<11> > add_ln180_4_reg_647;
    sc_signal< sc_lv<1> > icmp_ln244_fu_462_p2;
    sc_signal< sc_lv<5> > add_ln700_fu_505_p2;
    sc_signal< sc_lv<5> > add_ln700_reg_657;
    sc_signal< sc_lv<4> > state_matrix_V_address0;
    sc_signal< sc_logic > state_matrix_V_ce0;
    sc_signal< sc_logic > state_matrix_V_we0;
    sc_signal< sc_lv<16> > state_matrix_V_d0;
    sc_signal< sc_lv<16> > state_matrix_V_q0;
    sc_signal< sc_lv<4> > state_matrix_V_address1;
    sc_signal< sc_logic > state_matrix_V_ce1;
    sc_signal< sc_logic > state_matrix_V_we1;
    sc_signal< sc_lv<16> > state_matrix_V_d1;
    sc_signal< sc_lv<16> > state_matrix_V_q1;
    sc_signal< sc_lv<4> > round_key_V_address0;
    sc_signal< sc_logic > round_key_V_ce0;
    sc_signal< sc_logic > round_key_V_we0;
    sc_signal< sc_lv<16> > round_key_V_d0;
    sc_signal< sc_lv<16> > round_key_V_q0;
    sc_signal< sc_lv<4> > round_key_V_address1;
    sc_signal< sc_logic > round_key_V_ce1;
    sc_signal< sc_logic > round_key_V_we1;
    sc_signal< sc_lv<16> > round_key_V_d1;
    sc_signal< sc_lv<16> > round_key_V_q1;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_ap_start;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_ap_done;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_ap_idle;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_230_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_mix_columns8_fu_230_state_matrix_V_d0;
    sc_signal< sc_lv<16> > grp_aes_mix_columns8_fu_230_state_matrix_V_q0;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_230_state_matrix_V_address1;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_state_matrix_V_ce1;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_state_matrix_V_we1;
    sc_signal< sc_lv<16> > grp_aes_mix_columns8_fu_230_state_matrix_V_d1;
    sc_signal< sc_lv<16> > grp_aes_mix_columns8_fu_230_state_matrix_V_q1;
    sc_signal< sc_lv<12> > grp_aes_mix_columns8_fu_230_multiplication_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_multiplication_V_ce0;
    sc_signal< sc_lv<12> > grp_aes_mix_columns8_fu_230_multiplication_V_address1;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_multiplication_V_ce1;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_ap_start;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_ap_done;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_ap_idle;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_shift_rows_fu_238_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_shift_rows_fu_238_state_matrix_V_d0;
    sc_signal< sc_lv<4> > grp_aes_shift_rows_fu_238_state_matrix_V_address1;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_state_matrix_V_ce1;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_state_matrix_V_we1;
    sc_signal< sc_lv<16> > grp_aes_shift_rows_fu_238_state_matrix_V_d1;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_ap_start;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_ap_done;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_ap_idle;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_substitute_bytes_fu_244_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_substitute_bytes_fu_244_state_matrix_V_d0;
    sc_signal< sc_lv<4> > grp_aes_substitute_bytes_fu_244_state_matrix_V_address1;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_state_matrix_V_ce1;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_state_matrix_V_we1;
    sc_signal< sc_lv<16> > grp_aes_substitute_bytes_fu_244_state_matrix_V_d1;
    sc_signal< sc_lv<10> > grp_aes_substitute_bytes_fu_244_s_box_V_address0;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_s_box_V_ce0;
    sc_signal< sc_lv<10> > grp_aes_substitute_bytes_fu_244_s_box_V_address1;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_s_box_V_ce1;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_ap_start;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_ap_done;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_ap_idle;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_ap_ready;
    sc_signal< sc_lv<7> > grp_aes_get_round_key5_fu_252_round;
    sc_signal< sc_lv<8> > grp_aes_get_round_key5_fu_252_expanded_key_V_address0;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_expanded_key_V_ce0;
    sc_signal< sc_lv<8> > grp_aes_get_round_key5_fu_252_expanded_key_V_address1;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_expanded_key_V_ce1;
    sc_signal< sc_lv<4> > grp_aes_get_round_key5_fu_252_round_key_V_address0;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_round_key_V_ce0;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_round_key_V_we0;
    sc_signal< sc_lv<16> > grp_aes_get_round_key5_fu_252_round_key_V_d0;
    sc_signal< sc_lv<4> > grp_aes_get_round_key5_fu_252_round_key_V_address1;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_round_key_V_ce1;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_round_key_V_we1;
    sc_signal< sc_lv<16> > grp_aes_get_round_key5_fu_252_round_key_V_d1;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_ap_start;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_ap_idle;
    sc_signal< sc_lv<4> > grp_aes_add_round_key_fu_260_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_add_round_key_fu_260_state_matrix_V_d0;
    sc_signal< sc_lv<4> > grp_aes_add_round_key_fu_260_state_matrix_V_address1;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_state_matrix_V_ce1;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_state_matrix_V_we1;
    sc_signal< sc_lv<16> > grp_aes_add_round_key_fu_260_state_matrix_V_d1;
    sc_signal< sc_lv<4> > grp_aes_add_round_key_fu_260_round_key_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_round_key_matrix_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_add_round_key_fu_260_round_key_matrix_V_address1;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_round_key_matrix_V_ce1;
    sc_signal< sc_lv<3> > i_op_assign_2_reg_144;
    sc_signal< sc_lv<3> > i_op_assign_reg_155;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > round_1_reg_166;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<4> > i_0_reg_175;
    sc_signal< sc_lv<5> > p_04_0_i_reg_186;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<3> > column_0_i_reg_198;
    sc_signal< sc_lv<5> > p_04_1_i_reg_209;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<3> > row_0_i_reg_219;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_230_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_238_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_244_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_252_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_260_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<64> > zext_ln180_6_fu_355_p1;
    sc_signal< sc_lv<64> > zext_ln180_12_fu_360_p1;
    sc_signal< sc_lv<64> > zext_ln180_16_fu_500_p1;
    sc_signal< sc_lv<64> > zext_ln180_14_fu_511_p1;
    sc_signal< sc_lv<10> > tmp_fu_266_p3;
    sc_signal< sc_lv<5> > tmp_s_fu_290_p3;
    sc_signal< sc_lv<6> > zext_ln180_fu_322_p1;
    sc_signal< sc_lv<2> > trunc_ln1352_fu_331_p1;
    sc_signal< sc_lv<4> > ret_V_fu_335_p3;
    sc_signal< sc_lv<4> > ret_V_3_fu_343_p2;
    sc_signal< sc_lv<10> > tmp_5_fu_348_p3;
    sc_signal< sc_lv<2> > icmp_ln19_fu_364_p0;
    sc_signal< sc_lv<2> > shl_ln_fu_369_p1;
    sc_signal< sc_lv<2> > shl_ln24_1_fu_376_p1;
    sc_signal< sc_lv<3> > shl_ln24_1_fu_376_p3;
    sc_signal< sc_lv<6> > shl_ln_fu_369_p3;
    sc_signal< sc_lv<6> > sext_ln24_fu_383_p1;
    sc_signal< sc_lv<6> > sub_ln24_fu_387_p2;
    sc_signal< sc_lv<7> > sext_ln24_1_fu_393_p1;
    sc_signal< sc_lv<1> > icmp_ln19_fu_364_p2;
    sc_signal< sc_lv<2> > icmp_ln30_fu_410_p0;
    sc_signal< sc_lv<2> > sext_ln16_fu_415_p0;
    sc_signal< sc_lv<11> > zext_ln180_13_fu_474_p1;
    sc_signal< sc_lv<5> > tmp_6_fu_483_p3;
    sc_signal< sc_lv<6> > zext_ln180_15_fu_491_p1;
    sc_signal< sc_lv<6> > add_ln180_5_fu_495_p2;
    sc_signal< sc_lv<25> > ap_NS_fsm;
    sc_signal< bool > ap_block_state9_on_subcall_done;
    sc_signal< bool > ap_block_state15_on_subcall_done;
    sc_signal< bool > ap_block_state18_on_subcall_done;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<25> ap_ST_fsm_state1;
    static const sc_lv<25> ap_ST_fsm_state2;
    static const sc_lv<25> ap_ST_fsm_state3;
    static const sc_lv<25> ap_ST_fsm_state4;
    static const sc_lv<25> ap_ST_fsm_state5;
    static const sc_lv<25> ap_ST_fsm_state6;
    static const sc_lv<25> ap_ST_fsm_state7;
    static const sc_lv<25> ap_ST_fsm_state8;
    static const sc_lv<25> ap_ST_fsm_state9;
    static const sc_lv<25> ap_ST_fsm_state10;
    static const sc_lv<25> ap_ST_fsm_state11;
    static const sc_lv<25> ap_ST_fsm_state12;
    static const sc_lv<25> ap_ST_fsm_state13;
    static const sc_lv<25> ap_ST_fsm_state14;
    static const sc_lv<25> ap_ST_fsm_state15;
    static const sc_lv<25> ap_ST_fsm_state16;
    static const sc_lv<25> ap_ST_fsm_state17;
    static const sc_lv<25> ap_ST_fsm_state18;
    static const sc_lv<25> ap_ST_fsm_state19;
    static const sc_lv<25> ap_ST_fsm_state20;
    static const sc_lv<25> ap_ST_fsm_state21;
    static const sc_lv<25> ap_ST_fsm_state22;
    static const sc_lv<25> ap_ST_fsm_state23;
    static const sc_lv<25> ap_ST_fsm_state24;
    static const sc_lv<25> ap_ST_fsm_state25;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<5> ap_const_lv5_1;
    static const bool ap_const_boolean_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln16_fu_418_p2();
    void thread_add_ln180_4_fu_478_p2();
    void thread_add_ln180_5_fu_495_p2();
    void thread_add_ln180_fu_326_p2();
    void thread_add_ln700_fu_505_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state15_on_subcall_done();
    void thread_ap_block_state18_on_subcall_done();
    void thread_ap_block_state9_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_column_fu_446_p2();
    void thread_expanded_key_V_address0();
    void thread_expanded_key_V_address1();
    void thread_expanded_key_V_ce0();
    void thread_expanded_key_V_ce1();
    void thread_grp_aes_add_round_key_fu_260_ap_start();
    void thread_grp_aes_get_round_key5_fu_252_ap_start();
    void thread_grp_aes_get_round_key5_fu_252_round();
    void thread_grp_aes_mix_columns8_fu_230_ap_start();
    void thread_grp_aes_mix_columns8_fu_230_state_matrix_V_q0();
    void thread_grp_aes_mix_columns8_fu_230_state_matrix_V_q1();
    void thread_grp_aes_shift_rows_fu_238_ap_start();
    void thread_grp_aes_substitute_bytes_fu_244_ap_start();
    void thread_i_3_fu_284_p2();
    void thread_i_V_fu_452_p2();
    void thread_i_fu_429_p2();
    void thread_icmp_ln19_fu_364_p0();
    void thread_icmp_ln19_fu_364_p2();
    void thread_icmp_ln228_fu_278_p2();
    void thread_icmp_ln230_fu_310_p2();
    void thread_icmp_ln242_fu_440_p2();
    void thread_icmp_ln244_fu_462_p2();
    void thread_icmp_ln24_fu_423_p2();
    void thread_icmp_ln30_fu_410_p0();
    void thread_icmp_ln30_fu_410_p2();
    void thread_j_fu_316_p2();
    void thread_multiplication_V_address0();
    void thread_multiplication_V_address1();
    void thread_multiplication_V_ce0();
    void thread_multiplication_V_ce1();
    void thread_ret_V_3_fu_343_p2();
    void thread_ret_V_fu_335_p3();
    void thread_round_fu_397_p2();
    void thread_round_key_V_address0();
    void thread_round_key_V_address1();
    void thread_round_key_V_ce0();
    void thread_round_key_V_ce1();
    void thread_round_key_V_d0();
    void thread_round_key_V_d1();
    void thread_round_key_V_we0();
    void thread_round_key_V_we1();
    void thread_row_fu_468_p2();
    void thread_s_boxes_V_address0();
    void thread_s_boxes_V_address1();
    void thread_s_boxes_V_ce0();
    void thread_s_boxes_V_ce1();
    void thread_select_ln26_fu_402_p3();
    void thread_sext_ln16_fu_415_p0();
    void thread_sext_ln16_fu_415_p1();
    void thread_sext_ln24_1_fu_393_p1();
    void thread_sext_ln24_fu_383_p1();
    void thread_sext_ln29_fu_435_p1();
    void thread_shl_ln24_1_fu_376_p1();
    void thread_shl_ln24_1_fu_376_p3();
    void thread_shl_ln_fu_369_p1();
    void thread_shl_ln_fu_369_p3();
    void thread_state_matrix_V_address0();
    void thread_state_matrix_V_address1();
    void thread_state_matrix_V_ce0();
    void thread_state_matrix_V_ce1();
    void thread_state_matrix_V_d0();
    void thread_state_matrix_V_d1();
    void thread_state_matrix_V_we0();
    void thread_state_matrix_V_we1();
    void thread_sub_ln24_fu_387_p2();
    void thread_text_V_address0();
    void thread_text_V_ce0();
    void thread_text_V_d0();
    void thread_text_V_we0();
    void thread_tmp_5_fu_348_p3();
    void thread_tmp_6_fu_483_p3();
    void thread_tmp_fu_266_p3();
    void thread_tmp_s_fu_290_p3();
    void thread_trunc_ln1352_fu_331_p1();
    void thread_zext_ln14_fu_306_p1();
    void thread_zext_ln180_12_fu_360_p1();
    void thread_zext_ln180_13_fu_474_p1();
    void thread_zext_ln180_14_fu_511_p1();
    void thread_zext_ln180_15_fu_491_p1();
    void thread_zext_ln180_16_fu_500_p1();
    void thread_zext_ln180_6_fu_355_p1();
    void thread_zext_ln180_cast_fu_274_p1();
    void thread_zext_ln180_fu_322_p1();
    void thread_zext_ln230_2_fu_298_p1();
    void thread_zext_ln230_fu_302_p1();
    void thread_zext_ln244_fu_458_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
