// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "aes_mix_columns8.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic aes_mix_columns8::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic aes_mix_columns8::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state1 = "1";
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state2 = "10";
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state3 = "100";
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state4 = "1000";
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state5 = "10000";
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state6 = "100000";
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> aes_mix_columns8::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_1 = "1";
const sc_lv<1> aes_mix_columns8::ap_const_lv1_0 = "0";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_2 = "10";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_3 = "11";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_4 = "100";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_5 = "101";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_6 = "110";
const sc_lv<3> aes_mix_columns8::ap_const_lv3_0 = "000";
const sc_lv<1> aes_mix_columns8::ap_const_lv1_1 = "1";
const sc_lv<32> aes_mix_columns8::ap_const_lv32_7 = "111";
const sc_lv<2> aes_mix_columns8::ap_const_lv2_0 = "00";
const sc_lv<3> aes_mix_columns8::ap_const_lv3_4 = "100";
const sc_lv<3> aes_mix_columns8::ap_const_lv3_1 = "1";
const sc_lv<61> aes_mix_columns8::ap_const_lv61_1 = "1";
const sc_lv<8> aes_mix_columns8::ap_const_lv8_0 = "00000000";
const bool aes_mix_columns8::ap_const_boolean_1 = true;

aes_mix_columns8::aes_mix_columns8(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln180_fu_318_p2);
    sensitive << ( zext_ln180_reg_495 );
    sensitive << ( zext_ln180_21_fu_314_p1 );

    SC_METHOD(thread_add_ln544_fu_323_p2);
    sensitive << ( zext_ln101_reg_447 );
    sensitive << ( zext_ln180_20_fu_302_p1 );

    SC_METHOD(thread_add_ln719_1_fu_392_p2);
    sensitive << ( trunc_ln544_2_reg_500 );
    sensitive << ( zext_ln719_2_cast_fu_384_p3 );

    SC_METHOD(thread_add_ln719_2_fu_409_p2);
    sensitive << ( trunc_ln110_reg_505 );
    sensitive << ( zext_ln719_3_cast_fu_401_p3 );

    SC_METHOD(thread_add_ln719_fu_370_p2);
    sensitive << ( trunc_ln544_1_reg_490 );
    sensitive << ( zext_ln719_1_cast_fu_362_p3 );

    SC_METHOD(thread_add_ln78_fu_348_p2);
    sensitive << ( trunc_ln544_reg_485 );
    sensitive << ( zext_ln78_cast_fu_340_p3 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln103_fu_225_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln103_fu_225_p2 );

    SC_METHOD(thread_column_index_fu_231_p2);
    sensitive << ( column_index_0_reg_190 );

    SC_METHOD(thread_constant_matrix_0_V_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln544_fu_328_p1 );

    SC_METHOD(thread_constant_matrix_0_V_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_constant_matrix_1_V_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln544_fu_328_p1 );

    SC_METHOD(thread_constant_matrix_1_V_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_constant_matrix_2_V_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln544_fu_328_p1 );

    SC_METHOD(thread_constant_matrix_2_V_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_constant_matrix_3_V_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln544_fu_328_p1 );

    SC_METHOD(thread_constant_matrix_3_V_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_icmp_ln103_fu_225_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( column_index_0_reg_190 );

    SC_METHOD(thread_icmp_ln110_fu_290_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( row_index_0_reg_202 );

    SC_METHOD(thread_multiplication_V_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( sext_ln78_fu_353_p1 );
    sensitive << ( sext_ln719_1_fu_414_p1 );

    SC_METHOD(thread_multiplication_V_address1);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( sext_ln719_fu_375_p1 );
    sensitive << ( sext_ln719_2_fu_418_p1 );

    SC_METHOD(thread_multiplication_V_ce0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_multiplication_V_ce1);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_row_index_fu_296_p2);
    sensitive << ( row_index_0_reg_202 );

    SC_METHOD(thread_sext_ln180_fu_262_p1);
    sensitive << ( xor_ln180_reg_465 );

    SC_METHOD(thread_sext_ln719_1_fu_414_p1);
    sensitive << ( add_ln719_1_reg_553 );

    SC_METHOD(thread_sext_ln719_2_fu_418_p1);
    sensitive << ( add_ln719_2_reg_558 );

    SC_METHOD(thread_sext_ln719_fu_375_p1);
    sensitive << ( add_ln719_fu_370_p2 );

    SC_METHOD(thread_sext_ln78_fu_353_p1);
    sensitive << ( add_ln78_fu_348_p2 );

    SC_METHOD(thread_state_matrix_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( zext_ln106_fu_237_p1 );
    sensitive << ( tmp_s_fu_253_p3 );
    sensitive << ( zext_ln180_22_fu_422_p1 );

    SC_METHOD(thread_state_matrix_V_address1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln180_18_fu_248_p1 );
    sensitive << ( zext_ln180_19_fu_265_p1 );

    SC_METHOD(thread_state_matrix_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_state_matrix_V_ce1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_state_matrix_V_d0);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( xor_ln719_2_fu_436_p2 );

    SC_METHOD(thread_state_matrix_V_we0);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_tmp_2_fu_306_p3);
    sensitive << ( row_index_0_reg_202 );

    SC_METHOD(thread_tmp_fu_213_p3);
    sensitive << ( constant_matrix_V_offset );

    SC_METHOD(thread_tmp_s_fu_253_p3);
    sensitive << ( column_index_0_reg_190 );

    SC_METHOD(thread_trunc_ln110_fu_286_p1);
    sensitive << ( state_matrix_V_q1 );

    SC_METHOD(thread_trunc_ln544_1_fu_274_p1);
    sensitive << ( state_matrix_V_q1 );

    SC_METHOD(thread_trunc_ln544_2_fu_282_p1);
    sensitive << ( state_matrix_V_q0 );

    SC_METHOD(thread_trunc_ln544_fu_270_p1);
    sensitive << ( state_matrix_V_q0 );

    SC_METHOD(thread_trunc_ln719_1_fu_380_p1);
    sensitive << ( constant_matrix_2_V_q0 );

    SC_METHOD(thread_trunc_ln719_2_fu_397_p1);
    sensitive << ( constant_matrix_3_V_q0 );

    SC_METHOD(thread_trunc_ln719_fu_358_p1);
    sensitive << ( constant_matrix_1_V_q0 );

    SC_METHOD(thread_trunc_ln78_fu_336_p1);
    sensitive << ( constant_matrix_0_V_q0 );

    SC_METHOD(thread_xor_ln180_fu_242_p2);
    sensitive << ( column_index_0_reg_190 );

    SC_METHOD(thread_xor_ln719_1_fu_430_p2);
    sensitive << ( multiplication_V_q0 );
    sensitive << ( multiplication_V_q1 );

    SC_METHOD(thread_xor_ln719_2_fu_436_p2);
    sensitive << ( xor_ln719_1_fu_430_p2 );
    sensitive << ( xor_ln719_fu_426_p2 );

    SC_METHOD(thread_xor_ln719_fu_426_p2);
    sensitive << ( multiplication_V_loa_reg_563 );
    sensitive << ( multiplication_V_loa_1_reg_568 );

    SC_METHOD(thread_zext_ln101_fu_221_p1);
    sensitive << ( tmp_fu_213_p3 );

    SC_METHOD(thread_zext_ln106_fu_237_p1);
    sensitive << ( column_index_0_reg_190 );

    SC_METHOD(thread_zext_ln180_18_fu_248_p1);
    sensitive << ( xor_ln180_fu_242_p2 );

    SC_METHOD(thread_zext_ln180_19_fu_265_p1);
    sensitive << ( sext_ln180_fu_262_p1 );

    SC_METHOD(thread_zext_ln180_20_fu_302_p1);
    sensitive << ( row_index_0_reg_202 );

    SC_METHOD(thread_zext_ln180_21_fu_314_p1);
    sensitive << ( tmp_2_fu_306_p3 );

    SC_METHOD(thread_zext_ln180_22_fu_422_p1);
    sensitive << ( add_ln180_reg_518 );

    SC_METHOD(thread_zext_ln180_fu_278_p1);
    sensitive << ( column_index_0_reg_190 );

    SC_METHOD(thread_zext_ln544_fu_328_p1);
    sensitive << ( add_ln544_fu_323_p2 );

    SC_METHOD(thread_zext_ln719_1_cast_fu_362_p3);
    sensitive << ( trunc_ln719_fu_358_p1 );

    SC_METHOD(thread_zext_ln719_2_cast_fu_384_p3);
    sensitive << ( trunc_ln719_1_fu_380_p1 );

    SC_METHOD(thread_zext_ln719_3_cast_fu_401_p3);
    sensitive << ( trunc_ln719_2_fu_397_p1 );

    SC_METHOD(thread_zext_ln78_cast_fu_340_p3);
    sensitive << ( trunc_ln78_fu_336_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln103_fu_225_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln110_fu_290_p2 );

    ap_CS_fsm = "00000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "aes_mix_columns8_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, state_matrix_V_address0, "(port)state_matrix_V_address0");
    sc_trace(mVcdFile, state_matrix_V_ce0, "(port)state_matrix_V_ce0");
    sc_trace(mVcdFile, state_matrix_V_we0, "(port)state_matrix_V_we0");
    sc_trace(mVcdFile, state_matrix_V_d0, "(port)state_matrix_V_d0");
    sc_trace(mVcdFile, state_matrix_V_q0, "(port)state_matrix_V_q0");
    sc_trace(mVcdFile, state_matrix_V_address1, "(port)state_matrix_V_address1");
    sc_trace(mVcdFile, state_matrix_V_ce1, "(port)state_matrix_V_ce1");
    sc_trace(mVcdFile, state_matrix_V_q1, "(port)state_matrix_V_q1");
    sc_trace(mVcdFile, constant_matrix_0_V_address0, "(port)constant_matrix_0_V_address0");
    sc_trace(mVcdFile, constant_matrix_0_V_ce0, "(port)constant_matrix_0_V_ce0");
    sc_trace(mVcdFile, constant_matrix_0_V_q0, "(port)constant_matrix_0_V_q0");
    sc_trace(mVcdFile, constant_matrix_1_V_address0, "(port)constant_matrix_1_V_address0");
    sc_trace(mVcdFile, constant_matrix_1_V_ce0, "(port)constant_matrix_1_V_ce0");
    sc_trace(mVcdFile, constant_matrix_1_V_q0, "(port)constant_matrix_1_V_q0");
    sc_trace(mVcdFile, constant_matrix_2_V_address0, "(port)constant_matrix_2_V_address0");
    sc_trace(mVcdFile, constant_matrix_2_V_ce0, "(port)constant_matrix_2_V_ce0");
    sc_trace(mVcdFile, constant_matrix_2_V_q0, "(port)constant_matrix_2_V_q0");
    sc_trace(mVcdFile, constant_matrix_3_V_address0, "(port)constant_matrix_3_V_address0");
    sc_trace(mVcdFile, constant_matrix_3_V_ce0, "(port)constant_matrix_3_V_ce0");
    sc_trace(mVcdFile, constant_matrix_3_V_q0, "(port)constant_matrix_3_V_q0");
    sc_trace(mVcdFile, constant_matrix_V_offset, "(port)constant_matrix_V_offset");
    sc_trace(mVcdFile, multiplication_V_address0, "(port)multiplication_V_address0");
    sc_trace(mVcdFile, multiplication_V_ce0, "(port)multiplication_V_ce0");
    sc_trace(mVcdFile, multiplication_V_q0, "(port)multiplication_V_q0");
    sc_trace(mVcdFile, multiplication_V_address1, "(port)multiplication_V_address1");
    sc_trace(mVcdFile, multiplication_V_ce1, "(port)multiplication_V_ce1");
    sc_trace(mVcdFile, multiplication_V_q1, "(port)multiplication_V_q1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, zext_ln101_fu_221_p1, "zext_ln101_fu_221_p1");
    sc_trace(mVcdFile, zext_ln101_reg_447, "zext_ln101_reg_447");
    sc_trace(mVcdFile, column_index_fu_231_p2, "column_index_fu_231_p2");
    sc_trace(mVcdFile, column_index_reg_455, "column_index_reg_455");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln103_fu_225_p2, "icmp_ln103_fu_225_p2");
    sc_trace(mVcdFile, xor_ln180_fu_242_p2, "xor_ln180_fu_242_p2");
    sc_trace(mVcdFile, xor_ln180_reg_465, "xor_ln180_reg_465");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, trunc_ln544_fu_270_p1, "trunc_ln544_fu_270_p1");
    sc_trace(mVcdFile, trunc_ln544_reg_485, "trunc_ln544_reg_485");
    sc_trace(mVcdFile, trunc_ln544_1_fu_274_p1, "trunc_ln544_1_fu_274_p1");
    sc_trace(mVcdFile, trunc_ln544_1_reg_490, "trunc_ln544_1_reg_490");
    sc_trace(mVcdFile, zext_ln180_fu_278_p1, "zext_ln180_fu_278_p1");
    sc_trace(mVcdFile, zext_ln180_reg_495, "zext_ln180_reg_495");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, trunc_ln544_2_fu_282_p1, "trunc_ln544_2_fu_282_p1");
    sc_trace(mVcdFile, trunc_ln544_2_reg_500, "trunc_ln544_2_reg_500");
    sc_trace(mVcdFile, trunc_ln110_fu_286_p1, "trunc_ln110_fu_286_p1");
    sc_trace(mVcdFile, trunc_ln110_reg_505, "trunc_ln110_reg_505");
    sc_trace(mVcdFile, row_index_fu_296_p2, "row_index_fu_296_p2");
    sc_trace(mVcdFile, row_index_reg_513, "row_index_reg_513");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, add_ln180_fu_318_p2, "add_ln180_fu_318_p2");
    sc_trace(mVcdFile, add_ln180_reg_518, "add_ln180_reg_518");
    sc_trace(mVcdFile, icmp_ln110_fu_290_p2, "icmp_ln110_fu_290_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, add_ln719_1_fu_392_p2, "add_ln719_1_fu_392_p2");
    sc_trace(mVcdFile, add_ln719_1_reg_553, "add_ln719_1_reg_553");
    sc_trace(mVcdFile, add_ln719_2_fu_409_p2, "add_ln719_2_fu_409_p2");
    sc_trace(mVcdFile, add_ln719_2_reg_558, "add_ln719_2_reg_558");
    sc_trace(mVcdFile, multiplication_V_loa_reg_563, "multiplication_V_loa_reg_563");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, multiplication_V_loa_1_reg_568, "multiplication_V_loa_1_reg_568");
    sc_trace(mVcdFile, column_index_0_reg_190, "column_index_0_reg_190");
    sc_trace(mVcdFile, row_index_0_reg_202, "row_index_0_reg_202");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, zext_ln106_fu_237_p1, "zext_ln106_fu_237_p1");
    sc_trace(mVcdFile, zext_ln180_18_fu_248_p1, "zext_ln180_18_fu_248_p1");
    sc_trace(mVcdFile, tmp_s_fu_253_p3, "tmp_s_fu_253_p3");
    sc_trace(mVcdFile, zext_ln180_19_fu_265_p1, "zext_ln180_19_fu_265_p1");
    sc_trace(mVcdFile, zext_ln544_fu_328_p1, "zext_ln544_fu_328_p1");
    sc_trace(mVcdFile, sext_ln78_fu_353_p1, "sext_ln78_fu_353_p1");
    sc_trace(mVcdFile, sext_ln719_fu_375_p1, "sext_ln719_fu_375_p1");
    sc_trace(mVcdFile, sext_ln719_1_fu_414_p1, "sext_ln719_1_fu_414_p1");
    sc_trace(mVcdFile, sext_ln719_2_fu_418_p1, "sext_ln719_2_fu_418_p1");
    sc_trace(mVcdFile, zext_ln180_22_fu_422_p1, "zext_ln180_22_fu_422_p1");
    sc_trace(mVcdFile, tmp_fu_213_p3, "tmp_fu_213_p3");
    sc_trace(mVcdFile, sext_ln180_fu_262_p1, "sext_ln180_fu_262_p1");
    sc_trace(mVcdFile, tmp_2_fu_306_p3, "tmp_2_fu_306_p3");
    sc_trace(mVcdFile, zext_ln180_21_fu_314_p1, "zext_ln180_21_fu_314_p1");
    sc_trace(mVcdFile, zext_ln180_20_fu_302_p1, "zext_ln180_20_fu_302_p1");
    sc_trace(mVcdFile, add_ln544_fu_323_p2, "add_ln544_fu_323_p2");
    sc_trace(mVcdFile, trunc_ln78_fu_336_p1, "trunc_ln78_fu_336_p1");
    sc_trace(mVcdFile, zext_ln78_cast_fu_340_p3, "zext_ln78_cast_fu_340_p3");
    sc_trace(mVcdFile, add_ln78_fu_348_p2, "add_ln78_fu_348_p2");
    sc_trace(mVcdFile, trunc_ln719_fu_358_p1, "trunc_ln719_fu_358_p1");
    sc_trace(mVcdFile, zext_ln719_1_cast_fu_362_p3, "zext_ln719_1_cast_fu_362_p3");
    sc_trace(mVcdFile, add_ln719_fu_370_p2, "add_ln719_fu_370_p2");
    sc_trace(mVcdFile, trunc_ln719_1_fu_380_p1, "trunc_ln719_1_fu_380_p1");
    sc_trace(mVcdFile, zext_ln719_2_cast_fu_384_p3, "zext_ln719_2_cast_fu_384_p3");
    sc_trace(mVcdFile, trunc_ln719_2_fu_397_p1, "trunc_ln719_2_fu_397_p1");
    sc_trace(mVcdFile, zext_ln719_3_cast_fu_401_p3, "zext_ln719_3_cast_fu_401_p3");
    sc_trace(mVcdFile, xor_ln719_1_fu_430_p2, "xor_ln719_1_fu_430_p2");
    sc_trace(mVcdFile, xor_ln719_fu_426_p2, "xor_ln719_fu_426_p2");
    sc_trace(mVcdFile, xor_ln719_2_fu_436_p2, "xor_ln719_2_fu_436_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

aes_mix_columns8::~aes_mix_columns8() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void aes_mix_columns8::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(icmp_ln110_fu_290_p2.read(), ap_const_lv1_1))) {
        column_index_0_reg_190 = column_index_reg_455.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        column_index_0_reg_190 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        row_index_0_reg_202 = row_index_reg_513.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        row_index_0_reg_202 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln110_fu_290_p2.read()))) {
        add_ln180_reg_518 = add_ln180_fu_318_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        add_ln719_1_reg_553 = add_ln719_1_fu_392_p2.read();
        add_ln719_2_reg_558 = add_ln719_2_fu_409_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        column_index_reg_455 = column_index_fu_231_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        multiplication_V_loa_1_reg_568 = multiplication_V_q1.read();
        multiplication_V_loa_reg_563 = multiplication_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        row_index_reg_513 = row_index_fu_296_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        trunc_ln110_reg_505 = trunc_ln110_fu_286_p1.read();
        trunc_ln544_2_reg_500 = trunc_ln544_2_fu_282_p1.read();
        zext_ln180_reg_495 = zext_ln180_fu_278_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        trunc_ln544_1_reg_490 = trunc_ln544_1_fu_274_p1.read();
        trunc_ln544_reg_485 = trunc_ln544_fu_270_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln103_fu_225_p2.read(), ap_const_lv1_0))) {
        xor_ln180_reg_465 = xor_ln180_fu_242_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        zext_ln101_reg_447 = zext_ln101_fu_221_p1.read();
    }
}

void aes_mix_columns8::thread_add_ln180_fu_318_p2() {
    add_ln180_fu_318_p2 = (!zext_ln180_reg_495.read().is_01() || !zext_ln180_21_fu_314_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(zext_ln180_reg_495.read()) + sc_biguint<6>(zext_ln180_21_fu_314_p1.read()));
}

void aes_mix_columns8::thread_add_ln544_fu_323_p2() {
    add_ln544_fu_323_p2 = (!zext_ln180_20_fu_302_p1.read().is_01() || !zext_ln101_reg_447.read().is_01())? sc_lv<5>(): (sc_biguint<5>(zext_ln180_20_fu_302_p1.read()) + sc_biguint<5>(zext_ln101_reg_447.read()));
}

void aes_mix_columns8::thread_add_ln719_1_fu_392_p2() {
    add_ln719_1_fu_392_p2 = (!trunc_ln544_2_reg_500.read().is_01() || !zext_ln719_2_cast_fu_384_p3.read().is_01())? sc_lv<13>(): (sc_biguint<13>(trunc_ln544_2_reg_500.read()) + sc_biguint<13>(zext_ln719_2_cast_fu_384_p3.read()));
}

void aes_mix_columns8::thread_add_ln719_2_fu_409_p2() {
    add_ln719_2_fu_409_p2 = (!trunc_ln110_reg_505.read().is_01() || !zext_ln719_3_cast_fu_401_p3.read().is_01())? sc_lv<13>(): (sc_biguint<13>(trunc_ln110_reg_505.read()) + sc_biguint<13>(zext_ln719_3_cast_fu_401_p3.read()));
}

void aes_mix_columns8::thread_add_ln719_fu_370_p2() {
    add_ln719_fu_370_p2 = (!trunc_ln544_1_reg_490.read().is_01() || !zext_ln719_1_cast_fu_362_p3.read().is_01())? sc_lv<13>(): (sc_biguint<13>(trunc_ln544_1_reg_490.read()) + sc_biguint<13>(zext_ln719_1_cast_fu_362_p3.read()));
}

void aes_mix_columns8::thread_add_ln78_fu_348_p2() {
    add_ln78_fu_348_p2 = (!trunc_ln544_reg_485.read().is_01() || !zext_ln78_cast_fu_340_p3.read().is_01())? sc_lv<13>(): (sc_biguint<13>(trunc_ln544_reg_485.read()) + sc_biguint<13>(zext_ln78_cast_fu_340_p3.read()));
}

void aes_mix_columns8::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void aes_mix_columns8::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void aes_mix_columns8::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void aes_mix_columns8::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void aes_mix_columns8::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void aes_mix_columns8::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void aes_mix_columns8::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void aes_mix_columns8::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void aes_mix_columns8::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln103_fu_225_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln103_fu_225_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_column_index_fu_231_p2() {
    column_index_fu_231_p2 = (!column_index_0_reg_190.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(column_index_0_reg_190.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_mix_columns8::thread_constant_matrix_0_V_address0() {
    constant_matrix_0_V_address0 =  (sc_lv<4>) (zext_ln544_fu_328_p1.read());
}

void aes_mix_columns8::thread_constant_matrix_0_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        constant_matrix_0_V_ce0 = ap_const_logic_1;
    } else {
        constant_matrix_0_V_ce0 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_constant_matrix_1_V_address0() {
    constant_matrix_1_V_address0 =  (sc_lv<4>) (zext_ln544_fu_328_p1.read());
}

void aes_mix_columns8::thread_constant_matrix_1_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        constant_matrix_1_V_ce0 = ap_const_logic_1;
    } else {
        constant_matrix_1_V_ce0 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_constant_matrix_2_V_address0() {
    constant_matrix_2_V_address0 =  (sc_lv<4>) (zext_ln544_fu_328_p1.read());
}

void aes_mix_columns8::thread_constant_matrix_2_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        constant_matrix_2_V_ce0 = ap_const_logic_1;
    } else {
        constant_matrix_2_V_ce0 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_constant_matrix_3_V_address0() {
    constant_matrix_3_V_address0 =  (sc_lv<4>) (zext_ln544_fu_328_p1.read());
}

void aes_mix_columns8::thread_constant_matrix_3_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        constant_matrix_3_V_ce0 = ap_const_logic_1;
    } else {
        constant_matrix_3_V_ce0 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_icmp_ln103_fu_225_p2() {
    icmp_ln103_fu_225_p2 = (!column_index_0_reg_190.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(column_index_0_reg_190.read() == ap_const_lv3_4);
}

void aes_mix_columns8::thread_icmp_ln110_fu_290_p2() {
    icmp_ln110_fu_290_p2 = (!row_index_0_reg_202.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(row_index_0_reg_202.read() == ap_const_lv3_4);
}

void aes_mix_columns8::thread_multiplication_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        multiplication_V_address0 =  (sc_lv<12>) (sext_ln719_1_fu_414_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        multiplication_V_address0 =  (sc_lv<12>) (sext_ln78_fu_353_p1.read());
    } else {
        multiplication_V_address0 = "XXXXXXXXXXXX";
    }
}

void aes_mix_columns8::thread_multiplication_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        multiplication_V_address1 =  (sc_lv<12>) (sext_ln719_2_fu_418_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        multiplication_V_address1 =  (sc_lv<12>) (sext_ln719_fu_375_p1.read());
    } else {
        multiplication_V_address1 = "XXXXXXXXXXXX";
    }
}

void aes_mix_columns8::thread_multiplication_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
        multiplication_V_ce0 = ap_const_logic_1;
    } else {
        multiplication_V_ce0 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_multiplication_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
        multiplication_V_ce1 = ap_const_logic_1;
    } else {
        multiplication_V_ce1 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_row_index_fu_296_p2() {
    row_index_fu_296_p2 = (!row_index_0_reg_202.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(row_index_0_reg_202.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_mix_columns8::thread_sext_ln180_fu_262_p1() {
    sext_ln180_fu_262_p1 = esl_sext<4,3>(xor_ln180_reg_465.read());
}

void aes_mix_columns8::thread_sext_ln719_1_fu_414_p1() {
    sext_ln719_1_fu_414_p1 = esl_sext<64,13>(add_ln719_1_reg_553.read());
}

void aes_mix_columns8::thread_sext_ln719_2_fu_418_p1() {
    sext_ln719_2_fu_418_p1 = esl_sext<64,13>(add_ln719_2_reg_558.read());
}

void aes_mix_columns8::thread_sext_ln719_fu_375_p1() {
    sext_ln719_fu_375_p1 = esl_sext<64,13>(add_ln719_fu_370_p2.read());
}

void aes_mix_columns8::thread_sext_ln78_fu_353_p1() {
    sext_ln78_fu_353_p1 = esl_sext<64,13>(add_ln78_fu_348_p2.read());
}

void aes_mix_columns8::thread_state_matrix_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        state_matrix_V_address0 =  (sc_lv<4>) (zext_ln180_22_fu_422_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        state_matrix_V_address0 =  (sc_lv<4>) (tmp_s_fu_253_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        state_matrix_V_address0 =  (sc_lv<4>) (zext_ln106_fu_237_p1.read());
    } else {
        state_matrix_V_address0 =  (sc_lv<4>) ("XXXX");
    }
}

void aes_mix_columns8::thread_state_matrix_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        state_matrix_V_address1 =  (sc_lv<4>) (zext_ln180_19_fu_265_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        state_matrix_V_address1 =  (sc_lv<4>) (zext_ln180_18_fu_248_p1.read());
    } else {
        state_matrix_V_address1 =  (sc_lv<4>) ("XXXX");
    }
}

void aes_mix_columns8::thread_state_matrix_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        state_matrix_V_ce0 = ap_const_logic_1;
    } else {
        state_matrix_V_ce0 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_state_matrix_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        state_matrix_V_ce1 = ap_const_logic_1;
    } else {
        state_matrix_V_ce1 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_state_matrix_V_d0() {
    state_matrix_V_d0 = esl_zext<16,8>(xor_ln719_2_fu_436_p2.read());
}

void aes_mix_columns8::thread_state_matrix_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        state_matrix_V_we0 = ap_const_logic_1;
    } else {
        state_matrix_V_we0 = ap_const_logic_0;
    }
}

void aes_mix_columns8::thread_tmp_2_fu_306_p3() {
    tmp_2_fu_306_p3 = esl_concat<3,2>(row_index_0_reg_202.read(), ap_const_lv2_0);
}

void aes_mix_columns8::thread_tmp_fu_213_p3() {
    tmp_fu_213_p3 = esl_concat<2,2>(constant_matrix_V_offset.read(), ap_const_lv2_0);
}

void aes_mix_columns8::thread_tmp_s_fu_253_p3() {
    tmp_s_fu_253_p3 = esl_concat<61,3>(ap_const_lv61_1, column_index_0_reg_190.read());
}

void aes_mix_columns8::thread_trunc_ln110_fu_286_p1() {
    trunc_ln110_fu_286_p1 = state_matrix_V_q1.read().range(13-1, 0);
}

void aes_mix_columns8::thread_trunc_ln544_1_fu_274_p1() {
    trunc_ln544_1_fu_274_p1 = state_matrix_V_q1.read().range(13-1, 0);
}

void aes_mix_columns8::thread_trunc_ln544_2_fu_282_p1() {
    trunc_ln544_2_fu_282_p1 = state_matrix_V_q0.read().range(13-1, 0);
}

void aes_mix_columns8::thread_trunc_ln544_fu_270_p1() {
    trunc_ln544_fu_270_p1 = state_matrix_V_q0.read().range(13-1, 0);
}

void aes_mix_columns8::thread_trunc_ln719_1_fu_380_p1() {
    trunc_ln719_1_fu_380_p1 = constant_matrix_2_V_q0.read().range(5-1, 0);
}

void aes_mix_columns8::thread_trunc_ln719_2_fu_397_p1() {
    trunc_ln719_2_fu_397_p1 = constant_matrix_3_V_q0.read().range(5-1, 0);
}

void aes_mix_columns8::thread_trunc_ln719_fu_358_p1() {
    trunc_ln719_fu_358_p1 = constant_matrix_1_V_q0.read().range(5-1, 0);
}

void aes_mix_columns8::thread_trunc_ln78_fu_336_p1() {
    trunc_ln78_fu_336_p1 = constant_matrix_0_V_q0.read().range(5-1, 0);
}

void aes_mix_columns8::thread_xor_ln180_fu_242_p2() {
    xor_ln180_fu_242_p2 = (column_index_0_reg_190.read() ^ ap_const_lv3_4);
}

void aes_mix_columns8::thread_xor_ln719_1_fu_430_p2() {
    xor_ln719_1_fu_430_p2 = (multiplication_V_q0.read() ^ multiplication_V_q1.read());
}

void aes_mix_columns8::thread_xor_ln719_2_fu_436_p2() {
    xor_ln719_2_fu_436_p2 = (xor_ln719_1_fu_430_p2.read() ^ xor_ln719_fu_426_p2.read());
}

void aes_mix_columns8::thread_xor_ln719_fu_426_p2() {
    xor_ln719_fu_426_p2 = (multiplication_V_loa_1_reg_568.read() ^ multiplication_V_loa_reg_563.read());
}

void aes_mix_columns8::thread_zext_ln101_fu_221_p1() {
    zext_ln101_fu_221_p1 = esl_zext<5,4>(tmp_fu_213_p3.read());
}

void aes_mix_columns8::thread_zext_ln106_fu_237_p1() {
    zext_ln106_fu_237_p1 = esl_zext<64,3>(column_index_0_reg_190.read());
}

void aes_mix_columns8::thread_zext_ln180_18_fu_248_p1() {
    zext_ln180_18_fu_248_p1 = esl_zext<64,3>(xor_ln180_fu_242_p2.read());
}

void aes_mix_columns8::thread_zext_ln180_19_fu_265_p1() {
    zext_ln180_19_fu_265_p1 = esl_zext<64,4>(sext_ln180_fu_262_p1.read());
}

void aes_mix_columns8::thread_zext_ln180_20_fu_302_p1() {
    zext_ln180_20_fu_302_p1 = esl_zext<5,3>(row_index_0_reg_202.read());
}

void aes_mix_columns8::thread_zext_ln180_21_fu_314_p1() {
    zext_ln180_21_fu_314_p1 = esl_zext<6,5>(tmp_2_fu_306_p3.read());
}

void aes_mix_columns8::thread_zext_ln180_22_fu_422_p1() {
    zext_ln180_22_fu_422_p1 = esl_zext<64,6>(add_ln180_reg_518.read());
}

void aes_mix_columns8::thread_zext_ln180_fu_278_p1() {
    zext_ln180_fu_278_p1 = esl_zext<6,3>(column_index_0_reg_190.read());
}

void aes_mix_columns8::thread_zext_ln544_fu_328_p1() {
    zext_ln544_fu_328_p1 = esl_zext<64,5>(add_ln544_fu_323_p2.read());
}

void aes_mix_columns8::thread_zext_ln719_1_cast_fu_362_p3() {
    zext_ln719_1_cast_fu_362_p3 = esl_concat<5,8>(trunc_ln719_fu_358_p1.read(), ap_const_lv8_0);
}

void aes_mix_columns8::thread_zext_ln719_2_cast_fu_384_p3() {
    zext_ln719_2_cast_fu_384_p3 = esl_concat<5,8>(trunc_ln719_1_fu_380_p1.read(), ap_const_lv8_0);
}

void aes_mix_columns8::thread_zext_ln719_3_cast_fu_401_p3() {
    zext_ln719_3_cast_fu_401_p3 = esl_concat<5,8>(trunc_ln719_2_fu_397_p1.read(), ap_const_lv8_0);
}

void aes_mix_columns8::thread_zext_ln78_cast_fu_340_p3() {
    zext_ln78_cast_fu_340_p3 = esl_concat<5,8>(trunc_ln78_fu_336_p1.read(), ap_const_lv8_0);
}

void aes_mix_columns8::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln103_fu_225_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(icmp_ln110_fu_290_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<8>) ("XXXXXXXX");
            break;
    }
}

}

