import sys
import binascii
from pylog import *
import numpy as np
from xts_aes import XTSAES

import aes_tables

#@pylog(board='pynq')
#@pylog(mode='debug')
def xts_aes(key, tweak, text, mode) :

    def aes_process(text, initial_round, round_factor, expanded_key):
        #print("expanded_key type")
        #print(type(expanded_key))
        state_matrix = aes_sequence_to_matrix(text)
        #print("state mtx type")
        #print(type(state_matrix))
        round = initial_round
        #print("round type")
        #print(type(round))

        aes_add_round_key(state_matrix, aes_get_round_key(round, expanded_key))

        round += round_factor
        #print("round_factor type")
        #print(type(round_factor))

        for i in range(0, 13):
            aes_substitute_bytes(state_matrix, aes_tables.s_boxes[round_factor])

            aes_shift_rows(state_matrix, round_factor)
        
            aes_mix_columns(state_matrix, aes_tables.mix_column_constant_matrices[round_factor])

            round_key = aes_get_round_key(round, expanded_key)
            #print("round_key type")
            #print(type(round_key))
            if round_factor == -1: 
                aes_mix_columns(round_key, aes_tables.mix_column_constant_matrices[round_factor])
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
        #print("s_box type")
        #print(type(s_box))
        #print("state mtx type")
        #print(type(state_matrix))
        return state_matrix

    def aes_shift_rows(state_matrix, round_factor):
        print("state mtx")
        print(state_matrix)
        print("round factor")
        print(round_factor)
        for row_index in range(1, 4):
            print("first")
            print(state_matrix[row_index,round_factor * row_index:])
            print("second")
            print(state_matrix[row_index,:round_factor * row_index])
            temp_row = np.empty((4), dtype=np.int16)
            if round_factor == 1:
                temp_row[:4-row_index] = state_matrix[row_index,round_factor * row_index:]
                temp_row[4-row_index:] = state_matrix[row_index,:round_factor * row_index]
            else:
                temp_row[:row_index] = state_matrix[row_index,round_factor * row_index:]
                temp_row[row_index:] = state_matrix[row_index,:round_factor * row_index]  
            
            state_matrix[row_index] = temp_row
            #print("temp")
            #print(4-row_index)
            #print(4-row_index)
            #print(temp_row[4-row_index:])
            #print(temp_row[:4-row_index])
            #print(temp_row)
            #state_matrix[row_index] = np.append(state_matrix[row_index,round_factor * row_index:],state_matrix[row_index,:round_factor * row_index])
            
        #print("state mtx type")
        #print(type(state_matrix))    
        return state_matrix

    def aes_mix_columns(state_matrix, constant_matrix):
        #print("constant_matrix type")
        #print(type(constant_matrix))
        for column_index in range(0, 4):
            column = np.array([
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

        #print("state mtx type")
        #print(type(state_matrix))    
        return state_matrix

    def aes_add_round_key(state_matrix, round_key_matrix):
        ##print("round key matrix")
        ##print(round_key_matrix)
        #print("round_key_matrix type")
        #print(type(round_key_matrix))
        for row_index in range(0, 4):
            for column_index in range(0, 4):
                state_matrix[row_index,column_index] ^= round_key_matrix[row_index,column_index]
        #print("state mtx type")
        #print(type(state_matrix))    
        return state_matrix

    def aes_get_round_key(round, expanded_key):
        key_column_index = 4 * round
        #print("round type")
        #print(type(round)) 
        #print("key_column_index type")
        #print(type(key_column_index)) 
        round_key = np.array([
            expanded_key[0,key_column_index:key_column_index + 4],
            expanded_key[1,key_column_index:key_column_index + 4],
            expanded_key[2,key_column_index:key_column_index + 4],
            expanded_key[3,key_column_index:key_column_index + 4]]
        )
        #print("round_key type")
        #print(type(round_key)) 
        return round_key

    def aes_expand_key(key):
        expanded_key = np.zeros(240, np.int16)
        for i in range(32) :
            expanded_key[i] = key[i]
        n = 1

        # expanded_key = key
        # print("correct")
        # print(expanded_key)

        step = 0
        cur_len = 32
        while cur_len < 240:
            temporary_key = np.zeros(4, dtype=np.int16)
            for i in range(0,4) :
                temporary_key[i] = expanded_key[-4+i+cur_len]
            
            if step == 0:
                # rotate word
                w = np.int16(temporary_key[0])
                for i in range(0,3) :
                    temporary_key[i] = temporary_key[i+1]
                temporary_key[3] = w 

                # substitute word
                for i in range(0, 4):
                    temporary_key[i] = aes_tables.s_box_np[temporary_key[i]]

                # xor round constant
                temporary_key[0] ^= aes_tables.rcon[n]
                
                n += 1
            elif step == 4:
                for i in range(0, 4):
                    temporary_key[i] = aes_tables.s_box_np[temporary_key[i]]

            
            for i in range(0, 4):
                temporary_key[i] ^= expanded_key[-32 + i + cur_len]

            for i in range(0, 4) :
                expanded_key[cur_len+i] = temporary_key[i]

            step = (step + 1) % 8
            cur_len += 4

        return aes_sequence_to_matrix(expanded_key)

    def aes_sequence_to_matrix(sequence):
        #print("sequence type")
        #print(type(sequence)) 
        rows = 4
        columns = int(len(sequence)/4)
        #print("rows type")
        #print(type(rows)) 
        #print("columns type")
        #print(type(columns)) 
        matrix = np.zeros((rows,columns), int)
        #print("matrix type")
        #print(type(matrix)) 
        #row = 0
        #for element in sequence:
            #matrix[row].append(element)
            #row = (row + 1) % 4
        for i in range(rows):
            for j in range(columns):
                matrix[i,j] = sequence[rows*j + i]

        return matrix

    def aes_matrix_to_sequence(matrix):
        #sequence = bytearray()
        elems = int(len(matrix) * len(matrix[0]))
        
        sequence = np.zeros((elems), int)
        #print("sequence type")
        #print(type(sequence)) 
        #print("elems")
        #print(type(elems))

        column_length = len(matrix[0])
        #print("column_length")
        #print(type(column_length))
        i = 0
        for column in range(0, column_length):
            for row in range(0, 4):
                sequence[i] = matrix[row][column]
                i+=1
        #print("i")
        #print(type(i))
        #print("sequence")
        #print(type(sequence))
        return sequence
    
    def xts_aes_calculate_next_tweak(tweak):

        #print("tweak")
        #print(type(tweak))

        next_tweak = np.zeros((16), int)

        carry_in = 0
        carry_out = 0

        for j in range(0, 16):
            carry_out = (tweak[j] >> 7) & 1
            #next_tweak.append(((tweak[j] << 1) + carry_in) & 0xFF)
            #next_tweak = np.append(next_tweak, ((tweak[j] << 1) + carry_in) & 0xFF)
            next_tweak[j] = ((tweak[j] << 1) + carry_in) & 0xFF
            carry_in = carry_out

        if carry_out:
            next_tweak[0] ^= 0x87

        #print("next_tweak")
        #print(type(next_tweak))
        #print("carry_in")
        #print(type(carry_in))
        #print("carry_out")
        #print(type(carry_out))

        return next_tweak

    def xts_aes_process_block(block, tweak, mode, expanded_key):

        #print("block")
        #print(type(block))
        #print("tweak")
        #print(type(tweak))
        #print("mode")
        #print(type(mode))
        #print("expanded_key")
        #print(type(expanded_key))

        new_block = map(lambda x, y: x ^ y, block, tweak)
        new_block = np.array(list(new_block))

        if mode == 1: # encrypt
            new_block = aes_process(new_block, 0, 1, expanded_key)
        else : # decrypt
            new_block = aes_process(new_block, 14, -1, expanded_key)

        new_block = map(lambda x, y: x ^ y, new_block, tweak) #TODO: maybe here? 
        #print("new_block")
        #print(type(new_block))
        return np.array(list(new_block))

    def xts_aes_process_data(data, mode, tweak, expanded_key):

        #print("data")
        #print(type(data))
        #print("mode")
        #print(type(mode))
        #print("tweak")
        #print(type(tweak))
        #print("expanded_key")
        #print(type(expanded_key))

        #blocks = [data[i:i + 16] for i in range(0, len(data), 16)]
        blocks = np.array([data[i:i + 16] for i in range(0, len(data), 16)])

        multiple_block_size = 0
        if len(blocks[-1]) == 16:
            multiple_block_size = 1
            #blocks.append(b'')

        #print("multiple block size")
        #print(type(multiple_block_size))

        if multiple_block_size :
            for i in range(0, len(blocks) - 1):
                blocks[i] = xts_aes_process_block(blocks[i], tweak, mode, expanded_key)
                tweak = xts_aes_calculate_next_tweak(tweak)
        else :
            for i in range(0, len(blocks) - 2):        
                blocks[i] = xts_aes_process_block(blocks[i], tweak, mode, expanded_key)
                tweak = xts_aes_calculate_next_tweak(tweak)

        # partial_length = len(blocks[-1])
        # if partial_length == 0 :
        if multiple_block_size: # multiple of block size

            blocks[-1] = xts_aes_process_block(blocks[-1], tweak, mode, expanded_key)
        else: # not multiple of block size
            if mode == 1: # in-order
                first_tweak = tweak
                second_tweak = xts_aes_calculate_next_tweak(tweak)
            else: # reverse-order
                second_tweak = tweak
                first_tweak = xts_aes_calculate_next_tweak(tweak)

            #print("first tweak")
            #print(type(first_tweak))
            #print("second tweak")
            #print(type(second_tweak))

            cc = xts_aes_process_block(blocks[-2], first_tweak, mode, expanded_key)
            #print("cc")
            #print(type(cc))
            pp = np.append(blocks[-1], cc[len(blocks[-1]):])
            #print("pp")
            #print(type(pp))
            blocks[-1] = cc[:len(blocks[-1])]
            blocks[-2] = xts_aes_process_block(pp, second_tweak, mode, expanded_key)

        #print("blocks")
        #print(type(blocks))
        return blocks
        #return b''.join(blocks)
    
    aes_expanded_key = aes_expand_key(key[0:32])
    #print("aes expanded key")
    #print(type(aes_expanded_key))
    aes_expanded_key2 = aes_expand_key(key[32:64])
    #print("aes expanded key 2")
    #print(type(aes_expanded_key2))
    aes_tweak = aes_process(tweak, 0, 1, aes_expanded_key2)
    #print("aes tweak")
    #print(type(aes_tweak))

    processed_data = xts_aes_process_data(text, mode, aes_tweak, aes_expanded_key)
    #print("processed_data")
    ##print(processed_data)
    #print(type(processed_data))
    return processed_data

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
    if len(arguments)>3 and (arguments[3] == '-d'):
        mode = 'decryption'
        inverse_mode = 'encryption'

    #key = read_hex_string('key')
    key = arguments[0]
    key = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int16))
    if len(key) != 64:
        print('Key len is ')
        print(len(key))

        sys.exit('key should be 64-byte')

    #tweak = read_hex_string('tweak')
    tweak = arguments[1]
    tweak = np.array(np.fromiter((int(x, 16) for x in tweak.split(' ')), dtype=np.int16))
    if len(tweak) != 16:
        sys.exit('tweak should be 16-byte')

    #text = read_hex_string(TEXT_TYPES[mode])
    text = arguments[2]
    text = np.array(np.fromiter((int(x, 16) for x in text.split(' ')), dtype=np.int16))
    if len(text) < 16:
        sys.exit('{text_type} should be greater than or equal to 16-byte'.format(text_type=TEXT_TYPES[mode]))

    res = -1

    #key = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    #tweak = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    #text = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    if mode == 'encryption' :
        res = xts_aes(key, tweak, text, np.int32(1))
    else :
        res = xts_aes(key, tweak, text, np.int32(0))
    print("hex string: ")
    for i in range(len(res)):
        for j in range(len(res[i])):
            print(format(res[i][j], 'x'), end=' ')
    print("\n")        
 
    #print('{ciphertext_type}: {ciphertext}'.format(ciphertext_type=TEXT_TYPES[inverse_mode], ciphertext=binascii.hexlify(res).decode()))
