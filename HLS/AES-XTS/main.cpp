#include "ap_int.h"
#include "hls_math.h"
#include "main.h"

typedef ap_int<16> int16;
typedef ap_int<32> int32;

void aes_process(int16 text[16], int initial_round, int round_factor, int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], int16 sequence_out[16])
{
  int16 state_matrix[4][4];
  aes_sequence_to_matrix(text, state_matrix);
  int round = initial_round;
  int16 round_key[4][4];
  aes_get_round_key(round, expanded_key, round_key);
  aes_add_round_key(state_matrix, round_key);
  round += round_factor;
  //needed to add this because c++ cannot use -1 indexing
  int round_factor_idx;
  if (round_factor==1) {
      round_factor_idx = round_factor;
    } else {
      round_factor_idx = 2;
    }
  for (int i = 0; i < 13; i += 1)
  {
    aes_substitute_bytes(state_matrix, s_boxes[round_factor_idx]);
    aes_shift_rows(state_matrix, round_factor);
    aes_mix_columns(state_matrix, mix_column_constant_matrices[round_factor_idx], multiplication);
    aes_get_round_key(round, expanded_key, round_key);
    if (round_factor == -1)
    {
      aes_mix_columns(round_key, mix_column_constant_matrices[round_factor_idx], multiplication);
    }

    aes_add_round_key(state_matrix, round_key);
    round += round_factor;
  }

  aes_substitute_bytes(state_matrix, s_boxes[round_factor_idx]);
  aes_shift_rows(state_matrix, round_factor);
  aes_get_round_key(round, expanded_key, round_key);
  aes_add_round_key(state_matrix, round_key);
  aes_matrix_to_sequence(state_matrix, sequence_out);
}

void aes_substitute_bytes(int16 state_matrix[4][4], ap_uint<8> s_box[256])
{
  for (int row_index = 0; row_index < 4; row_index += 1)
  {
    for (int column_index = 0; column_index < 4; column_index += 1)
    {
      int16 temp = state_matrix[row_index][column_index];
      state_matrix[row_index][column_index] = s_box[temp];
    }

  }

}

void aes_shift_rows(int16 state_matrix[4][4], int round_factor)
{
  for (int row_index = 1; row_index < 4; row_index += 1)
  {
    int16 temp_row[4];
    if (round_factor == 1)
    {
      for (int idx_subscript = 0; idx_subscript < (4 - row_index); idx_subscript += 1)
      {
        temp_row[idx_subscript] = state_matrix[row_index][row_index + idx_subscript];
      }

      for (int idx_subscript2 = 0; idx_subscript2 < row_index; idx_subscript2 += 1)
      {
        temp_row[(4 - row_index) + idx_subscript2] = state_matrix[row_index][idx_subscript2];
      }

    }
    else
    {
      for (int idx_subscript3 = 0; idx_subscript3 < row_index; idx_subscript3 += 1)
      {
        temp_row[idx_subscript3] = state_matrix[row_index][(4-row_index) + idx_subscript3];
      }

      for (int idx_subscript4 = 0; idx_subscript4 < (4 - row_index); idx_subscript4 += 1)
      {
        temp_row[row_index + idx_subscript4] = state_matrix[row_index][idx_subscript4];
      }

    }

    for (int i_chaining_1 = 0; i_chaining_1 < 4; i_chaining_1 += 1)
    {
      state_matrix[0 + row_index][i_chaining_1 + 0] = temp_row[i_chaining_1];
    }

  }

}

void aes_mix_columns(int16 state_matrix[4][4], ap_uint<8> constant_matrix[4][4], ap_uint<8> multiplication[15][256])
{
  for (int column_index = 0; column_index < 4; column_index += 1)
  {
    int16 column[4];
    column[0] = state_matrix[0][column_index];
    column[1] = state_matrix[1][column_index];
    column[2] = state_matrix[2][column_index];
    column[3] = state_matrix[3][column_index];
    for (int row_index = 0; row_index < 4; row_index += 1)
    {
      state_matrix[row_index][column_index] = multiplication[constant_matrix[row_index][0]][column[0]];
      state_matrix[row_index][column_index] ^= multiplication[constant_matrix[row_index][1]][column[1]];
      state_matrix[row_index][column_index] ^= multiplication[constant_matrix[row_index][2]][column[2]];
      state_matrix[row_index][column_index] ^= multiplication[constant_matrix[row_index][3]][column[3]];
    }

  }

}

void aes_add_round_key(int16 state_matrix[4][4], int16 round_key_matrix[4][4])
{
  for (int row_index = 0; row_index < 4; row_index += 1)
  {
    for (int column_index = 0; column_index < 4; column_index += 1)
    {
      state_matrix[row_index][column_index] ^= round_key_matrix[row_index][column_index];
    }

  }

}

void aes_get_round_key(int round, int16 expanded_key[4][60], int16 round_key[4][4])
{
  int16 key_column_index = 4 * round;
  for (int i = 0; i < 4; i += 1)
  {
    for (int j = 0; j < 4; j += 1)
    {
      round_key[i][j] = expanded_key[i][key_column_index + j];
    }

  }

}

void aes_expand_key(ap_int<16> key[32], ap_uint<8> s_box[256], ap_uint<8> rcon[256], int16 expanded_key_matrix[4][60])
{
  int16 expanded_key[240];
  for (int i = 0; i < 32; i += 1)
  {
    expanded_key[i] = key[i];
  }

  int16 n = 1;
  int16 step = 0;
  int16 cur_len = 32;
  while (cur_len < 240)
  {
    int16 temporary_key[4];
    for (int i = 0; i < 4; i += 1)
    {
      temporary_key[i] = expanded_key[(-4 + i) + cur_len];
    }

    if (step == 0)
    {
      int16 w = temporary_key[0];
      for (int i = 0; i < 3; i += 1)
      {
        temporary_key[i] = temporary_key[i + 1];
      }

      temporary_key[3] = w;
      for (int i = 0; i < 4; i += 1)
      {
        int16 temp = temporary_key[i];
        temporary_key[i] = s_box[temp];
      }

      temporary_key[0] ^= rcon[n];
      n += 1;
    }
    else
    {
      if (step == 4)
      {
        for (int i = 0; i < 4; i += 1)
        {
          int16 temp = temporary_key[i];
          temporary_key[i] = s_box[temp];
        }

      }

    }

    for (int i = 0; i < 4; i += 1)
    {
      temporary_key[i] ^= expanded_key[(-32 + i) + cur_len];
    }

    for (int i = 0; i < 4; i += 1)
    {
      expanded_key[cur_len + i] = temporary_key[i];
    }

    step = (step + 1) % 8;
    cur_len += 4;
  }

  for (int i = 0; i < 4; i += 1)
  {
    for (int j = 0; j < 60; j += 1)
    {
      expanded_key_matrix[i][j] = expanded_key[(4 * j) + i];
    }

  }

}

void aes_sequence_to_matrix(ap_int<16> sequence[16], int16 matrix_out[4][4])
{
  int16 rows = 4;
  for (int i = 0; i < 4; i += 1)
  {
    for (int j = 0; j < 4; j += 1)
    {
      matrix_out[i][j] = sequence[(rows * j) + i];
    }

  }

}

void aes_matrix_to_sequence(int16 matrix[4][4], int16 sequence[16])
{
  int16 i = 0;
  for (int column = 0; column < 4; column += 1)
  {
    for (int row = 0; row < 4; row += 1)
    {
      sequence[i] = matrix[row][column];
      i += 1;
    }

  }

}

void xts_aes_calculate_next_tweak(int16 tweak[16])
{
  int16 carry_in = 0;
  int16 carry_out = 0;
  for (int j = 0; j < 16; j += 1)
  {
    carry_out = (tweak[j] >> 7) & 1;
    tweak[j] = ((tweak[j] << 1) + carry_in) & 255;
    carry_in = carry_out;
  }

  if (carry_out)
  {
    tweak[0] ^= 135;
  }

}

void xts_aes_process_block(int16 block[16], int16 tweak[16], ap_int<16> mode, int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256])
{
  for (int i = 0; i < 16; i += 1)
  {
    block[i] = block[i] ^ tweak[i];
  }

  if (mode == 1)
  {
    aes_process(block, 0, 1, expanded_key, s_boxes, mix_column_constant_matrices, multiplication, block);
  }
  else
  {
    aes_process(block, 14, -1, expanded_key, s_boxes, mix_column_constant_matrices, multiplication, block);
  }

  for (int i = 0; i < 16; i += 1)
  {
    block[i] = block[i] ^ tweak[i];
  }

}

void xts_aes_process_data(ap_int<16> data[1024], ap_int<16> num_blocks_orig, ap_int<16> mode, int16 tweak[16], int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], int16 blocks[64][16])
{
  for (int i = 0; i < 64; i += 1)
  {
    for (int j = 0; j < 16; j += 1)
    {
      blocks[i][j] = data[(i * 16) + j];
    }

  }

  for (int i = 0; i < 64; i += 1)
  {
    if (i < num_blocks_orig)
    {
      xts_aes_process_block(blocks[i], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
      xts_aes_calculate_next_tweak(tweak);
    }

  }

}

void xts_aes(ap_int<16> key[64], ap_int<16> tweak[16], ap_int<16> text[1024], ap_int<16> mode, ap_int<16> text_len, ap_int<16> data_ret[1024])
{
  #pragma HLS INTERFACE m_axi port=key offset=slave bundle=data0
  #pragma HLS INTERFACE s_axilite register port=key bundle=ctrl
  #pragma HLS INTERFACE m_axi port=tweak offset=slave bundle=data1
  #pragma HLS INTERFACE s_axilite register port=tweak bundle=ctrl
  #pragma HLS INTERFACE m_axi port=text offset=slave bundle=data2
  #pragma HLS INTERFACE s_axilite register port=text bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=mode bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=text_len bundle=ctrl
  //#pragma HLS INTERFACE m_axi port=s_boxes offset=slave bundle=data4
  //#pragma HLS INTERFACE s_axilite register port=s_boxes bundle=ctrl
  //#pragma HLS INTERFACE m_axi port=mix_column_constant_matrices offset=slave bundle=data0
  //#pragma HLS INTERFACE s_axilite register port=mix_column_constant_matrices bundle=ctrl
  //#pragma HLS INTERFACE m_axi port=multiplication offset=slave bundle=data1
  //#pragma HLS INTERFACE s_axilite register port=multiplication bundle=ctrl
  //#pragma HLS INTERFACE m_axi port=rcon offset=slave bundle=data2
  //#pragma HLS INTERFACE s_axilite register port=rcon bundle=ctrl
  #pragma HLS INTERFACE m_axi port=data_ret offset=slave bundle=data3
  #pragma HLS INTERFACE s_axilite register port=data_ret bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=return bundle=ctrl

	ap_uint<8> multiplication_tables[15][256] = {{0},
	                                    {0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12,
	                                     13,  14,  15,  16,  17,  18,  19,  20,  21,  22,  23,  24,  25,
	                                     26,  27,  28,  29,  30,  31,  32,  33,  34,  35,  36,  37,  38,
	                                     39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,
	                                     52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,
	                                     65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,
	                                     78,  79,  80,  81,  82,  83,  84,  85,  86,  87,  88,  89,  90,
	                                     91,  92,  93,  94,  95,  96,  97,  98,  99, 100, 101, 102, 103,
	                                    104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
	                                    117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
	                                    130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142,
	                                    143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155,
	                                    156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168,
	                                    169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181,
	                                    182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194,
	                                    195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207,
	                                    208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220,
	                                    221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233,
	                                    234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246,
	                                    247, 248, 249, 250, 251, 252, 253, 254, 255},
	                                    {0,   2,   4,   6,   8,  10,  12,  14,  16,  18,  20,  22,  24,
	                                     26,  28,  30,  32,  34,  36,  38,  40,  42,  44,  46,  48,  50,
	                                     52,  54,  56,  58,  60,  62,  64,  66,  68,  70,  72,  74,  76,
	                                     78,  80,  82,  84,  86,  88,  90,  92,  94,  96,  98, 100, 102,
	                                    104, 106, 108, 110, 112, 114, 116, 118, 120, 122, 124, 126, 128,
	                                    130, 132, 134, 136, 138, 140, 142, 144, 146, 148, 150, 152, 154,
	                                    156, 158, 160, 162, 164, 166, 168, 170, 172, 174, 176, 178, 180,
	                                    182, 184, 186, 188, 190, 192, 194, 196, 198, 200, 202, 204, 206,
	                                    208, 210, 212, 214, 216, 218, 220, 222, 224, 226, 228, 230, 232,
	                                    234, 236, 238, 240, 242, 244, 246, 248, 250, 252, 254,  27,  25,
	                                     31,  29,  19,  17,  23,  21,  11,   9,  15,  13,   3,   1,   7,
	                                      5,  59,  57,  63,  61,  51,  49,  55,  53,  43,  41,  47,  45,
	                                     35,  33,  39,  37,  91,  89,  95,  93,  83,  81,  87,  85,  75,
	                                     73,  79,  77,  67,  65,  71,  69, 123, 121, 127, 125, 115, 113,
	                                    119, 117, 107, 105, 111, 109,  99,  97, 103, 101, 155, 153, 159,
	                                    157, 147, 145, 151, 149, 139, 137, 143, 141, 131, 129, 135, 133,
	                                    187, 185, 191, 189, 179, 177, 183, 181, 171, 169, 175, 173, 163,
	                                    161, 167, 165, 219, 217, 223, 221, 211, 209, 215, 213, 203, 201,
	                                    207, 205, 195, 193, 199, 197, 251, 249, 255, 253, 243, 241, 247,
	                                    245, 235, 233, 239, 237, 227, 225, 231, 229},
	                                    {0,   3,   6,   5,  12,  15,  10,   9,  24,  27,  30,  29,  20,
	                                     23,  18,  17,  48,  51,  54,  53,  60,  63,  58,  57,  40,  43,
	                                     46,  45,  36,  39,  34,  33,  96,  99, 102, 101, 108, 111, 106,
	                                    105, 120, 123, 126, 125, 116, 119, 114, 113,  80,  83,  86,  85,
	                                     92,  95,  90,  89,  72,  75,  78,  77,  68,  71,  66,  65, 192,
	                                    195, 198, 197, 204, 207, 202, 201, 216, 219, 222, 221, 212, 215,
	                                    210, 209, 240, 243, 246, 245, 252, 255, 250, 249, 232, 235, 238,
	                                    237, 228, 231, 226, 225, 160, 163, 166, 165, 172, 175, 170, 169,
	                                    184, 187, 190, 189, 180, 183, 178, 177, 144, 147, 150, 149, 156,
	                                    159, 154, 153, 136, 139, 142, 141, 132, 135, 130, 129, 155, 152,
	                                    157, 158, 151, 148, 145, 146, 131, 128, 133, 134, 143, 140, 137,
	                                    138, 171, 168, 173, 174, 167, 164, 161, 162, 179, 176, 181, 182,
	                                    191, 188, 185, 186, 251, 248, 253, 254, 247, 244, 241, 242, 227,
	                                    224, 229, 230, 239, 236, 233, 234, 203, 200, 205, 206, 199, 196,
	                                    193, 194, 211, 208, 213, 214, 223, 220, 217, 218,  91,  88,  93,
	                                     94,  87,  84,  81,  82,  67,  64,  69,  70,  79,  76,  73,  74,
	                                    107, 104, 109, 110, 103, 100,  97,  98, 115, 112, 117, 118, 127,
	                                    124, 121, 122,  59,  56,  61,  62,  55,  52,  49,  50,  35,  32,
	                                     37,  38,  47,  44,  41,  42,  11,   8,  13,  14,   7,   4,   1,
	                                     2,  19,  16,  21,  22,  31,  28,  25,  26},
	                                    {0},
	                                    {0},
	                                    {0},
	                                    {0},
	                                    {0},
	                                    {0,   9,  18,  27,  36,  45,  54,  63,  72,  65,  90,  83, 108,
	                                    101, 126, 119, 144, 153, 130, 139, 180, 189, 166, 175, 216, 209,
	                                    202, 195, 252, 245, 238, 231,  59,  50,  41,  32,  31,  22,  13,
	                                      4, 115, 122,  97, 104,  87,  94,  69,  76, 171, 162, 185, 176,
	                                    143, 134, 157, 148, 227, 234, 241, 248, 199, 206, 213, 220, 118,
	                                    127, 100, 109,  82,  91,  64,  73,  62,  55,  44,  37,  26,  19,
	                                      8,   1, 230, 239, 244, 253, 194, 203, 208, 217, 174, 167, 188,
	                                    181, 138, 131, 152, 145,  77,  68,  95,  86, 105,  96, 123, 114,
	                                      5,  12,  23,  30,  33,  40,  51,  58, 221, 212, 207, 198, 249,
	                                    240, 235, 226, 149, 156, 135, 142, 177, 184, 163, 170, 236, 229,
	                                    254, 247, 200, 193, 218, 211, 164, 173, 182, 191, 128, 137, 146,
	                                    155, 124, 117, 110, 103,  88,  81,  74,  67,  52,  61,  38,  47,
	                                     16,  25,   2,  11, 215, 222, 197, 204, 243, 250, 225, 232, 159,
	                                    150, 141, 132, 187, 178, 169, 160,  71,  78,  85,  92,  99, 106,
	                                    113, 120,  15,   6,  29,  20,  43,  34,  57,  48, 154, 147, 136,
	                                    129, 190, 183, 172, 165, 210, 219, 192, 201, 246, 255, 228, 237,
	                                     10,   3,  24,  17,  46,  39,  60,  53,  66,  75,  80,  89, 102,
	                                    111, 116, 125, 161, 168, 179, 186, 133, 140, 151, 158, 233, 224,
	                                    251, 242, 205, 196, 223, 214,  49,  56,  35,  42,  21,  28,   7,
	                                     14, 121, 112, 107,  98,  93,  84,  79,  70},
	                                    {0},
	                                    {0,  11,  22,  29,  44,  39,  58,  49,  88,  83,  78,  69, 116,
	                                    127,  98, 105, 176, 187, 166, 173, 156, 151, 138, 129, 232, 227,
	                                    254, 245, 196, 207, 210, 217, 123, 112, 109, 102,  87,  92,  65,
	                                     74,  35,  40,  53,  62,  15,   4,  25,  18, 203, 192, 221, 214,
	                                    231, 236, 241, 250, 147, 152, 133, 142, 191, 180, 169, 162, 246,
	                                    253, 224, 235, 218, 209, 204, 199, 174, 165, 184, 179, 130, 137,
	                                    148, 159,  70,  77,  80,  91, 106,  97, 124, 119,  30,  21,   8,
	                                      3,  50,  57,  36,  47, 141, 134, 155, 144, 161, 170, 183, 188,
	                                    213, 222, 195, 200, 249, 242, 239, 228,  61,  54,  43,  32,  17,
	                                     26,   7,  12, 101, 110, 115, 120,  73,  66,  95,  84, 247, 252,
	                                    225, 234, 219, 208, 205, 198, 175, 164, 185, 178, 131, 136, 149,
	                                    158,  71,  76,  81,  90, 107,  96, 125, 118,  31,  20,   9,   2,
	                                     51,  56,  37,  46, 140, 135, 154, 145, 160, 171, 182, 189, 212,
	                                    223, 194, 201, 248, 243, 238, 229,  60,  55,  42,  33,  16,  27,
	                                      6,  13, 100, 111, 114, 121,  72,  67,  94,  85,   1,  10,  23,
	                                     28,  45,  38,  59,  48,  89,  82,  79,  68, 117, 126,  99, 104,
	                                    177, 186, 167, 172, 157, 150, 139, 128, 233, 226, 255, 244, 197,
	                                    206, 211, 216, 122, 113, 108, 103,  86,  93,  64,  75,  34,  41,
	                                     52,  63,  14,   5,  24,  19, 202, 193, 220, 215, 230, 237, 240,
	                                    251, 146, 153, 132, 143, 190, 181, 168, 163},
	                                    {0},
	                                    {0,  13,  26,  23,  52,  57,  46,  35, 104, 101, 114, 127,  92,
	                                     81,  70,  75, 208, 221, 202, 199, 228, 233, 254, 243, 184, 181,
	                                    162, 175, 140, 129, 150, 155, 187, 182, 161, 172, 143, 130, 149,
	                                    152, 211, 222, 201, 196, 231, 234, 253, 240, 107, 102, 113, 124,
	                                     95,  82,  69,  72,   3,  14,  25,  20,  55,  58,  45,  32, 109,
	                                     96, 119, 122,  89,  84,  67,  78,   5,   8,  31,  18,  49,  60,
	                                     43,  38, 189, 176, 167, 170, 137, 132, 147, 158, 213, 216, 207,
	                                    194, 225, 236, 251, 246, 214, 219, 204, 193, 226, 239, 248, 245,
	                                    190, 179, 164, 169, 138, 135, 144, 157,   6,  11,  28,  17,  50,
	                                     63,  40,  37, 110,  99, 116, 121,  90,  87,  64,  77, 218, 215,
	                                    192, 205, 238, 227, 244, 249, 178, 191, 168, 165, 134, 139, 156,
	                                    145,  10,   7,  16,  29,  62,  51,  36,  41,  98, 111, 120, 117,
	                                     86,  91,  76,  65,  97, 108, 123, 118,  85,  88,  79,  66,   9,
	                                      4,  19,  30,  61,  48,  39,  42, 177, 188, 171, 166, 133, 136,
	                                    159, 146, 217, 212, 195, 206, 237, 224, 247, 250, 183, 186, 173,
	                                    160, 131, 142, 153, 148, 223, 210, 197, 200, 235, 230, 241, 252,
	                                    103, 106, 125, 112,  83,  94,  73,  68,  15,   2,  21,  24,  59,
	                                     54,  33,  44,  12,   1,  22,  27,  56,  53,  34,  47, 100, 105,
	                                    126, 115,  80,  93,  74,  71, 220, 209, 198, 203, 232, 229, 242,
	                                    255, 180, 185, 174, 163, 128, 141, 154, 151},
	                                    {0,  14,  28,  18,  56,  54,  36,  42, 112, 126, 108,  98,  72,
	                                     70,  84,  90, 224, 238, 252, 242, 216, 214, 196, 202, 144, 158,
	                                    140, 130, 168, 166, 180, 186, 219, 213, 199, 201, 227, 237, 255,
	                                    241, 171, 165, 183, 185, 147, 157, 143, 129,  59,  53,  39,  41,
	                                      3,  13,  31,  17,  75,  69,  87,  89, 115, 125, 111,  97, 173,
	                                    163, 177, 191, 149, 155, 137, 135, 221, 211, 193, 207, 229, 235,
	                                    249, 247,  77,  67,  81,  95, 117, 123, 105, 103,  61,  51,  33,
	                                     47,   5,  11,  25,  23, 118, 120, 106, 100,  78,  64,  82,  92,
	                                      6,   8,  26,  20,  62,  48,  34,  44, 150, 152, 138, 132, 174,
	                                    160, 178, 188, 230, 232, 250, 244, 222, 208, 194, 204,  65,  79,
	                                     93,  83, 121, 119, 101, 107,  49,  63,  45,  35,   9,   7,  21,
	                                     27, 161, 175, 189, 179, 153, 151, 133, 139, 209, 223, 205, 195,
	                                    233, 231, 245, 251, 154, 148, 134, 136, 162, 172, 190, 176, 234,
	                                    228, 246, 248, 210, 220, 206, 192, 122, 116, 102, 104,  66,  76,
	                                     94,  80,  10,   4,  22,  24,  50,  60,  46,  32, 236, 226, 240,
	                                    254, 212, 218, 200, 198, 156, 146, 128, 142, 164, 170, 184, 182,
	                                     12,   2,  16,  30,  52,  58,  40,  38, 124, 114,  96, 110,  68,
	                                     74,  88,  86,  55,  57,  43,  37,  15,   1,  19,  29,  71,  73,
	                                     91,  85, 127, 113,  99, 109, 215, 217, 203, 197, 239, 225, 243,
	                                    253, 167, 169, 187, 181, 159, 145, 131, 141}};
	ap_uint<8> s_boxes[3][256] = {{0}, {99,124,119,123,242,107,111,197,48,1,103,43,254,215,171,118,202,130,
	            201,125,250,89,71,240,173,212,162,175,156,164,114,192,183,253,147,38,
	            54,63,247,204,52,165,229,241,113,216,49,21,4,199,35,195,24,150,
	            5,154,7,18,128,226,235,39,178,117,9,131,44,26,27,110,90,160,
	            82,59,214,179,41,227,47,132,83,209,0,237,32,252,177,91,106,203,
	            190,57,74,76,88,207,208,239,170,251,67,77,51,133,69,249,2,127,
	            80,60,159,168,81,163,64,143,146,157,56,245,188,182,218,33,16,255,
	            243,210,205,12,19,236,95,151,68,23,196,167,126,61,100,93,25,115,
	            96,129,79,220,34,42,144,136,70,238,184,20,222,94,11,219,224,50,
	            58,10,73,6,36,92,194,211,172,98,145,149,228,121,231,200,55,109,
	            141,213,78,169,108,86,244,234,101,122,174,8,186,120,37,46,28,166,
	            180,198,232,221,116,31,75,189,139,138,112,62,181,102,72,3,246,14,
	            97,53,87,185,134,193,29,158,225,248,152,17,105,217,142,148,155,30,
	            135,233,206,85,40,223,140,161,137,13,191,230,66,104,65,153,45,15,
	            176,84,187,22},
	            {82,9,106,213,48,54,165,56,191,64,163,158,129,243,215,251,124,227,
	            57,130,155,47,255,135,52,142,67,68,196,222,233,203,84,123,148,50,
	            166,194,35,61,238,76,149,11,66,250,195,78,8,46,161,102,40,217,
	            36,178,118,91,162,73,109,139,209,37,114,248,246,100,134,104,152,22,
	            212,164,92,204,93,101,182,146,108,112,72,80,253,237,185,218,94,21,
	            70,87,167,141,157,132,144,216,171,0,140,188,211,10,247,228,88,5,
	            184,179,69,6,208,44,30,143,202,63,15,2,193,175,189,3,1,19,
	            138,107,58,145,17,65,79,103,220,234,151,242,207,206,240,180,230,115,
	            150,172,116,34,231,173,53,133,226,249,55,232,28,117,223,110,71,241,
	            26,113,29,41,197,137,111,183,98,14,170,24,190,27,252,86,62,75,
	            198,210,121,32,154,219,192,254,120,205,90,244,31,221,168,51,136,7,
	            199,49,177,18,16,89,39,128,236,95,96,81,127,169,25,181,74,13,
	            45,229,122,159,147,201,156,239,160,224,59,77,174,42,245,176,200,235,
	            187,60,131,83,153,97,23,43,4,126,186,119,214,38,225,105,20,99,
	            85,33,12,125}};

	ap_uint<8> mix_column_constant_matrices[3][4][4] = {{0}, {{2, 3, 1, 1}, {1, 2, 3, 1}, {1, 1, 2, 3}, {3, 1, 1, 2}},
	                                                    {{14, 11, 13,  9}, {9, 14, 11, 13}, {13,  9, 14, 11}, {11, 13,  9, 14}}};

	ap_uint<8> rcon[256] = {141, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94,
	            188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145, 57, 114, 228, 211, 189,
	            97, 194, 159, 37, 74, 148, 51, 102, 204, 131, 29, 58, 116, 232, 203, 141, 1, 2,
	            4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198,
	            151, 53, 106, 212, 179, 125, 250, 239, 197, 145, 57, 114, 228, 211, 189, 97, 194, 159,
	            37, 74, 148, 51, 102, 204, 131, 29, 58, 116, 232, 203, 141, 1, 2, 4, 8, 16,
	            32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106,
	            212, 179, 125, 250, 239, 197, 145, 57, 114, 228, 211, 189, 97, 194, 159, 37, 74, 148,
	            51, 102, 204, 131, 29, 58, 116, 232, 203, 141, 1, 2, 4, 8, 16, 32, 64, 128,
	            27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125,
	            250, 239, 197, 145, 57, 114, 228, 211, 189, 97, 194, 159, 37, 74, 148, 51, 102, 204,
	            131, 29, 58, 116, 232, 203, 141, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108,
	            216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197,
	            145, 57, 114, 228, 211, 189, 97, 194, 159, 37, 74, 148, 51, 102, 204, 131, 29, 58,
	            116, 232, 203, 141};

	int16 aes_expanded_key[4][60];
	int16 aes_expanded_key2[4][60];

  aes_expand_key(key, s_boxes[1], rcon, aes_expanded_key);
  aes_expand_key(key+32, s_boxes[1], rcon, aes_expanded_key2);
  int16 aes_tweak[16];
  aes_process(tweak, 0, 1, aes_expanded_key2, s_boxes, mix_column_constant_matrices, multiplication_tables, aes_tweak);
  int16 processed_data[64][16];
  xts_aes_process_data(text, text_len, mode, aes_tweak, aes_expanded_key, s_boxes, mix_column_constant_matrices, multiplication_tables, processed_data);
  for (int i = 0; i < 64; i += 1)
  {
    for (int j = 0; j < 16; j += 1)
    {
      data_ret[(i * 16) + j] = processed_data[i][j];
    }

  }

}



