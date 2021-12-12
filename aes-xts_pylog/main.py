import sys
import binascii
from pylog import *
import numpy as np
from xts_aes import XTSAES

import aes_tables

#@pylog(board='pynq')
#@pylog(mode='debug')
@pylog()
def xts_aes(key, tweak, text, mode, text_len, s_boxes, mix_column_constant_matrices, multiplication, rcon) :
    def aes_process(text, initial_round, round_factor, expanded_key, s_boxes, mix_column_constant_matrices, multiplication):
  
        state_matrix = aes_sequence_to_matrix(text)

        round = initial_round


        aes_add_round_key(state_matrix, aes_get_round_key(round, expanded_key))

        round += round_factor
        #print("round_factor ")
        #print(round_factor)
        for i in range(0, 13):
            aes_substitute_bytes(state_matrix, s_boxes[round_factor,:])
            
            aes_shift_rows(state_matrix, round_factor)
            #print("state mtx sr")
            #print(state_matrix)
            aes_mix_columns(state_matrix, mix_column_constant_matrices[round_factor,:,:], multiplication)

            round_key = aes_get_round_key(round, expanded_key)

            if round_factor == -1: 
                aes_mix_columns(round_key, mix_column_constant_matrices[round_factor,:,:], multiplication)
            aes_add_round_key(state_matrix, round_key)

            round += round_factor

        aes_substitute_bytes(state_matrix, s_boxes[round_factor])
        aes_shift_rows(state_matrix, round_factor)
        aes_add_round_key(state_matrix, aes_get_round_key(round, expanded_key))

        #print("state mtx")
        #print(state_matrix)
        return aes_matrix_to_sequence(state_matrix)

    def aes_substitute_bytes(state_matrix, s_box):
        for row_index in range(0, 4):
            for column_index in range(0, 4):
                temp = state_matrix[row_index,column_index]
                state_matrix[row_index,column_index] = s_box[temp]
        return state_matrix

    def aes_shift_rows(state_matrix, round_factor):
        #print("orig sr")
        #print(state_matrix)
        for row_index in range(1, 4):


            temp_row = np.empty((4,), np.int16)

            if round_factor == 1:
                for idx_subscript in range(0,4-row_index):
                    temp_row[idx_subscript] = state_matrix[row_index,row_index+idx_subscript]
                for idx_subscript2 in range(0, row_index):
                    temp_row[4-row_index+idx_subscript2] = state_matrix[row_index,idx_subscript2]
            else: #round_factor == -1
                for idx_subscript3 in range(0,  row_index):
                    temp_row[idx_subscript3] = state_matrix[row_index,(row_index*-1)+idx_subscript3]
                for idx_subscript4 in range(0, 4-row_index):
                    temp_row[row_index+idx_subscript4] = state_matrix[row_index,idx_subscript4]
            
            state_matrix[row_index,:] = temp_row
   
        return state_matrix

    def aes_mix_columns(state_matrix, constant_matrix, multiplication):

        for column_index in range(0, 4):

            column = np.empty((4,), np.int16)
            column[0] = state_matrix[0,column_index]
            column[1] = state_matrix[1,column_index]
            column[2] = state_matrix[2,column_index]
            column[3] = state_matrix[3,column_index]

            for row_index in range(0, 4):
                state_matrix[row_index,column_index] =  multiplication[constant_matrix[row_index][0]][column[0]]
                state_matrix[row_index,column_index] ^= multiplication[constant_matrix[row_index][1]][column[1]]
                state_matrix[row_index,column_index] ^= multiplication[constant_matrix[row_index][2]][column[2]]
                state_matrix[row_index,column_index] ^= multiplication[constant_matrix[row_index][3]][column[3]]
   
        return state_matrix

    def aes_add_round_key(state_matrix, round_key_matrix):

        for row_index in range(0, 4):
            for column_index in range(0, 4):
                state_matrix[row_index,column_index] ^= round_key_matrix[row_index,column_index]
   
        return state_matrix

    def aes_get_round_key(round, expanded_key):
        key_column_index = 4 * round
        round_key = np.empty((4,4), np.int16)

        round_key[0] = expanded_key[0,key_column_index:key_column_index + 4]
        round_key[1] = expanded_key[1,key_column_index:key_column_index + 4]
        round_key[2] = expanded_key[2,key_column_index:key_column_index + 4]
        round_key[3] = expanded_key[3,key_column_index:key_column_index + 4]
        return round_key

    def aes_expand_key(key, s_box, rcon):
        expanded_key = np.empty(240, np.int16)
        for i in range(32) :
            expanded_key[i] = key[i]
        n = 1

        step = 0
        cur_len = 32
        while cur_len < 240:
            temporary_key = np.empty(4, np.int16)
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
                    temp = np.int16(temporary_key[i])
                    temporary_key[i] = s_box[temp]
                    #temporary_key[i] = s_box[0]

                # xor round constant
                temporary_key[0] ^= rcon[n]
                
                n += 1
            elif step == 4:
                for i in range(0, 4):
                    temp = np.int16(temporary_key[i])
                    temporary_key[i] = s_box[temp]
                    #temporary_key[i] = s_box[0]

            
            for i in range(0, 4):
                temporary_key[i] ^= expanded_key[-32 + i + cur_len]

            for i in range(0, 4) :
                expanded_key[cur_len+i] = temporary_key[i]

            step = (step + 1) % 8
            cur_len += 4

        expanded_key_matrix = np.empty((4,60), int)

        for i in range(4):
            for j in range(60):
                expanded_key_matrix[i,j] = expanded_key[4*j + i]

        #return aes_sequence_to_matrix(expanded_key)
        return expanded_key_matrix

    def aes_sequence_to_matrix(sequence):

        rows = 4
        #columns = len(sequence)/4
        columns = 4 #KWU: assuming sequence length is 16
 
        matrix = np.empty((4,4), int) #KWU: hardcode rows and columns

        #row = 0
        #for element in sequence:
            #matrix[row].append(element)
            #row = (row + 1) % 4
        for i in range(4): #KWU: hardcode rows and columns
            for j in range(4): #KWU: hardcode rows and columns
                matrix[i,j] = sequence[rows*j + i]

        return matrix

    def aes_matrix_to_sequence(matrix):
        #elems = len(matrix) * len(matrix[0])
        #elems = 16 #KWU: hard code matrix size
        sequence = np.empty((16), int) #KWU: hard code elems


        column_length = len(matrix[0])

        i = np.int32(0)
        for column in range(0, column_length):
            for row in range(0, 4):
                sequence[i] = matrix[row][column]
                i+=1

        return sequence
    
    def xts_aes_calculate_next_tweak(tweak):

        next_tweak = np.empty((16), int)

        carry_in = 0
        carry_out = 0

        for j in range(0, 16):
            carry_out = (tweak[j] >> 7) & 1
            next_tweak[j] = ((tweak[j] << 1) + carry_in) & 0xFF
            carry_in = carry_out

        if carry_out:
            next_tweak[0] ^= 0x87


        return next_tweak

    def xts_aes_process_block(block, tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication):
        #print(block)
        new_block = plmap(lambda x, y: x ^ y, block, tweak)
        
        new_block_temp = np.empty((16), int)

        ind = np.int32(0)
        for elem in new_block:
            new_block_temp[ind] = elem
            ind+=1

        new_block = new_block_temp
        
        if mode == 1: # encrypt
            new_block = aes_process(new_block, 0, 1, expanded_key, s_boxes, mix_column_constant_matrices, multiplication)
        else : # decrypt
            new_block = aes_process(new_block, 14, -1, expanded_key, s_boxes, mix_column_constant_matrices, multiplication)
        #print("new blk")
        #print(new_block)
        new_block = plmap(lambda x, y: x ^ y, new_block, tweak)

        new_block_temp = np.empty((16), int)

        ind = 0
        for elem in new_block:
            new_block_temp[ind] = elem
            ind+=1

        new_block = new_block_temp

        return new_block

    def xts_aes_process_data(data, num_blocks_orig, mode, tweak, expanded_key, s_boxes, mix_column_constant_matrices, multiplication):

        #blocks = [data[i:i + 16] for i in range(0, len(data), 16)]
        #blocks = np.array([data[i:i + 16] for i in range(0, len(data), 16)])


        #partial = len(data)%16
        #num_blocks = len(data)/16 + (partial!=0)
        partial = 0 #KWU: hardcode partial
        num_blocks = 64 #KWU: hardcode num_blocks
        blocks_temp = np.empty((64,16), int) #KWU: hardcode num_blocks

        for i in range(64): #KWU: hardcode num_blocks
            temp = data[(i*16):(i*16) + 16]
            blocks_temp[i] = temp
            
        blocks = blocks_temp
        
        multiple_block_size = 0
        if partial == 0:
            multiple_block_size = 1


        #if multiple_block_size :
            for i in range(0, len(blocks) - 1):
                if i < num_blocks_orig:
                    blocks[i,:] = xts_aes_process_block(blocks[i,:], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication)
                    tweak = xts_aes_calculate_next_tweak(tweak)
        #else :
        #    for i in range(0, len(blocks) - 2):        
        #        blocks[i,:] = xts_aes_process_block(blocks[i,:], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication)
        #        tweak = xts_aes_calculate_next_tweak(tweak)

        # partial_length = len(blocks[-1])
        # if partial_length == 0 :
        #if multiple_block_size: # multiple of block size

        #    blocks[-1,:] = xts_aes_process_block(blocks[-1,:], tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication)
        #else: # not multiple of block size
        #    if mode == 1: # in-order
        #        first_tweak = tweak
        #        second_tweak = xts_aes_calculate_next_tweak(tweak)
        #    else: # reverse-order
        #        second_tweak = tweak
        #        first_tweak = xts_aes_calculate_next_tweak(tweak)
        #
#
        #    cc = xts_aes_process_block(blocks[-2,:], first_tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication)
#
        #    pp = np.empty((16), np.int16)
#
        #    pp[:partial] = blocks[-1][:partial]
        #    pp[partial:] = cc[partial:]
 #
        #    blocks[-1][:partial] = cc[:partial]
#
        #    blocks[-2,:] = xts_aes_process_block(pp, second_tweak, mode, expanded_key, s_boxes, mix_column_constant_matrices, multiplication)

        return blocks
        #return b''.join(blocks)
    
    aes_expanded_key = aes_expand_key(key[0:32], s_boxes[1,:], rcon)

    aes_expanded_key2 = aes_expand_key(key[32:64], s_boxes[1,:], rcon)

    aes_tweak = aes_process(tweak, 0, 1, aes_expanded_key2, s_boxes, mix_column_constant_matrices, multiplication)

    processed_data = xts_aes_process_data(text, text_len, mode, aes_tweak, aes_expanded_key, s_boxes, mix_column_constant_matrices, multiplication)

    data_ret = np.empty(1024, int)#KWU: ASSUME text len as 1024
    for i in range(64):#KWU: ASSUME text len as 1024
        for j in range(16):#KWU: ASSUME text len as 1024
            data_ret[i*16 + j] = processed_data[i][j]
    return data_ret
    #return processed_data

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
    if len(arguments)>4 and (arguments[4] == '-d'):
        print("decrypt")
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
    text_padding = np.zeros(1024-len(text), int)
    text = np.append(text,text_padding)
    res = -1

    text_len = np.int32(arguments[3])
    #key = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    #tweak = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    #text = np.array(np.fromiter((int(x, 16) for x in key.split(' ')), dtype=np.int32))
    if mode == 'encryption' :
        res = xts_aes(key, tweak, text, np.int32(1), text_len, aes_tables.s_boxes, aes_tables.mix_column_constant_matrices, aes_tables.multiplication, aes_tables.rcon)
    else :
        res = xts_aes(key, tweak, text, np.int32(0), text_len, aes_tables.s_boxes, aes_tables.mix_column_constant_matrices, aes_tables.multiplication, aes_tables.rcon)
    print("hex string: ")
    for i in range(len(res)):
        print(format(res[i], 'x'), end=' ')
        #for j in range(len(res[i])):
        #    print(format(res[i][j], 'x'), end=' ')
    print("\n")        
 
    #print('{ciphertext_type}: {ciphertext}'.format(ciphertext_type=TEXT_TYPES[inverse_mode], ciphertext=binascii.hexlify(res).decode()))
