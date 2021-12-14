// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __aes_expand_key_rcon_H__
#define __aes_expand_key_rcon_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct aes_expand_key_rcon_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
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


   SC_CTOR(aes_expand_key_rcon_ram) {
        ram[0] = "0b10001101";
        ram[1] = "0b00000001";
        ram[2] = "0b00000010";
        ram[3] = "0b00000100";
        ram[4] = "0b00001000";
        ram[5] = "0b00010000";
        ram[6] = "0b00100000";
        ram[7] = "0b01000000";
        ram[8] = "0b10000000";
        ram[9] = "0b00011011";
        ram[10] = "0b00110110";
        ram[11] = "0b01101100";
        ram[12] = "0b11011000";
        ram[13] = "0b10101011";
        ram[14] = "0b01001101";
        ram[15] = "0b10011010";
        ram[16] = "0b00101111";
        ram[17] = "0b01011110";
        ram[18] = "0b10111100";
        ram[19] = "0b01100011";
        ram[20] = "0b11000110";
        ram[21] = "0b10010111";
        ram[22] = "0b00110101";
        ram[23] = "0b01101010";
        ram[24] = "0b11010100";
        ram[25] = "0b10110011";
        ram[26] = "0b01111101";
        ram[27] = "0b11111010";
        ram[28] = "0b11101111";
        ram[29] = "0b11000101";
        ram[30] = "0b10010001";
        ram[31] = "0b00111001";
        ram[32] = "0b01110010";
        ram[33] = "0b11100100";
        ram[34] = "0b11010011";
        ram[35] = "0b10111101";
        ram[36] = "0b01100001";
        ram[37] = "0b11000010";
        ram[38] = "0b10011111";
        ram[39] = "0b00100101";
        ram[40] = "0b01001010";
        ram[41] = "0b10010100";
        ram[42] = "0b00110011";
        ram[43] = "0b01100110";
        ram[44] = "0b11001100";
        ram[45] = "0b10000011";
        ram[46] = "0b00011101";
        ram[47] = "0b00111010";
        ram[48] = "0b01110100";
        ram[49] = "0b11101000";
        ram[50] = "0b11001011";
        ram[51] = "0b10001101";
        ram[52] = "0b00000001";
        ram[53] = "0b00000010";
        ram[54] = "0b00000100";
        ram[55] = "0b00001000";
        ram[56] = "0b00010000";
        ram[57] = "0b00100000";
        ram[58] = "0b01000000";
        ram[59] = "0b10000000";
        ram[60] = "0b00011011";
        ram[61] = "0b00110110";
        ram[62] = "0b01101100";
        ram[63] = "0b11011000";
        ram[64] = "0b10101011";
        ram[65] = "0b01001101";
        ram[66] = "0b10011010";
        ram[67] = "0b00101111";
        ram[68] = "0b01011110";
        ram[69] = "0b10111100";
        ram[70] = "0b01100011";
        ram[71] = "0b11000110";
        ram[72] = "0b10010111";
        ram[73] = "0b00110101";
        ram[74] = "0b01101010";
        ram[75] = "0b11010100";
        ram[76] = "0b10110011";
        ram[77] = "0b01111101";
        ram[78] = "0b11111010";
        ram[79] = "0b11101111";
        ram[80] = "0b11000101";
        ram[81] = "0b10010001";
        ram[82] = "0b00111001";
        ram[83] = "0b01110010";
        ram[84] = "0b11100100";
        ram[85] = "0b11010011";
        ram[86] = "0b10111101";
        ram[87] = "0b01100001";
        ram[88] = "0b11000010";
        ram[89] = "0b10011111";
        ram[90] = "0b00100101";
        ram[91] = "0b01001010";
        ram[92] = "0b10010100";
        ram[93] = "0b00110011";
        ram[94] = "0b01100110";
        ram[95] = "0b11001100";
        ram[96] = "0b10000011";
        ram[97] = "0b00011101";
        ram[98] = "0b00111010";
        ram[99] = "0b01110100";
        ram[100] = "0b11101000";
        ram[101] = "0b11001011";
        ram[102] = "0b10001101";
        ram[103] = "0b00000001";
        ram[104] = "0b00000010";
        ram[105] = "0b00000100";
        ram[106] = "0b00001000";
        ram[107] = "0b00010000";
        ram[108] = "0b00100000";
        ram[109] = "0b01000000";
        ram[110] = "0b10000000";
        ram[111] = "0b00011011";
        ram[112] = "0b00110110";
        ram[113] = "0b01101100";
        ram[114] = "0b11011000";
        ram[115] = "0b10101011";
        ram[116] = "0b01001101";
        ram[117] = "0b10011010";
        ram[118] = "0b00101111";
        ram[119] = "0b01011110";
        ram[120] = "0b10111100";
        ram[121] = "0b01100011";
        ram[122] = "0b11000110";
        ram[123] = "0b10010111";
        ram[124] = "0b00110101";
        ram[125] = "0b01101010";
        ram[126] = "0b11010100";
        ram[127] = "0b10110011";
        ram[128] = "0b01111101";
        ram[129] = "0b11111010";
        ram[130] = "0b11101111";
        ram[131] = "0b11000101";
        ram[132] = "0b10010001";
        ram[133] = "0b00111001";
        ram[134] = "0b01110010";
        ram[135] = "0b11100100";
        ram[136] = "0b11010011";
        ram[137] = "0b10111101";
        ram[138] = "0b01100001";
        ram[139] = "0b11000010";
        ram[140] = "0b10011111";
        ram[141] = "0b00100101";
        ram[142] = "0b01001010";
        ram[143] = "0b10010100";
        ram[144] = "0b00110011";
        ram[145] = "0b01100110";
        ram[146] = "0b11001100";
        ram[147] = "0b10000011";
        ram[148] = "0b00011101";
        ram[149] = "0b00111010";
        ram[150] = "0b01110100";
        ram[151] = "0b11101000";
        ram[152] = "0b11001011";
        ram[153] = "0b10001101";
        ram[154] = "0b00000001";
        ram[155] = "0b00000010";
        ram[156] = "0b00000100";
        ram[157] = "0b00001000";
        ram[158] = "0b00010000";
        ram[159] = "0b00100000";
        ram[160] = "0b01000000";
        ram[161] = "0b10000000";
        ram[162] = "0b00011011";
        ram[163] = "0b00110110";
        ram[164] = "0b01101100";
        ram[165] = "0b11011000";
        ram[166] = "0b10101011";
        ram[167] = "0b01001101";
        ram[168] = "0b10011010";
        ram[169] = "0b00101111";
        ram[170] = "0b01011110";
        ram[171] = "0b10111100";
        ram[172] = "0b01100011";
        ram[173] = "0b11000110";
        ram[174] = "0b10010111";
        ram[175] = "0b00110101";
        ram[176] = "0b01101010";
        ram[177] = "0b11010100";
        ram[178] = "0b10110011";
        ram[179] = "0b01111101";
        ram[180] = "0b11111010";
        ram[181] = "0b11101111";
        ram[182] = "0b11000101";
        ram[183] = "0b10010001";
        ram[184] = "0b00111001";
        ram[185] = "0b01110010";
        ram[186] = "0b11100100";
        ram[187] = "0b11010011";
        ram[188] = "0b10111101";
        ram[189] = "0b01100001";
        ram[190] = "0b11000010";
        ram[191] = "0b10011111";
        ram[192] = "0b00100101";
        ram[193] = "0b01001010";
        ram[194] = "0b10010100";
        ram[195] = "0b00110011";
        ram[196] = "0b01100110";
        ram[197] = "0b11001100";
        ram[198] = "0b10000011";
        ram[199] = "0b00011101";
        ram[200] = "0b00111010";
        ram[201] = "0b01110100";
        ram[202] = "0b11101000";
        ram[203] = "0b11001011";
        ram[204] = "0b10001101";
        ram[205] = "0b00000001";
        ram[206] = "0b00000010";
        ram[207] = "0b00000100";
        ram[208] = "0b00001000";
        ram[209] = "0b00010000";
        ram[210] = "0b00100000";
        ram[211] = "0b01000000";
        ram[212] = "0b10000000";
        ram[213] = "0b00011011";
        ram[214] = "0b00110110";
        ram[215] = "0b01101100";
        ram[216] = "0b11011000";
        ram[217] = "0b10101011";
        ram[218] = "0b01001101";
        ram[219] = "0b10011010";
        ram[220] = "0b00101111";
        ram[221] = "0b01011110";
        ram[222] = "0b10111100";
        ram[223] = "0b01100011";
        ram[224] = "0b11000110";
        ram[225] = "0b10010111";
        ram[226] = "0b00110101";
        ram[227] = "0b01101010";
        ram[228] = "0b11010100";
        ram[229] = "0b10110011";
        ram[230] = "0b01111101";
        ram[231] = "0b11111010";
        ram[232] = "0b11101111";
        ram[233] = "0b11000101";
        ram[234] = "0b10010001";
        ram[235] = "0b00111001";
        ram[236] = "0b01110010";
        ram[237] = "0b11100100";
        ram[238] = "0b11010011";
        ram[239] = "0b10111101";
        ram[240] = "0b01100001";
        ram[241] = "0b11000010";
        ram[242] = "0b10011111";
        ram[243] = "0b00100101";
        ram[244] = "0b01001010";
        ram[245] = "0b10010100";
        ram[246] = "0b00110011";
        ram[247] = "0b01100110";
        ram[248] = "0b11001100";
        ram[249] = "0b10000011";
        ram[250] = "0b00011101";
        ram[251] = "0b00111010";
        ram[252] = "0b01110100";
        ram[253] = "0b11101000";
        ram[254] = "0b11001011";
        ram[255] = "0b10001101";


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


SC_MODULE(aes_expand_key_rcon) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


aes_expand_key_rcon_ram* meminst;


SC_CTOR(aes_expand_key_rcon) {
meminst = new aes_expand_key_rcon_ram("aes_expand_key_rcon_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~aes_expand_key_rcon() {
    delete meminst;
}


};//endmodule
#endif
