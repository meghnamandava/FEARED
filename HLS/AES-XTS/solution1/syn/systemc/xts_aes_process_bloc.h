// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _xts_aes_process_bloc_HH_
#define _xts_aes_process_bloc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_process_2.h"

namespace ap_rtl {

struct xts_aes_process_bloc : public sc_module {
    // Port declarations 40
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > block_V_address0;
    sc_out< sc_logic > block_V_ce0;
    sc_out< sc_logic > block_V_we0;
    sc_out< sc_lv<16> > block_V_d0;
    sc_in< sc_lv<16> > block_V_q0;
    sc_in< sc_lv<7> > block_V_offset;
    sc_out< sc_lv<4> > tweak_V_address0;
    sc_out< sc_logic > tweak_V_ce0;
    sc_in< sc_lv<16> > tweak_V_q0;
    sc_in< sc_lv<16> > mode_V;
    sc_out< sc_lv<8> > expanded_key_V_address0;
    sc_out< sc_logic > expanded_key_V_ce0;
    sc_in< sc_lv<16> > expanded_key_V_q0;
    sc_out< sc_lv<10> > s_boxes_V_address0;
    sc_out< sc_logic > s_boxes_V_ce0;
    sc_in< sc_lv<8> > s_boxes_V_q0;
    sc_out< sc_lv<4> > mix_column_constant_matrices_0_V_address0;
    sc_out< sc_logic > mix_column_constant_matrices_0_V_ce0;
    sc_in< sc_lv<6> > mix_column_constant_matrices_0_V_q0;
    sc_out< sc_lv<4> > mix_column_constant_matrices_1_V_address0;
    sc_out< sc_logic > mix_column_constant_matrices_1_V_ce0;
    sc_in< sc_lv<6> > mix_column_constant_matrices_1_V_q0;
    sc_out< sc_lv<4> > mix_column_constant_matrices_2_V_address0;
    sc_out< sc_logic > mix_column_constant_matrices_2_V_ce0;
    sc_in< sc_lv<6> > mix_column_constant_matrices_2_V_q0;
    sc_out< sc_lv<4> > mix_column_constant_matrices_3_V_address0;
    sc_out< sc_logic > mix_column_constant_matrices_3_V_ce0;
    sc_in< sc_lv<6> > mix_column_constant_matrices_3_V_q0;
    sc_out< sc_lv<12> > multiplication_V_address0;
    sc_out< sc_logic > multiplication_V_ce0;
    sc_in< sc_lv<8> > multiplication_V_q0;
    sc_out< sc_lv<12> > multiplication_V_address1;
    sc_out< sc_logic > multiplication_V_ce1;
    sc_in< sc_lv<8> > multiplication_V_q1;


    // Module declarations
    xts_aes_process_bloc(sc_module_name name);
    SC_HAS_PROCESS(xts_aes_process_bloc);

    ~xts_aes_process_bloc();

    sc_trace_file* mVcdFile;

    aes_process_2* grp_aes_process_2_fu_130;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > zext_ln272_fu_172_p1;
    sc_signal< sc_lv<12> > zext_ln272_reg_257;
    sc_signal< sc_lv<5> > i_fu_182_p2;
    sc_signal< sc_lv<5> > i_reg_266;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > block_V_addr_reg_271;
    sc_signal< sc_lv<1> > icmp_ln274_fu_176_p2;
    sc_signal< sc_lv<1> > icmp_ln879_fu_207_p2;
    sc_signal< sc_lv<1> > icmp_ln879_reg_281;
    sc_signal< sc_lv<6> > empty_8_fu_212_p1;
    sc_signal< sc_lv<6> > empty_8_reg_285;
    sc_signal< sc_lv<5> > i_2_fu_222_p2;
    sc_signal< sc_lv<5> > i_2_reg_293;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<10> > block_V_addr_1_reg_298;
    sc_signal< sc_lv<1> > icmp_ln288_fu_216_p2;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_ap_start;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_ap_done;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_ap_idle;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_ap_ready;
    sc_signal< sc_lv<10> > grp_aes_process_2_fu_130_text_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_text_V_ce0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_text_V_we0;
    sc_signal< sc_lv<16> > grp_aes_process_2_fu_130_text_V_d0;
    sc_signal< sc_lv<6> > grp_aes_process_2_fu_130_initial_round;
    sc_signal< sc_lv<2> > grp_aes_process_2_fu_130_round_factor;
    sc_signal< sc_lv<8> > grp_aes_process_2_fu_130_expanded_key_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_expanded_key_V_ce0;
    sc_signal< sc_lv<10> > grp_aes_process_2_fu_130_s_boxes_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_s_boxes_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_process_2_fu_130_mix_column_constant_matrices_0_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_mix_column_constant_matrices_0_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_process_2_fu_130_mix_column_constant_matrices_1_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_mix_column_constant_matrices_1_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_process_2_fu_130_mix_column_constant_matrices_2_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_mix_column_constant_matrices_2_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_process_2_fu_130_mix_column_constant_matrices_3_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_mix_column_constant_matrices_3_V_ce0;
    sc_signal< sc_lv<12> > grp_aes_process_2_fu_130_multiplication_V_address0;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_multiplication_V_ce0;
    sc_signal< sc_lv<12> > grp_aes_process_2_fu_130_multiplication_V_address1;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_multiplication_V_ce1;
    sc_signal< sc_lv<5> > i_0_reg_108;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > i1_0_reg_119;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< bool > ap_block_state4_on_subcall_done;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_aes_process_2_fu_130_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln1357_1_fu_202_p1;
    sc_signal< sc_lv<64> > zext_ln276_fu_188_p1;
    sc_signal< sc_lv<64> > zext_ln1357_3_fu_242_p1;
    sc_signal< sc_lv<64> > zext_ln290_fu_228_p1;
    sc_signal< sc_lv<16> > grp_fu_157_p2;
    sc_signal< sc_lv<11> > tmp_fu_164_p3;
    sc_signal< sc_lv<12> > zext_ln1357_fu_193_p1;
    sc_signal< sc_lv<12> > add_ln1357_fu_197_p2;
    sc_signal< sc_lv<12> > zext_ln1357_2_fu_233_p1;
    sc_signal< sc_lv<12> > add_ln1357_1_fu_237_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<6> ap_const_lv6_E;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln1357_1_fu_237_p2();
    void thread_add_ln1357_fu_197_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_state4_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_block_V_address0();
    void thread_block_V_ce0();
    void thread_block_V_d0();
    void thread_block_V_we0();
    void thread_empty_8_fu_212_p1();
    void thread_expanded_key_V_address0();
    void thread_expanded_key_V_ce0();
    void thread_grp_aes_process_2_fu_130_ap_start();
    void thread_grp_aes_process_2_fu_130_initial_round();
    void thread_grp_aes_process_2_fu_130_round_factor();
    void thread_grp_fu_157_p2();
    void thread_i_2_fu_222_p2();
    void thread_i_fu_182_p2();
    void thread_icmp_ln274_fu_176_p2();
    void thread_icmp_ln288_fu_216_p2();
    void thread_icmp_ln879_fu_207_p2();
    void thread_mix_column_constant_matrices_0_V_address0();
    void thread_mix_column_constant_matrices_0_V_ce0();
    void thread_mix_column_constant_matrices_1_V_address0();
    void thread_mix_column_constant_matrices_1_V_ce0();
    void thread_mix_column_constant_matrices_2_V_address0();
    void thread_mix_column_constant_matrices_2_V_ce0();
    void thread_mix_column_constant_matrices_3_V_address0();
    void thread_mix_column_constant_matrices_3_V_ce0();
    void thread_multiplication_V_address0();
    void thread_multiplication_V_address1();
    void thread_multiplication_V_ce0();
    void thread_multiplication_V_ce1();
    void thread_s_boxes_V_address0();
    void thread_s_boxes_V_ce0();
    void thread_tmp_fu_164_p3();
    void thread_tweak_V_address0();
    void thread_tweak_V_ce0();
    void thread_zext_ln1357_1_fu_202_p1();
    void thread_zext_ln1357_2_fu_233_p1();
    void thread_zext_ln1357_3_fu_242_p1();
    void thread_zext_ln1357_fu_193_p1();
    void thread_zext_ln272_fu_172_p1();
    void thread_zext_ln276_fu_188_p1();
    void thread_zext_ln290_fu_228_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
