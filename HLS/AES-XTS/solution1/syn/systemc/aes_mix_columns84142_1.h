// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_mix_columns84142_1_HH_
#define _aes_mix_columns84142_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct aes_mix_columns84142_1 : public sc_module {
    // Port declarations 106
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
    sc_in< sc_lv<16> > state_matrix_V_q1;
    sc_out< sc_logic > m_axi_constant_matrix_V_AWVALID;
    sc_in< sc_logic > m_axi_constant_matrix_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_constant_matrix_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_constant_matrix_V_AWID;
    sc_out< sc_lv<32> > m_axi_constant_matrix_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_constant_matrix_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_constant_matrix_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_constant_matrix_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_constant_matrix_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_constant_matrix_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_constant_matrix_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_constant_matrix_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_constant_matrix_V_AWUSER;
    sc_out< sc_logic > m_axi_constant_matrix_V_WVALID;
    sc_in< sc_logic > m_axi_constant_matrix_V_WREADY;
    sc_out< sc_lv<16> > m_axi_constant_matrix_V_WDATA;
    sc_out< sc_lv<2> > m_axi_constant_matrix_V_WSTRB;
    sc_out< sc_logic > m_axi_constant_matrix_V_WLAST;
    sc_out< sc_lv<1> > m_axi_constant_matrix_V_WID;
    sc_out< sc_lv<1> > m_axi_constant_matrix_V_WUSER;
    sc_out< sc_logic > m_axi_constant_matrix_V_ARVALID;
    sc_in< sc_logic > m_axi_constant_matrix_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_constant_matrix_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_constant_matrix_V_ARID;
    sc_out< sc_lv<32> > m_axi_constant_matrix_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_constant_matrix_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_constant_matrix_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_constant_matrix_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_constant_matrix_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_constant_matrix_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_constant_matrix_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_constant_matrix_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_constant_matrix_V_ARUSER;
    sc_in< sc_logic > m_axi_constant_matrix_V_RVALID;
    sc_out< sc_logic > m_axi_constant_matrix_V_RREADY;
    sc_in< sc_lv<16> > m_axi_constant_matrix_V_RDATA;
    sc_in< sc_logic > m_axi_constant_matrix_V_RLAST;
    sc_in< sc_lv<1> > m_axi_constant_matrix_V_RID;
    sc_in< sc_lv<1> > m_axi_constant_matrix_V_RUSER;
    sc_in< sc_lv<2> > m_axi_constant_matrix_V_RRESP;
    sc_in< sc_logic > m_axi_constant_matrix_V_BVALID;
    sc_out< sc_logic > m_axi_constant_matrix_V_BREADY;
    sc_in< sc_lv<2> > m_axi_constant_matrix_V_BRESP;
    sc_in< sc_lv<1> > m_axi_constant_matrix_V_BID;
    sc_in< sc_lv<1> > m_axi_constant_matrix_V_BUSER;
    sc_in< sc_lv<31> > constant_matrix_V_offset;
    sc_out< sc_logic > m_axi_multiplication_V_AWVALID;
    sc_in< sc_logic > m_axi_multiplication_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_multiplication_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_multiplication_V_AWID;
    sc_out< sc_lv<32> > m_axi_multiplication_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_multiplication_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_multiplication_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_multiplication_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_multiplication_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_multiplication_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_multiplication_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_multiplication_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_multiplication_V_AWUSER;
    sc_out< sc_logic > m_axi_multiplication_V_WVALID;
    sc_in< sc_logic > m_axi_multiplication_V_WREADY;
    sc_out< sc_lv<16> > m_axi_multiplication_V_WDATA;
    sc_out< sc_lv<2> > m_axi_multiplication_V_WSTRB;
    sc_out< sc_logic > m_axi_multiplication_V_WLAST;
    sc_out< sc_lv<1> > m_axi_multiplication_V_WID;
    sc_out< sc_lv<1> > m_axi_multiplication_V_WUSER;
    sc_out< sc_logic > m_axi_multiplication_V_ARVALID;
    sc_in< sc_logic > m_axi_multiplication_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_multiplication_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_multiplication_V_ARID;
    sc_out< sc_lv<32> > m_axi_multiplication_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_multiplication_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_multiplication_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_multiplication_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_multiplication_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_multiplication_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_multiplication_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_multiplication_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_multiplication_V_ARUSER;
    sc_in< sc_logic > m_axi_multiplication_V_RVALID;
    sc_out< sc_logic > m_axi_multiplication_V_RREADY;
    sc_in< sc_lv<16> > m_axi_multiplication_V_RDATA;
    sc_in< sc_logic > m_axi_multiplication_V_RLAST;
    sc_in< sc_lv<1> > m_axi_multiplication_V_RID;
    sc_in< sc_lv<1> > m_axi_multiplication_V_RUSER;
    sc_in< sc_lv<2> > m_axi_multiplication_V_RRESP;
    sc_in< sc_logic > m_axi_multiplication_V_BVALID;
    sc_out< sc_logic > m_axi_multiplication_V_BREADY;
    sc_in< sc_lv<2> > m_axi_multiplication_V_BRESP;
    sc_in< sc_lv<1> > m_axi_multiplication_V_BID;
    sc_in< sc_lv<1> > m_axi_multiplication_V_BUSER;
    sc_in< sc_lv<31> > multiplication_V_offset;


    // Module declarations
    aes_mix_columns84142_1(sc_module_name name);
    SC_HAS_PROCESS(aes_mix_columns84142_1);

    ~aes_mix_columns84142_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<34> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > constant_matrix_V_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > constant_matrix_V_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > multiplication_V_blk_n_AR;
    sc_signal< sc_logic > multiplication_V_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<32> > constant_matrix_V_of_1_fu_266_p1;
    sc_signal< sc_lv<32> > constant_matrix_V_of_1_reg_849;
    sc_signal< sc_lv<64> > zext_ln78_fu_270_p1;
    sc_signal< sc_lv<64> > zext_ln78_reg_857;
    sc_signal< sc_lv<3> > column_index_fu_280_p2;
    sc_signal< sc_lv<3> > column_index_reg_868;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln96_fu_274_p2;
    sc_signal< sc_lv<3> > xor_ln180_fu_291_p2;
    sc_signal< sc_lv<3> > xor_ln180_reg_878;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<16> > state_matrix_V_load_reg_898;
    sc_signal< sc_lv<16> > state_matrix_V_load_1_reg_904;
    sc_signal< sc_lv<6> > zext_ln180_fu_319_p1;
    sc_signal< sc_lv<6> > zext_ln180_reg_910;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<16> > state_matrix_V_load_2_reg_915;
    sc_signal< sc_lv<16> > state_matrix_V_load_3_reg_920;
    sc_signal< sc_lv<18> > sext_ln544_fu_323_p1;
    sc_signal< sc_lv<18> > sext_ln544_reg_925;
    sc_signal< sc_lv<18> > sext_ln544_5_fu_326_p1;
    sc_signal< sc_lv<18> > sext_ln544_5_reg_930;
    sc_signal< sc_lv<18> > sext_ln544_6_fu_329_p1;
    sc_signal< sc_lv<18> > sext_ln544_6_reg_935;
    sc_signal< sc_lv<18> > sext_ln103_fu_333_p1;
    sc_signal< sc_lv<18> > sext_ln103_reg_940;
    sc_signal< sc_lv<3> > row_index_fu_343_p2;
    sc_signal< sc_lv<3> > row_index_reg_948;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<6> > add_ln180_fu_361_p2;
    sc_signal< sc_lv<6> > add_ln180_reg_953;
    sc_signal< sc_lv<1> > icmp_ln103_fu_337_p2;
    sc_signal< sc_lv<3> > xor_ln544_fu_366_p2;
    sc_signal< sc_lv<3> > xor_ln544_reg_958;
    sc_signal< sc_lv<32> > constant_matrix_V_ad_reg_963;
    sc_signal< sc_lv<32> > constant_matrix_V_ad_8_reg_969;
    sc_signal< sc_lv<32> > constant_matrix_V_ad_9_reg_975;
    sc_signal< sc_lv<32> > constant_matrix_V_ad_10_reg_981;
    sc_signal< sc_lv<16> > constant_matrix_V_ad_11_reg_987;
    sc_signal< sc_lv<16> > shl_ln78_fu_511_p2;
    sc_signal< sc_lv<16> > shl_ln78_reg_992;
    sc_signal< sc_lv<32> > multiplication_V_add_reg_997;
    sc_signal< sc_lv<16> > multiplication_V_add_8_reg_1003;
    sc_signal< bool > ap_block_state22;
    sc_signal< sc_lv<8> > tmp_17_reg_1008;
    sc_signal< sc_lv<16> > tmp_24_fu_564_p3;
    sc_signal< sc_lv<16> > tmp_24_reg_1013;
    sc_signal< sc_lv<32> > multiplication_V_add_9_reg_1018;
    sc_signal< sc_lv<16> > constant_matrix_V_ad_13_reg_1024;
    sc_signal< sc_lv<16> > shl_ln719_fu_609_p2;
    sc_signal< sc_lv<16> > shl_ln719_reg_1029;
    sc_signal< sc_lv<32> > multiplication_V_add_11_reg_1034;
    sc_signal< sc_lv<8> > tmp_29_reg_1040;
    sc_signal< sc_lv<16> > tmp_30_fu_662_p3;
    sc_signal< sc_lv<16> > tmp_30_reg_1045;
    sc_signal< sc_lv<32> > multiplication_V_add_13_reg_1050;
    sc_signal< sc_lv<16> > multiplication_V_add_10_reg_1056;
    sc_signal< sc_lv<16> > multiplication_V_add_12_reg_1061;
    sc_signal< sc_lv<8> > xor_ln719_fu_765_p2;
    sc_signal< sc_lv<8> > xor_ln719_reg_1066;
    sc_signal< sc_lv<16> > multiplication_V_add_14_reg_1071;
    sc_signal< sc_lv<3> > column_index_0_reg_243;
    sc_signal< sc_lv<3> > row_index_0_reg_255;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_lv<64> > zext_ln99_fu_286_p1;
    sc_signal< sc_lv<64> > zext_ln180_24_fu_297_p1;
    sc_signal< sc_lv<64> > tmp_fu_302_p3;
    sc_signal< sc_lv<64> > zext_ln180_25_fu_314_p1;
    sc_signal< sc_lv<64> > zext_ln180_27_fu_771_p1;
    sc_signal< sc_lv<64> > zext_ln544_5_fu_389_p1;
    sc_signal< sc_lv<64> > zext_ln544_7_fu_431_p1;
    sc_signal< sc_lv<64> > zext_ln544_9_fu_466_p1;
    sc_signal< sc_lv<64> > zext_ln544_11_fu_501_p1;
    sc_signal< sc_lv<64> > add_ln78_4_fu_543_p2;
    sc_signal< sc_lv<64> > add_ln719_10_fu_598_p2;
    sc_signal< sc_lv<64> > add_ln719_13_fu_641_p2;
    sc_signal< sc_lv<64> > add_ln719_15_fu_696_p2;
    sc_signal< bool > ap_block_state15_io;
    sc_signal< sc_lv<4> > sext_ln180_fu_311_p1;
    sc_signal< sc_lv<16> > sext_ln544_6_fu_329_p0;
    sc_signal< sc_lv<16> > sext_ln103_fu_333_p0;
    sc_signal< sc_lv<5> > tmp_s_fu_349_p3;
    sc_signal< sc_lv<6> > zext_ln180_26_fu_357_p1;
    sc_signal< sc_lv<4> > tmp_16_fu_372_p3;
    sc_signal< sc_lv<32> > zext_ln544_fu_380_p1;
    sc_signal< sc_lv<32> > add_ln544_fu_384_p2;
    sc_signal< sc_lv<5> > tmp_18_fu_399_p3;
    sc_signal< sc_lv<5> > or_ln544_fu_406_p2;
    sc_signal< sc_lv<4> > tmp_19_fu_412_p4;
    sc_signal< sc_lv<32> > zext_ln544_6_fu_422_p1;
    sc_signal< sc_lv<32> > add_ln544_4_fu_426_p2;
    sc_signal< sc_lv<5> > or_ln544_3_fu_441_p2;
    sc_signal< sc_lv<4> > tmp_20_fu_447_p4;
    sc_signal< sc_lv<32> > zext_ln544_8_fu_457_p1;
    sc_signal< sc_lv<32> > add_ln544_5_fu_461_p2;
    sc_signal< sc_lv<5> > or_ln544_4_fu_476_p2;
    sc_signal< sc_lv<4> > tmp_21_fu_482_p4;
    sc_signal< sc_lv<32> > zext_ln544_10_fu_492_p1;
    sc_signal< sc_lv<32> > add_ln544_6_fu_496_p2;
    sc_signal< sc_lv<18> > zext_ln78_3_fu_516_p1;
    sc_signal< sc_lv<18> > add_ln78_fu_520_p2;
    sc_signal< sc_lv<17> > tmp_22_fu_525_p4;
    sc_signal< sc_lv<63> > sext_ln78_fu_535_p1;
    sc_signal< sc_lv<64> > zext_ln78_4_fu_539_p1;
    sc_signal< sc_lv<18> > zext_ln719_7_fu_571_p1;
    sc_signal< sc_lv<18> > add_ln719_fu_575_p2;
    sc_signal< sc_lv<17> > tmp_25_fu_580_p4;
    sc_signal< sc_lv<63> > sext_ln719_fu_590_p1;
    sc_signal< sc_lv<64> > zext_ln719_8_fu_594_p1;
    sc_signal< sc_lv<18> > zext_ln719_9_fu_614_p1;
    sc_signal< sc_lv<18> > add_ln719_12_fu_618_p2;
    sc_signal< sc_lv<17> > tmp_27_fu_623_p4;
    sc_signal< sc_lv<63> > sext_ln719_3_fu_633_p1;
    sc_signal< sc_lv<64> > zext_ln719_10_fu_637_p1;
    sc_signal< sc_lv<18> > zext_ln719_11_fu_669_p1;
    sc_signal< sc_lv<18> > add_ln719_14_fu_673_p2;
    sc_signal< sc_lv<17> > tmp_31_fu_678_p4;
    sc_signal< sc_lv<63> > sext_ln719_4_fu_688_p1;
    sc_signal< sc_lv<64> > zext_ln719_12_fu_692_p1;
    sc_signal< sc_lv<16> > add_ln78_5_fu_707_p2;
    sc_signal< sc_lv<1> > empty_43_fu_711_p1;
    sc_signal< sc_lv<4> > tmp_23_fu_715_p3;
    sc_signal< sc_lv<16> > tmp_83_fu_723_p1;
    sc_signal< sc_lv<16> > lshr_ln78_fu_727_p2;
    sc_signal< sc_lv<16> > add_ln719_9_fu_736_p2;
    sc_signal< sc_lv<1> > empty_44_fu_740_p1;
    sc_signal< sc_lv<4> > tmp_26_fu_744_p3;
    sc_signal< sc_lv<16> > tmp_88_fu_752_p1;
    sc_signal< sc_lv<16> > lshr_ln719_fu_756_p2;
    sc_signal< sc_lv<8> > trunc_ln719_fu_761_p1;
    sc_signal< sc_lv<8> > trunc_ln78_fu_732_p1;
    sc_signal< sc_lv<16> > add_ln719_11_fu_775_p2;
    sc_signal< sc_lv<1> > empty_45_fu_779_p1;
    sc_signal< sc_lv<4> > tmp_28_fu_783_p3;
    sc_signal< sc_lv<16> > tmp_93_fu_791_p1;
    sc_signal< sc_lv<16> > lshr_ln719_3_fu_795_p2;
    sc_signal< sc_lv<16> > add_ln719_16_fu_804_p2;
    sc_signal< sc_lv<1> > empty_46_fu_808_p1;
    sc_signal< sc_lv<4> > tmp_32_fu_812_p3;
    sc_signal< sc_lv<16> > tmp_98_fu_820_p1;
    sc_signal< sc_lv<16> > lshr_ln719_4_fu_824_p2;
    sc_signal< sc_lv<8> > trunc_ln719_3_fu_800_p1;
    sc_signal< sc_lv<8> > trunc_ln719_4_fu_829_p1;
    sc_signal< sc_lv<8> > xor_ln719_1_fu_833_p2;
    sc_signal< sc_lv<8> > xor_ln719_2_fu_839_p2;
    sc_signal< sc_lv<34> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<34> ap_ST_fsm_state1;
    static const sc_lv<34> ap_ST_fsm_state2;
    static const sc_lv<34> ap_ST_fsm_state3;
    static const sc_lv<34> ap_ST_fsm_state4;
    static const sc_lv<34> ap_ST_fsm_state5;
    static const sc_lv<34> ap_ST_fsm_state6;
    static const sc_lv<34> ap_ST_fsm_state7;
    static const sc_lv<34> ap_ST_fsm_state8;
    static const sc_lv<34> ap_ST_fsm_state9;
    static const sc_lv<34> ap_ST_fsm_state10;
    static const sc_lv<34> ap_ST_fsm_state11;
    static const sc_lv<34> ap_ST_fsm_state12;
    static const sc_lv<34> ap_ST_fsm_state13;
    static const sc_lv<34> ap_ST_fsm_state14;
    static const sc_lv<34> ap_ST_fsm_state15;
    static const sc_lv<34> ap_ST_fsm_state16;
    static const sc_lv<34> ap_ST_fsm_state17;
    static const sc_lv<34> ap_ST_fsm_state18;
    static const sc_lv<34> ap_ST_fsm_state19;
    static const sc_lv<34> ap_ST_fsm_state20;
    static const sc_lv<34> ap_ST_fsm_state21;
    static const sc_lv<34> ap_ST_fsm_state22;
    static const sc_lv<34> ap_ST_fsm_state23;
    static const sc_lv<34> ap_ST_fsm_state24;
    static const sc_lv<34> ap_ST_fsm_state25;
    static const sc_lv<34> ap_ST_fsm_state26;
    static const sc_lv<34> ap_ST_fsm_state27;
    static const sc_lv<34> ap_ST_fsm_state28;
    static const sc_lv<34> ap_ST_fsm_state29;
    static const sc_lv<34> ap_ST_fsm_state30;
    static const sc_lv<34> ap_ST_fsm_state31;
    static const sc_lv<34> ap_ST_fsm_state32;
    static const sc_lv<34> ap_ST_fsm_state33;
    static const sc_lv<34> ap_ST_fsm_state34;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_21;
    static const bool ap_const_boolean_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<61> ap_const_lv61_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<16> ap_const_lv16_8;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln180_fu_361_p2();
    void thread_add_ln544_4_fu_426_p2();
    void thread_add_ln544_5_fu_461_p2();
    void thread_add_ln544_6_fu_496_p2();
    void thread_add_ln544_fu_384_p2();
    void thread_add_ln719_10_fu_598_p2();
    void thread_add_ln719_11_fu_775_p2();
    void thread_add_ln719_12_fu_618_p2();
    void thread_add_ln719_13_fu_641_p2();
    void thread_add_ln719_14_fu_673_p2();
    void thread_add_ln719_15_fu_696_p2();
    void thread_add_ln719_16_fu_804_p2();
    void thread_add_ln719_9_fu_736_p2();
    void thread_add_ln719_fu_575_p2();
    void thread_add_ln78_4_fu_543_p2();
    void thread_add_ln78_5_fu_707_p2();
    void thread_add_ln78_fu_520_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_state15_io();
    void thread_ap_block_state22();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_column_index_fu_280_p2();
    void thread_constant_matrix_V_blk_n_AR();
    void thread_constant_matrix_V_blk_n_R();
    void thread_constant_matrix_V_of_1_fu_266_p1();
    void thread_empty_43_fu_711_p1();
    void thread_empty_44_fu_740_p1();
    void thread_empty_45_fu_779_p1();
    void thread_empty_46_fu_808_p1();
    void thread_icmp_ln103_fu_337_p2();
    void thread_icmp_ln96_fu_274_p2();
    void thread_lshr_ln719_3_fu_795_p2();
    void thread_lshr_ln719_4_fu_824_p2();
    void thread_lshr_ln719_fu_756_p2();
    void thread_lshr_ln78_fu_727_p2();
    void thread_m_axi_constant_matrix_V_ARADDR();
    void thread_m_axi_constant_matrix_V_ARBURST();
    void thread_m_axi_constant_matrix_V_ARCACHE();
    void thread_m_axi_constant_matrix_V_ARID();
    void thread_m_axi_constant_matrix_V_ARLEN();
    void thread_m_axi_constant_matrix_V_ARLOCK();
    void thread_m_axi_constant_matrix_V_ARPROT();
    void thread_m_axi_constant_matrix_V_ARQOS();
    void thread_m_axi_constant_matrix_V_ARREGION();
    void thread_m_axi_constant_matrix_V_ARSIZE();
    void thread_m_axi_constant_matrix_V_ARUSER();
    void thread_m_axi_constant_matrix_V_ARVALID();
    void thread_m_axi_constant_matrix_V_AWADDR();
    void thread_m_axi_constant_matrix_V_AWBURST();
    void thread_m_axi_constant_matrix_V_AWCACHE();
    void thread_m_axi_constant_matrix_V_AWID();
    void thread_m_axi_constant_matrix_V_AWLEN();
    void thread_m_axi_constant_matrix_V_AWLOCK();
    void thread_m_axi_constant_matrix_V_AWPROT();
    void thread_m_axi_constant_matrix_V_AWQOS();
    void thread_m_axi_constant_matrix_V_AWREGION();
    void thread_m_axi_constant_matrix_V_AWSIZE();
    void thread_m_axi_constant_matrix_V_AWUSER();
    void thread_m_axi_constant_matrix_V_AWVALID();
    void thread_m_axi_constant_matrix_V_BREADY();
    void thread_m_axi_constant_matrix_V_RREADY();
    void thread_m_axi_constant_matrix_V_WDATA();
    void thread_m_axi_constant_matrix_V_WID();
    void thread_m_axi_constant_matrix_V_WLAST();
    void thread_m_axi_constant_matrix_V_WSTRB();
    void thread_m_axi_constant_matrix_V_WUSER();
    void thread_m_axi_constant_matrix_V_WVALID();
    void thread_m_axi_multiplication_V_ARADDR();
    void thread_m_axi_multiplication_V_ARBURST();
    void thread_m_axi_multiplication_V_ARCACHE();
    void thread_m_axi_multiplication_V_ARID();
    void thread_m_axi_multiplication_V_ARLEN();
    void thread_m_axi_multiplication_V_ARLOCK();
    void thread_m_axi_multiplication_V_ARPROT();
    void thread_m_axi_multiplication_V_ARQOS();
    void thread_m_axi_multiplication_V_ARREGION();
    void thread_m_axi_multiplication_V_ARSIZE();
    void thread_m_axi_multiplication_V_ARUSER();
    void thread_m_axi_multiplication_V_ARVALID();
    void thread_m_axi_multiplication_V_AWADDR();
    void thread_m_axi_multiplication_V_AWBURST();
    void thread_m_axi_multiplication_V_AWCACHE();
    void thread_m_axi_multiplication_V_AWID();
    void thread_m_axi_multiplication_V_AWLEN();
    void thread_m_axi_multiplication_V_AWLOCK();
    void thread_m_axi_multiplication_V_AWPROT();
    void thread_m_axi_multiplication_V_AWQOS();
    void thread_m_axi_multiplication_V_AWREGION();
    void thread_m_axi_multiplication_V_AWSIZE();
    void thread_m_axi_multiplication_V_AWUSER();
    void thread_m_axi_multiplication_V_AWVALID();
    void thread_m_axi_multiplication_V_BREADY();
    void thread_m_axi_multiplication_V_RREADY();
    void thread_m_axi_multiplication_V_WDATA();
    void thread_m_axi_multiplication_V_WID();
    void thread_m_axi_multiplication_V_WLAST();
    void thread_m_axi_multiplication_V_WSTRB();
    void thread_m_axi_multiplication_V_WUSER();
    void thread_m_axi_multiplication_V_WVALID();
    void thread_multiplication_V_blk_n_AR();
    void thread_multiplication_V_blk_n_R();
    void thread_or_ln544_3_fu_441_p2();
    void thread_or_ln544_4_fu_476_p2();
    void thread_or_ln544_fu_406_p2();
    void thread_row_index_fu_343_p2();
    void thread_sext_ln103_fu_333_p0();
    void thread_sext_ln103_fu_333_p1();
    void thread_sext_ln180_fu_311_p1();
    void thread_sext_ln544_5_fu_326_p1();
    void thread_sext_ln544_6_fu_329_p0();
    void thread_sext_ln544_6_fu_329_p1();
    void thread_sext_ln544_fu_323_p1();
    void thread_sext_ln719_3_fu_633_p1();
    void thread_sext_ln719_4_fu_688_p1();
    void thread_sext_ln719_fu_590_p1();
    void thread_sext_ln78_fu_535_p1();
    void thread_shl_ln719_fu_609_p2();
    void thread_shl_ln78_fu_511_p2();
    void thread_state_matrix_V_address0();
    void thread_state_matrix_V_address1();
    void thread_state_matrix_V_ce0();
    void thread_state_matrix_V_ce1();
    void thread_state_matrix_V_d0();
    void thread_state_matrix_V_we0();
    void thread_tmp_16_fu_372_p3();
    void thread_tmp_18_fu_399_p3();
    void thread_tmp_19_fu_412_p4();
    void thread_tmp_20_fu_447_p4();
    void thread_tmp_21_fu_482_p4();
    void thread_tmp_22_fu_525_p4();
    void thread_tmp_23_fu_715_p3();
    void thread_tmp_24_fu_564_p3();
    void thread_tmp_25_fu_580_p4();
    void thread_tmp_26_fu_744_p3();
    void thread_tmp_27_fu_623_p4();
    void thread_tmp_28_fu_783_p3();
    void thread_tmp_30_fu_662_p3();
    void thread_tmp_31_fu_678_p4();
    void thread_tmp_32_fu_812_p3();
    void thread_tmp_83_fu_723_p1();
    void thread_tmp_88_fu_752_p1();
    void thread_tmp_93_fu_791_p1();
    void thread_tmp_98_fu_820_p1();
    void thread_tmp_fu_302_p3();
    void thread_tmp_s_fu_349_p3();
    void thread_trunc_ln719_3_fu_800_p1();
    void thread_trunc_ln719_4_fu_829_p1();
    void thread_trunc_ln719_fu_761_p1();
    void thread_trunc_ln78_fu_732_p1();
    void thread_xor_ln180_fu_291_p2();
    void thread_xor_ln544_fu_366_p2();
    void thread_xor_ln719_1_fu_833_p2();
    void thread_xor_ln719_2_fu_839_p2();
    void thread_xor_ln719_fu_765_p2();
    void thread_zext_ln180_24_fu_297_p1();
    void thread_zext_ln180_25_fu_314_p1();
    void thread_zext_ln180_26_fu_357_p1();
    void thread_zext_ln180_27_fu_771_p1();
    void thread_zext_ln180_fu_319_p1();
    void thread_zext_ln544_10_fu_492_p1();
    void thread_zext_ln544_11_fu_501_p1();
    void thread_zext_ln544_5_fu_389_p1();
    void thread_zext_ln544_6_fu_422_p1();
    void thread_zext_ln544_7_fu_431_p1();
    void thread_zext_ln544_8_fu_457_p1();
    void thread_zext_ln544_9_fu_466_p1();
    void thread_zext_ln544_fu_380_p1();
    void thread_zext_ln719_10_fu_637_p1();
    void thread_zext_ln719_11_fu_669_p1();
    void thread_zext_ln719_12_fu_692_p1();
    void thread_zext_ln719_7_fu_571_p1();
    void thread_zext_ln719_8_fu_594_p1();
    void thread_zext_ln719_9_fu_614_p1();
    void thread_zext_ln78_3_fu_516_p1();
    void thread_zext_ln78_4_fu_539_p1();
    void thread_zext_ln78_fu_270_p1();
    void thread_zext_ln99_fu_286_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
