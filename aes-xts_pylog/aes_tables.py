import binascii
import numpy as np
# AES substitution box
s_box = binascii.unhexlify(
      '637c777bf26b6fc53001672bfed7ab76ca82c97dfa5947f0add4a2af9ca472c0'
    + 'b7fd9326363ff7cc34a5e5f171d8311504c723c31896059a071280e2eb27b275'
    + '09832c1a1b6e5aa0523bd6b329e32f8453d100ed20fcb15b6acbbe394a4c58cf'
    + 'd0efaafb434d338545f9027f503c9fa851a3408f929d38f5bcb6da2110fff3d2'
    + 'cd0c13ec5f974417c4a77e3d645d197360814fdc222a908846eeb814de5e0bdb'
    + 'e0323a0a4906245cc2d3ac629195e479e7c8376d8dd54ea96c56f4ea657aae08'
    + 'ba78252e1ca6b4c6e8dd741f4bbd8b8a703eb5664803f60e613557b986c11d9e'
    + 'e1f8981169d98e949b1e87e9ce5528df8ca1890dbfe6426841992d0fb054bb16'
)

s_box_np = np.frombuffer(s_box, dtype=np.uint8)

inverse_s_box = binascii.unhexlify(
      '52096ad53036a538bf40a39e81f3d7fb7ce339829b2fff87348e4344c4dee9cb'
    + '547b9432a6c2233dee4c950b42fac34e082ea16628d924b2765ba2496d8bd125'
    + '72f8f66486689816d4a45ccc5d65b6926c704850fdedb9da5e154657a78d9d84'
    + '90d8ab008cbcd30af7e45805b8b34506d02c1e8fca3f0f02c1afbd0301138a6b'
    + '3a9111414f67dcea97f2cfcef0b4e67396ac7422e7ad3585e2f937e81c75df6e'
    + '47f11a711d29c5896fb7620eaa18be1bfc563e4bc6d279209adbc0fe78cd5af4'
    + '1fdda8338807c731b11210592780ec5f60517fa919b54a0d2de57a9f93c99cef'
    + 'a0e03b4dae2af5b0c8ebbb3c83539961172b047eba77d626e169146355210c7d'
)

inverse_s_box_np = np.frombuffer(inverse_s_box, dtype=np.uint8)

#s_boxes_orig = {
#    +1: s_box,
#    -1: inverse_s_box
#}

s_boxes = np.array([0,s_box_np, inverse_s_box_np])


# AES mix column constant matrix
mix_column_constant_matrix = [
    bytes([0x02, 0x03, 0x01, 0x01]),
    bytes([0x01, 0x02, 0x03, 0x01]),
    bytes([0x01, 0x01, 0x02, 0x03]),
    bytes([0x03, 0x01, 0x01, 0x02])
]

mix_column_constant_matrix_np = np.array([
    [2, 3, 1, 1],
    [1, 2, 3, 1],
    [1, 1, 2, 3],
    [3, 1, 1, 2]
], dtype=np.uint8)

inverse_mix_column_constant_matrix = [
    bytes([0x0e, 0x0b, 0x0d, 0x09]),
    bytes([0x09, 0x0e, 0x0b, 0x0d]),
    bytes([0x0d, 0x09, 0x0e, 0x0b]),
    bytes([0x0b, 0x0d, 0x09, 0x0e])
]

inverse_mix_column_constant_matrix_np = np.array([
    [14, 11, 13, 9],
    [9, 14, 11, 13],
    [13, 9, 14, 11],
    [11, 13, 9, 14]
], dtype=np.uint8)


#mix_column_constant_matrices = {
#    +1: mix_column_constant_matrix,
#    -1: inverse_mix_column_constant_matrix
#}

mix_column_constant_matrices = np.array([0, mix_column_constant_matrix_np,inverse_mix_column_constant_matrix_np])

#inverse_s_box_np = np.frombuffer(inverse_s_box, dtype=np.int8)

# AES's galois field multiplication
multiplication_temp = {
    0x01: binascii.unhexlify(
          '000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f'
        + '202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f'
        + '404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f'
        + '606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f'
        + '808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f'
        + 'a0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebf'
        + 'c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedf'
        + 'e0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff'
    ),
    0x02: binascii.unhexlify(
          '00020406080a0c0e10121416181a1c1e20222426282a2c2e30323436383a3c3e'
        + '40424446484a4c4e50525456585a5c5e60626466686a6c6e70727476787a7c7e'
        + '80828486888a8c8e90929496989a9c9ea0a2a4a6a8aaacaeb0b2b4b6b8babcbe'
        + 'c0c2c4c6c8caccced0d2d4d6d8dadcdee0e2e4e6e8eaeceef0f2f4f6f8fafcfe'
        + '1b191f1d131117150b090f0d030107053b393f3d333137352b292f2d23212725'
        + '5b595f5d535157554b494f4d434147457b797f7d737177756b696f6d63616765'
        + '9b999f9d939197958b898f8d83818785bbb9bfbdb3b1b7b5aba9afada3a1a7a5'
        + 'dbd9dfddd3d1d7d5cbc9cfcdc3c1c7c5fbf9fffdf3f1f7f5ebe9efede3e1e7e5'
    ),
    0x03: binascii.unhexlify(
          '000306050c0f0a09181b1e1d14171211303336353c3f3a39282b2e2d24272221'
        + '606366656c6f6a69787b7e7d74777271505356555c5f5a59484b4e4d44474241'
        + 'c0c3c6c5cccfcac9d8dbdeddd4d7d2d1f0f3f6f5fcfffaf9e8ebeeede4e7e2e1'
        + 'a0a3a6a5acafaaa9b8bbbebdb4b7b2b1909396959c9f9a99888b8e8d84878281'
        + '9b989d9e97949192838085868f8c898aaba8adaea7a4a1a2b3b0b5b6bfbcb9ba'
        + 'fbf8fdfef7f4f1f2e3e0e5e6efece9eacbc8cdcec7c4c1c2d3d0d5d6dfdcd9da'
        + '5b585d5e57545152434045464f4c494a6b686d6e67646162737075767f7c797a'
        + '3b383d3e37343132232025262f2c292a0b080d0e07040102131015161f1c191a'
    ),
    0x09: binascii.unhexlify(
          '0009121b242d363f48415a536c657e779099828bb4bda6afd8d1cac3fcf5eee7'
        + '3b3229201f160d04737a6168575e454caba2b9b08f869d94e3eaf1f8c7ced5dc'
        + '767f646d525b40493e372c251a130801e6eff4fdc2cbd0d9aea7bcb58a839891'
        + '4d445f5669607b72050c171e2128333addd4cfc6f9f0ebe2959c878eb1b8a3aa'
        + 'ece5fef7c8c1dad3a4adb6bf8089929b7c756e6758514a43343d262f1019020b'
        + 'd7dec5ccf3fae1e89f968d84bbb2a9a0474e555c636a71780f061d142b223930'
        + '9a938881beb7aca5d2dbc0c9f6ffe4ed0a0318112e273c35424b5059666f747d'
        + 'a1a8b3ba858c979ee9e0fbf2cdc4dfd63138232a151c070e79706b625d544f46'
    ),
    0x0b: binascii.unhexlify(
          '000b161d2c273a3158534e45747f6269b0bba6ad9c978a81e8e3fef5c4cfd2d9'
        + '7b706d66575c414a2328353e0f041912cbc0ddd6e7ecf1fa9398858ebfb4a9a2'
        + 'f6fde0ebdad1ccc7aea5b8b38289949f464d505b6a617c771e1508033239242f'
        + '8d869b90a1aab7bcd5dec3c8f9f2efe43d362b20111a070c656e737849425f54'
        + 'f7fce1eadbd0cdc6afa4b9b28388959e474c515a6b607d761f1409023338252e'
        + '8c879a91a0abb6bdd4dfc2c9f8f3eee53c372a21101b060d646f727948435e55'
        + '010a171c2d263b3059524f44757e6368b1baa7ac9d968b80e9e2fff4c5ced3d8'
        + '7a716c67565d404b2229343f0e051813cac1dcd7e6edf0fb9299848fbeb5a8a3'
    ),
    0x0d: binascii.unhexlify(
          '000d1a1734392e236865727f5c51464bd0ddcac7e4e9fef3b8b5a2af8c81969b'
        + 'bbb6a1ac8f829598d3dec9c4e7eafdf06b66717c5f524548030e1914373a2d20'
        + '6d60777a5954434e05081f12313c2b26bdb0a7aa8984939ed5d8cfc2e1ecfbf6'
        + 'd6dbccc1e2eff8f5beb3a4a98a87909d060b1c11323f28256e6374795a57404d'
        + 'dad7c0cdeee3f4f9b2bfa8a5868b9c910a07101d3e332429626f7875565b4c41'
        + '616c7b7655584f420904131e3d30272ab1bcaba685889f92d9d4c3ceede0f7fa'
        + 'b7baada0838e9994dfd2c5c8ebe6f1fc676a7d70535e49440f0215183b36212c'
        + '0c01161b3835222f64697e73505d4a47dcd1c6cbe8e5f2ffb4b9aea3808d9a97'
    ),
    0x0e: binascii.unhexlify(
          '000e1c123836242a707e6c624846545ae0eefcf2d8d6c4ca909e8c82a8a6b4ba'
        + 'dbd5c7c9e3edfff1aba5b7b9939d8f813b352729030d1f114b455759737d6f61'
        + 'ada3b1bf959b8987ddd3c1cfe5ebf9f74d43515f757b69673d33212f050b1917'
        + '76786a644e40525c06081a143e30222c96988a84aea0b2bce6e8faf4ded0c2cc'
        + '414f5d537977656b313f2d230907151ba1afbdb39997858bd1dfcdc3e9e7f5fb'
        + '9a948688a2acbeb0eae4f6f8d2dccec07a746668424c5e500a041618323c2e20'
        + 'ece2f0fed4dac8c69c92808ea4aab8b60c02101e343a28267c72606e444a5856'
        + '37392b250f01131d47495b557f71636dd7d9cbc5efe1f3fda7a9bbb59f91838d'
    )
}

mult1  = np.frombuffer(multiplication_temp[1],  dtype=np.uint8)
mult2  = np.frombuffer(multiplication_temp[2],  dtype=np.uint8)
mult3  = np.frombuffer(multiplication_temp[3],  dtype=np.uint8)
mult9  = np.frombuffer(multiplication_temp[9],  dtype=np.uint8)
mult11 = np.frombuffer(multiplication_temp[11], dtype=np.uint8)
mult13 = np.frombuffer(multiplication_temp[13], dtype=np.uint8)
mult14 = np.frombuffer(multiplication_temp[14], dtype=np.uint8)
multiplication = np.array([0, mult1, mult2, mult3, 0, 0, 0, 0, 0, mult9, 0, mult11, 0, mult13, mult14])

rcon_temp = binascii.unhexlify(
      '8d01020408102040801b366cd8ab4d9a2f5ebc63c697356ad4b37dfaefc59139'
    + '72e4d3bd61c29f254a943366cc831d3a74e8cb8d01020408102040801b366cd8'
    + 'ab4d9a2f5ebc63c697356ad4b37dfaefc5913972e4d3bd61c29f254a943366cc'
    + '831d3a74e8cb8d01020408102040801b366cd8ab4d9a2f5ebc63c697356ad4b3'
    + '7dfaefc5913972e4d3bd61c29f254a943366cc831d3a74e8cb8d010204081020'
    + '40801b366cd8ab4d9a2f5ebc63c697356ad4b37dfaefc5913972e4d3bd61c29f'
    + '254a943366cc831d3a74e8cb8d01020408102040801b366cd8ab4d9a2f5ebc63'
    + 'c697356ad4b37dfaefc5913972e4d3bd61c29f254a943366cc831d3a74e8cb8d'
)

rcon = np.frombuffer(rcon_temp, dtype=np.uint8)