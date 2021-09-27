-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/26/2021 23:02:13"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	BARRAMENTO_DADOS_SAIDA : OUT std_logic_vector(7 DOWNTO 0);
	BARRAMENTO_DADOS_ENTRADA : OUT std_logic_vector(7 DOWNTO 0);
	BARRAMENTO_DADOS_ENDERECOS : OUT std_logic_vector(8 DOWNTO 0);
	FLAG_IGUAL : OUT std_logic;
	SAIDA_PC : OUT std_logic_vector(8 DOWNTO 0)
	);
END Aula5;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_SAIDA[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENTRADA[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[5]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BARRAMENTO_DADOS_ENDERECOS[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_IGUAL	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_PC[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BARRAMENTO_DADOS_SAIDA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BARRAMENTO_DADOS_ENTRADA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BARRAMENTO_DADOS_ENDERECOS : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_FLAG_IGUAL : std_logic;
SIGNAL ww_SAIDA_PC : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~2\ : std_logic;
SIGNAL \SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~6\ : std_logic;
SIGNAL \SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~30\ : std_logic;
SIGNAL \SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~26\ : std_logic;
SIGNAL \SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~22\ : std_logic;
SIGNAL \SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~18\ : std_logic;
SIGNAL \SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~14\ : std_logic;
SIGNAL \SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[0]~8_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~33_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out~16_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[1]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[2]~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[3]~11_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \REG1|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[4]~12_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[5]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[6]~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[7]~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_combout\ : std_logic;
SIGNAL \REG1|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \SOMADOR|Add0~10\ : std_logic;
SIGNAL \SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[1]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG1|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[7]~15_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[6]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[5]~13_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[4]~12_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[3]~11_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[2]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~19_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
BARRAMENTO_DADOS_SAIDA <= ww_BARRAMENTO_DADOS_SAIDA;
BARRAMENTO_DADOS_ENTRADA <= ww_BARRAMENTO_DADOS_ENTRADA;
BARRAMENTO_DADOS_ENDERECOS <= ww_BARRAMENTO_DADOS_ENDERECOS;
FLAG_IGUAL <= ww_FLAG_IGUAL;
SAIDA_PC <= ww_SAIDA_PC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MEMORIA_DADOS|ALT_INV_dado_out[1]~9_combout\ <= NOT \MEMORIA_DADOS|dado_out[1]~9_combout\;
\MEMORIA_DADOS|ALT_INV_ram~18_q\ <= NOT \MEMORIA_DADOS|ram~18_q\;
\ULA1|ALT_INV_Equal0~0_combout\ <= NOT \ULA1|Equal0~0_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[0]~8_combout\ <= NOT \MEMORIA_DADOS|dado_out[0]~8_combout\;
\MEMORIA_DADOS|ALT_INV_ram~17_q\ <= NOT \MEMORIA_DADOS|ram~17_q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~5_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~3_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~1_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~0_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\REG1|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REG1|DOUT[3]~DUPLICATE_q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~6_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[7]~15_combout\ <= NOT \MEMORIA_DADOS|dado_out[7]~15_combout\;
\MEMORIA_DADOS|ALT_INV_ram~24_q\ <= NOT \MEMORIA_DADOS|ram~24_q\;
\MEMORIA_DADOS|ALT_INV_dado_out[6]~14_combout\ <= NOT \MEMORIA_DADOS|dado_out[6]~14_combout\;
\MEMORIA_DADOS|ALT_INV_ram~23_q\ <= NOT \MEMORIA_DADOS|ram~23_q\;
\MEMORIA_DADOS|ALT_INV_dado_out[5]~13_combout\ <= NOT \MEMORIA_DADOS|dado_out[5]~13_combout\;
\MEMORIA_DADOS|ALT_INV_ram~22_q\ <= NOT \MEMORIA_DADOS|ram~22_q\;
\MEMORIA_DADOS|ALT_INV_dado_out[4]~12_combout\ <= NOT \MEMORIA_DADOS|dado_out[4]~12_combout\;
\MEMORIA_DADOS|ALT_INV_ram~21_q\ <= NOT \MEMORIA_DADOS|ram~21_q\;
\MEMORIA_DADOS|ALT_INV_dado_out[3]~11_combout\ <= NOT \MEMORIA_DADOS|dado_out[3]~11_combout\;
\MEMORIA_DADOS|ALT_INV_ram~20_q\ <= NOT \MEMORIA_DADOS|ram~20_q\;
\MEMORIA_DADOS|ALT_INV_dado_out[2]~10_combout\ <= NOT \MEMORIA_DADOS|dado_out[2]~10_combout\;
\MEMORIA_DADOS|ALT_INV_ram~19_q\ <= NOT \MEMORIA_DADOS|ram~19_q\;

-- Location: IOOBUF_X18_Y0_N53
\BARRAMENTO_DADOS_ENTRADA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~33_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(0));

-- Location: IOOBUF_X11_Y0_N36
\BARRAMENTO_DADOS_ENTRADA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~34_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(1));

-- Location: IOOBUF_X16_Y0_N93
\BARRAMENTO_DADOS_ENTRADA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~35_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(2));

-- Location: IOOBUF_X16_Y0_N42
\BARRAMENTO_DADOS_ENTRADA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~36_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(3));

-- Location: IOOBUF_X11_Y0_N53
\BARRAMENTO_DADOS_ENTRADA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~37_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(4));

-- Location: IOOBUF_X16_Y0_N76
\BARRAMENTO_DADOS_ENTRADA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~38_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(5));

-- Location: IOOBUF_X18_Y0_N36
\BARRAMENTO_DADOS_ENTRADA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~39_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(6));

-- Location: IOOBUF_X18_Y0_N2
\BARRAMENTO_DADOS_ENTRADA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~40_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENTRADA(7));

-- Location: IOOBUF_X11_Y0_N19
\BARRAMENTO_DADOS_SAIDA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(0));

-- Location: IOOBUF_X11_Y0_N2
\BARRAMENTO_DADOS_SAIDA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(1),
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(1));

-- Location: IOOBUF_X10_Y0_N42
\BARRAMENTO_DADOS_SAIDA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(2),
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(2));

-- Location: IOOBUF_X10_Y0_N59
\BARRAMENTO_DADOS_SAIDA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(3),
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(3));

-- Location: IOOBUF_X12_Y0_N36
\BARRAMENTO_DADOS_SAIDA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(4),
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(4));

-- Location: IOOBUF_X12_Y0_N2
\BARRAMENTO_DADOS_SAIDA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(5),
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(5));

-- Location: IOOBUF_X12_Y0_N19
\BARRAMENTO_DADOS_SAIDA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(6),
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(6));

-- Location: IOOBUF_X10_Y0_N93
\BARRAMENTO_DADOS_SAIDA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_SAIDA(7));

-- Location: IOOBUF_X19_Y0_N36
\BARRAMENTO_DADOS_ENDERECOS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_INTRUCAO|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(0));

-- Location: IOOBUF_X0_Y21_N56
\BARRAMENTO_DADOS_ENDERECOS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(1));

-- Location: IOOBUF_X50_Y0_N19
\BARRAMENTO_DADOS_ENDERECOS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(2));

-- Location: IOOBUF_X24_Y0_N53
\BARRAMENTO_DADOS_ENDERECOS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(3));

-- Location: IOOBUF_X51_Y0_N36
\BARRAMENTO_DADOS_ENDERECOS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(4));

-- Location: IOOBUF_X48_Y45_N53
\BARRAMENTO_DADOS_ENDERECOS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(5));

-- Location: IOOBUF_X52_Y0_N36
\BARRAMENTO_DADOS_ENDERECOS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(6));

-- Location: IOOBUF_X43_Y45_N19
\BARRAMENTO_DADOS_ENDERECOS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(7));

-- Location: IOOBUF_X19_Y0_N53
\BARRAMENTO_DADOS_ENDERECOS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_INTRUCAO|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_BARRAMENTO_DADOS_ENDERECOS(8));

-- Location: IOOBUF_X54_Y15_N39
\FLAG_IGUAL~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FLAG_IGUAL);

-- Location: IOOBUF_X12_Y0_N53
\SAIDA_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_SAIDA_PC(0));

-- Location: IOOBUF_X14_Y0_N19
\SAIDA_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_SAIDA_PC(1));

-- Location: IOOBUF_X10_Y0_N76
\SAIDA_PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_SAIDA_PC(2));

-- Location: IOOBUF_X18_Y0_N19
\SAIDA_PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_PC(3));

-- Location: IOOBUF_X14_Y0_N53
\SAIDA_PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_SAIDA_PC(4));

-- Location: IOOBUF_X16_Y0_N59
\SAIDA_PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_SAIDA_PC(5));

-- Location: IOOBUF_X14_Y0_N2
\SAIDA_PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_PC(6));

-- Location: IOOBUF_X14_Y0_N36
\SAIDA_PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_PC(7));

-- Location: IOOBUF_X19_Y0_N19
\SAIDA_PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_SAIDA_PC(8));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X14_Y3_N30
\SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \SOMADOR|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \SOMADOR|Add0~1_sumout\,
	cout => \SOMADOR|Add0~2\);

-- Location: FF_X14_Y3_N32
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X14_Y3_N33
\SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))
-- \SOMADOR|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \SOMADOR|Add0~2\,
	sumout => \SOMADOR|Add0~5_sumout\,
	cout => \SOMADOR|Add0~6\);

-- Location: FF_X14_Y3_N35
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X14_Y3_N36
\SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~29_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))
-- \SOMADOR|Add0~30\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \SOMADOR|Add0~6\,
	sumout => \SOMADOR|Add0~29_sumout\,
	cout => \SOMADOR|Add0~30\);

-- Location: FF_X14_Y3_N38
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X14_Y3_N39
\SOMADOR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~25_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))
-- \SOMADOR|Add0~26\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \SOMADOR|Add0~30\,
	sumout => \SOMADOR|Add0~25_sumout\,
	cout => \SOMADOR|Add0~26\);

-- Location: FF_X14_Y3_N41
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X14_Y3_N18
\MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~1_combout\ = ( !\PC|DOUT\(3) & ( !\PC|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~1_combout\);

-- Location: LABCELL_X14_Y3_N42
\SOMADOR|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~21_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))
-- \SOMADOR|Add0~22\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOMADOR|Add0~26\,
	sumout => \SOMADOR|Add0~21_sumout\,
	cout => \SOMADOR|Add0~22\);

-- Location: FF_X14_Y3_N44
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X14_Y3_N45
\SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~17_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))
-- \SOMADOR|Add0~18\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOMADOR|Add0~22\,
	sumout => \SOMADOR|Add0~17_sumout\,
	cout => \SOMADOR|Add0~18\);

-- Location: FF_X14_Y3_N47
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X14_Y3_N48
\SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~13_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))
-- \SOMADOR|Add0~14\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOMADOR|Add0~18\,
	sumout => \SOMADOR|Add0~13_sumout\,
	cout => \SOMADOR|Add0~14\);

-- Location: FF_X14_Y3_N50
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X14_Y3_N51
\SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~9_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))
-- \SOMADOR|Add0~10\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOMADOR|Add0~14\,
	sumout => \SOMADOR|Add0~9_sumout\,
	cout => \SOMADOR|Add0~10\);

-- Location: FF_X14_Y3_N53
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X14_Y3_N0
\MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~0_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~0_combout\);

-- Location: LABCELL_X14_Y3_N15
\MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\PC|DOUT\(1) & (\PC|DOUT\(0) & \MEMORIA_INTRUCAO|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~6_combout\);

-- Location: LABCELL_X14_Y3_N6
\MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~5_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\PC|DOUT\(1) & \MEMORIA_INTRUCAO|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~5_combout\);

-- Location: LABCELL_X14_Y3_N3
\MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~3_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & !\PC|DOUT\(2))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (\PC|DOUT\(0) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \MEMORIA_INTRUCAO|memROM~3_combout\);

-- Location: MLABCELL_X13_Y3_N0
\MEMORIA_DADOS|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[0]~8_combout\ = ( \MEMORIA_DADOS|ram~17_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~17_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~0_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~1_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~17_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~17_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~17_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[0]~8_combout\);

-- Location: LABCELL_X12_Y3_N30
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REG1|DOUT\(0) ) + ( ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_INTRUCAO|memROM~5_combout\)) # (\MEMORIA_DADOS|dado_out[0]~8_combout\) ) + ( !VCC ))
-- \ULA1|Add0~2\ = CARRY(( \REG1|DOUT\(0) ) + ( ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_INTRUCAO|memROM~5_combout\)) # (\MEMORIA_DADOS|dado_out[0]~8_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100001101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[0]~8_combout\,
	datad => \REG1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X12_Y3_N9
\ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\PC|DOUT\(0) & \MEMORIA_INTRUCAO|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \ULA1|Equal0~0_combout\);

-- Location: MLABCELL_X13_Y3_N30
\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

-- Location: MLABCELL_X13_Y3_N33
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[0]~8_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\MEMORIA_DADOS|dado_out[0]~8_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \REG1|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[0]~8_combout\,
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X12_Y3_N54
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\ULA1|Equal0~0_combout\) # (((!\PC|DOUT\(0) & \MEMORIA_INTRUCAO|memROM~5_combout\)) # (\MEMORIA_DADOS|dado_out[0]~8_combout\)) ) ) # ( !\ULA1|Add1~1_sumout\ & ( (\ULA1|Equal0~0_combout\ & 
-- (((!\PC|DOUT\(0) & \MEMORIA_INTRUCAO|memROM~5_combout\)) # (\MEMORIA_DADOS|dado_out[0]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011000000110010001111001111111011111100111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[0]~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X12_Y3_N21
\ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal1~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~0_combout\) # (!\PC|DOUT\(1))) # (\PC|DOUT\(0)) ) ) # ( !\MEMORIA_INTRUCAO|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \ULA1|Equal1~0_combout\);

-- Location: FF_X12_Y3_N31
\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

-- Location: MLABCELL_X13_Y3_N9
\MEMORIA_DADOS|ram~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~41_combout\ = ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1) & (\PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|ram~41_combout\);

-- Location: FF_X13_Y3_N1
\MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~17_q\);

-- Location: LABCELL_X14_Y3_N21
\MEMORIA_DADOS|ram~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~33_combout\ = ( \MEMORIA_DADOS|ram~17_q\ & ( (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # (!\MEMORIA_INTRUCAO|memROM~0_combout\)) # (\PC|DOUT\(0))) # (\PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~17_q\,
	combout => \MEMORIA_DADOS|ram~33_combout\);

-- Location: LABCELL_X14_Y3_N9
\MEMORIA_DADOS|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out~16_combout\ = ( !\PC|DOUT\(0) & ( (\PC|DOUT\(1) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~3_combout\ & \MEMORIA_INTRUCAO|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|dado_out~16_combout\);

-- Location: MLABCELL_X13_Y3_N27
\MEMORIA_DADOS|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[1]~9_combout\ = ( \MEMORIA_DADOS|ram~18_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~18_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~0_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~18_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~18_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~18_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[1]~9_combout\);

-- Location: LABCELL_X12_Y3_N33
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REG1|DOUT\(1) ) + ( (\MEMORIA_DADOS|dado_out[1]~9_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REG1|DOUT\(1) ) + ( (\MEMORIA_DADOS|dado_out[1]~9_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[1]~9_combout\,
	datad => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: MLABCELL_X13_Y3_N36
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[1]~9_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\MEMORIA_DADOS|dado_out[1]~9_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[1]~9_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X12_Y3_N12
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \MEMORIA_DADOS|dado_out[1]~9_combout\ & ( (!\ULA1|Equal0~0_combout\ & (((\ULA1|Add1~5_sumout\)))) # (\ULA1|Equal0~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~5_combout\)) # (\PC|DOUT\(0)))) ) ) # ( 
-- !\MEMORIA_DADOS|dado_out[1]~9_combout\ & ( (!\ULA1|Equal0~0_combout\ & \ULA1|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001101111111010000110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \MEMORIA_DADOS|ALT_INV_dado_out[1]~9_combout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X12_Y3_N34
\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[1]~1_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

-- Location: FF_X13_Y3_N28
\MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~18_q\);

-- Location: LABCELL_X12_Y3_N27
\MEMORIA_DADOS|ram~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~34_combout\ = ( \MEMORIA_INTRUCAO|memROM~0_combout\ & ( (\MEMORIA_DADOS|ram~18_q\ & (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # (\PC|DOUT\(1))) # (\PC|DOUT\(0)))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~0_combout\ & ( \MEMORIA_DADOS|ram~18_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~18_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_DADOS|ram~34_combout\);

-- Location: MLABCELL_X13_Y3_N12
\MEMORIA_DADOS|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[2]~10_combout\ = ( \MEMORIA_DADOS|ram~19_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~19_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~0_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~1_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~19_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~19_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~19_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[2]~10_combout\);

-- Location: LABCELL_X12_Y3_N36
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REG1|DOUT\(2) ) + ( (\MEMORIA_DADOS|dado_out[2]~10_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REG1|DOUT\(2) ) + ( (\MEMORIA_DADOS|dado_out[2]~10_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \REG1|ALT_INV_DOUT\(2),
	dataf => \MEMORIA_DADOS|ALT_INV_dado_out[2]~10_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: MLABCELL_X13_Y3_N39
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[2]~10_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\MEMORIA_DADOS|dado_out[2]~10_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[2]~10_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X12_Y3_N3
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|dado_out[2]~10_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) ) # ( !\ULA1|Add1~9_sumout\ & ( 
-- (\MEMORIA_DADOS|dado_out[2]~10_combout\ & (\ULA1|Equal0~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110111111111000011011111111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[2]~10_combout\,
	datad => \ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: FF_X12_Y3_N37
\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[2]~2_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

-- Location: FF_X13_Y3_N13
\MEMORIA_DADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~19_q\);

-- Location: LABCELL_X16_Y3_N6
\MEMORIA_DADOS|ram~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~35_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( \MEMORIA_DADOS|ram~19_q\ & ( ((!\MEMORIA_INTRUCAO|memROM~0_combout\) # (\PC|DOUT\(0))) # (\PC|DOUT\(1)) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~1_combout\ & ( \MEMORIA_DADOS|ram~19_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT\(0),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~19_q\,
	combout => \MEMORIA_DADOS|ram~35_combout\);

-- Location: MLABCELL_X13_Y3_N21
\MEMORIA_DADOS|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[3]~11_combout\ = ( \MEMORIA_DADOS|ram~20_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~20_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~0_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~20_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~20_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~20_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[3]~11_combout\);

-- Location: MLABCELL_X13_Y3_N42
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[3]~11_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\MEMORIA_DADOS|dado_out[3]~11_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[3]~11_combout\,
	dataf => \REG1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X12_Y3_N0
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|dado_out[3]~11_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) ) # ( !\ULA1|Add1~13_sumout\ & ( (\ULA1|Equal0~0_combout\ & 
-- (\MEMORIA_DADOS|dado_out[3]~11_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110111110000111111011111000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[3]~11_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: FF_X12_Y3_N41
\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

-- Location: LABCELL_X12_Y3_N39
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REG1|DOUT\(3) ) + ( (\MEMORIA_DADOS|dado_out[3]~11_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REG1|DOUT\(3) ) + ( (\MEMORIA_DADOS|dado_out[3]~11_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[3]~11_combout\,
	datad => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: FF_X12_Y3_N40
\REG1|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X13_Y3_N22
\MEMORIA_DADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~20_q\);

-- Location: MLABCELL_X13_Y3_N6
\MEMORIA_DADOS|ram~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~36_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (\MEMORIA_DADOS|ram~20_q\ & (((!\MEMORIA_INTRUCAO|memROM~0_combout\) # (\PC|DOUT\(0))) # (\PC|DOUT\(1)))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~1_combout\ & ( \MEMORIA_DADOS|ram~20_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000001110000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_DADOS|ALT_INV_ram~20_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_DADOS|ram~36_combout\);

-- Location: MLABCELL_X13_Y3_N3
\MEMORIA_DADOS|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[4]~12_combout\ = ( \MEMORIA_DADOS|ram~21_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~21_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~0_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~21_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~21_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~21_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[4]~12_combout\);

-- Location: LABCELL_X12_Y3_N42
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REG1|DOUT\(4) ) + ( (\MEMORIA_DADOS|dado_out[4]~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REG1|DOUT\(4) ) + ( (\MEMORIA_DADOS|dado_out[4]~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[4]~12_combout\,
	datad => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: MLABCELL_X13_Y3_N45
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[4]~12_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\MEMORIA_DADOS|dado_out[4]~12_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \REG1|ALT_INV_DOUT\(4),
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[4]~12_combout\,
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X12_Y3_N57
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ULA1|Add1~17_sumout\ & ( (!\ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|dado_out[4]~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) ) # ( !\ULA1|Add1~17_sumout\ & ( (\ULA1|Equal0~0_combout\ & 
-- (\MEMORIA_DADOS|dado_out[4]~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000011000111001100111111011100110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[4]~12_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: FF_X12_Y3_N43
\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[4]~4_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

-- Location: FF_X13_Y3_N4
\MEMORIA_DADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~21_q\);

-- Location: LABCELL_X12_Y3_N24
\MEMORIA_DADOS|ram~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~37_combout\ = ( \MEMORIA_INTRUCAO|memROM~0_combout\ & ( (\MEMORIA_DADOS|ram~21_q\ & (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # (\PC|DOUT\(1))) # (\PC|DOUT\(0)))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~0_combout\ & ( \MEMORIA_DADOS|ram~21_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~21_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_DADOS|ram~37_combout\);

-- Location: MLABCELL_X13_Y3_N18
\MEMORIA_DADOS|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[5]~13_combout\ = ( \MEMORIA_DADOS|ram~22_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~22_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~0_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~1_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~22_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~22_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~22_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[5]~13_combout\);

-- Location: LABCELL_X12_Y3_N45
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REG1|DOUT\(5) ) + ( (\MEMORIA_DADOS|dado_out[5]~13_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REG1|DOUT\(5) ) + ( (\MEMORIA_DADOS|dado_out[5]~13_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[5]~13_combout\,
	datad => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: MLABCELL_X13_Y3_N48
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( \REG1|DOUT\(5) ) + ( (!\MEMORIA_DADOS|dado_out[5]~13_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( \REG1|DOUT\(5) ) + ( (!\MEMORIA_DADOS|dado_out[5]~13_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010110000101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[5]~13_combout\,
	datad => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X12_Y3_N15
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( (!\ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|dado_out[5]~13_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) ) # ( !\ULA1|Add1~21_sumout\ & ( 
-- (\MEMORIA_DADOS|dado_out[5]~13_combout\ & (\ULA1|Equal0~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110111111111000011011111111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[5]~13_combout\,
	datad => \ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X12_Y3_N46
\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[5]~5_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

-- Location: FF_X13_Y3_N19
\MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~22_q\);

-- Location: LABCELL_X16_Y3_N48
\MEMORIA_DADOS|ram~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~38_combout\ = ( \MEMORIA_DADOS|ram~22_q\ & ( \MEMORIA_INTRUCAO|memROM~0_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~1_combout\) # (\PC|DOUT\(0))) # (\PC|DOUT\(1)) ) ) ) # ( \MEMORIA_DADOS|ram~22_q\ & ( !\MEMORIA_INTRUCAO|memROM~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \PC|ALT_INV_DOUT\(0),
	datae => \MEMORIA_DADOS|ALT_INV_ram~22_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_DADOS|ram~38_combout\);

-- Location: MLABCELL_X13_Y3_N24
\MEMORIA_DADOS|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[6]~14_combout\ = ( \MEMORIA_DADOS|ram~23_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~23_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~0_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~1_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~23_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~23_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~23_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[6]~14_combout\);

-- Location: LABCELL_X12_Y3_N48
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REG1|DOUT\(6) ) + ( (\MEMORIA_DADOS|dado_out[6]~14_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REG1|DOUT\(6) ) + ( (\MEMORIA_DADOS|dado_out[6]~14_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[6]~14_combout\,
	datad => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: MLABCELL_X13_Y3_N51
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( \REG1|DOUT\(6) ) + ( (!\MEMORIA_DADOS|dado_out[6]~14_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( \REG1|DOUT\(6) ) + ( (!\MEMORIA_DADOS|dado_out[6]~14_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010110000101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[6]~14_combout\,
	datad => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X12_Y3_N18
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|dado_out[6]~14_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) ) # ( !\ULA1|Add1~25_sumout\ & ( (\ULA1|Equal0~0_combout\ & 
-- (\MEMORIA_DADOS|dado_out[6]~14_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000011000111001100111111011100110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[6]~14_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: FF_X12_Y3_N49
\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

-- Location: FF_X13_Y3_N26
\MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~23_q\);

-- Location: LABCELL_X14_Y3_N24
\MEMORIA_DADOS|ram~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~39_combout\ = ( \PC|DOUT\(0) & ( \MEMORIA_DADOS|ram~23_q\ ) ) # ( !\PC|DOUT\(0) & ( (\MEMORIA_DADOS|ram~23_q\ & (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # (!\MEMORIA_INTRUCAO|memROM~0_combout\)) # (\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~23_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~39_combout\);

-- Location: MLABCELL_X13_Y3_N15
\MEMORIA_DADOS|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[7]~15_combout\ = ( \MEMORIA_DADOS|ram~24_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~24_q\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\PC|DOUT\(1)) # (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # 
-- (!\MEMORIA_INTRUCAO|memROM~0_combout\)) # (\PC|DOUT\(0))) ) ) ) # ( \MEMORIA_DADOS|ram~24_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) ) # ( !\MEMORIA_DADOS|ram~24_q\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~24_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|dado_out[7]~15_combout\);

-- Location: LABCELL_X12_Y3_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REG1|DOUT\(7) ) + ( (\MEMORIA_DADOS|dado_out[7]~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[7]~15_combout\,
	datad => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X13_Y3_N54
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( \REG1|DOUT\(7) ) + ( (!\MEMORIA_DADOS|dado_out[7]~15_combout\) # ((\MEMORIA_INTRUCAO|memROM~5_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \REG1|ALT_INV_DOUT\(7),
	dataf => \MEMORIA_DADOS|ALT_INV_dado_out[7]~15_combout\,
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

-- Location: LABCELL_X12_Y3_N6
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|dado_out[7]~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) ) # ( !\ULA1|Add1~29_sumout\ & ( (\ULA1|Equal0~0_combout\ & 
-- (\MEMORIA_DADOS|dado_out[7]~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000011000111001100111111011100110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[7]~15_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X12_Y3_N53
\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

-- Location: FF_X13_Y3_N16
\MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~24_q\);

-- Location: LABCELL_X14_Y3_N27
\MEMORIA_DADOS|ram~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~40_combout\ = ( \MEMORIA_DADOS|ram~24_q\ & ( ((!\MEMORIA_INTRUCAO|memROM~1_combout\) # ((!\MEMORIA_INTRUCAO|memROM~0_combout\) # (\PC|DOUT\(0)))) # (\PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~24_q\,
	combout => \MEMORIA_DADOS|ram~40_combout\);

-- Location: FF_X12_Y3_N52
\REG1|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \ULA1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N27
\MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~2_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & \MEMORIA_INTRUCAO|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \MEMORIA_INTRUCAO|memROM~2_combout\);

-- Location: LABCELL_X14_Y3_N12
\MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~4_combout\ = ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( \MEMORIA_INTRUCAO|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~4_combout\);

-- Location: FF_X14_Y3_N40
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X14_Y3_N49
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X14_Y3_N52
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N54
\SOMADOR|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \SOMADOR|Add0~10\,
	sumout => \SOMADOR|Add0~33_sumout\);

-- Location: FF_X14_Y3_N55
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMADOR|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: IOIBUF_X10_Y45_N52
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X1_Y39_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


