#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_math.h"

typedef ap_int<16> int16;
typedef ap_int<32> int32; // fixed to handle bugs.




void aes_process(int16 text[16], int initial_round, int round_factor, int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], int16 sequence_out[16]);

void aes_substitute_bytes(int16 state_matrix[4][4], ap_uint<8> s_box[256]);

void aes_shift_rows(int16 state_matrix[4][4], int round_factor);

void aes_mix_columns(int16 state_matrix[4][4], ap_uint<8> constant_matrix[4][4], ap_uint<8> multiplication[15][256]);

void aes_add_round_key(int16 state_matrix[4][4], int16 round_key_matrix[4][4]);

void aes_get_round_key(int round, int16 expanded_key[4][60], int16 round_key[4][4]);

void aes_expand_key(ap_int<16> key[32], ap_uint<8> s_box[256], ap_uint<8> rcon[256], int16 expanded_key_matrix[4][60]);

void aes_sequence_to_matrix(ap_int<16> sequence[16], int16 matrix_out[4][4]);

void aes_matrix_to_sequence(int16 matrix[4][4], int16 sequence[16]);

void xts_aes_calculate_next_tweak(int16 tweak[16]);

void xts_aes_process_block(int16 block[16], int16 tweak[16], ap_int<16> mode, int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256]);

void xts_aes_process_data(ap_int<16> data[1024], ap_int<16> num_blocks_orig, ap_int<16> mode, int16 tweak[16], int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], int16 blocks[64][16]);

void xts_aes(ap_int<16> key[64], ap_int<16> tweak[16], ap_int<16> text[1024], ap_int<16> mode, ap_int<16> text_len, ap_int<16> data_ret[1024]);

