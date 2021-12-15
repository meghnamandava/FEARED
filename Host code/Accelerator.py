from pynq import Overlay
from datetime import datetime
import time

#user should change manually to the correct path
overlay = Overlay('/home/xilinx/jupyter_notebooks/Final/design_1_AES.bit')
AES_ip = overlay.xts_aes_0

from pynq import Xlnk
import numpy as np

key = [0x12, 0xc8, 0x23, 0xab, 0x0c, 0x09, 0x01, 0x80, 0x35, 0xfe, 0x9d, 0x62, 0x38, 0xee, 0xe0, 0x94, 0xbe, 0xe8, 0x8b, 0x1b, 0x39, 0x22, 0x2c, 0xa4, 0x4c, 0xb5, 0x07, 0x3d, 0xd7, 0x1a, 0xc0, 0x77, 0xd1, 0x49, 0x10, 0x1a, 0xaa, 0xac, 0x08, 0xcd, 0x05, 0xb8, 0x92, 0xed, 0x22, 0x5d, 0x31, 0x17, 0xac, 0x10, 0x63, 0x5d, 0xd0, 0x91, 0xf4, 0x8c, 0xf3, 0xde, 0x58, 0xaf, 0x00, 0x5b, 0x4a, 0xfd]
tweak = [0x03, 0x97, 0x43, 0x45, 0x11, 0x5f, 0x4d, 0xda, 0xca, 0x82, 0x3d, 0x4e, 0x81, 0xcf, 0x70, 0xfa]
text = [0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88,
       0x4a, 0x6c, 0x11, 0x78, 0x0a, 0xcb, 0xfe, 0xae, 0x23, 0xca, 0x6d, 0xb7, 0x2e, 0xfb, 0xd9, 0x0f, 0x04, 0x80, 0x24, 0x06, 0xbe, 0xfc, 0x91, 0x10, 0x3f, 0x19, 0x75, 0x82, 0x29, 0x78, 0xbf, 0x88
       ]

mode = int(1)
text_len = int(len(text)/16)

xlnk = Xlnk()

key_buffer = xlnk.cma_array(shape=(64,), dtype=np.int16)
np.copyto(key_buffer,key)
AES_ip.write(0x10,key_buffer.physical_address)
print(key_buffer)

tweak_buffer = xlnk.cma_array(shape=(16,), dtype=np.int16)
np.copyto(tweak_buffer,tweak)
AES_ip.write(0x18,tweak_buffer.physical_address)
print(tweak_buffer)

text_buffer = xlnk.cma_array(shape=(1024,), dtype=np.int16)
text_full = np.zeros((1024),dtype = np.int16)
for i in range(len(text)):
    text_full[i] = text[i]
np.copyto(text_buffer,text_full)
AES_ip.write(0x20,text_buffer.physical_address)
print(text_buffer)

return_buffer = xlnk.cma_array(shape=(1024,), dtype=np.int16)
AES_ip.write(0x38,return_buffer.physical_address)
print(return_buffer)
AES_ip.write(0x28,mode)
AES_ip.write(0x30,text_len)

key_buffer.flush()
tweak_buffer.flush()
text_buffer.flush()
return_buffer.flush()
AES_ip.write(0x00,0x01)
start_time = datetime.now()
#print(AES_ip.read(0x00))

while (AES_ip.read(0x00) != 0b00000110):
    pass
end_time = datetime.now()
print("HLS encryption execution time",end_time - start_time)
print("text length",len(text))
print("text_length:",text_len)
for i in range(700,730):
    print(hex(return_buffer[i]))
    
