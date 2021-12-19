// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "aes_substitute_bytes.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic aes_substitute_bytes::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic aes_substitute_bytes::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> aes_substitute_bytes::ap_ST_fsm_state1 = "1";
const sc_lv<6> aes_substitute_bytes::ap_ST_fsm_state2 = "10";
const sc_lv<6> aes_substitute_bytes::ap_ST_fsm_state3 = "100";
const sc_lv<6> aes_substitute_bytes::ap_ST_fsm_state4 = "1000";
const sc_lv<6> aes_substitute_bytes::ap_ST_fsm_state5 = "10000";
const sc_lv<6> aes_substitute_bytes::ap_ST_fsm_state6 = "100000";
const sc_lv<32> aes_substitute_bytes::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> aes_substitute_bytes::ap_const_lv32_1 = "1";
const sc_lv<1> aes_substitute_bytes::ap_const_lv1_0 = "0";
const sc_lv<32> aes_substitute_bytes::ap_const_lv32_2 = "10";
const sc_lv<32> aes_substitute_bytes::ap_const_lv32_3 = "11";
const sc_lv<3> aes_substitute_bytes::ap_const_lv3_0 = "000";
const sc_lv<32> aes_substitute_bytes::ap_const_lv32_4 = "100";
const sc_lv<8> aes_substitute_bytes::ap_const_lv8_0 = "00000000";
const sc_lv<3> aes_substitute_bytes::ap_const_lv3_4 = "100";
const sc_lv<3> aes_substitute_bytes::ap_const_lv3_1 = "1";
const sc_lv<2> aes_substitute_bytes::ap_const_lv2_0 = "00";
const sc_lv<5> aes_substitute_bytes::ap_const_lv5_1 = "1";
const sc_lv<59> aes_substitute_bytes::ap_const_lv59_0 = "00000000000000000000000000000000000000000000000000000000000";
const sc_lv<5> aes_substitute_bytes::ap_const_lv5_2 = "10";
const sc_lv<5> aes_substitute_bytes::ap_const_lv5_3 = "11";
const sc_lv<32> aes_substitute_bytes::ap_const_lv32_5 = "101";
const bool aes_substitute_bytes::ap_const_boolean_1 = true;

aes_substitute_bytes::aes_substitute_bytes(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln78_1_fu_253_p2);
    sensitive << ( zext_ln46_reg_311 );
    sensitive << ( trunc_ln78_1_fu_249_p1 );

    SC_METHOD(thread_add_ln78_2_fu_277_p2);
    sensitive << ( zext_ln46_reg_311 );
    sensitive << ( trunc_ln78_2_fu_273_p1 );

    SC_METHOD(thread_add_ln78_3_fu_291_p2);
    sensitive << ( zext_ln46_reg_311 );
    sensitive << ( trunc_ln78_3_fu_287_p1 );

    SC_METHOD(thread_add_ln78_fu_239_p2);
    sensitive << ( zext_ln46_reg_311 );
    sensitive << ( trunc_ln78_fu_235_p1 );

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

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_icmp_ln48_fu_167_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( row_index_0_reg_144 );

    SC_METHOD(thread_or_ln52_1_fu_207_p2);
    sensitive << ( tmp_5_reg_327 );

    SC_METHOD(thread_or_ln52_2_fu_221_p2);
    sensitive << ( tmp_5_reg_327 );

    SC_METHOD(thread_or_ln52_fu_192_p2);
    sensitive << ( tmp_5_fu_179_p3 );

    SC_METHOD(thread_row_index_fu_173_p2);
    sensitive << ( row_index_0_reg_144 );

    SC_METHOD(thread_s_box_V_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sext_ln78_fu_244_p1 );
    sensitive << ( sext_ln78_2_fu_282_p1 );

    SC_METHOD(thread_s_box_V_address1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sext_ln78_1_fu_258_p1 );
    sensitive << ( sext_ln78_3_fu_296_p1 );

    SC_METHOD(thread_s_box_V_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_s_box_V_ce1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_sext_ln78_1_fu_258_p1);
    sensitive << ( add_ln78_1_fu_253_p2 );

    SC_METHOD(thread_sext_ln78_2_fu_282_p1);
    sensitive << ( add_ln78_2_fu_277_p2 );

    SC_METHOD(thread_sext_ln78_3_fu_296_p1);
    sensitive << ( add_ln78_3_fu_291_p2 );

    SC_METHOD(thread_sext_ln78_fu_244_p1);
    sensitive << ( add_ln78_fu_239_p2 );

    SC_METHOD(thread_state_matrix_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( state_matrix_V_addr_reg_333 );
    sensitive << ( state_matrix_V_addr_2_reg_343 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln52_fu_187_p1 );
    sensitive << ( tmp_7_fu_212_p3 );

    SC_METHOD(thread_state_matrix_V_address1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( state_matrix_V_addr_1_reg_338 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( state_matrix_V_addr_3_reg_348 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_6_fu_198_p3 );
    sensitive << ( tmp_8_fu_226_p3 );

    SC_METHOD(thread_state_matrix_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_state_matrix_V_ce1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_state_matrix_V_d0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln78_fu_263_p1 );
    sensitive << ( zext_ln78_2_fu_301_p1 );

    SC_METHOD(thread_state_matrix_V_d1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln78_1_fu_268_p1 );
    sensitive << ( zext_ln78_3_fu_306_p1 );

    SC_METHOD(thread_state_matrix_V_we0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_state_matrix_V_we1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tmp_4_fu_155_p3);
    sensitive << ( s_box_V_offset );

    SC_METHOD(thread_tmp_5_fu_179_p3);
    sensitive << ( row_index_0_reg_144 );

    SC_METHOD(thread_tmp_6_fu_198_p3);
    sensitive << ( or_ln52_fu_192_p2 );

    SC_METHOD(thread_tmp_7_fu_212_p3);
    sensitive << ( or_ln52_1_fu_207_p2 );

    SC_METHOD(thread_tmp_8_fu_226_p3);
    sensitive << ( or_ln52_2_fu_221_p2 );

    SC_METHOD(thread_trunc_ln78_1_fu_249_p1);
    sensitive << ( state_matrix_V_q1 );

    SC_METHOD(thread_trunc_ln78_2_fu_273_p1);
    sensitive << ( state_matrix_V_q0 );

    SC_METHOD(thread_trunc_ln78_3_fu_287_p1);
    sensitive << ( state_matrix_V_q1 );

    SC_METHOD(thread_trunc_ln78_fu_235_p1);
    sensitive << ( state_matrix_V_q0 );

    SC_METHOD(thread_zext_ln46_fu_163_p1);
    sensitive << ( tmp_4_fu_155_p3 );

    SC_METHOD(thread_zext_ln52_fu_187_p1);
    sensitive << ( tmp_5_fu_179_p3 );

    SC_METHOD(thread_zext_ln78_1_fu_268_p1);
    sensitive << ( s_box_V_q1 );

    SC_METHOD(thread_zext_ln78_2_fu_301_p1);
    sensitive << ( s_box_V_q0 );

    SC_METHOD(thread_zext_ln78_3_fu_306_p1);
    sensitive << ( s_box_V_q1 );

    SC_METHOD(thread_zext_ln78_fu_263_p1);
    sensitive << ( s_box_V_q0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln48_fu_167_p2 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "aes_substitute_bytes_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, state_matrix_V_we1, "(port)state_matrix_V_we1");
    sc_trace(mVcdFile, state_matrix_V_d1, "(port)state_matrix_V_d1");
    sc_trace(mVcdFile, state_matrix_V_q1, "(port)state_matrix_V_q1");
    sc_trace(mVcdFile, s_box_V_address0, "(port)s_box_V_address0");
    sc_trace(mVcdFile, s_box_V_ce0, "(port)s_box_V_ce0");
    sc_trace(mVcdFile, s_box_V_q0, "(port)s_box_V_q0");
    sc_trace(mVcdFile, s_box_V_address1, "(port)s_box_V_address1");
    sc_trace(mVcdFile, s_box_V_ce1, "(port)s_box_V_ce1");
    sc_trace(mVcdFile, s_box_V_q1, "(port)s_box_V_q1");
    sc_trace(mVcdFile, s_box_V_offset, "(port)s_box_V_offset");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, zext_ln46_fu_163_p1, "zext_ln46_fu_163_p1");
    sc_trace(mVcdFile, zext_ln46_reg_311, "zext_ln46_reg_311");
    sc_trace(mVcdFile, row_index_fu_173_p2, "row_index_fu_173_p2");
    sc_trace(mVcdFile, row_index_reg_322, "row_index_reg_322");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_5_fu_179_p3, "tmp_5_fu_179_p3");
    sc_trace(mVcdFile, tmp_5_reg_327, "tmp_5_reg_327");
    sc_trace(mVcdFile, icmp_ln48_fu_167_p2, "icmp_ln48_fu_167_p2");
    sc_trace(mVcdFile, state_matrix_V_addr_reg_333, "state_matrix_V_addr_reg_333");
    sc_trace(mVcdFile, state_matrix_V_addr_1_reg_338, "state_matrix_V_addr_1_reg_338");
    sc_trace(mVcdFile, state_matrix_V_addr_2_reg_343, "state_matrix_V_addr_2_reg_343");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, state_matrix_V_addr_3_reg_348, "state_matrix_V_addr_3_reg_348");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, row_index_0_reg_144, "row_index_0_reg_144");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, zext_ln52_fu_187_p1, "zext_ln52_fu_187_p1");
    sc_trace(mVcdFile, tmp_6_fu_198_p3, "tmp_6_fu_198_p3");
    sc_trace(mVcdFile, tmp_7_fu_212_p3, "tmp_7_fu_212_p3");
    sc_trace(mVcdFile, tmp_8_fu_226_p3, "tmp_8_fu_226_p3");
    sc_trace(mVcdFile, sext_ln78_fu_244_p1, "sext_ln78_fu_244_p1");
    sc_trace(mVcdFile, sext_ln78_1_fu_258_p1, "sext_ln78_1_fu_258_p1");
    sc_trace(mVcdFile, sext_ln78_2_fu_282_p1, "sext_ln78_2_fu_282_p1");
    sc_trace(mVcdFile, sext_ln78_3_fu_296_p1, "sext_ln78_3_fu_296_p1");
    sc_trace(mVcdFile, zext_ln78_fu_263_p1, "zext_ln78_fu_263_p1");
    sc_trace(mVcdFile, zext_ln78_1_fu_268_p1, "zext_ln78_1_fu_268_p1");
    sc_trace(mVcdFile, zext_ln78_2_fu_301_p1, "zext_ln78_2_fu_301_p1");
    sc_trace(mVcdFile, zext_ln78_3_fu_306_p1, "zext_ln78_3_fu_306_p1");
    sc_trace(mVcdFile, tmp_4_fu_155_p3, "tmp_4_fu_155_p3");
    sc_trace(mVcdFile, or_ln52_fu_192_p2, "or_ln52_fu_192_p2");
    sc_trace(mVcdFile, or_ln52_1_fu_207_p2, "or_ln52_1_fu_207_p2");
    sc_trace(mVcdFile, or_ln52_2_fu_221_p2, "or_ln52_2_fu_221_p2");
    sc_trace(mVcdFile, trunc_ln78_fu_235_p1, "trunc_ln78_fu_235_p1");
    sc_trace(mVcdFile, add_ln78_fu_239_p2, "add_ln78_fu_239_p2");
    sc_trace(mVcdFile, trunc_ln78_1_fu_249_p1, "trunc_ln78_1_fu_249_p1");
    sc_trace(mVcdFile, add_ln78_1_fu_253_p2, "add_ln78_1_fu_253_p2");
    sc_trace(mVcdFile, trunc_ln78_2_fu_273_p1, "trunc_ln78_2_fu_273_p1");
    sc_trace(mVcdFile, add_ln78_2_fu_277_p2, "add_ln78_2_fu_277_p2");
    sc_trace(mVcdFile, trunc_ln78_3_fu_287_p1, "trunc_ln78_3_fu_287_p1");
    sc_trace(mVcdFile, add_ln78_3_fu_291_p2, "add_ln78_3_fu_291_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

aes_substitute_bytes::~aes_substitute_bytes() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void aes_substitute_bytes::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        row_index_0_reg_144 = row_index_reg_322.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        row_index_0_reg_144 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        row_index_reg_322 = row_index_fu_173_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln48_fu_167_p2.read(), ap_const_lv1_0))) {
        state_matrix_V_addr_1_reg_338 =  (sc_lv<4>) (tmp_6_fu_198_p3.read());
        state_matrix_V_addr_reg_333 =  (sc_lv<4>) (zext_ln52_fu_187_p1.read());
        tmp_5_reg_327 = tmp_5_fu_179_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        state_matrix_V_addr_2_reg_343 =  (sc_lv<4>) (tmp_7_fu_212_p3.read());
        state_matrix_V_addr_3_reg_348 =  (sc_lv<4>) (tmp_8_fu_226_p3.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        zext_ln46_reg_311 = zext_ln46_fu_163_p1.read();
    }
}

void aes_substitute_bytes::thread_add_ln78_1_fu_253_p2() {
    add_ln78_1_fu_253_p2 = (!trunc_ln78_1_fu_249_p1.read().is_01() || !zext_ln46_reg_311.read().is_01())? sc_lv<11>(): (sc_biguint<11>(trunc_ln78_1_fu_249_p1.read()) + sc_biguint<11>(zext_ln46_reg_311.read()));
}

void aes_substitute_bytes::thread_add_ln78_2_fu_277_p2() {
    add_ln78_2_fu_277_p2 = (!trunc_ln78_2_fu_273_p1.read().is_01() || !zext_ln46_reg_311.read().is_01())? sc_lv<11>(): (sc_biguint<11>(trunc_ln78_2_fu_273_p1.read()) + sc_biguint<11>(zext_ln46_reg_311.read()));
}

void aes_substitute_bytes::thread_add_ln78_3_fu_291_p2() {
    add_ln78_3_fu_291_p2 = (!trunc_ln78_3_fu_287_p1.read().is_01() || !zext_ln46_reg_311.read().is_01())? sc_lv<11>(): (sc_biguint<11>(trunc_ln78_3_fu_287_p1.read()) + sc_biguint<11>(zext_ln46_reg_311.read()));
}

void aes_substitute_bytes::thread_add_ln78_fu_239_p2() {
    add_ln78_fu_239_p2 = (!trunc_ln78_fu_235_p1.read().is_01() || !zext_ln46_reg_311.read().is_01())? sc_lv<11>(): (sc_biguint<11>(trunc_ln78_fu_235_p1.read()) + sc_biguint<11>(zext_ln46_reg_311.read()));
}

void aes_substitute_bytes::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void aes_substitute_bytes::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void aes_substitute_bytes::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void aes_substitute_bytes::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void aes_substitute_bytes::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void aes_substitute_bytes::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void aes_substitute_bytes::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_icmp_ln48_fu_167_p2() {
    icmp_ln48_fu_167_p2 = (!row_index_0_reg_144.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(row_index_0_reg_144.read() == ap_const_lv3_4);
}

void aes_substitute_bytes::thread_or_ln52_1_fu_207_p2() {
    or_ln52_1_fu_207_p2 = (tmp_5_reg_327.read() | ap_const_lv5_2);
}

void aes_substitute_bytes::thread_or_ln52_2_fu_221_p2() {
    or_ln52_2_fu_221_p2 = (tmp_5_reg_327.read() | ap_const_lv5_3);
}

void aes_substitute_bytes::thread_or_ln52_fu_192_p2() {
    or_ln52_fu_192_p2 = (tmp_5_fu_179_p3.read() | ap_const_lv5_1);
}

void aes_substitute_bytes::thread_row_index_fu_173_p2() {
    row_index_fu_173_p2 = (!row_index_0_reg_144.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(row_index_0_reg_144.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_substitute_bytes::thread_s_box_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        s_box_V_address0 =  (sc_lv<10>) (sext_ln78_2_fu_282_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        s_box_V_address0 =  (sc_lv<10>) (sext_ln78_fu_244_p1.read());
    } else {
        s_box_V_address0 = "XXXXXXXXXX";
    }
}

void aes_substitute_bytes::thread_s_box_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        s_box_V_address1 =  (sc_lv<10>) (sext_ln78_3_fu_296_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        s_box_V_address1 =  (sc_lv<10>) (sext_ln78_1_fu_258_p1.read());
    } else {
        s_box_V_address1 = "XXXXXXXXXX";
    }
}

void aes_substitute_bytes::thread_s_box_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        s_box_V_ce0 = ap_const_logic_1;
    } else {
        s_box_V_ce0 = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_s_box_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        s_box_V_ce1 = ap_const_logic_1;
    } else {
        s_box_V_ce1 = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_sext_ln78_1_fu_258_p1() {
    sext_ln78_1_fu_258_p1 = esl_sext<64,11>(add_ln78_1_fu_253_p2.read());
}

void aes_substitute_bytes::thread_sext_ln78_2_fu_282_p1() {
    sext_ln78_2_fu_282_p1 = esl_sext<64,11>(add_ln78_2_fu_277_p2.read());
}

void aes_substitute_bytes::thread_sext_ln78_3_fu_296_p1() {
    sext_ln78_3_fu_296_p1 = esl_sext<64,11>(add_ln78_3_fu_291_p2.read());
}

void aes_substitute_bytes::thread_sext_ln78_fu_244_p1() {
    sext_ln78_fu_244_p1 = esl_sext<64,11>(add_ln78_fu_239_p2.read());
}

void aes_substitute_bytes::thread_state_matrix_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        state_matrix_V_address0 = state_matrix_V_addr_2_reg_343.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        state_matrix_V_address0 = state_matrix_V_addr_reg_333.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        state_matrix_V_address0 =  (sc_lv<4>) (tmp_7_fu_212_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        state_matrix_V_address0 =  (sc_lv<4>) (zext_ln52_fu_187_p1.read());
    } else {
        state_matrix_V_address0 =  (sc_lv<4>) ("XXXX");
    }
}

void aes_substitute_bytes::thread_state_matrix_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        state_matrix_V_address1 = state_matrix_V_addr_3_reg_348.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        state_matrix_V_address1 = state_matrix_V_addr_1_reg_338.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        state_matrix_V_address1 =  (sc_lv<4>) (tmp_8_fu_226_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        state_matrix_V_address1 =  (sc_lv<4>) (tmp_6_fu_198_p3.read());
    } else {
        state_matrix_V_address1 =  (sc_lv<4>) ("XXXX");
    }
}

void aes_substitute_bytes::thread_state_matrix_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        state_matrix_V_ce0 = ap_const_logic_1;
    } else {
        state_matrix_V_ce0 = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_state_matrix_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        state_matrix_V_ce1 = ap_const_logic_1;
    } else {
        state_matrix_V_ce1 = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_state_matrix_V_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        state_matrix_V_d0 = zext_ln78_2_fu_301_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        state_matrix_V_d0 = zext_ln78_fu_263_p1.read();
    } else {
        state_matrix_V_d0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void aes_substitute_bytes::thread_state_matrix_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        state_matrix_V_d1 = zext_ln78_3_fu_306_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        state_matrix_V_d1 = zext_ln78_1_fu_268_p1.read();
    } else {
        state_matrix_V_d1 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void aes_substitute_bytes::thread_state_matrix_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        state_matrix_V_we0 = ap_const_logic_1;
    } else {
        state_matrix_V_we0 = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_state_matrix_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        state_matrix_V_we1 = ap_const_logic_1;
    } else {
        state_matrix_V_we1 = ap_const_logic_0;
    }
}

void aes_substitute_bytes::thread_tmp_4_fu_155_p3() {
    tmp_4_fu_155_p3 = esl_concat<2,8>(s_box_V_offset.read(), ap_const_lv8_0);
}

void aes_substitute_bytes::thread_tmp_5_fu_179_p3() {
    tmp_5_fu_179_p3 = esl_concat<3,2>(row_index_0_reg_144.read(), ap_const_lv2_0);
}

void aes_substitute_bytes::thread_tmp_6_fu_198_p3() {
    tmp_6_fu_198_p3 = esl_concat<59,5>(ap_const_lv59_0, or_ln52_fu_192_p2.read());
}

void aes_substitute_bytes::thread_tmp_7_fu_212_p3() {
    tmp_7_fu_212_p3 = esl_concat<59,5>(ap_const_lv59_0, or_ln52_1_fu_207_p2.read());
}

void aes_substitute_bytes::thread_tmp_8_fu_226_p3() {
    tmp_8_fu_226_p3 = esl_concat<59,5>(ap_const_lv59_0, or_ln52_2_fu_221_p2.read());
}

void aes_substitute_bytes::thread_trunc_ln78_1_fu_249_p1() {
    trunc_ln78_1_fu_249_p1 = state_matrix_V_q1.read().range(11-1, 0);
}

void aes_substitute_bytes::thread_trunc_ln78_2_fu_273_p1() {
    trunc_ln78_2_fu_273_p1 = state_matrix_V_q0.read().range(11-1, 0);
}

void aes_substitute_bytes::thread_trunc_ln78_3_fu_287_p1() {
    trunc_ln78_3_fu_287_p1 = state_matrix_V_q1.read().range(11-1, 0);
}

void aes_substitute_bytes::thread_trunc_ln78_fu_235_p1() {
    trunc_ln78_fu_235_p1 = state_matrix_V_q0.read().range(11-1, 0);
}

void aes_substitute_bytes::thread_zext_ln46_fu_163_p1() {
    zext_ln46_fu_163_p1 = esl_zext<11,10>(tmp_4_fu_155_p3.read());
}

void aes_substitute_bytes::thread_zext_ln52_fu_187_p1() {
    zext_ln52_fu_187_p1 = esl_zext<64,5>(tmp_5_fu_179_p3.read());
}

void aes_substitute_bytes::thread_zext_ln78_1_fu_268_p1() {
    zext_ln78_1_fu_268_p1 = esl_zext<16,8>(s_box_V_q1.read());
}

void aes_substitute_bytes::thread_zext_ln78_2_fu_301_p1() {
    zext_ln78_2_fu_301_p1 = esl_zext<16,8>(s_box_V_q0.read());
}

void aes_substitute_bytes::thread_zext_ln78_3_fu_306_p1() {
    zext_ln78_3_fu_306_p1 = esl_zext<16,8>(s_box_V_q1.read());
}

void aes_substitute_bytes::thread_zext_ln78_fu_263_p1() {
    zext_ln78_fu_263_p1 = esl_zext<16,8>(s_box_V_q0.read());
}

void aes_substitute_bytes::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln48_fu_167_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}

