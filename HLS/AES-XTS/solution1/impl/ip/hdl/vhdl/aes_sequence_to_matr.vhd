-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity aes_sequence_to_matr is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_sequence_V_AWVALID : OUT STD_LOGIC;
    m_axi_sequence_V_AWREADY : IN STD_LOGIC;
    m_axi_sequence_V_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_sequence_V_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_sequence_V_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_sequence_V_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_sequence_V_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_sequence_V_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_sequence_V_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_sequence_V_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_sequence_V_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_sequence_V_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_WVALID : OUT STD_LOGIC;
    m_axi_sequence_V_WREADY : IN STD_LOGIC;
    m_axi_sequence_V_WDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_sequence_V_WSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_sequence_V_WLAST : OUT STD_LOGIC;
    m_axi_sequence_V_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_ARVALID : OUT STD_LOGIC;
    m_axi_sequence_V_ARREADY : IN STD_LOGIC;
    m_axi_sequence_V_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_sequence_V_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_sequence_V_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_sequence_V_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_sequence_V_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_sequence_V_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_sequence_V_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_sequence_V_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_sequence_V_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_sequence_V_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_RVALID : IN STD_LOGIC;
    m_axi_sequence_V_RREADY : OUT STD_LOGIC;
    m_axi_sequence_V_RDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    m_axi_sequence_V_RLAST : IN STD_LOGIC;
    m_axi_sequence_V_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_sequence_V_BVALID : IN STD_LOGIC;
    m_axi_sequence_V_BREADY : OUT STD_LOGIC;
    m_axi_sequence_V_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_sequence_V_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_sequence_V_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sequence_V_offset : IN STD_LOGIC_VECTOR (30 downto 0);
    matrix_out_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    matrix_out_V_ce0 : OUT STD_LOGIC;
    matrix_out_V_we0 : OUT STD_LOGIC;
    matrix_out_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of aes_sequence_to_matr is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sequence_V_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal sequence_V_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal sequence_V_offset_ca_fu_99_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sequence_V_offset_ca_reg_192 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_109_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_200 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln230_1_fu_123_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln230_1_reg_205 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln228_fu_103_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln230_fu_127_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln230_reg_210 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_fu_137_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_218 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal add_ln180_fu_147_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln180_reg_223 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln230_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sequence_V_addr_reg_228 : STD_LOGIC_VECTOR (31 downto 0);
    signal sequence_V_addr_read_reg_234 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_op_assign_1_reg_77 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_op_assign_reg_88 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal zext_ln180_9_fu_188_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln180_11_fu_178_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_115_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln180_fu_143_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln1352_fu_152_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_V_fu_156_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_V_2_fu_164_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln180_10_fu_169_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln180_3_fu_173_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);


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


    i_op_assign_1_reg_77_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln230_fu_131_p2 = ap_const_lv1_1))) then 
                i_op_assign_1_reg_77 <= i_reg_200;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_op_assign_1_reg_77 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    i_op_assign_reg_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln228_fu_103_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_op_assign_reg_88 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                i_op_assign_reg_88 <= j_reg_218;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln230_fu_131_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                add_ln180_reg_223 <= add_ln180_fu_147_p2;
                sequence_V_addr_reg_228 <= zext_ln180_11_fu_178_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_200 <= i_fu_109_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_218 <= j_fu_137_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_sequence_V_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                sequence_V_addr_read_reg_234 <= m_axi_sequence_V_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    sequence_V_offset_ca_reg_192(30 downto 0) <= sequence_V_offset_ca_fu_99_p1(30 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln228_fu_103_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln230_1_reg_205(4 downto 2) <= zext_ln230_1_fu_123_p1(4 downto 2);
                    zext_ln230_reg_210(2 downto 0) <= zext_ln230_fu_127_p1(2 downto 0);
            end if;
        end if;
    end process;
    sequence_V_offset_ca_reg_192(31) <= '0';
    zext_ln230_1_reg_205(1 downto 0) <= "00";
    zext_ln230_1_reg_205(5) <= '0';
    zext_ln230_reg_210(3) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_sequence_V_ARREADY, m_axi_sequence_V_RVALID, ap_CS_fsm_state4, ap_CS_fsm_state11, ap_CS_fsm_state2, icmp_ln228_fu_103_p2, ap_CS_fsm_state3, icmp_ln230_fu_131_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln228_fu_103_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln230_fu_131_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((m_axi_sequence_V_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                if (((m_axi_sequence_V_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    add_ln180_3_fu_173_p2 <= std_logic_vector(unsigned(zext_ln180_10_fu_169_p1) + unsigned(sequence_V_offset_ca_reg_192));
    add_ln180_fu_147_p2 <= std_logic_vector(unsigned(zext_ln180_fu_143_p1) + unsigned(zext_ln230_1_reg_205));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln228_fu_103_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln228_fu_103_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln228_fu_103_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln228_fu_103_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_109_p2 <= std_logic_vector(unsigned(i_op_assign_1_reg_77) + unsigned(ap_const_lv3_1));
    icmp_ln228_fu_103_p2 <= "1" when (i_op_assign_1_reg_77 = ap_const_lv3_4) else "0";
    icmp_ln230_fu_131_p2 <= "1" when (i_op_assign_reg_88 = ap_const_lv3_4) else "0";
    j_fu_137_p2 <= std_logic_vector(unsigned(i_op_assign_reg_88) + unsigned(ap_const_lv3_1));
    m_axi_sequence_V_ARADDR <= sequence_V_addr_reg_228;
    m_axi_sequence_V_ARBURST <= ap_const_lv2_0;
    m_axi_sequence_V_ARCACHE <= ap_const_lv4_0;
    m_axi_sequence_V_ARID <= ap_const_lv1_0;
    m_axi_sequence_V_ARLEN <= ap_const_lv32_1;
    m_axi_sequence_V_ARLOCK <= ap_const_lv2_0;
    m_axi_sequence_V_ARPROT <= ap_const_lv3_0;
    m_axi_sequence_V_ARQOS <= ap_const_lv4_0;
    m_axi_sequence_V_ARREGION <= ap_const_lv4_0;
    m_axi_sequence_V_ARSIZE <= ap_const_lv3_0;
    m_axi_sequence_V_ARUSER <= ap_const_lv1_0;

    m_axi_sequence_V_ARVALID_assign_proc : process(m_axi_sequence_V_ARREADY, ap_CS_fsm_state4)
    begin
        if (((m_axi_sequence_V_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            m_axi_sequence_V_ARVALID <= ap_const_logic_1;
        else 
            m_axi_sequence_V_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_sequence_V_AWADDR <= ap_const_lv32_0;
    m_axi_sequence_V_AWBURST <= ap_const_lv2_0;
    m_axi_sequence_V_AWCACHE <= ap_const_lv4_0;
    m_axi_sequence_V_AWID <= ap_const_lv1_0;
    m_axi_sequence_V_AWLEN <= ap_const_lv32_0;
    m_axi_sequence_V_AWLOCK <= ap_const_lv2_0;
    m_axi_sequence_V_AWPROT <= ap_const_lv3_0;
    m_axi_sequence_V_AWQOS <= ap_const_lv4_0;
    m_axi_sequence_V_AWREGION <= ap_const_lv4_0;
    m_axi_sequence_V_AWSIZE <= ap_const_lv3_0;
    m_axi_sequence_V_AWUSER <= ap_const_lv1_0;
    m_axi_sequence_V_AWVALID <= ap_const_logic_0;
    m_axi_sequence_V_BREADY <= ap_const_logic_0;

    m_axi_sequence_V_RREADY_assign_proc : process(m_axi_sequence_V_RVALID, ap_CS_fsm_state11)
    begin
        if (((m_axi_sequence_V_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            m_axi_sequence_V_RREADY <= ap_const_logic_1;
        else 
            m_axi_sequence_V_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_sequence_V_WDATA <= ap_const_lv16_0;
    m_axi_sequence_V_WID <= ap_const_lv1_0;
    m_axi_sequence_V_WLAST <= ap_const_logic_0;
    m_axi_sequence_V_WSTRB <= ap_const_lv2_0;
    m_axi_sequence_V_WUSER <= ap_const_lv1_0;
    m_axi_sequence_V_WVALID <= ap_const_logic_0;
    matrix_out_V_address0 <= zext_ln180_9_fu_188_p1(4 - 1 downto 0);

    matrix_out_V_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            matrix_out_V_ce0 <= ap_const_logic_1;
        else 
            matrix_out_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    matrix_out_V_d0 <= sequence_V_addr_read_reg_234;

    matrix_out_V_we0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            matrix_out_V_we0 <= ap_const_logic_1;
        else 
            matrix_out_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_2_fu_164_p2 <= std_logic_vector(unsigned(ret_V_fu_156_p3) + unsigned(zext_ln230_reg_210));
    ret_V_fu_156_p3 <= (trunc_ln1352_fu_152_p1 & ap_const_lv2_0);

    sequence_V_blk_n_AR_assign_proc : process(m_axi_sequence_V_ARREADY, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sequence_V_blk_n_AR <= m_axi_sequence_V_ARREADY;
        else 
            sequence_V_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    sequence_V_blk_n_R_assign_proc : process(m_axi_sequence_V_RVALID, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            sequence_V_blk_n_R <= m_axi_sequence_V_RVALID;
        else 
            sequence_V_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    sequence_V_offset_ca_fu_99_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sequence_V_offset),32));
    tmp_fu_115_p3 <= (i_op_assign_1_reg_77 & ap_const_lv2_0);
    trunc_ln1352_fu_152_p1 <= i_op_assign_reg_88(2 - 1 downto 0);
    zext_ln180_10_fu_169_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_2_fu_164_p2),32));
    zext_ln180_11_fu_178_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln180_3_fu_173_p2),64));
    zext_ln180_9_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln180_reg_223),64));
    zext_ln180_fu_143_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_op_assign_reg_88),6));
    zext_ln230_1_fu_123_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_115_p3),6));
    zext_ln230_fu_127_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_op_assign_1_reg_77),4));
end behav;
