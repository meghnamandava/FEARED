#include "xts_aes.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void xts_aes::thread_text_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state897.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state912.read()) && 
          esl_seteq<1,1,1>(data3_BVALID.read(), ap_const_logic_1)))) {
        text_V_0_ack_out = ap_const_logic_1;
    } else {
        text_V_0_ack_out = ap_const_logic_0;
    }
}

void xts_aes::thread_text_len_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state897.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state912.read()) && 
          esl_seteq<1,1,1>(data3_BVALID.read(), ap_const_logic_1)))) {
        text_len_V_0_ack_out = ap_const_logic_1;
    } else {
        text_len_V_0_ack_out = ap_const_logic_0;
    }
}

void xts_aes::thread_tmp_3_fu_24259_p3() {
    tmp_3_fu_24259_p3 = esl_concat<7,4>(i_0_reg_24127.read(), ap_const_lv4_0);
}

void xts_aes::thread_tweak_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state897.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state912.read()) && 
          esl_seteq<1,1,1>(data3_BVALID.read(), ap_const_logic_1)))) {
        tweak_V_0_ack_out = ap_const_logic_1;
    } else {
        tweak_V_0_ack_out = ap_const_logic_0;
    }
}

void xts_aes::thread_zext_ln180_3_fu_24292_p1() {
    zext_ln180_3_fu_24292_p1 = esl_zext<64,12>(add_ln180_fu_24287_p2.read());
}

void xts_aes::thread_zext_ln180_fu_24283_p1() {
    zext_ln180_fu_24283_p1 = esl_zext<12,5>(j_0_reg_24138.read());
}

void xts_aes::thread_zext_ln549_fu_24267_p1() {
    zext_ln549_fu_24267_p1 = esl_zext<12,11>(tmp_3_fu_24259_p3.read());
}

}

