#include <cstdint>

void aes_process(int16_t text[16], int initial_round, int round_factor, int16_t expanded_key[4][60], uint8_t s_boxes[3][256], uint8_t mix_column_constant_matrices[3][4][4], uint8_t multiplication[15][256], int16_t sequence_out[16]);

void aes_substitute_bytes(int16_t state_matrix[4][4], uint8_t s_box[256]);

void aes_shift_rows(int16_t state_matrix[4][4], int round_factor);

void aes_mix_columns(int16_t state_matrix[4][4], uint8_t constant_matrix[4][4], uint8_t multiplication[15][256]);

void aes_add_round_key(int16_t state_matrix[4][4], int16_t round_key_matrix[4][4]);

void aes_get_round_key(int round, int16_t expanded_key[4][60], int16_t round_key[4][4]);

void aes_expand_key(int16_t key[32], uint8_t s_box[256], uint8_t rcon[256], int16_t expanded_key_matrix[4][60]);

void aes_sequence_to_matrix(int16_t sequence[16], int16_t matrix_out[4][4]);

void aes_matrix_to_sequence(int16_t matrix[4][4], int16_t sequence[16]);

void xts_aes_calculate_next_tweak(int16_t tweak[16]);

void xts_aes_process_block(int16_t block[16], int16_t tweak[16], int16_t mode, int16_t expanded_key[4][60], uint8_t s_boxes[3][256], uint8_t mix_column_constant_matrices[3][4][4], uint8_t multiplication[15][256]);

void xts_aes_process_data(int16_t data[1024], int16_t num_blocks_orig, int16_t mode, int16_t tweak[16], int16_t expanded_key[4][60], uint8_t s_boxes[3][256], uint8_t mix_column_constant_matrices[3][4][4], uint8_t multiplication[15][256], int16_t blocks[64][16]);

void xts_aes(int16_t key[64], int16_t tweak[16], int16_t text[1024], int16_t mode, int16_t text_len, uint8_t s_boxes[3][256], uint8_t mix_column_constant_matrices[3][4][4], uint8_t multiplication[15][256], uint8_t rcon[256], int16_t data_ret[1024]);

