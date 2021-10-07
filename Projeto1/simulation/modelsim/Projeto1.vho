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

-- DATE "10/07/2021 09:21:16"

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

ENTITY 	Projeto1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	REG_A : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Projeto1;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Projeto1 IS
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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_REG_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~2\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~6\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~10\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~14\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~18\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~22\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~26\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \Saida_Dados[1]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Saida_Dados[0]~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Saida_Dados[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Saida_Dados[3]~4_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Saida_Dados[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~30\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~5_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Saida_Dados[4]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Saida_Dados[5]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \Saida_Dados[6]~7_combout\ : std_logic;
SIGNAL \Saida_Dados[6]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~q\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~q\ : std_logic;
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[6]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[1]~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
PC_OUT <= ww_PC_OUT;
REG_A <= ww_REG_A;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_Saida_Dados[6]~8_combout\ <= NOT \Saida_Dados[6]~8_combout\;
\ALT_INV_Saida_Dados[6]~7_combout\ <= NOT \Saida_Dados[6]~7_combout\;
\ALT_INV_Saida_Dados[5]~6_combout\ <= NOT \Saida_Dados[5]~6_combout\;
\ALT_INV_Saida_Dados[4]~5_combout\ <= NOT \Saida_Dados[4]~5_combout\;
\ALT_INV_Saida_Dados[3]~4_combout\ <= NOT \Saida_Dados[3]~4_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_Saida_Dados[2]~3_combout\ <= NOT \Saida_Dados[2]~3_combout\;
\ALT_INV_Saida_Dados[1]~2_combout\ <= NOT \Saida_Dados[1]~2_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~9_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~8_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\;
\ALT_INV_Saida_Dados[0]~1_combout\ <= NOT \Saida_Dados[0]~1_combout\;
\ALT_INV_Saida_Dados[0]~0_combout\ <= NOT \Saida_Dados[0]~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~7_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~6_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~5_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~4_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~3_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~2_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~1_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~0_combout\;
\FF_LEDR9|ALT_INV_DOUT~q\ <= NOT \FF_LEDR9|DOUT~q\;
\FF_LEDR8|ALT_INV_DOUT~q\ <= NOT \FF_LEDR8|DOUT~q\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\REG_HEX5|ALT_INV_DOUT\(1) <= NOT \REG_HEX5|DOUT\(1);
\REG_HEX5|ALT_INV_DOUT\(2) <= NOT \REG_HEX5|DOUT\(2);
\REG_HEX5|ALT_INV_DOUT\(3) <= NOT \REG_HEX5|DOUT\(3);
\REG_HEX5|ALT_INV_DOUT\(0) <= NOT \REG_HEX5|DOUT\(0);
\REG_HEX4|ALT_INV_DOUT\(1) <= NOT \REG_HEX4|DOUT\(1);
\REG_HEX4|ALT_INV_DOUT\(2) <= NOT \REG_HEX4|DOUT\(2);
\REG_HEX4|ALT_INV_DOUT\(3) <= NOT \REG_HEX4|DOUT\(3);
\REG_HEX4|ALT_INV_DOUT\(0) <= NOT \REG_HEX4|DOUT\(0);
\REG_HEX3|ALT_INV_DOUT\(1) <= NOT \REG_HEX3|DOUT\(1);
\REG_HEX3|ALT_INV_DOUT\(2) <= NOT \REG_HEX3|DOUT\(2);
\REG_HEX3|ALT_INV_DOUT\(3) <= NOT \REG_HEX3|DOUT\(3);
\REG_HEX3|ALT_INV_DOUT\(0) <= NOT \REG_HEX3|DOUT\(0);
\REG_HEX2|ALT_INV_DOUT\(1) <= NOT \REG_HEX2|DOUT\(1);
\REG_HEX2|ALT_INV_DOUT\(2) <= NOT \REG_HEX2|DOUT\(2);
\REG_HEX2|ALT_INV_DOUT\(3) <= NOT \REG_HEX2|DOUT\(3);
\REG_HEX2|ALT_INV_DOUT\(0) <= NOT \REG_HEX2|DOUT\(0);
\REG_HEX1|ALT_INV_DOUT\(1) <= NOT \REG_HEX1|DOUT\(1);
\REG_HEX1|ALT_INV_DOUT\(2) <= NOT \REG_HEX1|DOUT\(2);
\REG_HEX1|ALT_INV_DOUT\(3) <= NOT \REG_HEX1|DOUT\(3);
\REG_HEX1|ALT_INV_DOUT\(0) <= NOT \REG_HEX1|DOUT\(0);
\REG_HEX0|ALT_INV_DOUT\(1) <= NOT \REG_HEX0|DOUT\(1);
\REG_HEX0|ALT_INV_DOUT\(2) <= NOT \REG_HEX0|DOUT\(2);
\REG_HEX0|ALT_INV_DOUT\(3) <= NOT \REG_HEX0|DOUT\(3);
\REG_HEX0|ALT_INV_DOUT\(0) <= NOT \REG_HEX0|DOUT\(0);
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~33_sumout\ <= NOT \CPU|SOMADOR|Add0~33_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~21_sumout\ <= NOT \CPU|SOMADOR|Add0~21_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~17_sumout\ <= NOT \CPU|SOMADOR|Add0~17_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~9_sumout\ <= NOT \CPU|SOMADOR|Add0~9_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~5_sumout\ <= NOT \CPU|SOMADOR|Add0~5_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~1_sumout\ <= NOT \CPU|SOMADOR|Add0~1_sumout\;
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);

-- Location: IOOBUF_X46_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X52_Y0_N19
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X40_Y0_N42
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X44_Y0_N53
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N76
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X48_Y0_N76
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X54_Y14_N79
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X50_Y0_N53
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X50_Y0_N2
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X54_Y16_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X54_Y16_N5
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X54_Y16_N22
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X54_Y16_N56
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X50_Y0_N19
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X51_Y0_N53
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X54_Y15_N56
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X50_Y0_N36
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X44_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X54_Y15_N22
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X43_Y0_N53
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X46_Y0_N53
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X51_Y0_N36
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X54_Y14_N62
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X46_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X54_Y20_N56
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X54_Y20_N22
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X36_Y0_N2
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X54_Y17_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y20_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X43_Y0_N2
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X52_Y45_N19
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X54_Y19_N5
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X0_Y19_N39
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X54_Y17_N56
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X54_Y21_N56
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X54_Y20_N39
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X54_Y21_N5
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X54_Y20_N5
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X54_Y19_N39
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X54_Y21_N39
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X54_Y15_N5
\REG_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(0),
	devoe => ww_devoe,
	o => ww_REG_A(0));

-- Location: IOOBUF_X54_Y17_N5
\REG_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(1),
	devoe => ww_devoe,
	o => ww_REG_A(1));

-- Location: IOOBUF_X54_Y17_N39
\REG_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(2),
	devoe => ww_devoe,
	o => ww_REG_A(2));

-- Location: IOOBUF_X54_Y15_N39
\REG_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(3),
	devoe => ww_devoe,
	o => ww_REG_A(3));

-- Location: IOOBUF_X54_Y18_N96
\REG_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(4),
	devoe => ww_devoe,
	o => ww_REG_A(4));

-- Location: IOOBUF_X54_Y18_N45
\REG_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(5),
	devoe => ww_devoe,
	o => ww_REG_A(5));

-- Location: IOOBUF_X52_Y45_N2
\REG_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(6),
	devoe => ww_devoe,
	o => ww_REG_A(6));

-- Location: IOOBUF_X54_Y18_N79
\REG_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(7),
	devoe => ww_devoe,
	o => ww_REG_A(7));

-- Location: IOOBUF_X11_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X34_Y0_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X38_Y45_N36
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X20_Y45_N53
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X10_Y45_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X10_Y45_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X42_Y45_N19
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LEDR8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X54_Y21_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LEDR9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

-- Location: FF_X52_Y19_N13
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X53_Y19_N30
\CPU|SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|SOMADOR|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|SOMADOR|Add0~1_sumout\,
	cout => \CPU|SOMADOR|Add0~2\);

-- Location: LABCELL_X53_Y19_N33
\CPU|SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|SOMADOR|Add0~2\ ))
-- \CPU|SOMADOR|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|SOMADOR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|SOMADOR|Add0~2\,
	sumout => \CPU|SOMADOR|Add0~5_sumout\,
	cout => \CPU|SOMADOR|Add0~6\);

-- Location: LABCELL_X53_Y19_N36
\CPU|SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~6\ ))
-- \CPU|SOMADOR|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|SOMADOR|Add0~6\,
	sumout => \CPU|SOMADOR|Add0~9_sumout\,
	cout => \CPU|SOMADOR|Add0~10\);

-- Location: LABCELL_X52_Y19_N3
\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|SOMADOR|Add0~9_sumout\ & ((!\MEMORIA_INTRUCAO|memROM~6_combout\) # ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ( \CPU|SOMADOR|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~9_sumout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

-- Location: FF_X52_Y19_N5
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y19_N39
\CPU|SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOMADOR|Add0~10\ ))
-- \CPU|SOMADOR|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|SOMADOR|Add0~10\,
	sumout => \CPU|SOMADOR|Add0~13_sumout\,
	cout => \CPU|SOMADOR|Add0~14\);

-- Location: FF_X52_Y19_N29
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|SOMADOR|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X53_Y19_N42
\CPU|SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|SOMADOR|Add0~14\ ))
-- \CPU|SOMADOR|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|SOMADOR|Add0~14\,
	sumout => \CPU|SOMADOR|Add0~17_sumout\,
	cout => \CPU|SOMADOR|Add0~18\);

-- Location: LABCELL_X53_Y19_N24
\CPU|MUX2|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~3_combout\ = ( \CPU|SOMADOR|Add0~17_sumout\ & ( (!\MEMORIA_INTRUCAO|memROM~5_combout\) # (((!\MEMORIA_INTRUCAO|memROM~6_combout\) # (!\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|SOMADOR|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~3_combout\);

-- Location: FF_X52_Y19_N59
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[4]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X53_Y19_N45
\CPU|SOMADOR|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|SOMADOR|Add0~18\ ))
-- \CPU|SOMADOR|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|SOMADOR|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|SOMADOR|Add0~18\,
	sumout => \CPU|SOMADOR|Add0~21_sumout\,
	cout => \CPU|SOMADOR|Add0~22\);

-- Location: LABCELL_X52_Y19_N0
\CPU|MUX2|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~4_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|SOMADOR|Add0~21_sumout\ & ((!\MEMORIA_INTRUCAO|memROM~6_combout\) # ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ( \CPU|SOMADOR|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~21_sumout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX2|saida_MUX[5]~4_combout\);

-- Location: FF_X52_Y19_N2
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X53_Y19_N48
\CPU|SOMADOR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|SOMADOR|Add0~22\ ))
-- \CPU|SOMADOR|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|SOMADOR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|SOMADOR|Add0~22\,
	sumout => \CPU|SOMADOR|Add0~25_sumout\,
	cout => \CPU|SOMADOR|Add0~26\);

-- Location: FF_X52_Y19_N17
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|SOMADOR|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X53_Y19_N51
\CPU|SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|SOMADOR|Add0~26\ ))
-- \CPU|SOMADOR|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|SOMADOR|Add0~26\,
	sumout => \CPU|SOMADOR|Add0~29_sumout\,
	cout => \CPU|SOMADOR|Add0~30\);

-- Location: FF_X53_Y19_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X52_Y19_N6
\MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~5_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~5_combout\);

-- Location: LABCELL_X53_Y19_N27
\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|SOMADOR|Add0~5_sumout\ & ( (!\MEMORIA_INTRUCAO|memROM~5_combout\) # (((!\MEMORIA_INTRUCAO|memROM~6_combout\) # (!\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|SOMADOR|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

-- Location: FF_X52_Y19_N26
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X53_Y19_N21
\MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~6_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~6_combout\);

-- Location: LABCELL_X52_Y19_N12
\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|SOMADOR|Add0~1_sumout\ & ((!\MEMORIA_INTRUCAO|memROM~6_combout\) # ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- \CPU|SOMADOR|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001100110011001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \CPU|SOMADOR|ALT_INV_Add0~1_sumout\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

-- Location: FF_X52_Y19_N14
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y18_N48
\MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~7_combout\ = ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~7_combout\);

-- Location: IOIBUF_X0_Y19_N55
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X52_Y19_N51
\MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~0_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3))) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010110101111000010101010111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \MEMORIA_INTRUCAO|memROM~0_combout\);

-- Location: LABCELL_X52_Y19_N48
\MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~3_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~3_combout\);

-- Location: LABCELL_X52_Y19_N42
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~0_combout\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\MEMORIA_INTRUCAO|memROM~3_combout\ & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \comb~0_combout\);

-- Location: IOIBUF_X48_Y0_N92
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X52_Y19_N30
\MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~1_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011010010100000101101001010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~1_combout\);

-- Location: LABCELL_X52_Y19_N18
\MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~4_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~4_combout\);

-- Location: LABCELL_X52_Y19_N15
\MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~9_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( \MEMORIA_INTRUCAO|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~9_combout\);

-- Location: LABCELL_X52_Y19_N33
\MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~2_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000101111100000000010110100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \MEMORIA_INTRUCAO|memROM~2_combout\);

-- Location: LABCELL_X52_Y19_N57
\MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~8_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~8_combout\);

-- Location: LABCELL_X52_Y19_N36
\Saida_Dados[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[1]~2_combout\ = ( !\MEMORIA_INTRUCAO|memROM~8_combout\ & ( (\comb~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~9_combout\ & ((\SW[1]~input_o\))) # (\MEMORIA_INTRUCAO|memROM~9_combout\ & (\SW[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000110001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \Saida_Dados[1]~2_combout\);

-- Location: IOIBUF_X52_Y45_N52
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X52_Y19_N54
\Saida_Dados[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\MEMORIA_INTRUCAO|memROM~0_combout\ & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \Saida_Dados[0]~0_combout\);

-- Location: LABCELL_X52_Y19_N39
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_INTRUCAO|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X52_Y19_N9
\Saida_Dados[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~1_combout\ = ( !\comb~1_combout\ & ( (!\SW[8]~input_o\ & (\SW[0]~input_o\ & (\comb~0_combout\))) # (\SW[8]~input_o\ & (((\SW[0]~input_o\ & \comb~0_combout\)) # (\Saida_Dados[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ALT_INV_Saida_Dados[0]~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \Saida_Dados[0]~1_combout\);

-- Location: LABCELL_X53_Y18_N30
\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

-- Location: LABCELL_X53_Y18_N33
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( !\Saida_Dados[0]~1_combout\ ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( !\Saida_Dados[0]~1_combout\ ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \ALT_INV_Saida_Dados[0]~1_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X52_Y18_N24
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\MEMORIA_INTRUCAO|memROM~7_combout\) # (\Saida_Dados[0]~1_combout\) ) ) # ( !\CPU|ULA1|Add1~1_sumout\ & ( (\MEMORIA_INTRUCAO|memROM~7_combout\ & \Saida_Dados[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \ALT_INV_Saida_Dados[0]~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X52_Y18_N21
\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\);

-- Location: FF_X52_Y18_N26
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: LABCELL_X53_Y18_N36
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( !\Saida_Dados[1]~2_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( !\Saida_Dados[1]~2_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT\(1),
	datac => \ALT_INV_Saida_Dados[1]~2_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: LABCELL_X53_Y18_N9
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\MEMORIA_INTRUCAO|memROM~7_combout\) # (\Saida_Dados[1]~2_combout\) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( (\MEMORIA_INTRUCAO|memROM~7_combout\ & \Saida_Dados[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \ALT_INV_Saida_Dados[1]~2_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X53_Y18_N11
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~1_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: LABCELL_X52_Y18_N33
\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \comb~9_combout\);

-- Location: FF_X52_Y16_N23
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: FF_X52_Y16_N2
\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: IOIBUF_X0_Y18_N95
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X52_Y19_N45
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\comb~1_combout\ & ( \comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \comb~2_combout\);

-- Location: IOIBUF_X52_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X52_Y19_N21
\Saida_Dados[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[3]~4_combout\ = ( !\MEMORIA_INTRUCAO|memROM~9_combout\ & ( (\Saida_Dados[0]~0_combout\ & (\KEY[1]~input_o\ & \MEMORIA_INTRUCAO|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Saida_Dados[0]~0_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \Saida_Dados[3]~4_combout\);

-- Location: IOIBUF_X54_Y14_N44
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X53_Y18_N24
\Saida_Dados[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[2]~3_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( (\KEY[0]~input_o\ & (!\MEMORIA_INTRUCAO|memROM~9_combout\ & \comb~0_combout\)) ) ) # ( !\MEMORIA_INTRUCAO|memROM~8_combout\ & ( (\SW[2]~input_o\ & (!\MEMORIA_INTRUCAO|memROM~9_combout\ 
-- & \comb~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \Saida_Dados[2]~3_combout\);

-- Location: LABCELL_X53_Y18_N39
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\Saida_Dados[2]~3_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\Saida_Dados[2]~3_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Saida_Dados[2]~3_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X53_Y18_N6
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \Saida_Dados[2]~3_combout\ & ( (\CPU|ULA1|Add1~9_sumout\) # (\MEMORIA_INTRUCAO|memROM~7_combout\) ) ) # ( !\Saida_Dados[2]~3_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~7_combout\ & \CPU|ULA1|Add1~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_Saida_Dados[2]~3_combout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X53_Y18_N8
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~2_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: LABCELL_X53_Y18_N42
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\Saida_Dados[3]~4_combout\ & ((!\SW[3]~input_o\) # (!\comb~2_combout\))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\Saida_Dados[3]~4_combout\ & ((!\SW[3]~input_o\) # (!\comb~2_combout\))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_Saida_Dados[3]~4_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X53_Y18_N18
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \comb~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|ULA1|Add1~13_sumout\)) # (\MEMORIA_INTRUCAO|memROM~7_combout\ & (((\Saida_Dados[3]~4_combout\) # (\SW[3]~input_o\)))) ) ) # ( !\comb~2_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|ULA1|Add1~13_sumout\)) # (\MEMORIA_INTRUCAO|memROM~7_combout\ & ((\Saida_Dados[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_Saida_Dados[3]~4_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X53_Y18_N20
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~3_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: FF_X52_Y16_N5
\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: FF_X52_Y16_N20
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: LABCELL_X52_Y16_N48
\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (\REG_HEX0|DOUT\(3)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) $ (\REG_HEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(1),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X52_Y16_N51
\DECOD_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(3)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( 
-- (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(1),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X53_Y16_N15
\DECOD_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X52_Y16_N0
\DECOD_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(0))) # (\REG_HEX0|DOUT\(1) & ((\REG_HEX0|DOUT\(0)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & 
-- (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(0))) # (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X52_Y16_N3
\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = (!\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(0))) # (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(3)))))) # (\REG_HEX0|DOUT\(1) & (((\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001000010011110000100001001111000010000100111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(2),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X52_Y16_N18
\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (((!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000010010001010100001001000101010000100100010101000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X52_Y16_N21
\DECOD_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(1))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) 
-- & !\REG_HEX0|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: FF_X52_Y19_N4
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X52_Y19_N24
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \comb~8_combout\);

-- Location: FF_X52_Y16_N59
\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: FF_X52_Y16_N17
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: FF_X52_Y16_N56
\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X52_Y16_N14
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: LABCELL_X52_Y16_N9
\DECOD_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[0]~0_combout\ = ( \REG_HEX1|DOUT\(1) & ( (\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(0))) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) $ (!\REG_HEX1|DOUT\(0)))) # 
-- (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X52_Y16_N24
\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(3)) # (\REG_HEX1|DOUT\(1)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(3)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( 
-- (\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X52_Y16_N27
\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(2) & ( (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X52_Y16_N54
\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & !\REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(1) & ((\REG_HEX1|DOUT\(0)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & 
-- (!\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(3) & !\REG_HEX1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X52_Y16_N57
\DECOD_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[4]~4_combout\ = (!\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(3)))))) # (\REG_HEX1|DOUT\(1) & (((\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001000001011110000100000101111000010000010111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X52_Y16_N15
\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (((!\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000010100010011000001010001001100000101000100110000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X52_Y16_N12
\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(3) & !\REG_HEX1|DOUT\(1))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(1))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(3) 
-- & !\REG_HEX1|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000100010010001000010001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X53_Y16_N33
\REG_HEX2|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[3]~feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \REG_HEX2|DOUT[3]~feeder_combout\);

-- Location: LABCELL_X52_Y18_N12
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \comb~7_combout\);

-- Location: FF_X53_Y16_N35
\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[3]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

-- Location: LABCELL_X53_Y16_N30
\REG_HEX2|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[0]~feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \REG_HEX2|DOUT[0]~feeder_combout\);

-- Location: FF_X53_Y16_N32
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[0]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: FF_X53_Y16_N20
\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

-- Location: FF_X53_Y16_N38
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

-- Location: LABCELL_X53_Y16_N21
\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(0)))) ) ) # ( !\REG_HEX2|DOUT\(2) & ( (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001100110010000000000100010000100011001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	datae => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X53_Y16_N24
\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = ( \REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ 
-- (!\REG_HEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X53_Y16_N27
\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(1),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X53_Y16_N12
\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(3) & !\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(2)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & 
-- (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X53_Y16_N45
\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = ( \REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(1) & (\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(2))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( ((!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X53_Y16_N0
\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & 
-- ((!\REG_HEX2|DOUT\(2)) # (\REG_HEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X53_Y16_N54
\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = ( \REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(1) & 
-- (\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X52_Y18_N45
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \comb~6_combout\);

-- Location: FF_X53_Y16_N50
\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: FF_X53_Y16_N8
\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: FF_X53_Y16_N11
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: FF_X53_Y16_N53
\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: LABCELL_X53_Y16_N3
\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(2))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( 
-- (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & \REG_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101000010101010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X53_Y16_N42
\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(0) & ((\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(1) $ 
-- (!\REG_HEX3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X53_Y16_N57
\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(0) & ( (\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(3) & \REG_HEX3|DOUT\(2))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(3) & 
-- ((\REG_HEX3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X53_Y16_N51
\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(1) & ((\REG_HEX3|DOUT\(2)))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & 
-- (!\REG_HEX3|DOUT\(3) & \REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000100010000101010100010001100010001000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	datae => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X53_Y16_N6
\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = (!\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(3)))))) # (\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(0) & ((!\REG_HEX3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101000000010111010100000001011101010000000101110101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X53_Y16_N9
\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (((!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010100011100000001010001110000000101000111000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X53_Y16_N39
\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = ( \REG_HEX3|DOUT\(2) & ( \REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(0)) ) ) ) # ( \REG_HEX3|DOUT\(2) & ( !\REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(0)) ) ) ) # ( 
-- !\REG_HEX3|DOUT\(2) & ( !\REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000101010100000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	datae => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X52_Y19_N27
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~4_combout\ & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \comb~5_combout\);

-- Location: FF_X52_Y16_N38
\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: FF_X52_Y16_N41
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: FF_X52_Y16_N44
\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: FF_X52_Y16_N8
\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: LABCELL_X52_Y16_N45
\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(0))))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100000100001010010000010000101001000001000010100100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X52_Y16_N30
\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(0) & ( (!\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(1))) # (\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(0) & ( (\REG_HEX4|DOUT\(2) & 
-- ((\REG_HEX4|DOUT\(1)) # (\REG_HEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X52_Y16_N33
\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT\(0) & ( (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(1))) ) ) # ( !\REG_HEX4|DOUT\(0) & ( (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(1))) # (\REG_HEX4|DOUT\(3) & 
-- (\REG_HEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X52_Y16_N42
\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = ( \REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(0))) # (\REG_HEX4|DOUT\(2) & ((\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & 
-- (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X52_Y16_N36
\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(1)) # (\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(0) & ((!\REG_HEX4|DOUT\(1)) # (!\REG_HEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X52_Y16_N39
\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = ( \REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(2)) # (\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X52_Y16_N6
\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(1))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(1))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(3) 
-- & !\REG_HEX4|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X52_Y18_N30
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & \MEMORIA_INTRUCAO|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \comb~4_combout\);

-- Location: FF_X52_Y18_N53
\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

-- Location: FF_X52_Y18_N17
\REG_HEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

-- Location: FF_X52_Y18_N56
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

-- Location: FF_X52_Y18_N44
\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

-- Location: LABCELL_X52_Y18_N6
\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2)))) # (\REG_HEX5|DOUT\(1) & (\REG_HEX5|DOUT\(3) & !\REG_HEX5|DOUT\(2))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( 
-- (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) & \REG_HEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X52_Y18_N0
\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(1))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(2) & ((\REG_HEX5|DOUT\(1)) 
-- # (\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X52_Y18_N3
\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = ( \REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(1) & (\REG_HEX5|DOUT\(3) & \REG_HEX5|DOUT\(2))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(3) & 
-- ((\REG_HEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X52_Y18_N18
\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) & !\REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(1) & ((\REG_HEX5|DOUT\(2)))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(3) & 
-- (!\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X52_Y18_N57
\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = ( !\REG_HEX5|DOUT\(2) & ( \REG_HEX5|DOUT\(3) & ( (!\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(0)) ) ) ) # ( \REG_HEX5|DOUT\(2) & ( !\REG_HEX5|DOUT\(3) & ( (!\REG_HEX5|DOUT\(1)) # (\REG_HEX5|DOUT\(0)) ) ) ) # ( 
-- !\REG_HEX5|DOUT\(2) & ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101011111010111100001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datae => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X52_Y18_N27
\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(3) & ((!\REG_HEX5|DOUT\(2)) # (\REG_HEX5|DOUT\(0)))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X52_Y18_N9
\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) $ (\REG_HEX5|DOUT\(2)))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001010001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: FF_X53_Y19_N52
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X53_Y20_N53
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X53_Y19_N54
\CPU|SOMADOR|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|SOMADOR|Add0~30\,
	sumout => \CPU|SOMADOR|Add0~33_sumout\);

-- Location: LABCELL_X53_Y20_N51
\CPU|MUX2|saida_MUX[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~5_combout\ = ( \CPU|SOMADOR|Add0~33_sumout\ & ( (!\CPU|PC|DOUT\(4)) # (((!\MEMORIA_INTRUCAO|memROM~5_combout\) # (!\MEMORIA_INTRUCAO|memROM~6_combout\)) # (\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \CPU|SOMADOR|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|saida_MUX[8]~5_combout\);

-- Location: FF_X53_Y20_N52
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: IOIBUF_X50_Y45_N1
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X52_Y45_N35
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X53_Y19_N12
\Saida_Dados[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[4]~5_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~9_combout\ & ( (\KEY[2]~input_o\ & \comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \Saida_Dados[4]~5_combout\);

-- Location: LABCELL_X53_Y18_N45
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\Saida_Dados[4]~5_combout\ & ((!\SW[4]~input_o\) # (!\comb~2_combout\))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\Saida_Dados[4]~5_combout\ & ((!\SW[4]~input_o\) # (!\comb~2_combout\))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_Saida_Dados[4]~5_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X53_Y18_N12
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \SW[4]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|ULA1|Add1~17_sumout\)) # (\MEMORIA_INTRUCAO|memROM~7_combout\ & (((\Saida_Dados[4]~5_combout\) # (\comb~2_combout\)))) ) ) # ( !\SW[4]~input_o\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|ULA1|Add1~17_sumout\)) # (\MEMORIA_INTRUCAO|memROM~7_combout\ & ((\Saida_Dados[4]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_Saida_Dados[4]~5_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X53_Y18_N14
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~4_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: IOIBUF_X0_Y19_N4
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X54_Y19_N21
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X53_Y19_N9
\Saida_Dados[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[5]~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~9_combout\ & ( (\KEY[3]~input_o\ & \Saida_Dados[0]~0_combout\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~8_combout\ & ( !\MEMORIA_INTRUCAO|memROM~9_combout\ & ( 
-- (\SW[5]~input_o\ & \comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ALT_INV_Saida_Dados[0]~0_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \Saida_Dados[5]~6_combout\);

-- Location: LABCELL_X53_Y18_N48
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( !\Saida_Dados[5]~6_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( !\Saida_Dados[5]~6_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT\(5),
	datad => \ALT_INV_Saida_Dados[5]~6_combout\,
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: LABCELL_X53_Y18_N15
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( \Saida_Dados[5]~6_combout\ ) ) # ( !\MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|ULA1|Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_Saida_Dados[5]~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X53_Y18_N17
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~5_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: IOIBUF_X52_Y0_N1
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X54_Y19_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: LABCELL_X53_Y19_N0
\Saida_Dados[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[6]~7_combout\ = ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( !\MEMORIA_INTRUCAO|memROM~1_combout\ & ( (\FPGA_RESET_N~input_o\ & (\MEMORIA_INTRUCAO|memROM~4_combout\ & (!\MEMORIA_INTRUCAO|memROM~0_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET_N~input_o\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \Saida_Dados[6]~7_combout\);

-- Location: LABCELL_X53_Y18_N0
\Saida_Dados[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[6]~8_combout\ = ( \comb~1_combout\ & ( \Saida_Dados[6]~7_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & \MEMORIA_INTRUCAO|memROM~7_combout\) ) ) ) # ( !\comb~1_combout\ & ( \Saida_Dados[6]~7_combout\ & ( (!\SW[6]~input_o\ & 
-- (((\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & \MEMORIA_INTRUCAO|memROM~7_combout\)))) # (\SW[6]~input_o\ & (((\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & \MEMORIA_INTRUCAO|memROM~7_combout\)) # (\comb~0_combout\))) ) ) ) # ( !\comb~1_combout\ & ( 
-- !\Saida_Dados[6]~7_combout\ & ( (\SW[6]~input_o\ & \comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000010001000111110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_Saida_Dados[6]~7_combout\,
	combout => \Saida_Dados[6]~8_combout\);

-- Location: LABCELL_X53_Y18_N51
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( !\Saida_Dados[6]~8_combout\ ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( !\Saida_Dados[6]~8_combout\ ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(6),
	datad => \ALT_INV_Saida_Dados[6]~8_combout\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X53_Y18_N27
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( \Saida_Dados[6]~8_combout\ ) ) # ( !\MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|ULA1|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_Saida_Dados[6]~8_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X53_Y18_N29
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~6_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: IOIBUF_X54_Y14_N95
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X53_Y18_N54
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( \CPU|REG1|DOUT\(7) ) + ( (!\SW[7]~input_o\) # ((!\MEMORIA_INTRUCAO|memROM~4_combout\ & \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\)) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100010101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X53_Y18_N21
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( \SW[7]~input_o\ ) ) # ( !\MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|ULA1|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X53_Y18_N23
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~7_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: LABCELL_X53_Y19_N18
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\CPU|PC|DOUT\(0) & !\MEMORIA_INTRUCAO|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X52_Y18_N36
\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \CPU|REG1|DOUT\(0) & ( ((\MEMORIA_INTRUCAO|memROM~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~1_combout\ & \comb~3_combout\))) # (\FF_LEDR8|DOUT~q\) ) ) # ( !\CPU|REG1|DOUT\(0) & ( (\FF_LEDR8|DOUT~q\ & 
-- ((!\MEMORIA_INTRUCAO|memROM~0_combout\) # ((!\comb~3_combout\) # (\MEMORIA_INTRUCAO|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \FF_LEDR8|ALT_INV_DOUT~q\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \FF_LEDR8|DOUT~0_combout\);

-- Location: FF_X52_Y18_N37
\FF_LEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FF_LEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR8|DOUT~q\);

-- Location: LABCELL_X52_Y18_N39
\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = ( \CPU|REG1|DOUT\(0) & ( ((!\MEMORIA_INTRUCAO|memROM~0_combout\ & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \comb~3_combout\))) # (\FF_LEDR9|DOUT~q\) ) ) # ( !\CPU|REG1|DOUT\(0) & ( (\FF_LEDR9|DOUT~q\ & 
-- (((!\MEMORIA_INTRUCAO|memROM~1_combout\) # (!\comb~3_combout\)) # (\MEMORIA_INTRUCAO|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \FF_LEDR9|ALT_INV_DOUT~q\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \FF_LEDR9|DOUT~0_combout\);

-- Location: FF_X52_Y18_N40
\FF_LEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FF_LEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR9|DOUT~q\);

-- Location: IOIBUF_X10_Y45_N35
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X12_Y30_N0
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


