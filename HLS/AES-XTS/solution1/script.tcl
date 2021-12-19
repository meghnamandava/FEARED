############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES-XTS
set_top xts_aes
add_files AES-XTS/main.h
add_files AES-XTS/main.cpp
add_files -tb AES-XTS/aesxts_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./AES-XTS/solution1/directives.tcl"
csim_design -clean -setup
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
