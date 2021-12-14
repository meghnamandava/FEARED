// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern void AESL_WRAP_xts_aes (
ap_int<16> key[64],
ap_int<16> tweak[16],
ap_int<16> text[1024],
ap_int<16> mode,
ap_int<16> text_len,
ap_int<16> data_ret[1024]);
