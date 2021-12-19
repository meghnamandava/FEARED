-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity aes_get_round_key5 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    round : IN STD_LOGIC_VECTOR (6 downto 0);
    expanded_key_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    expanded_key_V_ce0 : OUT STD_LOGIC;
    expanded_key_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    expanded_key_V_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    expanded_key_V_ce1 : OUT STD_LOGIC;
    expanded_key_V_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    round_key_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    round_key_V_ce0 : OUT STD_LOGIC;
    round_key_V_we0 : OUT STD_LOGIC;
    round_key_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    round_key_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    round_key_V_ce1 : OUT STD_LOGIC;
    round_key_V_we1 : OUT STD_LOGIC;
    round_key_V_d1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of aes_get_round_key5 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_const_lv9_3 : STD_LOGIC_VECTOR (8 downto 0) := "000000011";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv59_0 : STD_LOGIC_VECTOR (58 downto 0) := "00000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv5_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_0_reg_154 : STD_LOGIC_VECTOR (2 downto 0);
    signal key_column_index_V_fu_165_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal key_column_index_V_reg_313 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln1353_fu_173_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln1353_reg_318 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln1353_1_fu_179_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln1353_1_reg_323 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln1353_2_fu_185_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln1353_2_reg_328 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln138_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln138_reg_333 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_197_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_337 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_17_fu_211_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_17_reg_342 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln180_fu_223_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln180_reg_350 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_phi_mux_i_0_phi_fu_158_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal sext_ln180_fu_234_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln180_1_fu_244_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln180_2_fu_257_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal sext_ln180_3_fu_266_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln180_8_fu_249_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_18_fu_276_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_19_fu_290_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_20_fu_304_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_203_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln180_fu_219_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln180_fu_229_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln180_6_fu_239_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln180_7_fu_253_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln180_8_fu_262_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln180_fu_271_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln180_3_fu_285_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln180_4_fu_299_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln138_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i_0_reg_154 <= i_reg_337;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_154 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_337 <= i_fu_197_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln138_reg_333 <= icmp_ln138_fu_191_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    key_column_index_V_reg_313(8 downto 2) <= key_column_index_V_fu_165_p3(8 downto 2);
                    or_ln1353_1_reg_323(8 downto 2) <= or_ln1353_1_fu_179_p2(8 downto 2);
                    or_ln1353_2_reg_328(8 downto 2) <= or_ln1353_2_fu_185_p2(8 downto 2);
                    or_ln1353_reg_318(8 downto 2) <= or_ln1353_fu_173_p2(8 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln138_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    sub_ln180_reg_350(8 downto 2) <= sub_ln180_fu_223_p2(8 downto 2);
                    tmp_17_reg_342(4 downto 2) <= tmp_17_fu_211_p3(4 downto 2);
            end if;
        end if;
    end process;
    key_column_index_V_reg_313(1 downto 0) <= "00";
    or_ln1353_reg_318(1 downto 0) <= "01";
    or_ln1353_1_reg_323(1 downto 0) <= "10";
    or_ln1353_2_reg_328(1 downto 0) <= "11";
    tmp_17_reg_342(1 downto 0) <= "00";
    sub_ln180_reg_350(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln138_fu_191_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln138_fu_191_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((icmp_ln138_fu_191_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln180_6_fu_239_p2 <= std_logic_vector(unsigned(or_ln1353_reg_318) + unsigned(sub_ln180_fu_223_p2));
    add_ln180_7_fu_253_p2 <= std_logic_vector(unsigned(or_ln1353_1_reg_323) + unsigned(sub_ln180_reg_350));
    add_ln180_8_fu_262_p2 <= std_logic_vector(unsigned(or_ln1353_2_reg_328) + unsigned(sub_ln180_reg_350));
    add_ln180_fu_229_p2 <= std_logic_vector(unsigned(key_column_index_V_reg_313) + unsigned(sub_ln180_fu_223_p2));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln138_fu_191_p2)
    begin
        if ((icmp_ln138_fu_191_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_0_phi_fu_158_p4_assign_proc : process(i_0_reg_154, icmp_ln138_reg_333, ap_CS_fsm_pp0_stage0, i_reg_337, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln138_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_i_0_phi_fu_158_p4 <= i_reg_337;
        else 
            ap_phi_mux_i_0_phi_fu_158_p4 <= i_0_reg_154;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    expanded_key_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, sext_ln180_fu_234_p1, sext_ln180_2_fu_257_p1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                expanded_key_V_address0 <= sext_ln180_2_fu_257_p1(8 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                expanded_key_V_address0 <= sext_ln180_fu_234_p1(8 - 1 downto 0);
            else 
                expanded_key_V_address0 <= "XXXXXXXX";
            end if;
        else 
            expanded_key_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    expanded_key_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, sext_ln180_1_fu_244_p1, ap_block_pp0_stage1, sext_ln180_3_fu_266_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                expanded_key_V_address1 <= sext_ln180_3_fu_266_p1(8 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                expanded_key_V_address1 <= sext_ln180_1_fu_244_p1(8 - 1 downto 0);
            else 
                expanded_key_V_address1 <= "XXXXXXXX";
            end if;
        else 
            expanded_key_V_address1 <= "XXXXXXXX";
        end if; 
    end process;


    expanded_key_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            expanded_key_V_ce0 <= ap_const_logic_1;
        else 
            expanded_key_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    expanded_key_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            expanded_key_V_ce1 <= ap_const_logic_1;
        else 
            expanded_key_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_197_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_0_phi_fu_158_p4) + unsigned(ap_const_lv3_1));
    icmp_ln138_fu_191_p2 <= "1" when (ap_phi_mux_i_0_phi_fu_158_p4 = ap_const_lv3_4) else "0";
    key_column_index_V_fu_165_p3 <= (round & ap_const_lv2_0);
    or_ln1353_1_fu_179_p2 <= (key_column_index_V_fu_165_p3 or ap_const_lv9_2);
    or_ln1353_2_fu_185_p2 <= (key_column_index_V_fu_165_p3 or ap_const_lv9_3);
    or_ln1353_fu_173_p2 <= (key_column_index_V_fu_165_p3 or ap_const_lv9_1);
    or_ln180_3_fu_285_p2 <= (tmp_17_reg_342 or ap_const_lv5_2);
    or_ln180_4_fu_299_p2 <= (tmp_17_reg_342 or ap_const_lv5_3);
    or_ln180_fu_271_p2 <= (tmp_17_reg_342 or ap_const_lv5_1);

    round_key_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln180_8_fu_249_p1, tmp_19_fu_290_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            round_key_V_address0 <= tmp_19_fu_290_p3(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
            round_key_V_address0 <= zext_ln180_8_fu_249_p1(4 - 1 downto 0);
        else 
            round_key_V_address0 <= "XXXX";
        end if; 
    end process;


    round_key_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, ap_block_pp0_stage1, tmp_18_fu_276_p3, tmp_20_fu_304_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            round_key_V_address1 <= tmp_20_fu_304_p3(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
            round_key_V_address1 <= tmp_18_fu_276_p3(4 - 1 downto 0);
        else 
            round_key_V_address1 <= "XXXX";
        end if; 
    end process;


    round_key_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter1)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            round_key_V_ce0 <= ap_const_logic_1;
        else 
            round_key_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    round_key_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter1)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            round_key_V_ce1 <= ap_const_logic_1;
        else 
            round_key_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    round_key_V_d0 <= expanded_key_V_q0;
    round_key_V_d1 <= expanded_key_V_q1;

    round_key_V_we0_assign_proc : process(icmp_ln138_reg_333, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter1)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (icmp_ln138_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln138_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            round_key_V_we0 <= ap_const_logic_1;
        else 
            round_key_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    round_key_V_we1_assign_proc : process(icmp_ln138_reg_333, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter1)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (icmp_ln138_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln138_reg_333 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            round_key_V_we1 <= ap_const_logic_1;
        else 
            round_key_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

        sext_ln180_1_fu_244_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln180_6_fu_239_p2),64));

        sext_ln180_2_fu_257_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln180_7_fu_253_p2),64));

        sext_ln180_3_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln180_8_fu_262_p2),64));

        sext_ln180_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln180_fu_229_p2),64));

    sub_ln180_fu_223_p2 <= std_logic_vector(unsigned(tmp_s_fu_203_p3) - unsigned(zext_ln180_fu_219_p1));
    tmp_17_fu_211_p3 <= (ap_phi_mux_i_0_phi_fu_158_p4 & ap_const_lv2_0);
    tmp_18_fu_276_p3 <= (ap_const_lv59_0 & or_ln180_fu_271_p2);
    tmp_19_fu_290_p3 <= (ap_const_lv59_0 & or_ln180_3_fu_285_p2);
    tmp_20_fu_304_p3 <= (ap_const_lv59_0 & or_ln180_4_fu_299_p2);
    tmp_s_fu_203_p3 <= (ap_phi_mux_i_0_phi_fu_158_p4 & ap_const_lv6_0);
    zext_ln180_8_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_17_reg_342),64));
    zext_ln180_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_17_fu_211_p3),9));
end behav;
