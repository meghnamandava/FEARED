// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_shift_rows_HH_
#define _aes_shift_rows_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct aes_shift_rows : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > state_matrix_V_address0;
    sc_out< sc_logic > state_matrix_V_ce0;
    sc_out< sc_logic > state_matrix_V_we0;
    sc_out< sc_lv<16> > state_matrix_V_d0;
    sc_in< sc_lv<16> > state_matrix_V_q0;
    sc_out< sc_lv<4> > state_matrix_V_address1;
    sc_out< sc_logic > state_matrix_V_ce1;
    sc_out< sc_logic > state_matrix_V_we1;
    sc_out< sc_lv<16> > state_matrix_V_d1;
    sc_in< sc_lv<16> > state_matrix_V_q1;
    sc_in< sc_lv<2> > round_factor;


    // Module declarations
    aes_shift_rows(sc_module_name name);
    SC_HAS_PROCESS(aes_shift_rows);

    ~aes_shift_rows();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > icmp_ln65_fu_625_p2;
    sc_signal< sc_lv<1> > icmp_ln65_reg_860;
    sc_signal< sc_lv<6> > zext_ln180_4_fu_650_p1;
    sc_signal< sc_lv<6> > zext_ln180_4_reg_867;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln62_fu_631_p2;
    sc_signal< sc_lv<4> > state_matrix_V_addr_5_reg_873;
    sc_signal< sc_lv<4> > state_matrix_V_addr_6_reg_878;
    sc_signal< sc_lv<4> > state_matrix_V_addr_7_reg_883;
    sc_signal< sc_lv<4> > state_matrix_V_addr_8_reg_888;
    sc_signal< sc_lv<3> > sub_ln82_fu_699_p2;
    sc_signal< sc_lv<3> > sub_ln82_reg_893;
    sc_signal< sc_lv<2> > idx_subscript3_fu_715_p2;
    sc_signal< sc_lv<2> > idx_subscript3_reg_901;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln80_fu_709_p2;
    sc_signal< sc_lv<2> > trunc_ln87_fu_740_p1;
    sc_signal< sc_lv<2> > trunc_ln87_reg_911;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<2> > idx_subscript4_fu_750_p2;
    sc_signal< sc_lv<2> > idx_subscript4_reg_926;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln85_fu_744_p2;
    sc_signal< sc_lv<2> > add_ln180_fu_769_p2;
    sc_signal< sc_lv<2> > add_ln180_reg_936;
    sc_signal< sc_lv<2> > idx_subscript2_fu_784_p2;
    sc_signal< sc_lv<2> > idx_subscript2_reg_943;
    sc_signal< sc_lv<1> > icmp_ln72_fu_778_p2;
    sc_signal< sc_lv<2> > sub_ln180_fu_803_p2;
    sc_signal< sc_lv<2> > sub_ln180_reg_953;
    sc_signal< sc_lv<3> > row_index_fu_808_p2;
    sc_signal< sc_lv<3> > row_index_reg_957;
    sc_signal< sc_lv<2> > add_ln62_fu_814_p2;
    sc_signal< sc_lv<2> > add_ln62_reg_962;
    sc_signal< sc_lv<2> > idx_subscript_fu_830_p2;
    sc_signal< sc_lv<2> > idx_subscript_reg_970;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln67_fu_824_p2;
    sc_signal< sc_lv<2> > trunc_ln74_fu_856_p1;
    sc_signal< sc_lv<2> > trunc_ln74_reg_980;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<16> > temp_row_V_3_0_reg_133;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<16> > temp_row_V_2_0_reg_145;
    sc_signal< sc_lv<16> > temp_row_V_1_9_reg_381;
    sc_signal< sc_lv<16> > temp_row_V_1_0_reg_157;
    sc_signal< sc_lv<16> > temp_row_V_0_5_reg_395;
    sc_signal< sc_lv<16> > temp_row_V_0_0_reg_169;
    sc_signal< sc_lv<2> > indvars_iv20_reg_181;
    sc_signal< sc_lv<3> > indvars_iv17_reg_193;
    sc_signal< sc_lv<16> > temp_row_V_2_5_reg_205;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<16> > temp_row_V_1_5_reg_216;
    sc_signal< sc_lv<16> > temp_row_V_0_3_reg_227;
    sc_signal< sc_lv<2> > idx_subscript3_0_reg_238;
    sc_signal< sc_lv<16> > temp_row_V_2_5_be_reg_250;
    sc_signal< sc_lv<16> > temp_row_V_1_5_be_reg_265;
    sc_signal< sc_lv<16> > temp_row_V_0_3_be_reg_280;
    sc_signal< sc_lv<16> > temp_row_V_3_3_reg_295;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_3_3_be_phi_fu_412_p6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<16> > temp_row_V_2_7_reg_306;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_2_7_be_phi_fu_428_p6;
    sc_signal< sc_lv<16> > temp_row_V_1_7_reg_317;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_1_7_be_phi_fu_444_p6;
    sc_signal< sc_lv<2> > idx_subscript4_0_reg_328;
    sc_signal< sc_lv<16> > temp_row_V_3_1_reg_339;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_3_1_be_phi_fu_553_p6;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<16> > temp_row_V_2_3_reg_350;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_2_3_be_phi_fu_569_p6;
    sc_signal< sc_lv<16> > temp_row_V_1_3_reg_360;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_1_3_be_phi_fu_585_p6;
    sc_signal< sc_lv<2> > idx_subscript2_0_reg_370;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_1_9_phi_fu_385_p4;
    sc_signal< sc_lv<16> > ap_phi_mux_temp_row_V_0_5_phi_fu_399_p4;
    sc_signal< sc_lv<16> > temp_row_V_0_1_reg_480;
    sc_signal< sc_lv<16> > temp_row_V_2_1_reg_456;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<16> > temp_row_V_1_1_reg_468;
    sc_signal< sc_lv<2> > idx_subscript_0_reg_492;
    sc_signal< sc_lv<16> > temp_row_V_2_1_be_reg_504;
    sc_signal< sc_lv<16> > temp_row_V_1_1_be_reg_519;
    sc_signal< sc_lv<16> > temp_row_V_0_1_be_reg_534;
    sc_signal< sc_lv<16> > temp_row_V_3_5_reg_597;
    sc_signal< sc_lv<16> > temp_row_V_2_9_reg_611;
    sc_signal< sc_lv<64> > zext_ln180_fu_645_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_660_p3;
    sc_signal< sc_lv<64> > tmp_1_fu_675_p3;
    sc_signal< sc_lv<64> > tmp_2_fu_690_p3;
    sc_signal< sc_lv<64> > zext_ln180_8_fu_735_p1;
    sc_signal< sc_lv<64> > zext_ln180_3_fu_764_p1;
    sc_signal< sc_lv<64> > zext_ln180_2_fu_798_p1;
    sc_signal< sc_lv<64> > zext_ln180_6_fu_851_p1;
    sc_signal< sc_lv<5> > tmp_9_fu_637_p3;
    sc_signal< sc_lv<5> > or_ln180_fu_654_p2;
    sc_signal< sc_lv<5> > or_ln180_1_fu_669_p2;
    sc_signal< sc_lv<5> > or_ln180_2_fu_684_p2;
    sc_signal< sc_lv<3> > zext_ln80_fu_705_p1;
    sc_signal< sc_lv<3> > add_ln82_fu_721_p2;
    sc_signal< sc_lv<6> > zext_ln180_7_fu_726_p1;
    sc_signal< sc_lv<6> > add_ln180_2_fu_730_p2;
    sc_signal< sc_lv<5> > tmp_4_fu_756_p3;
    sc_signal< sc_lv<3> > zext_ln72_fu_774_p1;
    sc_signal< sc_lv<5> > tmp_3_fu_790_p3;
    sc_signal< sc_lv<3> > zext_ln67_fu_820_p1;
    sc_signal< sc_lv<3> > add_ln69_fu_836_p2;
    sc_signal< sc_lv<6> > zext_ln180_5_fu_842_p1;
    sc_signal< sc_lv<6> > add_ln180_1_fu_846_p2;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<59> ap_const_lv59_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln180_1_fu_846_p2();
    void thread_add_ln180_2_fu_730_p2();
    void thread_add_ln180_fu_769_p2();
    void thread_add_ln62_fu_814_p2();
    void thread_add_ln69_fu_836_p2();
    void thread_add_ln82_fu_721_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_temp_row_V_0_5_phi_fu_399_p4();
    void thread_ap_phi_mux_temp_row_V_1_3_be_phi_fu_585_p6();
    void thread_ap_phi_mux_temp_row_V_1_7_be_phi_fu_444_p6();
    void thread_ap_phi_mux_temp_row_V_1_9_phi_fu_385_p4();
    void thread_ap_phi_mux_temp_row_V_2_3_be_phi_fu_569_p6();
    void thread_ap_phi_mux_temp_row_V_2_7_be_phi_fu_428_p6();
    void thread_ap_phi_mux_temp_row_V_3_1_be_phi_fu_553_p6();
    void thread_ap_phi_mux_temp_row_V_3_3_be_phi_fu_412_p6();
    void thread_ap_ready();
    void thread_icmp_ln62_fu_631_p2();
    void thread_icmp_ln65_fu_625_p2();
    void thread_icmp_ln67_fu_824_p2();
    void thread_icmp_ln72_fu_778_p2();
    void thread_icmp_ln80_fu_709_p2();
    void thread_icmp_ln85_fu_744_p2();
    void thread_idx_subscript2_fu_784_p2();
    void thread_idx_subscript3_fu_715_p2();
    void thread_idx_subscript4_fu_750_p2();
    void thread_idx_subscript_fu_830_p2();
    void thread_or_ln180_1_fu_669_p2();
    void thread_or_ln180_2_fu_684_p2();
    void thread_or_ln180_fu_654_p2();
    void thread_row_index_fu_808_p2();
    void thread_state_matrix_V_address0();
    void thread_state_matrix_V_address1();
    void thread_state_matrix_V_ce0();
    void thread_state_matrix_V_ce1();
    void thread_state_matrix_V_d0();
    void thread_state_matrix_V_d1();
    void thread_state_matrix_V_we0();
    void thread_state_matrix_V_we1();
    void thread_sub_ln180_fu_803_p2();
    void thread_sub_ln82_fu_699_p2();
    void thread_tmp_1_fu_675_p3();
    void thread_tmp_2_fu_690_p3();
    void thread_tmp_3_fu_790_p3();
    void thread_tmp_4_fu_756_p3();
    void thread_tmp_9_fu_637_p3();
    void thread_tmp_s_fu_660_p3();
    void thread_trunc_ln74_fu_856_p1();
    void thread_trunc_ln87_fu_740_p1();
    void thread_zext_ln180_2_fu_798_p1();
    void thread_zext_ln180_3_fu_764_p1();
    void thread_zext_ln180_4_fu_650_p1();
    void thread_zext_ln180_5_fu_842_p1();
    void thread_zext_ln180_6_fu_851_p1();
    void thread_zext_ln180_7_fu_726_p1();
    void thread_zext_ln180_8_fu_735_p1();
    void thread_zext_ln180_fu_645_p1();
    void thread_zext_ln67_fu_820_p1();
    void thread_zext_ln72_fu_774_p1();
    void thread_zext_ln80_fu_705_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
