import sys
import binascii
#from pylog import *
import numpy as np
from xts_aes import XTSAES

import aes_tables

#@pylog(board='pynq')
def xts_aes(key, tweak, text, mode) :

    def aes_process(text, initial_round, round_factor, expanded_key):

        state_matrix = aes_sequence_to_matrix(text)
        round = initial_round

        aes_add_round_key(state_matrix, aes_get_round_key(round, expanded_key))
        round += round_factor

        for i in range(0, 13):
            aes_substitute_bytes(state_matrix, aes_tables.s_boxes[round_factor])
            aes_shift_rows(state_matrix, round_factor)
            aes_mix_columns(state_matrix, aes_tables.mix_column_constant_matrices[round_factor])

            round_key = aes_get_round_key(round, expanded_key)
            if round_factor == -1: aes_mix_columns(round_key, aes_tables.mix_column_constant_matrices[round_factor])
            aes_add_round_key(state_matrix, round_key)

            round += round_factor

        aes_substitute_bytes(state_matrix, aes_tables.s_boxes[round_factor])
        aes_shift_rows(state_matrix, round_factor)
        aes_add_round_key(state_matrix, aes_get_round_key(round, expanded_key))

        return aes_matrix_to_sequence(state_matrix)

    def aes_substitute_bytes(state_matrix, s_box):
        for row_index in range(0, 4):
            for column_index in range(0, 4):
                state_matrix[row_index,column_index] = s_box[state_matrix[row_index,column_index]]

        return state_matrix

    def aes_shift_rows(state_matrix, round_factor):
        for row_index in range(1, 4):
            state_matrix[row_index] = state_matrix[row_index,round_factor * row_index:] + state_matrix[row_index,:round_factor * row_index]

        return state_matrix

    def aes_mix_columns(state_matrix, constant_matrix):
        for column_index in range(0, 4):
            column = bytearray([
                state_matrix[0,column_index], 
                state_matrix[1,column_index], 
                state_matrix[2,column_index], 
                state_matrix[3,column_index]
            ])

            for row_index in range(0, 4):
                state_matrix[row_index,column_index] =  aes_tables.multiplication[constant_matrix[row_index][0]][column[0]]
                state_matrix[row_index,column_index] ^= aes_tables.multiplication[constant_matrix[row_index][1]][column[1]]
                state_matrix[row_index,column_index] ^= aes_tables.multiplication[constant_matrix[row_index][2]][column[2]]
                state_matrix[row_index,column_index] ^= aes_tables.multiplication[constant_matrix[row_index][3]][column[3]]

        return state_matrix

    def aes_add_round_key(state_matrix, round_key_matrix):
        for row_index in range(0, 4):
            for column_index in range(0, 4):
                state_matrix[row_index,column_index] ^= round_key_matrix[row_index,column_index]

        return state_matrix

    def aes_get_round_key(round, expanded_key):
        key_column_index = 4 * round
        round_key = [
            expanded_key[0,key_column_index:key_column_index + 4],
            expanded_key[1,key_column_index:key_column_index + 4],
            expanded_key[2,key_column_index:key_column_index + 4],
            expanded_key[3,key_column_index:key_column_index + 4],
        ]

        return round_key

    def aes_expand_key(key):
        #expanded_key = bytearray(key)
        expanded_key = key
        print(key)
        print("\n")
        n = 1

        step = 0
        while len(expanded_key) < 240:
            temporary_key = expanded_key[-4:]
            print(temporary_key)
            print("temp key ^, step: " + str(step) + " n: " + str(n) + "\n")
            
            if step == 0:
                # rotate word
                #temporary_key = temporary_key[1:] + temporary_key[:1]
                temporary_key = np.append(temporary_key[1:],temporary_key[:1])
                print(temporary_key)
                print("temp key rot^\n")
                # substitue word
                for i in range(0, 4):
                    #print("index: " + str(i) + "\n")
                    #print(temporary_key)
                    #print(temporary_key[i])
                    #print("\n")
                    temporary_key[i] = aes_tables.s_box[temporary_key[i]]

                # xor round constant
                temporary_key[0] ^= aes_tables.rcon[n]
                
                n += 1
            elif step == 4:
                for i in range(0, 4):
                    temporary_key[i] = aes_tables.s_box[temporary_key[i]]

            print(expanded_key)
            print("expanded key before before ^\n")
            
            for i in range(0, 4):
                temporary_key[i] ^= expanded_key[-32 + i]

            #expanded_key += temporary_key
            print(expanded_key)
            print("expanded key before ^\n")
            print(temporary_key)
            print("temp key before^\n")
            expanded_key = np.append(expanded_key, temporary_key)
            print(expanded_key)
            print("expanded key ^\n")
            step = (step + 1) % 8

        return aes_sequence_to_matrix(expanded_key)

    def aes_sequence_to_matrix(sequence):
        #matrix = [bytearray(), bytearray(), bytearray(), bytearray()]

        #row = 0
        #for element in sequence:
        #    matrix[row].append(element)
        #    row = (row + 1) % 4
        matrix = np.reshape(sequence, (4,4))
        return matrix

    def aes_matrix_to_sequence(matrix):
        #sequence = bytearray()

        #column_length = len(matrix[0])
        #for column in range(0, column_length):
        #    for row in range(0, 4):
        #        sequence.append(matrix[row][column])
        sequence = np.reshape(matrix, 16)
        return sequence
    
    def xts_aes_calculate_next_tweak(tweak):
        next_tweak = np.empty(0)

        carry_in = 0
        carry_out = 0

        for j in range(0, 16):
            carry_out = (tweak[j] >> 7) & 1
            #next_tweak.append(((tweak[j] << 1) + carry_in) & 0xFF)
            np.append(next_tweak, ((tweak[j] << 1) + carry_in) & 0xFF)
            carry_in = carry_out

        if carry_out:
            next_tweak[0] ^= 0x87

        return next_tweak

    def xts_aes_process_block(block, tweak, mode, expanded_key):
        new_block = map(lambda x, y: x ^ y, block, tweak)
        if mode == 1: # encrypt
            new_block = aes_process(new_block, 0, 1, expanded_key)
        else : # decrypt
            new_block = aes_process(new_block, 14, -1, expanded_key)

        new_block = map(lambda x, y: x ^ y, new_block, tweak)
        return bytearray(new_block)

    def xts_aes_process_data(data, mode, tweak, expanded_key):

        blocks = [data[i:i + 16] for i in range(0, len(data), 16)]
        if len(blocks[-1]) == 16:
            blocks.append(b'')

        for i in range(0, len(blocks) - 2):
            blocks[i] = xts_aes_process_block(blocks[i], tweak, mode, expanded_key)
            tweak = xts_aes_calculate_next_tweak(tweak)

        partial_length = len(blocks[-1])
        if partial_length == 0: # multiple of block size
            blocks[-2] = xts_aes_process_block(blocks[-2], tweak, mode, expanded_key)
        else: # not multiple of block size
            if mode == 1: # in-order
                first_tweak = tweak
                second_tweak = xts_aes_calculate_next_tweak(tweak)
            else: # reverse-order
                second_tweak = tweak
                first_tweak = xts_aes_calculate_next_tweak(tweak)

            cc = xts_aes_process_block(blocks[-2], first_tweak, mode, expanded_key)
            pp = blocks[-1] + cc[partial_length:]
            blocks[-1] = cc[:partial_length]
            blocks[-2] = xts_aes_process_block(pp, second_tweak, mode, expanded_key)

        return b''.join(blocks)

    aes_expanded_key = aes_expand_key(key[0:32])
    aes_expanded_key2 = aes_expand_key(key[32:64])
    aes_tweak = aes_process(tweak, 0, 1, aes_expanded_key2)

    return xts_aes_process_data(text, mode, aes_tweak, aes_expanded_key)

# end xts_aes

if __name__ == "__main__":
    TEXT_TYPES = {
        'encryption': 'plaintext',
        'decryption': 'ciphertext',
    }

    def read_hex_string(name):
        try:
            hex_string = input('{name}: '.format(name=name))
            hex_string = binascii.unhexlify(hex_string)
        except binascii.Error:
            sys.exit('{name} should be hex string'.format(name=name))

        return hex_string

    arguments = sys.argv[1:]
    mode = 'encryption'
    inverse_mode = 'decryption'
    if arguments and (arguments[0] == '-d'):
        mode = 'decryption'
        inverse_mode = 'encryption'

    #key = read_hex_string('key')
    key = arguments[0]
    key = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    if len(key) != 64:
        print('Key len is ')
        print(len(key))

        sys.exit('key should be 64-byte')

    #tweak = read_hex_string('tweak')
    tweak = arguments[1]
    tweak = np.array(np.fromiter((int(x, 16) for x in tweak.split(' ')), dtype=np.int32))
    if len(tweak) != 16:
        sys.exit('tweak should be 16-byte')

    #text = read_hex_string(TEXT_TYPES[mode])
    text = arguments[2]
    text = np.array(np.fromiter((int(x, 16) for x in text.split(' ')), dtype=np.int32))
    if len(text) < 16:
        sys.exit('{text_type} should be greater than or equal to 16-byte'.format(text_type=TEXT_TYPES[mode]))

    res = -1

    #key = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    #tweak = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    #text = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    if mode == 'encryption' :
        res = xts_aes(key, tweak, text, 1)
    else :
        res = xts_aes(key, tweak, text, 0)

    print('{ciphertext_type}: {ciphertext}'.format(ciphertext_type=TEXT_TYPES[inverse_mode], ciphertext=binascii.hexlify(res).decode()))
