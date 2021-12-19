#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_math.h"

void aes_process(int16 text[1][16], int initial_round, int round_factor, int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], int16 sequence_out[1][16])
{
  int16 state_matrix[4][4];
  aes_sequence_to_matrix(text, state_matrix);
  int round = initial_round;
  int16 round_key[4][4];
  aes_get_round_key(round, expanded_key, round_key);
  aes_add_round_key(state_matrix, round_key);
  round += round_factor;
  for (int i = 0; i < 13; i += 1)
  {
    aes_substitute_bytes(state_matrix, s_boxes[round_factor][0]);
    aes_shift_rows(state_matrix, round_factor);
    aes_mix_columns(state_matrix, mix_column_constant_matrices[round_factor][0][0], multiplication);
    aes_get_round_key(round, expanded_key, round_key);
    if (round_factor == -1)
    {
      aes_mix_columns(round_key, mix_column_constant_matrices[round_factor][0][0], multiplication);
    }

    aes_add_round_key(state_matrix, round_key);
    round += round_factor;
  }

  aes_substitute_bytes(state_matrix, s_boxes[round_factor]);
  aes_shift_rows(state_matrix, round_factor);
  aes_get_round_key(round, expanded_key, round_key);
  aes_add_round_key(state_matrix, round_key);
  aes_matrix_to_sequence(state_matrix, sequence_out);
}

void aes_substitute_bytes(int16 state_matrix[4][4], ap_uint<8> s_box)
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
        temp_row[idx_subscript3] = state_matrix[row_index][(row_index * -1) + idx_subscript3];
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

void aes_mix_columns(int16 state_matrix[4][4], ap_uint<8> constant_matrix[1][4][4], ap_uint<8> multiplication[15][256])
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

void aes_expand_key(ap_int<16> key[32], ap_uint<8> s_box[1][256], ap_uint<8> rcon[256], int16 expanded_key_matrix[4][60])
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

void xts_aes_process_block(int16 block[1][16], int16 tweak[16], ap_int<16> mode, int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256])
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

void xts_aes_process_data(ap_int<64> data[1024], ap_int<16> num_blocks_orig, ap_int<16> mode, int16 tweak[16], int16 expanded_key[4][60], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], int16 blocks[64][16])
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
      xts_aes_process_block(blocks[i][0], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
      xts_aes_calculate_next_tweak(tweak);
    }

  }

}

void xts_aes(ap_int<16> key[64], ap_int<16> tweak[16], ap_int<64> text[1024], ap_int<16> mode, ap_int<16> text_len, ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], ap_uint<8> rcon[256], ap_int<16> data_ret[1024])
{
  #pragma HLS INTERFACE m_axi port=key offset=slave bundle=data0
  #pragma HLS INTERFACE s_axilite register port=key bundle=ctrl
  #pragma HLS INTERFACE m_axi port=tweak offset=slave bundle=data1
  #pragma HLS INTERFACE s_axilite register port=tweak bundle=ctrl
  #pragma HLS INTERFACE m_axi port=text offset=slave bundle=data2
  #pragma HLS INTERFACE s_axilite register port=text bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=mode bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=text_len bundle=ctrl
  #pragma HLS INTERFACE m_axi port=s_boxes offset=slave bundle=data3
  #pragma HLS INTERFACE s_axilite register port=s_boxes bundle=ctrl
  #pragma HLS INTERFACE m_axi port=mix_column_constant_matrices offset=slave bundle=data0
  #pragma HLS INTERFACE s_axilite register port=mix_column_constant_matrices bundle=ctrl
  #pragma HLS INTERFACE m_axi port=multiplication offset=slave bundle=data1
  #pragma HLS INTERFACE s_axilite register port=multiplication bundle=ctrl
  #pragma HLS INTERFACE m_axi port=rcon offset=slave bundle=data2
  #pragma HLS INTERFACE s_axilite register port=rcon bundle=ctrl
  #pragma HLS INTERFACE m_axi port=data_ret offset=slave bundle=data3
  #pragma HLS INTERFACE s_axilite register port=data_ret bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=return bundle=ctrl
  int16 aes_expanded_key[4][60];
  int16 aes_expanded_key2[4][60];
  aes_expand_key(key[0], s_boxes[1][0], rcon, aes_expanded_key);
  aes_expand_key(key[32], s_boxes[1][0], rcon, aes_expanded_key2);
  int16 aes_tweak[16];
  aes_process(tweak, 0, 1, aes_expanded_key2, s_boxes, mix_column_constant_matrices, multiplication, aes_tweak);
  int16 processed_data[64][16];
  xts_aes_process_data(text, text_len, mode, aes_tweak, aes_expanded_key, s_boxes, mix_column_constant_matrices, multiplication, processed_data);
  for (int i = 0; i < 64; i += 1)
  {
    for (int j = 0; j < 16; j += 1)
    {
      data_ret[(i * 16) + j] = processed_data[i][j];
    }

  }

}

