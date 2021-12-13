#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_math.h"

int aes_process(int text[16], int initial_round, int round_factor, int expanded_key[4][4], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256])
{
  int state_matrix[4][4];
  for (int i_chaining_0 = 0; i_chaining_0 < 4; i_chaining_0 += 1)
  {
    for (int i_chaining_1 = 0; i_chaining_1 < 4; i_chaining_1 += 1)
    {
      state_matrix[i_chaining_0][i_chaining_1] = aes_sequence_to_matrix(text);
    }

  }

  int round = initial_round;
  aes_add_round_key(state_matrix, aes_get_round_key(round, expanded_key));
  round += round_factor;
  for (int i = 0; i < 13; i += 1)
  {
    aes_substitute_bytes(state_matrix, s_boxes[round_factor][0]);
    aes_shift_rows(state_matrix, round_factor);
    aes_mix_columns(state_matrix, mix_column_constant_matrices[round_factor][0][0], multiplication);
    ap_int<16> round_key[4][4];
    for (int i_chaining_0 = 0; i_chaining_0 < 4; i_chaining_0 += 1)
    {
      for (int i_chaining_1 = 0; i_chaining_1 < 4; i_chaining_1 += 1)
      {
        round_key[i_chaining_0][i_chaining_1] = aes_get_round_key(round, expanded_key);
      }

    }

    if (round_factor == -1)
    {
      aes_mix_columns(round_key, mix_column_constant_matrices[round_factor][0][0], multiplication);
    }

    aes_add_round_key(state_matrix, round_key);
    round += round_factor;
  }

  aes_substitute_bytes(state_matrix, s_boxes[round_factor]);
  aes_shift_rows(state_matrix, round_factor);
  aes_add_round_key(state_matrix, aes_get_round_key(round, expanded_key));
  return aes_matrix_to_sequence(state_matrix);
}

int aes_substitute_bytes(int state_matrix[4][4], ap_uint<8> s_box)
{
  for (int row_index = 0; row_index < 4; row_index += 1)
  {
    for (int column_index = 0; column_index < 4; column_index += 1)
    {
      int temp = state_matrix[row_index][column_index];
      state_matrix[row_index][column_index] = s_box[temp];
    }

  }

  return state_matrix;
}

int aes_shift_rows(int state_matrix[4][4], int round_factor)
{
  for (int row_index = 1; row_index < 4; row_index += 1)
  {
    ap_int<16> temp_row[4];
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
        temp_row[idx_subscript3] = state_matrix[row_index][(4 - row_index) + idx_subscript3];
      }

      for (int idx_subscript4 = 0; idx_subscript4 < (4 - row_index); idx_subscript4 += 1)
      {
        temp_row[idx_subscript4] = state_matrix[row_index][idx_subscript4];
      }

    }

    for (int i_chaining_1 = 0; i_chaining_1 < 4; i_chaining_1 += 1)
    {
      state_matrix[0 + row_index][i_chaining_1 + 0] = temp_row[i_chaining_1];
    }

  }

  return state_matrix;
}

int aes_mix_columns(ap_int<16> state_matrix[4][4], ap_uint<8> constant_matrix[1][4][4], ap_uint<8> multiplication[15][256])
{
  for (int column_index = 0; column_index < 4; column_index += 1)
  {
    ap_int<16> column[4];
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

  return state_matrix;
}

int aes_add_round_key(int state_matrix[4][4], ap_int<16> round_key_matrix[4][4])
{
  for (int row_index = 0; row_index < 4; row_index += 1)
  {
    for (int column_index = 0; column_index < 4; column_index += 1)
    {
      state_matrix[row_index][column_index] ^= round_key_matrix[row_index][column_index];
    }

  }

  return state_matrix;
}

ap_int<16> aes_get_round_key(int round, int expanded_key[4][4])
{
  int key_column_index = 4 * round;
  ap_int<16> round_key[4][4];
  round_key[0] = expanded_key[0][key_column_index];
  round_key[1] = expanded_key[1][key_column_index];
  round_key[2] = expanded_key[2][key_column_index];
  round_key[3] = expanded_key[3][key_column_index];
  return round_key;
}

int aes_expand_key(ap_int<16> key[32], ap_uint<8> s_box[1][256], ap_uint<8> rcon[256])
{
  ap_int<16> expanded_key[240];
  for (int i = 0; i < 32; i += 1)
  {
    expanded_key[i] = key[i];
  }

  int n = 1;
  int step = 0;
  int cur_len = 32;
  while (cur_len < 240)
  {
    ap_int<16> temporary_key[4];
    for (int i = 0; i < 4; i += 1)
    {
      temporary_key[i] = expanded_key[(-4 + i) + cur_len];
    }

    if (step == 0)
    {
      ap_int<16> w = temporary_key[0];
      for (int i = 0; i < 3; i += 1)
      {
        temporary_key[i] = temporary_key[i + 1];
      }

      temporary_key[3] = w;
      for (int i = 0; i < 4; i += 1)
      {
        ap_int<16> temp = temporary_key[i];
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
          temp = temporary_key[i];
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

  return aes_sequence_to_matrix(expanded_key);
}

int aes_sequence_to_matrix(ap_int<16> sequence[16])
{
  int rows = 4;
  int columns = 4;
  int matrix[4][4];
  for (int i = 0; i < 4; i += 1)
  {
    for (int j = 0; j < 4; j += 1)
    {
      matrix[i][j] = sequence[(rows * j) + i];
    }

  }

  return matrix;
}

int aes_matrix_to_sequence(int matrix[4][4])
{
  int elems = 16;
  int sequence[16];
  int column_length = 4;
  i = 0;
  for (int column = 0; column < column_length; column += 1)
  {
    for (int row = 0; row < 4; row += 1)
    {
      sequence[i] = matrix[row][column];
      i += 1;
    }

  }

  return sequence;
}

int xts_aes_calculate_next_tweak(int tweak[16])
{
  int next_tweak[16];
  int carry_in = 0;
  int carry_out = 0;
  for (int j = 0; j < 16; j += 1)
  {
    carry_out = (tweak[j] >> 7) & 1;
    next_tweak[j] = ((tweak[j] << 1) + carry_in) & 255;
    carry_in = carry_out;
  }

  if (carry_out)
  {
    next_tweak[0] ^= 135;
  }

  return next_tweak;
}

int xts_aes_process_block(ap_int<16> block[16], int tweak[16], int mode, int expanded_key[4][4], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256])
{
  int new_block[1][16];
  for (int i_map_0 = 0; i_map_0 < 1; i_map_0 += 1)
  {
    for (int i_map_1 = 0; i_map_1 < 16; i_map_1 += 1)
    {
      new_block[i_map_0] = block[i_map_0][i_map_1] ^ tweak[i_map_0];
    }

  }

  int new_block_temp[16];
  int ind = 0;
  for (int elem = 0; elem < 128; elem += 1)
  {
    new_block_temp[ind] = elem;
    ind += 1;
  }

  for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
  {
    new_block[i_chaining_0] = new_block_temp[i_chaining_0];
  }

  if (mode == 1)
  {
    for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
    {
      new_block[i_chaining_0] = aes_process(new_block, 0, 1, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
    }

  }
  else
  {
    for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
    {
      new_block[i_chaining_0] = aes_process(new_block, 14, -1, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
    }

  }

  for (int i_map_0 = 0; i_map_0 < 16; i_map_0 += 1)
  {
    new_block[i_map_0] = new_block[i_map_0] ^ tweak[i_map_0];
  }

  int new_block_temp[16];
  ind = 0;
  for (int elem = 0; elem < 128; elem += 1)
  {
    new_block_temp[ind] = elem;
    ind += 1;
  }

  for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
  {
    new_block[i_chaining_0] = new_block_temp[i_chaining_0];
  }

  return new_block;
}

int xts_aes_process_data(ap_int<16> data[16], int mode, int tweak[16], int expanded_key[4][4], ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256])
{
  int partial = 0;
  int num_blocks = 64;
  int blocks_temp[64][16];
  for (int i = 0; i < 64; i += 1)
  {
    ap_int<16> temp = data[i * 16];
    if ((i == (num_blocks - 1)) && (partial != 0))
    {
      blocks_temp[i][0] = temp;
    }
    else
    {
      blocks_temp[i] = temp;
    }

  }

  int blocks[64][16];
  for (int i_chaining_0 = 0; i_chaining_0 < 64; i_chaining_0 += 1)
  {
    for (int i_chaining_1 = 0; i_chaining_1 < 16; i_chaining_1 += 1)
    {
      blocks[i_chaining_0][i_chaining_1] = blocks_temp[i_chaining_0][i_chaining_1];
    }

  }

  int multiple_block_size = 0;
  if (partial == 0)
  {
    multiple_block_size = 1;
  }

  if (multiple_block_size)
  {
    for (int i = 0; i < (64 - 1); i += 1)
    {
      for (int i_chaining_1 = 0; i_chaining_1 < 16; i_chaining_1 += 1)
      {
        blocks[0 + i][i_chaining_1 + 0] = xts_aes_process_block(blocks[i][0], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
      }

      for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
      {
        tweak[i_chaining_0] = xts_aes_calculate_next_tweak(tweak);
      }

    }

  }
  else
  {
    for (int i = 0; i < (64 - 2); i += 1)
    {
      for (int i_chaining_1 = 0; i_chaining_1 < 16; i_chaining_1 += 1)
      {
        blocks[0 + i][i_chaining_1 + 0] = xts_aes_process_block(blocks[i][0], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
      }

      for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
      {
        tweak[i_chaining_0] = xts_aes_calculate_next_tweak(tweak);
      }

    }

  }

  if (multiple_block_size)
  {
    for (int i_chaining_1 = 0; i_chaining_1 < 16; i_chaining_1 += 1)
    {
      blocks[0 + -1][i_chaining_1 + 0] = xts_aes_process_block(blocks[-1][0], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
    }

  }
  else
  {
    if (mode == 1)
    {
      int first_tweak[16];
      for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
      {
        first_tweak[i_chaining_0] = tweak[i_chaining_0];
      }

      int second_tweak[16];
      for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
      {
        second_tweak[i_chaining_0] = xts_aes_calculate_next_tweak(tweak);
      }

    }
    else
    {
      for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
      {
        second_tweak[i_chaining_0] = tweak[i_chaining_0];
      }

      for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
      {
        first_tweak[i_chaining_0] = xts_aes_calculate_next_tweak(tweak);
      }

    }

    int cc[16];
    for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
    {
      cc[i_chaining_0] = xts_aes_process_block(blocks[-2][0], first_tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
    }

    ap_int<16> pp[16];
    pp[0] = blocks[-1][0];
    pp[partial] = cc[partial];
    blocks[-1][0] = cc[0];
    for (int i_chaining_1 = 0; i_chaining_1 < 16; i_chaining_1 += 1)
    {
      blocks[0 + -2][i_chaining_1 + 0] = xts_aes_process_block(pp, second_tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
    }

  }

  return blocks;
}

int xts_aes(ap_int<16> key[64], ap_int<16> tweak[16], ap_int<16> text[16], int mode, ap_uint<8> s_boxes[3][256], ap_uint<8> mix_column_constant_matrices[3][4][4], ap_uint<8> multiplication[15][256], ap_uint<8> rcon[256])
{
  #pragma HLS INTERFACE m_axi port=key offset=slave bundle=data0
  #pragma HLS INTERFACE s_axilite register port=key bundle=ctrl
  #pragma HLS INTERFACE m_axi port=tweak offset=slave bundle=data1
  #pragma HLS INTERFACE s_axilite register port=tweak bundle=ctrl
  #pragma HLS INTERFACE m_axi port=text offset=slave bundle=data2
  #pragma HLS INTERFACE s_axilite register port=text bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=mode bundle=ctrl
  #pragma HLS INTERFACE m_axi port=s_boxes offset=slave bundle=data3
  #pragma HLS INTERFACE s_axilite register port=s_boxes bundle=ctrl
  #pragma HLS INTERFACE m_axi port=mix_column_constant_matrices offset=slave bundle=data0
  #pragma HLS INTERFACE s_axilite register port=mix_column_constant_matrices bundle=ctrl
  #pragma HLS INTERFACE m_axi port=multiplication offset=slave bundle=data1
  #pragma HLS INTERFACE s_axilite register port=multiplication bundle=ctrl
  #pragma HLS INTERFACE m_axi port=rcon offset=slave bundle=data2
  #pragma HLS INTERFACE s_axilite register port=rcon bundle=ctrl
  #pragma HLS INTERFACE s_axilite register port=return bundle=ctrl
  int aes_expanded_key[4][4];
  for (int i_chaining_0 = 0; i_chaining_0 < 4; i_chaining_0 += 1)
  {
    for (int i_chaining_1 = 0; i_chaining_1 < 4; i_chaining_1 += 1)
    {
      aes_expanded_key[i_chaining_0][i_chaining_1] = aes_expand_key(key[0], s_boxes[1][0], rcon);
    }

  }

  int aes_expanded_key2[4][4];
  for (int i_chaining_0 = 0; i_chaining_0 < 4; i_chaining_0 += 1)
  {
    for (int i_chaining_1 = 0; i_chaining_1 < 4; i_chaining_1 += 1)
    {
      aes_expanded_key2[i_chaining_0][i_chaining_1] = aes_expand_key(key[32], s_boxes[1][0], rcon);
    }

  }

  int aes_tweak[16];
  for (int i_chaining_0 = 0; i_chaining_0 < 16; i_chaining_0 += 1)
  {
    aes_tweak[i_chaining_0] = aes_process(tweak, 0, 1, aes_expanded_key2, s_boxes, mix_column_constant_matrices, multiplication);
  }

  int processed_data[64][16];
  for (int i_chaining_0 = 0; i_chaining_0 < 64; i_chaining_0 += 1)
  {
    for (int i_chaining_1 = 0; i_chaining_1 < 16; i_chaining_1 += 1)
    {
      processed_data[i_chaining_0][i_chaining_1] = xts_aes_process_data(text, mode, aes_tweak, aes_expanded_key, s_boxes, mix_column_constant_matrices, multiplication);
    }

  }

  int data_ret[1024];
  for (int i = 0; i < 1024; i += 1)
  {
    data_ret[i] = processed_data[i / 16][i % 16];
  }

  return data_ret;
}

