// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __sinGen_sinf_or_cosf_hls_sin_cos_K2_V_H__
#define __sinGen_sinf_or_cosf_hls_sin_cos_K2_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct sinGen_sinf_or_cosf_hls_sin_cos_K2_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 15;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(sinGen_sinf_or_cosf_hls_sin_cos_K2_V_ram) {
        ram[0] = "0b101100010000111";
        ram[1] = "0b101100010001000";
        ram[2] = "0b101100010000111";
        ram[3] = "0b101100010001000";
        ram[4] = "0b101100010001011";
        ram[5] = "0b101100010001011";
        ram[6] = "0b101100010001110";
        ram[7] = "0b101100010001111";
        ram[8] = "0b101100010010110";
        ram[9] = "0b101100010011001";
        ram[10] = "0b101100010011100";
        ram[11] = "0b101100010011111";
        ram[12] = "0b101100010100011";
        ram[13] = "0b101100010101000";
        ram[14] = "0b101100010101110";
        ram[15] = "0b101100010110100";
        ram[16] = "0b101100010111001";
        ram[17] = "0b101100010111110";
        ram[18] = "0b101100011001000";
        ram[19] = "0b101100011001110";
        ram[20] = "0b101100011010110";
        ram[21] = "0b101100011011111";
        ram[22] = "0b101100011100110";
        ram[23] = "0b101100011101110";
        ram[24] = "0b101100011111000";
        ram[25] = "0b101100100000010";
        ram[26] = "0b101100100001100";
        ram[27] = "0b101100100010101";
        ram[28] = "0b101100100100001";
        ram[29] = "0b101100100101100";
        ram[30] = "0b101100100110111";
        ram[31] = "0b101100101000010";
        ram[32] = "0b101100101001101";
        ram[33] = "0b101100101011100";
        ram[34] = "0b101100101100111";
        ram[35] = "0b101100101110011";
        ram[36] = "0b101100110000011";
        ram[37] = "0b101100110001111";
        ram[38] = "0b101100110100000";
        ram[39] = "0b101100110101011";
        ram[40] = "0b101100110111101";
        ram[41] = "0b101100111001100";
        ram[42] = "0b101100111011011";
        ram[43] = "0b101100111101100";
        ram[44] = "0b101100111111110";
        ram[45] = "0b101101000001110";
        ram[46] = "0b101101000011111";
        ram[47] = "0b101101000110001";
        ram[48] = "0b101101001000010";
        ram[49] = "0b101101001010011";
        ram[50] = "0b101101001100101";
        ram[51] = "0b101101001111011";
        ram[52] = "0b101101010001011";
        ram[53] = "0b101101010100010";
        ram[54] = "0b101101010110100";
        ram[55] = "0b101101011001100";
        ram[56] = "0b101101011011110";
        ram[57] = "0b101101011110011";
        ram[58] = "0b101101100001010";
        ram[59] = "0b101101100100001";
        ram[60] = "0b101101100110110";
        ram[61] = "0b101101101001011";
        ram[62] = "0b101101101100010";
        ram[63] = "0b101101101111100";
        ram[64] = "0b101101110010000";
        ram[65] = "0b101101110101100";
        ram[66] = "0b101101111000100";
        ram[67] = "0b101101111011011";
        ram[68] = "0b101101111110111";
        ram[69] = "0b101110000001110";
        ram[70] = "0b101110000101011";
        ram[71] = "0b101110001000011";
        ram[72] = "0b101110001011110";
        ram[73] = "0b101110001111001";
        ram[74] = "0b101110010010010";
        ram[75] = "0b101110010101111";
        ram[76] = "0b101110011001010";
        ram[77] = "0b101110011100101";
        ram[78] = "0b101110100000100";
        ram[79] = "0b101110100011111";
        ram[80] = "0b101110100111101";
        ram[81] = "0b101110101011011";
        ram[82] = "0b101110101111010";
        ram[83] = "0b101110110011000";
        ram[84] = "0b101110110110110";
        ram[85] = "0b101110111010101";
        ram[86] = "0b101110111110101";
        ram[87] = "0b101111000010101";
        ram[88] = "0b101111000110010";
        ram[89] = "0b101111001010101";
        ram[90] = "0b101111001110100";
        ram[91] = "0b101111010010101";
        ram[92] = "0b101111010110101";
        ram[93] = "0b101111011011001";
        ram[94] = "0b101111011111001";
        ram[95] = "0b101111100011011";
        ram[96] = "0b101111100111100";
        ram[97] = "0b101111101100010";
        ram[98] = "0b101111110000100";
        ram[99] = "0b101111110100110";
        ram[100] = "0b101111111001011";
        ram[101] = "0b101111111101111";
        ram[102] = "0b110000000010110";
        ram[103] = "0b110000000111000";
        ram[104] = "0b110000001011011";
        ram[105] = "0b110000010000000";
        ram[106] = "0b110000010100111";
        ram[107] = "0b110000011001101";
        ram[108] = "0b110000011110011";
        ram[109] = "0b110000100011000";
        ram[110] = "0b110000101000001";
        ram[111] = "0b110000101100111";
        ram[112] = "0b110000110001110";
        ram[113] = "0b110000110110111";
        ram[114] = "0b110000111011101";
        ram[115] = "0b110001000000111";
        ram[116] = "0b110001000101110";
        ram[117] = "0b110001001011000";
        ram[118] = "0b110001010000001";
        ram[119] = "0b110001010101010";
        ram[120] = "0b110001011010101";
        ram[121] = "0b110001100000000";
        ram[122] = "0b110001100100111";
        ram[123] = "0b110001101010001";
        ram[124] = "0b110001101111110";
        ram[125] = "0b110001110101100";
        ram[126] = "0b110001111010010";
        ram[127] = "0b110001111111111";
        ram[128] = "0b111010110101000";
        ram[129] = "0b111010110101001";
        ram[130] = "0b111010110101011";
        ram[131] = "0b111010110101100";
        ram[132] = "0b111010110101101";
        ram[133] = "0b111010110101011";
        ram[134] = "0b111010110101110";
        ram[135] = "0b111010110101101";
        ram[136] = "0b111010110101101";
        ram[137] = "0b111010110101110";
        ram[138] = "0b111010110101101";
        ram[139] = "0b111010110101101";
        ram[140] = "0b111010110101111";
        ram[141] = "0b111010110110000";
        ram[142] = "0b111010110110000";
        ram[143] = "0b111010110110001";
        ram[144] = "0b111010110110010";
        ram[145] = "0b111010110110010";
        ram[146] = "0b111010110110010";
        ram[147] = "0b111010110110011";
        ram[148] = "0b111010110110101";
        ram[149] = "0b111010110110111";
        ram[150] = "0b111010110111010";
        ram[151] = "0b111010110111010";
        ram[152] = "0b111010110111100";
        ram[153] = "0b111010110111111";
        ram[154] = "0b111010111000000";
        ram[155] = "0b111010111000000";
        ram[156] = "0b111010111000010";
        ram[157] = "0b111010111000100";
        ram[158] = "0b111010111000100";
        ram[159] = "0b111010111000110";
        ram[160] = "0b111010111001000";
        ram[161] = "0b111010111001100";
        ram[162] = "0b111010111001110";
        ram[163] = "0b111010111001111";
        ram[164] = "0b111010111010001";
        ram[165] = "0b111010111010101";
        ram[166] = "0b111010111011000";
        ram[167] = "0b111010111011011";
        ram[168] = "0b111010111011101";
        ram[169] = "0b111010111011111";
        ram[170] = "0b111010111100010";
        ram[171] = "0b111010111100011";
        ram[172] = "0b111010111100101";
        ram[173] = "0b111010111101001";
        ram[174] = "0b111010111101011";
        ram[175] = "0b111010111101101";
        ram[176] = "0b111010111101111";
        ram[177] = "0b111010111110001";
        ram[178] = "0b111010111110110";
        ram[179] = "0b111010111111001";
        ram[180] = "0b111010111111011";
        ram[181] = "0b111010111111111";
        ram[182] = "0b111011000000100";
        ram[183] = "0b111011000000110";
        ram[184] = "0b111011000000111";
        ram[185] = "0b111011000001010";
        ram[186] = "0b111011000010010";
        ram[187] = "0b111011000010100";
        ram[188] = "0b111011000010101";
        ram[189] = "0b111011000011100";
        ram[190] = "0b111011000011110";
        ram[191] = "0b111011000100010";
        ram[192] = "0b111011000100110";
        ram[193] = "0b111011000101000";
        ram[194] = "0b111011000101100";
        ram[195] = "0b111011000110000";
        ram[196] = "0b111011000110110";
        ram[197] = "0b111011000111001";
        ram[198] = "0b111011000111101";
        ram[199] = "0b111011001000001";
        ram[200] = "0b111011001000011";
        ram[201] = "0b111011001001100";
        ram[202] = "0b111011001001110";
        ram[203] = "0b111011001010000";
        ram[204] = "0b111011001010100";
        ram[205] = "0b111011001011110";
        ram[206] = "0b111011001100010";
        ram[207] = "0b111011001100111";
        ram[208] = "0b111011001101010";
        ram[209] = "0b111011001101101";
        ram[210] = "0b111011001110001";
        ram[211] = "0b111011001111010";
        ram[212] = "0b111011001111110";
        ram[213] = "0b111011010000000";
        ram[214] = "0b111011010000101";
        ram[215] = "0b111011010001100";
        ram[216] = "0b111011010010000";
        ram[217] = "0b111011010011000";
        ram[218] = "0b111011010011010";
        ram[219] = "0b111011010100000";
        ram[220] = "0b111011010100100";
        ram[221] = "0b111011010101011";
        ram[222] = "0b111011010110001";
        ram[223] = "0b111011010110111";
        ram[224] = "0b111011010111011";
        ram[225] = "0b111011011000001";
        ram[226] = "0b111011011000110";
        ram[227] = "0b111011011001010";
        ram[228] = "0b111011011010010";
        ram[229] = "0b111011011010110";
        ram[230] = "0b111011011011110";
        ram[231] = "0b111011011100011";
        ram[232] = "0b111011011101000";
        ram[233] = "0b111011011101101";
        ram[234] = "0b111011011110110";
        ram[235] = "0b111011011111100";
        ram[236] = "0b111011100000011";
        ram[237] = "0b111011100000111";
        ram[238] = "0b111011100001110";
        ram[239] = "0b111011100010011";
        ram[240] = "0b111011100011001";
        ram[241] = "0b111011100011111";
        ram[242] = "0b111011100100110";
        ram[243] = "0b111011100101100";
        ram[244] = "0b111011100110010";
        ram[245] = "0b111011100111101";
        ram[246] = "0b111011101000011";
        ram[247] = "0b111011101001001";
        ram[248] = "0b111011101001101";
        ram[249] = "0b111011101010101";
        ram[250] = "0b111011101011100";
        ram[251] = "0b111011101100010";
        ram[252] = "0b111011101101010";
        ram[253] = "0b111011101101111";
        ram[254] = "0b111011101111000";
        ram[255] = "0b111011101111110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(sinGen_sinf_or_cosf_hls_sin_cos_K2_V) {


static const unsigned DataWidth = 15;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sinGen_sinf_or_cosf_hls_sin_cos_K2_V_ram* meminst;


SC_CTOR(sinGen_sinf_or_cosf_hls_sin_cos_K2_V) {
meminst = new sinGen_sinf_or_cosf_hls_sin_cos_K2_V_ram("sinGen_sinf_or_cosf_hls_sin_cos_K2_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~sinGen_sinf_or_cosf_hls_sin_cos_K2_V() {
    delete meminst;
}


};//endmodule
#endif
