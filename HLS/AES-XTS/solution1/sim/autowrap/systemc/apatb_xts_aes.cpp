// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "data0"
#define AUTOTB_TVIN_data0  "../tv/cdatafile/c.xts_aes.autotvin_data0.dat"
// wrapc file define: "data1"
#define AUTOTB_TVIN_data1  "../tv/cdatafile/c.xts_aes.autotvin_data1.dat"
// wrapc file define: "data2"
#define AUTOTB_TVIN_data2  "../tv/cdatafile/c.xts_aes.autotvin_data2.dat"
// wrapc file define: "data3"
#define AUTOTB_TVOUT_data3  "../tv/cdatafile/c.xts_aes.autotvout_data3.dat"
#define AUTOTB_TVIN_data3  "../tv/cdatafile/c.xts_aes.autotvin_data3.dat"
// wrapc file define: "key_V"
#define AUTOTB_TVIN_key_V  "../tv/cdatafile/c.xts_aes.autotvin_key_V.dat"
// wrapc file define: "tweak_V"
#define AUTOTB_TVIN_tweak_V  "../tv/cdatafile/c.xts_aes.autotvin_tweak_V.dat"
// wrapc file define: "text_V"
#define AUTOTB_TVIN_text_V  "../tv/cdatafile/c.xts_aes.autotvin_text_V.dat"
// wrapc file define: "mode_V"
#define AUTOTB_TVIN_mode_V  "../tv/cdatafile/c.xts_aes.autotvin_mode_V.dat"
// wrapc file define: "text_len_V"
#define AUTOTB_TVIN_text_len_V  "../tv/cdatafile/c.xts_aes.autotvin_text_len_V.dat"
// wrapc file define: "data_ret_V"
#define AUTOTB_TVIN_data_ret_V  "../tv/cdatafile/c.xts_aes.autotvin_data_ret_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "data3"
#define AUTOTB_TVOUT_PC_data3  "../tv/rtldatafile/rtl.xts_aes.autotvout_data3.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data0_depth = 0;
			data1_depth = 0;
			data2_depth = 0;
			data3_depth = 0;
			key_V_depth = 0;
			tweak_V_depth = 0;
			text_V_depth = 0;
			mode_V_depth = 0;
			text_len_V_depth = 0;
			data_ret_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{data0 " << data0_depth << "}\n";
			total_list << "{data1 " << data1_depth << "}\n";
			total_list << "{data2 " << data2_depth << "}\n";
			total_list << "{data3 " << data3_depth << "}\n";
			total_list << "{key_V " << key_V_depth << "}\n";
			total_list << "{tweak_V " << tweak_V_depth << "}\n";
			total_list << "{text_V " << text_V_depth << "}\n";
			total_list << "{mode_V " << mode_V_depth << "}\n";
			total_list << "{text_len_V " << text_len_V_depth << "}\n";
			total_list << "{data_ret_V " << data_ret_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data0_depth;
		int data1_depth;
		int data2_depth;
		int data3_depth;
		int key_V_depth;
		int tweak_V_depth;
		int text_V_depth;
		int mode_V_depth;
		int text_len_V_depth;
		int data_ret_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void xts_aes (
ap_int<16> key[64],
ap_int<16> tweak[16],
ap_int<16> text[1024],
ap_int<16> mode,
ap_int<16> text_len,
ap_int<16> data_ret[1024]);

void AESL_WRAP_xts_aes (
ap_int<16> key[64],
ap_int<16> tweak[16],
ap_int<16> text[1024],
ap_int<16> mode,
ap_int<16> text_len,
ap_int<16> data_ret[1024])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "data3"
		aesl_fh.read(AUTOTB_TVOUT_PC_data3, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data3, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data3, AESL_token); // data

			sc_bv<16> *data3_pc_buffer = new sc_bv<16>[1024];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data3', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data3', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					data3_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data3, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data3))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data3
				{
					// bitslice(15, 0)
					// {
						// celement: data_ret.V(15, 0)
						// {
							sc_lv<16>* data_ret_V_lv0_0_1023_1 = new sc_lv<16>[1024];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: data_ret.V(15, 0)
						{
							// carray: (0) => (1023) @ (1)
							for (int i_0 = 0; i_0 <= 1023; i_0 += 1)
							{
								if (&(data_ret[0]) != NULL) // check the null address if the c port is array or others
								{
									data_ret_V_lv0_0_1023_1[hls_map_index].range(15, 0) = sc_bv<16>(data3_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: data_ret.V(15, 0)
						{
							// carray: (0) => (1023) @ (1)
							for (int i_0 = 0; i_0 <= 1023; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : data_ret[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : data_ret[0]
								// output_left_conversion : data_ret[i_0]
								// output_type_conversion : (data_ret_V_lv0_0_1023_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(data_ret[0]) != NULL) // check the null address if the c port is array or others
								{
									data_ret[i_0] = (data_ret_V_lv0_0_1023_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] data3_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "data0"
		char* tvin_data0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data0);

		// "data1"
		char* tvin_data1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data1);

		// "data2"
		char* tvin_data2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data2);

		// "data3"
		char* tvin_data3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data3);
		char* tvout_data3 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data3);

		// "key_V"
		char* tvin_key_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_V);

		// "tweak_V"
		char* tvin_tweak_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_tweak_V);

		// "text_V"
		char* tvin_text_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_text_V);

		// "mode_V"
		char* tvin_mode_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_mode_V);

		// "text_len_V"
		char* tvin_text_len_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_text_len_V);

		// "data_ret_V"
		char* tvin_data_ret_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_ret_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data0, tvin_data0);

		sc_bv<16>* data0_tvin_wrapc_buffer = new sc_bv<16>[64];

		// RTL Name: data0
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: key.V(15, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : key[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : key[0]
						// regulate_c_name       : key_V
						// input_type_conversion : (key[i_0]).to_string(2).c_str()
						if (&(key[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> key_V_tmp_mem;
							key_V_tmp_mem = (key[i_0]).to_string(2).c_str();
							data0_tvin_wrapc_buffer[hls_map_index].range(15, 0) = key_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 64; i++)
		{
			sprintf(tvin_data0, "%s\n", (data0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data0, tvin_data0);
		}

		tcl_file.set_num(64, &tcl_file.data0_depth);
		sprintf(tvin_data0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data0, tvin_data0);

		// release memory allocation
		delete [] data0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_data1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data1, tvin_data1);

		sc_bv<16>* data1_tvin_wrapc_buffer = new sc_bv<16>[16];

		// RTL Name: data1
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: tweak.V(15, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : tweak[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : tweak[0]
						// regulate_c_name       : tweak_V
						// input_type_conversion : (tweak[i_0]).to_string(2).c_str()
						if (&(tweak[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> tweak_V_tmp_mem;
							tweak_V_tmp_mem = (tweak[i_0]).to_string(2).c_str();
							data1_tvin_wrapc_buffer[hls_map_index].range(15, 0) = tweak_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_data1, "%s\n", (data1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data1, tvin_data1);
		}

		tcl_file.set_num(16, &tcl_file.data1_depth);
		sprintf(tvin_data1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data1, tvin_data1);

		// release memory allocation
		delete [] data1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_data2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data2, tvin_data2);

		sc_bv<16>* data2_tvin_wrapc_buffer = new sc_bv<16>[1024];

		// RTL Name: data2
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: text.V(15, 0)
				{
					// carray: (0) => (1023) @ (1)
					for (int i_0 = 0; i_0 <= 1023; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : text[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : text[0]
						// regulate_c_name       : text_V
						// input_type_conversion : (text[i_0]).to_string(2).c_str()
						if (&(text[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> text_V_tmp_mem;
							text_V_tmp_mem = (text[i_0]).to_string(2).c_str();
							data2_tvin_wrapc_buffer[hls_map_index].range(15, 0) = text_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvin_data2, "%s\n", (data2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data2, tvin_data2);
		}

		tcl_file.set_num(1024, &tcl_file.data2_depth);
		sprintf(tvin_data2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data2, tvin_data2);

		// release memory allocation
		delete [] data2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_data3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data3, tvin_data3);

		sc_bv<16>* data3_tvin_wrapc_buffer = new sc_bv<16>[1024];

		// RTL Name: data3
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: data_ret.V(15, 0)
				{
					// carray: (0) => (1023) @ (1)
					for (int i_0 = 0; i_0 <= 1023; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_ret[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_ret[0]
						// regulate_c_name       : data_ret_V
						// input_type_conversion : (data_ret[i_0]).to_string(2).c_str()
						if (&(data_ret[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> data_ret_V_tmp_mem;
							data_ret_V_tmp_mem = (data_ret[i_0]).to_string(2).c_str();
							data3_tvin_wrapc_buffer[hls_map_index].range(15, 0) = data_ret_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvin_data3, "%s\n", (data3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data3, tvin_data3);
		}

		tcl_file.set_num(1024, &tcl_file.data3_depth);
		sprintf(tvin_data3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data3, tvin_data3);

		// release memory allocation
		delete [] data3_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_V, tvin_key_V);

		sc_bv<32> key_V_tvin_wrapc_buffer;

		// RTL Name: key_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_V, "%s\n", (key_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_V, tvin_key_V);
		}

		tcl_file.set_num(1, &tcl_file.key_V_depth);
		sprintf(tvin_key_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_V, tvin_key_V);

		// [[transaction]]
		sprintf(tvin_tweak_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_tweak_V, tvin_tweak_V);

		sc_bv<32> tweak_V_tvin_wrapc_buffer;

		// RTL Name: tweak_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_tweak_V, "%s\n", (tweak_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_tweak_V, tvin_tweak_V);
		}

		tcl_file.set_num(1, &tcl_file.tweak_V_depth);
		sprintf(tvin_tweak_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_tweak_V, tvin_tweak_V);

		// [[transaction]]
		sprintf(tvin_text_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_text_V, tvin_text_V);

		sc_bv<32> text_V_tvin_wrapc_buffer;

		// RTL Name: text_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_text_V, "%s\n", (text_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_text_V, tvin_text_V);
		}

		tcl_file.set_num(1, &tcl_file.text_V_depth);
		sprintf(tvin_text_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_text_V, tvin_text_V);

		// [[transaction]]
		sprintf(tvin_mode_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_mode_V, tvin_mode_V);

		sc_bv<16> mode_V_tvin_wrapc_buffer;

		// RTL Name: mode_V
		{
			// bitslice(15, 0)
			{
				// celement: mode.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : mode
						// sub_1st_elem          : 
						// ori_name_1st_elem     : mode
						// regulate_c_name       : mode_V
						// input_type_conversion : (mode).to_string(2).c_str()
						if (&(mode) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> mode_V_tmp_mem;
							mode_V_tmp_mem = (mode).to_string(2).c_str();
							mode_V_tvin_wrapc_buffer.range(15, 0) = mode_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_mode_V, "%s\n", (mode_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_mode_V, tvin_mode_V);
		}

		tcl_file.set_num(1, &tcl_file.mode_V_depth);
		sprintf(tvin_mode_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_mode_V, tvin_mode_V);

		// [[transaction]]
		sprintf(tvin_text_len_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_text_len_V, tvin_text_len_V);

		sc_bv<16> text_len_V_tvin_wrapc_buffer;

		// RTL Name: text_len_V
		{
			// bitslice(15, 0)
			{
				// celement: text_len.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : text_len
						// sub_1st_elem          : 
						// ori_name_1st_elem     : text_len
						// regulate_c_name       : text_len_V
						// input_type_conversion : (text_len).to_string(2).c_str()
						if (&(text_len) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> text_len_V_tmp_mem;
							text_len_V_tmp_mem = (text_len).to_string(2).c_str();
							text_len_V_tvin_wrapc_buffer.range(15, 0) = text_len_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_text_len_V, "%s\n", (text_len_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_text_len_V, tvin_text_len_V);
		}

		tcl_file.set_num(1, &tcl_file.text_len_V_depth);
		sprintf(tvin_text_len_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_text_len_V, tvin_text_len_V);

		// [[transaction]]
		sprintf(tvin_data_ret_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_ret_V, tvin_data_ret_V);

		sc_bv<32> data_ret_V_tvin_wrapc_buffer;

		// RTL Name: data_ret_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_data_ret_V, "%s\n", (data_ret_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_ret_V, tvin_data_ret_V);
		}

		tcl_file.set_num(1, &tcl_file.data_ret_V_depth);
		sprintf(tvin_data_ret_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_ret_V, tvin_data_ret_V);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		xts_aes(key, tweak, text, mode, text_len, data_ret);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_data3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data3, tvout_data3);

		sc_bv<16>* data3_tvout_wrapc_buffer = new sc_bv<16>[1024];

		// RTL Name: data3
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: data_ret.V(15, 0)
				{
					// carray: (0) => (1023) @ (1)
					for (int i_0 = 0; i_0 <= 1023; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_ret[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_ret[0]
						// regulate_c_name       : data_ret_V
						// input_type_conversion : (data_ret[i_0]).to_string(2).c_str()
						if (&(data_ret[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> data_ret_V_tmp_mem;
							data_ret_V_tmp_mem = (data_ret[i_0]).to_string(2).c_str();
							data3_tvout_wrapc_buffer[hls_map_index].range(15, 0) = data_ret_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvout_data3, "%s\n", (data3_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data3, tvout_data3);
		}

		tcl_file.set_num(1024, &tcl_file.data3_depth);
		sprintf(tvout_data3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data3, tvout_data3);

		// release memory allocation
		delete [] data3_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "data0"
		delete [] tvin_data0;
		// release memory allocation: "data1"
		delete [] tvin_data1;
		// release memory allocation: "data2"
		delete [] tvin_data2;
		// release memory allocation: "data3"
		delete [] tvout_data3;
		delete [] tvin_data3;
		// release memory allocation: "key_V"
		delete [] tvin_key_V;
		// release memory allocation: "tweak_V"
		delete [] tvin_tweak_V;
		// release memory allocation: "text_V"
		delete [] tvin_text_V;
		// release memory allocation: "mode_V"
		delete [] tvin_mode_V;
		// release memory allocation: "text_len_V"
		delete [] tvin_text_len_V;
		// release memory allocation: "data_ret_V"
		delete [] tvin_data_ret_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

