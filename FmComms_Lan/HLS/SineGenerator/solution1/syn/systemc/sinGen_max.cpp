// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "sinGen_max.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic sinGen_max::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic sinGen_max::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> sinGen_max::ap_ST_st1_fsm_0 = "1";
const sc_lv<7> sinGen_max::ap_ST_st2_fsm_1 = "10";
const sc_lv<7> sinGen_max::ap_ST_st3_fsm_2 = "100";
const sc_lv<7> sinGen_max::ap_ST_st4_fsm_3 = "1000";
const sc_lv<7> sinGen_max::ap_ST_st5_fsm_4 = "10000";
const sc_lv<7> sinGen_max::ap_ST_st6_fsm_5 = "100000";
const sc_lv<7> sinGen_max::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<32> sinGen_max::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> sinGen_max::ap_const_lv1_1 = "1";
const sc_lv<32> sinGen_max::ap_const_lv32_1 = "1";
const sc_lv<1> sinGen_max::ap_const_lv1_0 = "0";
const sc_lv<32> sinGen_max::ap_const_lv32_2 = "10";
const sc_lv<32> sinGen_max::ap_const_lv32_3 = "11";
const sc_lv<32> sinGen_max::ap_const_lv32_4 = "100";
const sc_lv<32> sinGen_max::ap_const_lv32_5 = "101";
const sc_lv<32> sinGen_max::ap_const_lv32_6 = "110";
const sc_lv<8> sinGen_max::ap_const_lv8_0 = "00000000";
const sc_lv<8> sinGen_max::ap_const_lv8_80 = "10000000";
const sc_lv<8> sinGen_max::ap_const_lv8_1 = "1";
const sc_lv<32> sinGen_max::ap_const_lv32_17 = "10111";
const sc_lv<32> sinGen_max::ap_const_lv32_1E = "11110";
const sc_lv<8> sinGen_max::ap_const_lv8_FF = "11111111";
const sc_lv<23> sinGen_max::ap_const_lv23_0 = "00000000000000000000000";
const sc_lv<32> sinGen_max::ap_const_lv32_80000000 = "10000000000000000000000000000000";
const sc_lv<5> sinGen_max::ap_const_lv5_4 = "100";
const sc_lv<5> sinGen_max::ap_const_lv5_2 = "10";

sinGen_max::sinGen_max(sc_module_name name) : sc_module(name), mVcdFile(0) {
    sinGen_fcmp_32ns_32ns_1_1_U19 = new sinGen_fcmp_32ns_32ns_1_1<1,1,32,32,1>("sinGen_fcmp_32ns_32ns_1_1_U19");
    sinGen_fcmp_32ns_32ns_1_1_U19->din0(max_1_reg_293);
    sinGen_fcmp_32ns_32ns_1_1_U19->din1(grp_fu_65_p1);
    sinGen_fcmp_32ns_32ns_1_1_U19->opcode(grp_fu_65_opcode);
    sinGen_fcmp_32ns_32ns_1_1_U19->dout(grp_fu_65_p2);
    sinGen_fcmp_32ns_32ns_1_1_U20 = new sinGen_fcmp_32ns_32ns_1_1<1,1,32,32,1>("sinGen_fcmp_32ns_32ns_1_1_U20");
    sinGen_fcmp_32ns_32ns_1_1_U20->din0(tmp_25_fu_70_p0);
    sinGen_fcmp_32ns_32ns_1_1_U20->din1(max_1_1_reg_42);
    sinGen_fcmp_32ns_32ns_1_1_U20->opcode(tmp_25_fu_70_opcode);
    sinGen_fcmp_32ns_32ns_1_1_U20->dout(tmp_25_fu_70_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_76_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_76_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_76_p2 );
    sensitive << ( max_1_1_reg_42 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_ap_sig_bdd_106);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_25);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_44);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_58);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_67);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_84);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_95);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_25 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_44 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_bdd_58 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_bdd_67 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_bdd_84 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_bdd_95 );

    SC_METHOD(thread_ap_sig_cseq_ST_st7_fsm_6);
    sensitive << ( ap_sig_bdd_106 );

    SC_METHOD(thread_data_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_88_p1 );

    SC_METHOD(thread_data_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_exitcond_fu_76_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_grp_fu_65_opcode);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( sel_tmp6_reg_332 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_grp_fu_65_p1);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( max_1_1_reg_42 );

    SC_METHOD(thread_i_1_fu_82_p2);
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_max_1_2_fu_140_p1);
    sensitive << ( max_1_neg_fu_134_p2 );

    SC_METHOD(thread_max_1_neg_fu_134_p2);
    sensitive << ( max_2_to_int_fu_93_p1 );

    SC_METHOD(thread_max_2_fu_234_p3);
    sensitive << ( max_1_2_reg_307 );
    sensitive << ( max_1_1_reg_42 );
    sensitive << ( sel_tmp_fu_229_p2 );

    SC_METHOD(thread_max_2_to_int_fu_93_p1);
    sensitive << ( max_1_reg_293 );

    SC_METHOD(thread_max_3_fu_273_p3);
    sensitive << ( sel_tmp6_reg_332 );
    sensitive << ( max_1_1_reg_42 );
    sensitive << ( max_4_fu_267_p3 );

    SC_METHOD(thread_max_4_fu_267_p3);
    sensitive << ( max_1_reg_293 );
    sensitive << ( max_2_reg_327 );
    sensitive << ( sel_tmp3_fu_262_p2 );

    SC_METHOD(thread_max_to_int_fu_159_p1);
    sensitive << ( max_1_1_reg_42 );

    SC_METHOD(thread_notlhs1_fu_177_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_18_fu_145_p4 );

    SC_METHOD(thread_notlhs2_fu_195_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_20_fu_163_p4 );

    SC_METHOD(thread_notlhs_fu_110_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_13_fu_96_p4 );

    SC_METHOD(thread_notrhs1_fu_183_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_44_fu_155_p1 );

    SC_METHOD(thread_notrhs2_fu_201_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_45_fu_173_p1 );

    SC_METHOD(thread_notrhs_fu_116_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_43_fu_106_p1 );

    SC_METHOD(thread_sel_tmp2_fu_257_p2);
    sensitive << ( tmp_17_reg_300 );

    SC_METHOD(thread_sel_tmp3_fu_262_p2);
    sensitive << ( tmp_28_reg_337 );
    sensitive << ( sel_tmp2_fu_257_p2 );

    SC_METHOD(thread_sel_tmp5_fu_241_p2);
    sensitive << ( tmp_26_fu_225_p2 );

    SC_METHOD(thread_sel_tmp6_fu_247_p2);
    sensitive << ( tmp_17_reg_300 );
    sensitive << ( sel_tmp5_fu_241_p2 );

    SC_METHOD(thread_sel_tmp_fu_229_p2);
    sensitive << ( tmp_17_reg_300 );
    sensitive << ( tmp_26_fu_225_p2 );

    SC_METHOD(thread_tmp_13_fu_96_p4);
    sensitive << ( max_2_to_int_fu_93_p1 );

    SC_METHOD(thread_tmp_15_fu_122_p2);
    sensitive << ( notrhs_fu_116_p2 );
    sensitive << ( notlhs_fu_110_p2 );

    SC_METHOD(thread_tmp_17_fu_128_p2);
    sensitive << ( tmp_15_fu_122_p2 );
    sensitive << ( grp_fu_65_p2 );

    SC_METHOD(thread_tmp_18_fu_145_p4);
    sensitive << ( max_1_neg_fu_134_p2 );

    SC_METHOD(thread_tmp_20_fu_163_p4);
    sensitive << ( max_to_int_fu_159_p1 );

    SC_METHOD(thread_tmp_22_fu_189_p2);
    sensitive << ( notrhs1_fu_183_p2 );
    sensitive << ( notlhs1_fu_177_p2 );

    SC_METHOD(thread_tmp_23_fu_207_p2);
    sensitive << ( notrhs2_fu_201_p2 );
    sensitive << ( notlhs2_fu_195_p2 );

    SC_METHOD(thread_tmp_24_fu_213_p2);
    sensitive << ( tmp_22_fu_189_p2 );
    sensitive << ( tmp_23_fu_207_p2 );

    SC_METHOD(thread_tmp_25_fu_70_opcode);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_tmp_25_fu_70_p0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( max_1_neg_fu_134_p2 );

    SC_METHOD(thread_tmp_26_fu_225_p2);
    sensitive << ( tmp_24_reg_312 );
    sensitive << ( tmp_25_reg_317 );

    SC_METHOD(thread_tmp_28_fu_252_p2);
    sensitive << ( tmp_s_reg_322 );
    sensitive << ( grp_fu_65_p2 );

    SC_METHOD(thread_tmp_43_fu_106_p1);
    sensitive << ( max_2_to_int_fu_93_p1 );

    SC_METHOD(thread_tmp_44_fu_155_p1);
    sensitive << ( max_1_neg_fu_134_p2 );

    SC_METHOD(thread_tmp_45_fu_173_p1);
    sensitive << ( max_to_int_fu_159_p1 );

    SC_METHOD(thread_tmp_fu_88_p1);
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_tmp_s_fu_219_p2);
    sensitive << ( tmp_15_fu_122_p2 );
    sensitive << ( tmp_23_fu_207_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_76_p2 );

    ap_CS_fsm = "0000001";
    ap_return_preg = "00000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "sinGen_max_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, data_address0, "(port)data_address0");
    sc_trace(mVcdFile, data_ce0, "(port)data_ce0");
    sc_trace(mVcdFile, data_q0, "(port)data_q0");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_25, "ap_sig_bdd_25");
    sc_trace(mVcdFile, i_1_fu_82_p2, "i_1_fu_82_p2");
    sc_trace(mVcdFile, i_1_reg_283, "i_1_reg_283");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_44, "ap_sig_bdd_44");
    sc_trace(mVcdFile, exitcond_fu_76_p2, "exitcond_fu_76_p2");
    sc_trace(mVcdFile, max_1_reg_293, "max_1_reg_293");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_58, "ap_sig_bdd_58");
    sc_trace(mVcdFile, tmp_17_fu_128_p2, "tmp_17_fu_128_p2");
    sc_trace(mVcdFile, tmp_17_reg_300, "tmp_17_reg_300");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_bdd_67, "ap_sig_bdd_67");
    sc_trace(mVcdFile, max_1_2_fu_140_p1, "max_1_2_fu_140_p1");
    sc_trace(mVcdFile, max_1_2_reg_307, "max_1_2_reg_307");
    sc_trace(mVcdFile, tmp_24_fu_213_p2, "tmp_24_fu_213_p2");
    sc_trace(mVcdFile, tmp_24_reg_312, "tmp_24_reg_312");
    sc_trace(mVcdFile, tmp_25_fu_70_p2, "tmp_25_fu_70_p2");
    sc_trace(mVcdFile, tmp_25_reg_317, "tmp_25_reg_317");
    sc_trace(mVcdFile, tmp_s_fu_219_p2, "tmp_s_fu_219_p2");
    sc_trace(mVcdFile, tmp_s_reg_322, "tmp_s_reg_322");
    sc_trace(mVcdFile, max_2_fu_234_p3, "max_2_fu_234_p3");
    sc_trace(mVcdFile, max_2_reg_327, "max_2_reg_327");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_bdd_84, "ap_sig_bdd_84");
    sc_trace(mVcdFile, sel_tmp6_fu_247_p2, "sel_tmp6_fu_247_p2");
    sc_trace(mVcdFile, sel_tmp6_reg_332, "sel_tmp6_reg_332");
    sc_trace(mVcdFile, tmp_28_fu_252_p2, "tmp_28_fu_252_p2");
    sc_trace(mVcdFile, tmp_28_reg_337, "tmp_28_reg_337");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_bdd_95, "ap_sig_bdd_95");
    sc_trace(mVcdFile, max_3_fu_273_p3, "max_3_fu_273_p3");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st7_fsm_6, "ap_sig_cseq_ST_st7_fsm_6");
    sc_trace(mVcdFile, ap_sig_bdd_106, "ap_sig_bdd_106");
    sc_trace(mVcdFile, max_1_1_reg_42, "max_1_1_reg_42");
    sc_trace(mVcdFile, i_reg_54, "i_reg_54");
    sc_trace(mVcdFile, tmp_fu_88_p1, "tmp_fu_88_p1");
    sc_trace(mVcdFile, grp_fu_65_p1, "grp_fu_65_p1");
    sc_trace(mVcdFile, tmp_25_fu_70_p0, "tmp_25_fu_70_p0");
    sc_trace(mVcdFile, max_2_to_int_fu_93_p1, "max_2_to_int_fu_93_p1");
    sc_trace(mVcdFile, tmp_13_fu_96_p4, "tmp_13_fu_96_p4");
    sc_trace(mVcdFile, tmp_43_fu_106_p1, "tmp_43_fu_106_p1");
    sc_trace(mVcdFile, notrhs_fu_116_p2, "notrhs_fu_116_p2");
    sc_trace(mVcdFile, notlhs_fu_110_p2, "notlhs_fu_110_p2");
    sc_trace(mVcdFile, tmp_15_fu_122_p2, "tmp_15_fu_122_p2");
    sc_trace(mVcdFile, grp_fu_65_p2, "grp_fu_65_p2");
    sc_trace(mVcdFile, max_1_neg_fu_134_p2, "max_1_neg_fu_134_p2");
    sc_trace(mVcdFile, max_to_int_fu_159_p1, "max_to_int_fu_159_p1");
    sc_trace(mVcdFile, tmp_18_fu_145_p4, "tmp_18_fu_145_p4");
    sc_trace(mVcdFile, tmp_44_fu_155_p1, "tmp_44_fu_155_p1");
    sc_trace(mVcdFile, notrhs1_fu_183_p2, "notrhs1_fu_183_p2");
    sc_trace(mVcdFile, notlhs1_fu_177_p2, "notlhs1_fu_177_p2");
    sc_trace(mVcdFile, tmp_20_fu_163_p4, "tmp_20_fu_163_p4");
    sc_trace(mVcdFile, tmp_45_fu_173_p1, "tmp_45_fu_173_p1");
    sc_trace(mVcdFile, notrhs2_fu_201_p2, "notrhs2_fu_201_p2");
    sc_trace(mVcdFile, notlhs2_fu_195_p2, "notlhs2_fu_195_p2");
    sc_trace(mVcdFile, tmp_22_fu_189_p2, "tmp_22_fu_189_p2");
    sc_trace(mVcdFile, tmp_23_fu_207_p2, "tmp_23_fu_207_p2");
    sc_trace(mVcdFile, tmp_26_fu_225_p2, "tmp_26_fu_225_p2");
    sc_trace(mVcdFile, sel_tmp_fu_229_p2, "sel_tmp_fu_229_p2");
    sc_trace(mVcdFile, sel_tmp5_fu_241_p2, "sel_tmp5_fu_241_p2");
    sc_trace(mVcdFile, sel_tmp2_fu_257_p2, "sel_tmp2_fu_257_p2");
    sc_trace(mVcdFile, sel_tmp3_fu_262_p2, "sel_tmp3_fu_262_p2");
    sc_trace(mVcdFile, max_4_fu_267_p3, "max_4_fu_267_p3");
    sc_trace(mVcdFile, grp_fu_65_opcode, "grp_fu_65_opcode");
    sc_trace(mVcdFile, tmp_25_fu_70_opcode, "tmp_25_fu_70_opcode");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

sinGen_max::~sinGen_max() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete sinGen_fcmp_32ns_32ns_1_1_U19;
    delete sinGen_fcmp_32ns_32ns_1_1_U20;
}

void sinGen_max::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv32_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
             !esl_seteq<1,1,1>(exitcond_fu_76_p2.read(), ap_const_lv1_0))) {
            ap_return_preg = max_1_1_reg_42.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        i_reg_54 = i_1_reg_283.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_54 = ap_const_lv8_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        max_1_1_reg_42 = max_3_fu_273_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        max_1_1_reg_42 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i_1_reg_283 = i_1_fu_82_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        max_1_2_reg_307 = max_1_2_fu_140_p1.read();
        tmp_17_reg_300 = tmp_17_fu_128_p2.read();
        tmp_24_reg_312 = tmp_24_fu_213_p2.read();
        tmp_25_reg_317 = tmp_25_fu_70_p2.read();
        tmp_s_reg_322 = tmp_s_fu_219_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        max_1_reg_293 = data_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        max_2_reg_327 = max_2_fu_234_p3.read();
        sel_tmp6_reg_332 = sel_tmp6_fu_247_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp6_reg_332.read()))) {
        tmp_28_reg_337 = tmp_28_fu_252_p2.read();
    }
}

void sinGen_max::thread_ap_done() {
    if (((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(exitcond_fu_76_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond_fu_76_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond_fu_76_p2.read(), ap_const_lv1_0))) {
        ap_return = max_1_1_reg_42.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void sinGen_max::thread_ap_sig_bdd_106() {
    ap_sig_bdd_106 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void sinGen_max::thread_ap_sig_bdd_25() {
    ap_sig_bdd_25 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void sinGen_max::thread_ap_sig_bdd_44() {
    ap_sig_bdd_44 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void sinGen_max::thread_ap_sig_bdd_58() {
    ap_sig_bdd_58 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void sinGen_max::thread_ap_sig_bdd_67() {
    ap_sig_bdd_67 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void sinGen_max::thread_ap_sig_bdd_84() {
    ap_sig_bdd_84 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void sinGen_max::thread_ap_sig_bdd_95() {
    ap_sig_bdd_95 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void sinGen_max::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_25.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_44.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_58.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_bdd_67.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_bdd_84.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_bdd_95.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void sinGen_max::thread_ap_sig_cseq_ST_st7_fsm_6() {
    if (ap_sig_bdd_106.read()) {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    }
}

void sinGen_max::thread_data_address0() {
    data_address0 =  (sc_lv<7>) (tmp_fu_88_p1.read());
}

void sinGen_max::thread_data_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        data_ce0 = ap_const_logic_1;
    } else {
        data_ce0 = ap_const_logic_0;
    }
}

void sinGen_max::thread_exitcond_fu_76_p2() {
    exitcond_fu_76_p2 = (!i_reg_54.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_54.read() == ap_const_lv8_80);
}

void sinGen_max::thread_grp_fu_65_opcode() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp6_reg_332.read()))) {
        grp_fu_65_opcode = ap_const_lv5_2;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        grp_fu_65_opcode = ap_const_lv5_4;
    } else {
        grp_fu_65_opcode = "XXXXX";
    }
}

void sinGen_max::thread_grp_fu_65_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        grp_fu_65_p1 = max_1_1_reg_42.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        grp_fu_65_p1 = ap_const_lv32_0;
    } else {
        grp_fu_65_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void sinGen_max::thread_i_1_fu_82_p2() {
    i_1_fu_82_p2 = (!i_reg_54.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(i_reg_54.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void sinGen_max::thread_max_1_2_fu_140_p1() {
    max_1_2_fu_140_p1 = max_1_neg_fu_134_p2.read();
}

void sinGen_max::thread_max_1_neg_fu_134_p2() {
    max_1_neg_fu_134_p2 = (max_2_to_int_fu_93_p1.read() ^ ap_const_lv32_80000000);
}

void sinGen_max::thread_max_2_fu_234_p3() {
    max_2_fu_234_p3 = (!sel_tmp_fu_229_p2.read()[0].is_01())? sc_lv<32>(): ((sel_tmp_fu_229_p2.read()[0].to_bool())? max_1_2_reg_307.read(): max_1_1_reg_42.read());
}

void sinGen_max::thread_max_2_to_int_fu_93_p1() {
    max_2_to_int_fu_93_p1 = max_1_reg_293.read();
}

void sinGen_max::thread_max_3_fu_273_p3() {
    max_3_fu_273_p3 = (!sel_tmp6_reg_332.read()[0].is_01())? sc_lv<32>(): ((sel_tmp6_reg_332.read()[0].to_bool())? max_1_1_reg_42.read(): max_4_fu_267_p3.read());
}

void sinGen_max::thread_max_4_fu_267_p3() {
    max_4_fu_267_p3 = (!sel_tmp3_fu_262_p2.read()[0].is_01())? sc_lv<32>(): ((sel_tmp3_fu_262_p2.read()[0].to_bool())? max_1_reg_293.read(): max_2_reg_327.read());
}

void sinGen_max::thread_max_to_int_fu_159_p1() {
    max_to_int_fu_159_p1 = max_1_1_reg_42.read();
}

void sinGen_max::thread_notlhs1_fu_177_p2() {
    notlhs1_fu_177_p2 = (!tmp_18_fu_145_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_18_fu_145_p4.read() != ap_const_lv8_FF);
}

void sinGen_max::thread_notlhs2_fu_195_p2() {
    notlhs2_fu_195_p2 = (!tmp_20_fu_163_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_20_fu_163_p4.read() != ap_const_lv8_FF);
}

void sinGen_max::thread_notlhs_fu_110_p2() {
    notlhs_fu_110_p2 = (!tmp_13_fu_96_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_13_fu_96_p4.read() != ap_const_lv8_FF);
}

void sinGen_max::thread_notrhs1_fu_183_p2() {
    notrhs1_fu_183_p2 = (!tmp_44_fu_155_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_44_fu_155_p1.read() == ap_const_lv23_0);
}

void sinGen_max::thread_notrhs2_fu_201_p2() {
    notrhs2_fu_201_p2 = (!tmp_45_fu_173_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_45_fu_173_p1.read() == ap_const_lv23_0);
}

void sinGen_max::thread_notrhs_fu_116_p2() {
    notrhs_fu_116_p2 = (!tmp_43_fu_106_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_43_fu_106_p1.read() == ap_const_lv23_0);
}

void sinGen_max::thread_sel_tmp2_fu_257_p2() {
    sel_tmp2_fu_257_p2 = (tmp_17_reg_300.read() ^ ap_const_lv1_1);
}

void sinGen_max::thread_sel_tmp3_fu_262_p2() {
    sel_tmp3_fu_262_p2 = (tmp_28_reg_337.read() & sel_tmp2_fu_257_p2.read());
}

void sinGen_max::thread_sel_tmp5_fu_241_p2() {
    sel_tmp5_fu_241_p2 = (tmp_26_fu_225_p2.read() ^ ap_const_lv1_1);
}

void sinGen_max::thread_sel_tmp6_fu_247_p2() {
    sel_tmp6_fu_247_p2 = (tmp_17_reg_300.read() & sel_tmp5_fu_241_p2.read());
}

void sinGen_max::thread_sel_tmp_fu_229_p2() {
    sel_tmp_fu_229_p2 = (tmp_17_reg_300.read() & tmp_26_fu_225_p2.read());
}

void sinGen_max::thread_tmp_13_fu_96_p4() {
    tmp_13_fu_96_p4 = max_2_to_int_fu_93_p1.read().range(30, 23);
}

void sinGen_max::thread_tmp_15_fu_122_p2() {
    tmp_15_fu_122_p2 = (notrhs_fu_116_p2.read() | notlhs_fu_110_p2.read());
}

void sinGen_max::thread_tmp_17_fu_128_p2() {
    tmp_17_fu_128_p2 = (tmp_15_fu_122_p2.read() & grp_fu_65_p2.read());
}

void sinGen_max::thread_tmp_18_fu_145_p4() {
    tmp_18_fu_145_p4 = max_1_neg_fu_134_p2.read().range(30, 23);
}

void sinGen_max::thread_tmp_20_fu_163_p4() {
    tmp_20_fu_163_p4 = max_to_int_fu_159_p1.read().range(30, 23);
}

void sinGen_max::thread_tmp_22_fu_189_p2() {
    tmp_22_fu_189_p2 = (notrhs1_fu_183_p2.read() | notlhs1_fu_177_p2.read());
}

void sinGen_max::thread_tmp_23_fu_207_p2() {
    tmp_23_fu_207_p2 = (notrhs2_fu_201_p2.read() | notlhs2_fu_195_p2.read());
}

void sinGen_max::thread_tmp_24_fu_213_p2() {
    tmp_24_fu_213_p2 = (tmp_22_fu_189_p2.read() & tmp_23_fu_207_p2.read());
}

void sinGen_max::thread_tmp_25_fu_70_opcode() {
    tmp_25_fu_70_opcode = ap_const_lv5_2;
}

void sinGen_max::thread_tmp_25_fu_70_p0() {
    tmp_25_fu_70_p0 = max_1_neg_fu_134_p2.read();
}

void sinGen_max::thread_tmp_26_fu_225_p2() {
    tmp_26_fu_225_p2 = (tmp_24_reg_312.read() & tmp_25_reg_317.read());
}

void sinGen_max::thread_tmp_28_fu_252_p2() {
    tmp_28_fu_252_p2 = (tmp_s_reg_322.read() & grp_fu_65_p2.read());
}

void sinGen_max::thread_tmp_43_fu_106_p1() {
    tmp_43_fu_106_p1 = max_2_to_int_fu_93_p1.read().range(23-1, 0);
}

void sinGen_max::thread_tmp_44_fu_155_p1() {
    tmp_44_fu_155_p1 = max_1_neg_fu_134_p2.read().range(23-1, 0);
}

void sinGen_max::thread_tmp_45_fu_173_p1() {
    tmp_45_fu_173_p1 = max_to_int_fu_159_p1.read().range(23-1, 0);
}

void sinGen_max::thread_tmp_fu_88_p1() {
    tmp_fu_88_p1 = esl_zext<64,8>(i_reg_54.read());
}

void sinGen_max::thread_tmp_s_fu_219_p2() {
    tmp_s_fu_219_p2 = (tmp_15_fu_122_p2.read() & tmp_23_fu_207_p2.read());
}

void sinGen_max::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_76_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

}
