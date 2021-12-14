// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _xts_aes_process_data_HH_
#define _xts_aes_process_data_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "xts_aes_process_bloc.h"

namespace ap_rtl {

struct xts_aes_process_data : public sc_module {
    // Port declarations 88
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_data_V_AWVALID;
    sc_in< sc_logic > m_axi_data_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_data_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_data_V_AWID;
    sc_out< sc_lv<32> > m_axi_data_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_data_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_data_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_data_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_data_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_data_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_data_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_data_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_data_V_AWUSER;
    sc_out< sc_logic > m_axi_data_V_WVALID;
    sc_in< sc_logic > m_axi_data_V_WREADY;
    sc_out< sc_lv<16> > m_axi_data_V_WDATA;
    sc_out< sc_lv<2> > m_axi_data_V_WSTRB;
    sc_out< sc_logic > m_axi_data_V_WLAST;
    sc_out< sc_lv<1> > m_axi_data_V_WID;
    sc_out< sc_lv<1> > m_axi_data_V_WUSER;
    sc_out< sc_logic > m_axi_data_V_ARVALID;
    sc_in< sc_logic > m_axi_data_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_data_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_data_V_ARID;
    sc_out< sc_lv<32> > m_axi_data_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_data_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_data_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_data_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_data_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_data_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_data_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_data_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_data_V_ARUSER;
    sc_in< sc_logic > m_axi_data_V_RVALID;
    sc_out< sc_logic > m_axi_data_V_RREADY;
    sc_in< sc_lv<16> > m_axi_data_V_RDATA;
    sc_in< sc_logic > m_axi_data_V_RLAST;
    sc_in< sc_lv<1> > m_axi_data_V_RID;
    sc_in< sc_lv<1> > m_axi_data_V_RUSER;
    sc_in< sc_lv<2> > m_axi_data_V_RRESP;
    sc_in< sc_logic > m_axi_data_V_BVALID;
    sc_out< sc_logic > m_axi_data_V_BREADY;
    sc_in< sc_lv<2> > m_axi_data_V_BRESP;
    sc_in< sc_lv<1> > m_axi_data_V_BID;
    sc_in< sc_lv<1> > m_axi_data_V_BUSER;
    sc_in< sc_lv<31> > data_V_offset;
    sc_in< sc_lv<16> > num_blocks_orig_V;
    sc_in< sc_lv<16> > mode_V;
    sc_out< sc_lv<4> > tweak_V_address0;
    sc_out< sc_logic > tweak_V_ce0;
    sc_out< sc_logic > tweak_V_we0;
    sc_out< sc_lv<16> > tweak_V_d0;
    sc_in< sc_lv<16> > tweak_V_q0;
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
    sc_out< sc_lv<10> > blocks_V_address0;
    sc_out< sc_logic > blocks_V_ce0;
    sc_out< sc_logic > blocks_V_we0;
    sc_out< sc_lv<16> > blocks_V_d0;
    sc_in< sc_lv<16> > blocks_V_q0;


    // Module declarations
    xts_aes_process_data(sc_module_name name);
    SC_HAS_PROCESS(xts_aes_process_data);

    ~xts_aes_process_data();

    sc_trace_file* mVcdFile;

    xts_aes_process_bloc* grp_xts_aes_process_bloc_fu_207;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > data_V_blk_n_AR;
    sc_signal< sc_logic > data_V_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > icmp_ln299_fu_267_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<7> > i_fu_249_p2;
    sc_signal< sc_lv<7> > i_reg_381;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<12> > zext_ln301_fu_263_p1;
    sc_signal< sc_lv<12> > zext_ln301_reg_386;
    sc_signal< sc_lv<1> > icmp_ln297_fu_243_p2;
    sc_signal< sc_lv<5> > j_fu_273_p2;
    sc_signal< sc_lv<5> > j_reg_399;
    sc_signal< bool > ap_block_state9;
    sc_signal< sc_lv<12> > add_ln180_fu_283_p2;
    sc_signal< sc_lv<12> > add_ln180_reg_404;
    sc_signal< sc_lv<16> > data_V_addr_read_reg_409;
    sc_signal< sc_lv<7> > i_1_fu_302_p2;
    sc_signal< sc_lv<7> > i_1_reg_417;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > icmp_ln887_fu_308_p2;
    sc_signal< sc_lv<1> > icmp_ln887_reg_422;
    sc_signal< sc_lv<1> > icmp_ln306_fu_296_p2;
    sc_signal< sc_lv<5> > j_1_fu_319_p2;
    sc_signal< sc_lv<5> > j_1_reg_429;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<4> > tweak_V_addr_1_reg_434;
    sc_signal< sc_lv<1> > icmp_ln258_fu_313_p2;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_ap_start;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_ap_done;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_ap_idle;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_ap_ready;
    sc_signal< sc_lv<10> > grp_xts_aes_process_bloc_fu_207_block_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_block_V_ce0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_block_V_we0;
    sc_signal< sc_lv<16> > grp_xts_aes_process_bloc_fu_207_block_V_d0;
    sc_signal< sc_lv<4> > grp_xts_aes_process_bloc_fu_207_tweak_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_tweak_V_ce0;
    sc_signal< sc_lv<8> > grp_xts_aes_process_bloc_fu_207_expanded_key_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_expanded_key_V_ce0;
    sc_signal< sc_lv<10> > grp_xts_aes_process_bloc_fu_207_s_boxes_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_s_boxes_V_ce0;
    sc_signal< sc_lv<4> > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_0_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_0_V_ce0;
    sc_signal< sc_lv<4> > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_1_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_1_V_ce0;
    sc_signal< sc_lv<4> > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_2_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_2_V_ce0;
    sc_signal< sc_lv<4> > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_3_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_mix_column_constant_matrices_3_V_ce0;
    sc_signal< sc_lv<12> > grp_xts_aes_process_bloc_fu_207_multiplication_V_address0;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_multiplication_V_ce0;
    sc_signal< sc_lv<12> > grp_xts_aes_process_bloc_fu_207_multiplication_V_address1;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_multiplication_V_ce1;
    sc_signal< sc_lv<7> > i_0_reg_150;
    sc_signal< sc_lv<5> > j_0_reg_161;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<7> > i_op_assign_reg_172;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<1> > ap_phi_mux_p_0111_0_i_phi_fu_188_p4;
    sc_signal< sc_lv<1> > p_0111_0_i_reg_184;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<5> > j_0_i_reg_196;
    sc_signal< sc_logic > grp_xts_aes_process_bloc_fu_207_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln180_2_fu_288_p1;
    sc_signal< sc_lv<64> > zext_ln260_fu_325_p1;
    sc_signal< sc_lv<64> > zext_ln180_fu_232_p1;
    sc_signal< sc_lv<16> > zext_ln68_fu_350_p1;
    sc_signal< sc_lv<16> > xor_ln719_fu_355_p2;
    sc_signal< sc_lv<11> > tmp_1_fu_255_p3;
    sc_signal< sc_lv<12> > zext_ln180_1_fu_279_p1;
    sc_signal< sc_lv<16> > zext_ln306_fu_292_p1;
    sc_signal< sc_lv<7> > trunc_ln68_fu_338_p1;
    sc_signal< sc_lv<8> > or_ln_fu_342_p3;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_state4;
    static const sc_lv<15> ap_ST_fsm_state5;
    static const sc_lv<15> ap_ST_fsm_state6;
    static const sc_lv<15> ap_ST_fsm_state7;
    static const sc_lv<15> ap_ST_fsm_state8;
    static const sc_lv<15> ap_ST_fsm_state9;
    static const sc_lv<15> ap_ST_fsm_state10;
    static const sc_lv<15> ap_ST_fsm_state11;
    static const sc_lv<15> ap_ST_fsm_state12;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_state15;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_400;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<16> ap_const_lv16_87;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln180_fu_283_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_p_0111_0_i_phi_fu_188_p4();
    void thread_ap_ready();
    void thread_blocks_V_address0();
    void thread_blocks_V_ce0();
    void thread_blocks_V_d0();
    void thread_blocks_V_we0();
    void thread_data_V_blk_n_AR();
    void thread_data_V_blk_n_R();
    void thread_expanded_key_V_address0();
    void thread_expanded_key_V_ce0();
    void thread_grp_xts_aes_process_bloc_fu_207_ap_start();
    void thread_i_1_fu_302_p2();
    void thread_i_fu_249_p2();
    void thread_icmp_ln258_fu_313_p2();
    void thread_icmp_ln297_fu_243_p2();
    void thread_icmp_ln299_fu_267_p2();
    void thread_icmp_ln306_fu_296_p2();
    void thread_icmp_ln887_fu_308_p2();
    void thread_j_1_fu_319_p2();
    void thread_j_fu_273_p2();
    void thread_m_axi_data_V_ARADDR();
    void thread_m_axi_data_V_ARBURST();
    void thread_m_axi_data_V_ARCACHE();
    void thread_m_axi_data_V_ARID();
    void thread_m_axi_data_V_ARLEN();
    void thread_m_axi_data_V_ARLOCK();
    void thread_m_axi_data_V_ARPROT();
    void thread_m_axi_data_V_ARQOS();
    void thread_m_axi_data_V_ARREGION();
    void thread_m_axi_data_V_ARSIZE();
    void thread_m_axi_data_V_ARUSER();
    void thread_m_axi_data_V_ARVALID();
    void thread_m_axi_data_V_AWADDR();
    void thread_m_axi_data_V_AWBURST();
    void thread_m_axi_data_V_AWCACHE();
    void thread_m_axi_data_V_AWID();
    void thread_m_axi_data_V_AWLEN();
    void thread_m_axi_data_V_AWLOCK();
    void thread_m_axi_data_V_AWPROT();
    void thread_m_axi_data_V_AWQOS();
    void thread_m_axi_data_V_AWREGION();
    void thread_m_axi_data_V_AWSIZE();
    void thread_m_axi_data_V_AWUSER();
    void thread_m_axi_data_V_AWVALID();
    void thread_m_axi_data_V_BREADY();
    void thread_m_axi_data_V_RREADY();
    void thread_m_axi_data_V_WDATA();
    void thread_m_axi_data_V_WID();
    void thread_m_axi_data_V_WLAST();
    void thread_m_axi_data_V_WSTRB();
    void thread_m_axi_data_V_WUSER();
    void thread_m_axi_data_V_WVALID();
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
    void thread_or_ln_fu_342_p3();
    void thread_s_boxes_V_address0();
    void thread_s_boxes_V_ce0();
    void thread_tmp_1_fu_255_p3();
    void thread_trunc_ln68_fu_338_p1();
    void thread_tweak_V_address0();
    void thread_tweak_V_ce0();
    void thread_tweak_V_d0();
    void thread_tweak_V_we0();
    void thread_xor_ln719_fu_355_p2();
    void thread_zext_ln180_1_fu_279_p1();
    void thread_zext_ln180_2_fu_288_p1();
    void thread_zext_ln180_fu_232_p1();
    void thread_zext_ln260_fu_325_p1();
    void thread_zext_ln301_fu_263_p1();
    void thread_zext_ln306_fu_292_p1();
    void thread_zext_ln68_fu_350_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
