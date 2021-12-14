# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ctrl {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
key_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
tweak_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
text_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
mode_V { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
text_len_V { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
data_ret_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
}
dict set axilite_register_dict ctrl $port_ctrl


