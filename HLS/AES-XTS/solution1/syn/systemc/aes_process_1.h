// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_process_1_HH_
#define _aes_process_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_shift_rows.h"
#include "aes_mix_columns8.h"
#include "aes_sequence_to_matr.h"
#include "aes_get_round_key5.h"
#include "aes_substitute_bytes.h"
#include "aes_add_round_key.h"
#include "aes_process_1_stadEe.h"
#include "aes_process_1_roueOg.h"

namespace ap_rtl {

struct aes_process_1 : public sc_module {
    // Port declarations 80
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_text_V_AWVALID;
    sc_in< sc_logic > m_axi_text_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_text_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_text_V_AWID;
    sc_out< sc_lv<32> > m_axi_text_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_text_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_text_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_text_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_text_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_text_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_text_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_text_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_text_V_AWUSER;
    sc_out< sc_logic > m_axi_text_V_WVALID;
    sc_in< sc_logic > m_axi_text_V_WREADY;
    sc_out< sc_lv<16> > m_axi_text_V_WDATA;
    sc_out< sc_lv<2> > m_axi_text_V_WSTRB;
    sc_out< sc_logic > m_axi_text_V_WLAST;
    sc_out< sc_lv<1> > m_axi_text_V_WID;
    sc_out< sc_lv<1> > m_axi_text_V_WUSER;
    sc_out< sc_logic > m_axi_text_V_ARVALID;
    sc_in< sc_logic > m_axi_text_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_text_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_text_V_ARID;
    sc_out< sc_lv<32> > m_axi_text_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_text_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_text_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_text_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_text_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_text_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_text_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_text_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_text_V_ARUSER;
    sc_in< sc_logic > m_axi_text_V_RVALID;
    sc_out< sc_logic > m_axi_text_V_RREADY;
    sc_in< sc_lv<16> > m_axi_text_V_RDATA;
    sc_in< sc_logic > m_axi_text_V_RLAST;
    sc_in< sc_lv<1> > m_axi_text_V_RID;
    sc_in< sc_lv<1> > m_axi_text_V_RUSER;
    sc_in< sc_lv<2> > m_axi_text_V_RRESP;
    sc_in< sc_logic > m_axi_text_V_BVALID;
    sc_out< sc_logic > m_axi_text_V_BREADY;
    sc_in< sc_lv<2> > m_axi_text_V_BRESP;
    sc_in< sc_lv<1> > m_axi_text_V_BID;
    sc_in< sc_lv<1> > m_axi_text_V_BUSER;
    sc_in< sc_lv<31> > text_V_offset;
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
    sc_out< sc_lv<4> > sequence_out_V_address0;
    sc_out< sc_logic > sequence_out_V_ce0;
    sc_out< sc_logic > sequence_out_V_we0;
    sc_out< sc_lv<16> > sequence_out_V_d0;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<1> > ap_var_for_const3;
    sc_signal< sc_lv<2> > ap_var_for_const2;
    sc_signal< sc_lv<2> > ap_var_for_const0;


    // Module declarations
    aes_process_1(sc_module_name name);
    SC_HAS_PROCESS(aes_process_1);

    ~aes_process_1();

    sc_trace_file* mVcdFile;

    aes_process_1_stadEe* state_matrix_V_U;
    aes_process_1_roueOg* round_key_V_U;
    aes_shift_rows* grp_aes_shift_rows_fu_193;
    aes_mix_columns8* grp_aes_mix_columns8_fu_200;
    aes_sequence_to_matr* grp_aes_sequence_to_matr_fu_217;
    aes_get_round_key5* grp_aes_get_round_key5_fu_227;
    aes_substitute_bytes* grp_aes_substitute_bytes_fu_238;
    aes_add_round_key* grp_aes_add_round_key_fu_247;
    sc_signal< sc_lv<20> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > i_fu_259_p2;
    sc_signal< sc_lv<4> > i_reg_351;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<7> > zext_ln29_fu_265_p1;
    sc_signal< sc_lv<7> > zext_ln29_reg_356;
    sc_signal< sc_lv<1> > icmp_ln24_fu_253_p2;
    sc_signal< sc_lv<4> > add_ln24_fu_270_p2;
    sc_signal< sc_lv<4> > add_ln24_reg_361;
    sc_signal< sc_lv<3> > column_fu_282_p2;
    sc_signal< sc_lv<3> > column_reg_369;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<5> > i_V_fu_288_p2;
    sc_signal< sc_lv<5> > i_V_reg_374;
    sc_signal< sc_lv<1> > icmp_ln242_fu_276_p2;
    sc_signal< sc_lv<6> > zext_ln244_fu_294_p1;
    sc_signal< sc_lv<6> > zext_ln244_reg_379;
    sc_signal< sc_lv<3> > row_fu_304_p2;
    sc_signal< sc_lv<3> > row_reg_387;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<1> > icmp_ln244_fu_298_p2;
    sc_signal< sc_lv<5> > add_ln700_fu_337_p2;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<4> > state_matrix_V_address0;
    sc_signal< sc_logic > state_matrix_V_ce0;
    sc_signal< sc_logic > state_matrix_V_we0;
    sc_signal< sc_lv<16> > state_matrix_V_d0;
    sc_signal< sc_lv<16> > state_matrix_V_q0;
    sc_signal< sc_logic > state_matrix_V_ce1;
    sc_signal< sc_lv<16> > state_matrix_V_q1;
    sc_signal< sc_lv<4> > round_key_V_address0;
    sc_signal< sc_logic > round_key_V_ce0;
    sc_signal< sc_logic > round_key_V_we0;
    sc_signal< sc_lv<16> > round_key_V_q0;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_193_ap_start;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_193_ap_done;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_193_ap_idle;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_193_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_shift_rows_fu_193_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_193_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_193_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_shift_rows_fu_193_state_matrix_V_d0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_ap_start;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_ap_done;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_ap_idle;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_200_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_mix_columns8_fu_200_state_matrix_V_d0;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_200_state_matrix_V_address1;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_state_matrix_V_ce1;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_200_constant_matrix_0_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_constant_matrix_0_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_200_constant_matrix_1_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_constant_matrix_1_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_200_constant_matrix_2_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_constant_matrix_2_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_mix_columns8_fu_200_constant_matrix_3_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_constant_matrix_3_V_ce0;
    sc_signal< sc_lv<12> > grp_aes_mix_columns8_fu_200_multiplication_V_address0;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_multiplication_V_ce0;
    sc_signal< sc_lv<12> > grp_aes_mix_columns8_fu_200_multiplication_V_address1;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_multiplication_V_ce1;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_ap_start;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_ap_done;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_ap_idle;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_ap_ready;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWVALID;
    sc_signal< sc_lv<32> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWADDR;
    sc_signal< sc_lv<1> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWID;
    sc_signal< sc_lv<32> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWLEN;
    sc_signal< sc_lv<3> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWSIZE;
    sc_signal< sc_lv<2> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWBURST;
    sc_signal< sc_lv<2> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWLOCK;
    sc_signal< sc_lv<4> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWCACHE;
    sc_signal< sc_lv<3> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWPROT;
    sc_signal< sc_lv<4> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWQOS;
    sc_signal< sc_lv<4> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWREGION;
    sc_signal< sc_lv<1> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_AWUSER;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_WVALID;
    sc_signal< sc_lv<16> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_WDATA;
    sc_signal< sc_lv<2> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_WSTRB;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_WLAST;
    sc_signal< sc_lv<1> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_WID;
    sc_signal< sc_lv<1> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_WUSER;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARVALID;
    sc_signal< sc_lv<32> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARADDR;
    sc_signal< sc_lv<1> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARID;
    sc_signal< sc_lv<32> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARLEN;
    sc_signal< sc_lv<3> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARSIZE;
    sc_signal< sc_lv<2> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARBURST;
    sc_signal< sc_lv<2> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARLOCK;
    sc_signal< sc_lv<4> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARCACHE;
    sc_signal< sc_lv<3> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARPROT;
    sc_signal< sc_lv<4> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARQOS;
    sc_signal< sc_lv<4> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARREGION;
    sc_signal< sc_lv<1> > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_ARUSER;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_RREADY;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_m_axi_sequence_V_BREADY;
    sc_signal< sc_lv<4> > grp_aes_sequence_to_matr_fu_217_matrix_out_V_address0;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_matrix_out_V_ce0;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_matrix_out_V_we0;
    sc_signal< sc_lv<16> > grp_aes_sequence_to_matr_fu_217_matrix_out_V_d0;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_ap_start;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_ap_done;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_ap_idle;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_ap_ready;
    sc_signal< sc_lv<7> > grp_aes_get_round_key5_fu_227_round;
    sc_signal< sc_lv<8> > grp_aes_get_round_key5_fu_227_expanded_key_V_address0;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_expanded_key_V_ce0;
    sc_signal< sc_lv<4> > grp_aes_get_round_key5_fu_227_round_key_V_address0;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_round_key_V_ce0;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_round_key_V_we0;
    sc_signal< sc_lv<16> > grp_aes_get_round_key5_fu_227_round_key_V_d0;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_ap_start;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_ap_done;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_ap_idle;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_substitute_bytes_fu_238_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_substitute_bytes_fu_238_state_matrix_V_d0;
    sc_signal< sc_lv<10> > grp_aes_substitute_bytes_fu_238_s_box_V_address0;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_s_box_V_ce0;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_ap_start;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_ap_done;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_ap_idle;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_add_round_key_fu_247_state_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_state_matrix_V_ce0;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_state_matrix_V_we0;
    sc_signal< sc_lv<16> > grp_aes_add_round_key_fu_247_state_matrix_V_d0;
    sc_signal< sc_lv<4> > grp_aes_add_round_key_fu_247_round_key_matrix_V_address0;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_round_key_matrix_V_ce0;
    sc_signal< sc_lv<4> > phi_ln16_reg_126;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<4> > i_0_reg_137;
    sc_signal< sc_lv<5> > p_04_0_i_reg_148;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<3> > column_0_i_reg_160;
    sc_signal< sc_lv<5> > p_04_1_i_reg_171;
    sc_signal< sc_lv<3> > row_0_i_reg_182;
    sc_signal< sc_logic > grp_aes_shift_rows_fu_193_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > grp_aes_mix_columns8_fu_200_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > grp_aes_sequence_to_matr_fu_217_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_aes_get_round_key5_fu_227_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > grp_aes_substitute_bytes_fu_238_ap_start_reg;
    sc_signal< sc_logic > grp_aes_add_round_key_fu_247_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<64> > zext_ln180_17_fu_327_p1;
    sc_signal< sc_lv<64> > zext_ln544_fu_332_p1;
    sc_signal< sc_lv<5> > tmp_fu_310_p3;
    sc_signal< sc_lv<6> > zext_ln180_fu_318_p1;
    sc_signal< sc_lv<6> > add_ln180_fu_322_p2;
    sc_signal< sc_lv<20> > ap_NS_fsm;
    sc_signal< bool > ap_block_state2_on_subcall_done;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< bool > ap_block_state13_on_subcall_done;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<20> ap_ST_fsm_state1;
    static const sc_lv<20> ap_ST_fsm_state2;
    static const sc_lv<20> ap_ST_fsm_state3;
    static const sc_lv<20> ap_ST_fsm_state4;
    static const sc_lv<20> ap_ST_fsm_state5;
    static const sc_lv<20> ap_ST_fsm_state6;
    static const sc_lv<20> ap_ST_fsm_state7;
    static const sc_lv<20> ap_ST_fsm_state8;
    static const sc_lv<20> ap_ST_fsm_state9;
    static const sc_lv<20> ap_ST_fsm_state10;
    static const sc_lv<20> ap_ST_fsm_state11;
    static const sc_lv<20> ap_ST_fsm_state12;
    static const sc_lv<20> ap_ST_fsm_state13;
    static const sc_lv<20> ap_ST_fsm_state14;
    static const sc_lv<20> ap_ST_fsm_state15;
    static const sc_lv<20> ap_ST_fsm_state16;
    static const sc_lv<20> ap_ST_fsm_state17;
    static const sc_lv<20> ap_ST_fsm_state18;
    static const sc_lv<20> ap_ST_fsm_state19;
    static const sc_lv<20> ap_ST_fsm_state20;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<7> ap_const_lv7_E;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<5> ap_const_lv5_1;
    static const bool ap_const_boolean_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln180_fu_322_p2();
    void thread_add_ln24_fu_270_p2();
    void thread_add_ln700_fu_337_p2();
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
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state13_on_subcall_done();
    void thread_ap_block_state2_on_subcall_done();
    void thread_ap_block_state6_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_column_fu_282_p2();
    void thread_expanded_key_V_address0();
    void thread_expanded_key_V_ce0();
    void thread_grp_aes_add_round_key_fu_247_ap_start();
    void thread_grp_aes_get_round_key5_fu_227_ap_start();
    void thread_grp_aes_get_round_key5_fu_227_round();
    void thread_grp_aes_mix_columns8_fu_200_ap_start();
    void thread_grp_aes_sequence_to_matr_fu_217_ap_start();
    void thread_grp_aes_shift_rows_fu_193_ap_start();
    void thread_grp_aes_substitute_bytes_fu_238_ap_start();
    void thread_i_V_fu_288_p2();
    void thread_i_fu_259_p2();
    void thread_icmp_ln242_fu_276_p2();
    void thread_icmp_ln244_fu_298_p2();
    void thread_icmp_ln24_fu_253_p2();
    void thread_m_axi_text_V_ARADDR();
    void thread_m_axi_text_V_ARBURST();
    void thread_m_axi_text_V_ARCACHE();
    void thread_m_axi_text_V_ARID();
    void thread_m_axi_text_V_ARLEN();
    void thread_m_axi_text_V_ARLOCK();
    void thread_m_axi_text_V_ARPROT();
    void thread_m_axi_text_V_ARQOS();
    void thread_m_axi_text_V_ARREGION();
    void thread_m_axi_text_V_ARSIZE();
    void thread_m_axi_text_V_ARUSER();
    void thread_m_axi_text_V_ARVALID();
    void thread_m_axi_text_V_AWADDR();
    void thread_m_axi_text_V_AWBURST();
    void thread_m_axi_text_V_AWCACHE();
    void thread_m_axi_text_V_AWID();
    void thread_m_axi_text_V_AWLEN();
    void thread_m_axi_text_V_AWLOCK();
    void thread_m_axi_text_V_AWPROT();
    void thread_m_axi_text_V_AWQOS();
    void thread_m_axi_text_V_AWREGION();
    void thread_m_axi_text_V_AWSIZE();
    void thread_m_axi_text_V_AWUSER();
    void thread_m_axi_text_V_AWVALID();
    void thread_m_axi_text_V_BREADY();
    void thread_m_axi_text_V_RREADY();
    void thread_m_axi_text_V_WDATA();
    void thread_m_axi_text_V_WID();
    void thread_m_axi_text_V_WLAST();
    void thread_m_axi_text_V_WSTRB();
    void thread_m_axi_text_V_WUSER();
    void thread_m_axi_text_V_WVALID();
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
    void thread_round_key_V_address0();
    void thread_round_key_V_ce0();
    void thread_round_key_V_we0();
    void thread_row_fu_304_p2();
    void thread_s_boxes_V_address0();
    void thread_s_boxes_V_ce0();
    void thread_sequence_out_V_address0();
    void thread_sequence_out_V_ce0();
    void thread_sequence_out_V_d0();
    void thread_sequence_out_V_we0();
    void thread_state_matrix_V_address0();
    void thread_state_matrix_V_ce0();
    void thread_state_matrix_V_ce1();
    void thread_state_matrix_V_d0();
    void thread_state_matrix_V_we0();
    void thread_tmp_fu_310_p3();
    void thread_zext_ln180_17_fu_327_p1();
    void thread_zext_ln180_fu_318_p1();
    void thread_zext_ln244_fu_294_p1();
    void thread_zext_ln29_fu_265_p1();
    void thread_zext_ln544_fu_332_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
