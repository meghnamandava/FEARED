-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity xts_aes_process_bloc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    block_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    block_V_ce0 : OUT STD_LOGIC;
    block_V_we0 : OUT STD_LOGIC;
    block_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    block_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    block_V_offset : IN STD_LOGIC_VECTOR (6 downto 0);
    tweak_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    tweak_V_ce0 : OUT STD_LOGIC;
    tweak_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    mode_V : IN STD_LOGIC_VECTOR (15 downto 0);
    expanded_key_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    expanded_key_V_ce0 : OUT STD_LOGIC;
    expanded_key_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    expanded_key_V_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    expanded_key_V_ce1 : OUT STD_LOGIC;
    expanded_key_V_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    s_boxes_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    s_boxes_V_ce0 : OUT STD_LOGIC;
    s_boxes_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    s_boxes_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    s_boxes_V_ce1 : OUT STD_LOGIC;
    s_boxes_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    multiplication_V_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    multiplication_V_ce0 : OUT STD_LOGIC;
    multiplication_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    multiplication_V_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    multiplication_V_ce1 : OUT STD_LOGIC;
    multiplication_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of xts_aes_process_bloc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv6_E : STD_LOGIC_VECTOR (5 downto 0) := "001110";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zext_ln272_fu_156_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln272_reg_241 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_fu_166_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_250 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal block_V_addr_reg_255 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln274_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_reg_265 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_8_fu_196_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal empty_8_reg_269 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_2_fu_206_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_2_reg_277 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal block_V_addr_1_reg_282 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln288_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_aes_process_2_fu_122_ap_start : STD_LOGIC;
    signal grp_aes_process_2_fu_122_ap_done : STD_LOGIC;
    signal grp_aes_process_2_fu_122_ap_idle : STD_LOGIC;
    signal grp_aes_process_2_fu_122_ap_ready : STD_LOGIC;
    signal grp_aes_process_2_fu_122_text_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_aes_process_2_fu_122_text_V_ce0 : STD_LOGIC;
    signal grp_aes_process_2_fu_122_text_V_we0 : STD_LOGIC;
    signal grp_aes_process_2_fu_122_text_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_aes_process_2_fu_122_initial_round : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_aes_process_2_fu_122_round_factor : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_aes_process_2_fu_122_expanded_key_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes_process_2_fu_122_expanded_key_V_ce0 : STD_LOGIC;
    signal grp_aes_process_2_fu_122_expanded_key_V_address1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes_process_2_fu_122_expanded_key_V_ce1 : STD_LOGIC;
    signal grp_aes_process_2_fu_122_s_boxes_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_aes_process_2_fu_122_s_boxes_V_ce0 : STD_LOGIC;
    signal grp_aes_process_2_fu_122_s_boxes_V_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_aes_process_2_fu_122_s_boxes_V_ce1 : STD_LOGIC;
    signal grp_aes_process_2_fu_122_multiplication_V_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_aes_process_2_fu_122_multiplication_V_ce0 : STD_LOGIC;
    signal grp_aes_process_2_fu_122_multiplication_V_address1 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_aes_process_2_fu_122_multiplication_V_ce1 : STD_LOGIC;
    signal i_0_reg_100 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i1_0_reg_111 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_block_state4_on_subcall_done : BOOLEAN;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_aes_process_2_fu_122_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln1357_1_fu_186_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln276_fu_172_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1357_3_fu_226_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln290_fu_212_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_141_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_148_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln1357_fu_177_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln1357_fu_181_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln1357_2_fu_217_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln1357_1_fu_221_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component aes_process_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        text_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        text_V_ce0 : OUT STD_LOGIC;
        text_V_we0 : OUT STD_LOGIC;
        text_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        text_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        sequence_out_V_offset : IN STD_LOGIC_VECTOR (5 downto 0);
        initial_round : IN STD_LOGIC_VECTOR (5 downto 0);
        round_factor : IN STD_LOGIC_VECTOR (1 downto 0);
        expanded_key_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        expanded_key_V_ce0 : OUT STD_LOGIC;
        expanded_key_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        expanded_key_V_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        expanded_key_V_ce1 : OUT STD_LOGIC;
        expanded_key_V_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
        s_boxes_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        s_boxes_V_ce0 : OUT STD_LOGIC;
        s_boxes_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        s_boxes_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        s_boxes_V_ce1 : OUT STD_LOGIC;
        s_boxes_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        multiplication_V_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        multiplication_V_ce0 : OUT STD_LOGIC;
        multiplication_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        multiplication_V_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
        multiplication_V_ce1 : OUT STD_LOGIC;
        multiplication_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    grp_aes_process_2_fu_122 : component aes_process_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_aes_process_2_fu_122_ap_start,
        ap_done => grp_aes_process_2_fu_122_ap_done,
        ap_idle => grp_aes_process_2_fu_122_ap_idle,
        ap_ready => grp_aes_process_2_fu_122_ap_ready,
        text_V_address0 => grp_aes_process_2_fu_122_text_V_address0,
        text_V_ce0 => grp_aes_process_2_fu_122_text_V_ce0,
        text_V_we0 => grp_aes_process_2_fu_122_text_V_we0,
        text_V_d0 => grp_aes_process_2_fu_122_text_V_d0,
        text_V_q0 => block_V_q0,
        sequence_out_V_offset => empty_8_reg_269,
        initial_round => grp_aes_process_2_fu_122_initial_round,
        round_factor => grp_aes_process_2_fu_122_round_factor,
        expanded_key_V_address0 => grp_aes_process_2_fu_122_expanded_key_V_address0,
        expanded_key_V_ce0 => grp_aes_process_2_fu_122_expanded_key_V_ce0,
        expanded_key_V_q0 => expanded_key_V_q0,
        expanded_key_V_address1 => grp_aes_process_2_fu_122_expanded_key_V_address1,
        expanded_key_V_ce1 => grp_aes_process_2_fu_122_expanded_key_V_ce1,
        expanded_key_V_q1 => expanded_key_V_q1,
        s_boxes_V_address0 => grp_aes_process_2_fu_122_s_boxes_V_address0,
        s_boxes_V_ce0 => grp_aes_process_2_fu_122_s_boxes_V_ce0,
        s_boxes_V_q0 => s_boxes_V_q0,
        s_boxes_V_address1 => grp_aes_process_2_fu_122_s_boxes_V_address1,
        s_boxes_V_ce1 => grp_aes_process_2_fu_122_s_boxes_V_ce1,
        s_boxes_V_q1 => s_boxes_V_q1,
        multiplication_V_address0 => grp_aes_process_2_fu_122_multiplication_V_address0,
        multiplication_V_ce0 => grp_aes_process_2_fu_122_multiplication_V_ce0,
        multiplication_V_q0 => multiplication_V_q0,
        multiplication_V_address1 => grp_aes_process_2_fu_122_multiplication_V_address1,
        multiplication_V_ce1 => grp_aes_process_2_fu_122_multiplication_V_ce1,
        multiplication_V_q1 => multiplication_V_q1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_aes_process_2_fu_122_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_aes_process_2_fu_122_ap_start_reg <= ap_const_logic_0;
            else
                if ((((icmp_ln879_fu_191_p2 = ap_const_lv1_1) and (icmp_ln274_fu_160_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((icmp_ln879_fu_191_p2 = ap_const_lv1_0) and (icmp_ln274_fu_160_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
                    grp_aes_process_2_fu_122_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_aes_process_2_fu_122_ap_ready = ap_const_logic_1)) then 
                    grp_aes_process_2_fu_122_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i1_0_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i1_0_reg_111 <= i_2_reg_277;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_on_subcall_done))) then 
                i1_0_reg_111 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    i_0_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_reg_100 <= i_reg_250;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_100 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln288_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                block_V_addr_1_reg_282 <= zext_ln1357_3_fu_226_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln274_fu_160_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                block_V_addr_reg_255 <= zext_ln1357_1_fu_186_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln274_fu_160_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                empty_8_reg_269 <= empty_8_fu_196_p1;
                icmp_ln879_reg_265 <= icmp_ln879_fu_191_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                i_2_reg_277 <= i_2_fu_206_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_250 <= i_fu_166_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    zext_ln272_reg_241(10 downto 4) <= zext_ln272_fu_156_p1(10 downto 4);
            end if;
        end if;
    end process;
    zext_ln272_reg_241(3 downto 0) <= "0000";
    zext_ln272_reg_241(11) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln274_fu_160_p2, ap_CS_fsm_state5, icmp_ln288_fu_200_p2, ap_CS_fsm_state4, ap_block_state4_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln274_fu_160_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln288_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln1357_1_fu_221_p2 <= std_logic_vector(unsigned(zext_ln272_reg_241) + unsigned(zext_ln1357_2_fu_217_p1));
    add_ln1357_fu_181_p2 <= std_logic_vector(unsigned(zext_ln272_reg_241) + unsigned(zext_ln1357_fu_177_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state4_on_subcall_done_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_ap_done)
    begin
                ap_block_state4_on_subcall_done <= (((icmp_ln879_reg_265 = ap_const_lv1_1) and (grp_aes_process_2_fu_122_ap_done = ap_const_logic_0)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (grp_aes_process_2_fu_122_ap_done = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5, icmp_ln288_fu_200_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((icmp_ln288_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5, icmp_ln288_fu_200_p2)
    begin
        if (((icmp_ln288_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    block_V_address0_assign_proc : process(ap_CS_fsm_state2, block_V_addr_reg_255, icmp_ln274_fu_160_p2, icmp_ln879_reg_265, ap_CS_fsm_state5, block_V_addr_1_reg_282, grp_aes_process_2_fu_122_text_V_address0, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state6, zext_ln1357_1_fu_186_p1, zext_ln1357_3_fu_226_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            block_V_address0 <= block_V_addr_1_reg_282;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            block_V_address0 <= zext_ln1357_3_fu_226_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            block_V_address0 <= block_V_addr_reg_255;
        elsif (((icmp_ln274_fu_160_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            block_V_address0 <= zext_ln1357_1_fu_186_p1(10 - 1 downto 0);
        elsif ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            block_V_address0 <= grp_aes_process_2_fu_122_text_V_address0;
        else 
            block_V_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    block_V_ce0_assign_proc : process(ap_CS_fsm_state2, icmp_ln274_fu_160_p2, icmp_ln879_reg_265, ap_CS_fsm_state5, grp_aes_process_2_fu_122_text_V_ce0, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln274_fu_160_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            block_V_ce0 <= ap_const_logic_1;
        elsif ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            block_V_ce0 <= grp_aes_process_2_fu_122_text_V_ce0;
        else 
            block_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    block_V_d0_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_text_V_d0, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state6, grp_fu_141_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            block_V_d0 <= grp_fu_141_p2;
        elsif ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            block_V_d0 <= grp_aes_process_2_fu_122_text_V_d0;
        else 
            block_V_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    block_V_we0_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_text_V_we0, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            block_V_we0 <= ap_const_logic_1;
        elsif ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            block_V_we0 <= grp_aes_process_2_fu_122_text_V_we0;
        else 
            block_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    empty_8_fu_196_p1 <= block_V_offset(6 - 1 downto 0);
    expanded_key_V_address0 <= grp_aes_process_2_fu_122_expanded_key_V_address0;
    expanded_key_V_address1 <= grp_aes_process_2_fu_122_expanded_key_V_address1;

    expanded_key_V_ce0_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_expanded_key_V_ce0, ap_CS_fsm_state4)
    begin
        if ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            expanded_key_V_ce0 <= grp_aes_process_2_fu_122_expanded_key_V_ce0;
        else 
            expanded_key_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    expanded_key_V_ce1_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_expanded_key_V_ce1, ap_CS_fsm_state4)
    begin
        if ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            expanded_key_V_ce1 <= grp_aes_process_2_fu_122_expanded_key_V_ce1;
        else 
            expanded_key_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    grp_aes_process_2_fu_122_ap_start <= grp_aes_process_2_fu_122_ap_start_reg;

    grp_aes_process_2_fu_122_initial_round_assign_proc : process(icmp_ln879_reg_265, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
            if ((icmp_ln879_reg_265 = ap_const_lv1_1)) then 
                grp_aes_process_2_fu_122_initial_round <= ap_const_lv6_0;
            elsif ((icmp_ln879_reg_265 = ap_const_lv1_0)) then 
                grp_aes_process_2_fu_122_initial_round <= ap_const_lv6_E;
            else 
                grp_aes_process_2_fu_122_initial_round <= "XXXXXX";
            end if;
        else 
            grp_aes_process_2_fu_122_initial_round <= "XXXXXX";
        end if; 
    end process;


    grp_aes_process_2_fu_122_round_factor_assign_proc : process(icmp_ln879_reg_265, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
            if ((icmp_ln879_reg_265 = ap_const_lv1_1)) then 
                grp_aes_process_2_fu_122_round_factor <= ap_const_lv2_1;
            elsif ((icmp_ln879_reg_265 = ap_const_lv1_0)) then 
                grp_aes_process_2_fu_122_round_factor <= ap_const_lv2_3;
            else 
                grp_aes_process_2_fu_122_round_factor <= "XX";
            end if;
        else 
            grp_aes_process_2_fu_122_round_factor <= "XX";
        end if; 
    end process;

    grp_fu_141_p2 <= (tweak_V_q0 xor block_V_q0);
    i_2_fu_206_p2 <= std_logic_vector(unsigned(i1_0_reg_111) + unsigned(ap_const_lv5_1));
    i_fu_166_p2 <= std_logic_vector(unsigned(i_0_reg_100) + unsigned(ap_const_lv5_1));
    icmp_ln274_fu_160_p2 <= "1" when (i_0_reg_100 = ap_const_lv5_10) else "0";
    icmp_ln288_fu_200_p2 <= "1" when (i1_0_reg_111 = ap_const_lv5_10) else "0";
    icmp_ln879_fu_191_p2 <= "1" when (mode_V = ap_const_lv16_1) else "0";
    multiplication_V_address0 <= grp_aes_process_2_fu_122_multiplication_V_address0;
    multiplication_V_address1 <= grp_aes_process_2_fu_122_multiplication_V_address1;

    multiplication_V_ce0_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_multiplication_V_ce0, ap_CS_fsm_state4)
    begin
        if ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            multiplication_V_ce0 <= grp_aes_process_2_fu_122_multiplication_V_ce0;
        else 
            multiplication_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    multiplication_V_ce1_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_multiplication_V_ce1, ap_CS_fsm_state4)
    begin
        if ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            multiplication_V_ce1 <= grp_aes_process_2_fu_122_multiplication_V_ce1;
        else 
            multiplication_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    s_boxes_V_address0 <= grp_aes_process_2_fu_122_s_boxes_V_address0;
    s_boxes_V_address1 <= grp_aes_process_2_fu_122_s_boxes_V_address1;

    s_boxes_V_ce0_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_s_boxes_V_ce0, ap_CS_fsm_state4)
    begin
        if ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            s_boxes_V_ce0 <= grp_aes_process_2_fu_122_s_boxes_V_ce0;
        else 
            s_boxes_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    s_boxes_V_ce1_assign_proc : process(icmp_ln879_reg_265, grp_aes_process_2_fu_122_s_boxes_V_ce1, ap_CS_fsm_state4)
    begin
        if ((((icmp_ln879_reg_265 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln879_reg_265 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            s_boxes_V_ce1 <= grp_aes_process_2_fu_122_s_boxes_V_ce1;
        else 
            s_boxes_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_148_p3 <= (block_V_offset & ap_const_lv4_0);

    tweak_V_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5, zext_ln276_fu_172_p1, zext_ln290_fu_212_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            tweak_V_address0 <= zext_ln290_fu_212_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            tweak_V_address0 <= zext_ln276_fu_172_p1(4 - 1 downto 0);
        else 
            tweak_V_address0 <= "XXXX";
        end if; 
    end process;


    tweak_V_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            tweak_V_ce0 <= ap_const_logic_1;
        else 
            tweak_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln1357_1_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1357_fu_181_p2),64));
    zext_ln1357_2_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_0_reg_111),12));
    zext_ln1357_3_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1357_1_fu_221_p2),64));
    zext_ln1357_fu_177_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_100),12));
    zext_ln272_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_148_p3),12));
    zext_ln276_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_100),64));
    zext_ln290_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_0_reg_111),64));
end behav;