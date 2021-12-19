// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// ctrl
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of key_V
//        bit 31~0 - key_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of tweak_V
//        bit 31~0 - tweak_V[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of text_V
//        bit 31~0 - text_V[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of mode_V
//        bit 15~0 - mode_V[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x30 : Data signal of text_len_V
//        bit 15~0 - text_len_V[15:0] (Read/Write)
//        others   - reserved
// 0x34 : reserved
// 0x38 : Data signal of data_ret_V
//        bit 31~0 - data_ret_V[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XXTS_AES_CTRL_ADDR_AP_CTRL         0x00
#define XXTS_AES_CTRL_ADDR_GIE             0x04
#define XXTS_AES_CTRL_ADDR_IER             0x08
#define XXTS_AES_CTRL_ADDR_ISR             0x0c
#define XXTS_AES_CTRL_ADDR_KEY_V_DATA      0x10
#define XXTS_AES_CTRL_BITS_KEY_V_DATA      32
#define XXTS_AES_CTRL_ADDR_TWEAK_V_DATA    0x18
#define XXTS_AES_CTRL_BITS_TWEAK_V_DATA    32
#define XXTS_AES_CTRL_ADDR_TEXT_V_DATA     0x20
#define XXTS_AES_CTRL_BITS_TEXT_V_DATA     32
#define XXTS_AES_CTRL_ADDR_MODE_V_DATA     0x28
#define XXTS_AES_CTRL_BITS_MODE_V_DATA     16
#define XXTS_AES_CTRL_ADDR_TEXT_LEN_V_DATA 0x30
#define XXTS_AES_CTRL_BITS_TEXT_LEN_V_DATA 16
#define XXTS_AES_CTRL_ADDR_DATA_RET_V_DATA 0x38
#define XXTS_AES_CTRL_BITS_DATA_RET_V_DATA 32

