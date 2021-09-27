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

-- DATE "09/27/2021 11:55:33"

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

ENTITY 	Aula7 IS
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
END Aula7;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PC_OUT[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula7 IS
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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~2\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~6\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~10\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~14\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~18\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~22\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~26\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~559_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~566_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~562_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~564_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~560_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~563_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~567_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~565_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~561_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~15_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~31feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~529_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~530_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~16_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~532_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~531_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~534_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~536_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~537_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|Equal0~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|Equal0~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|Equal0~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|Equal0~3_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|Equal0~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|Equal0~5_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|Equal0~6_combout\ : std_logic;
SIGNAL \REG_HEX5|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX5|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~30\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~545_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~547_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~553_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~554_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~556_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~555_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
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
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX2|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;

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
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\MEMORIA_DADOS|ALT_INV_ram~15_q\ <= NOT \MEMORIA_DADOS|ram~15_q\;
\MEMORIA_DADOS|ALT_INV_ram~23_q\ <= NOT \MEMORIA_DADOS|ram~23_q\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~12_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~11_combout\;
\DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\ <= NOT \DECODIFICADOR_3X8_0a2|Equal0~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~10_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~9_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~8_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~7_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~6_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~5_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~4_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~3_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~2_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~1_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~0_combout\;
\REG_HEX5|ALT_INV_DOUT\(2) <= NOT \REG_HEX5|DOUT\(2);
\REG_HEX5|ALT_INV_DOUT\(1) <= NOT \REG_HEX5|DOUT\(1);
\REG_HEX5|ALT_INV_DOUT\(3) <= NOT \REG_HEX5|DOUT\(3);
\REG_HEX5|ALT_INV_DOUT\(0) <= NOT \REG_HEX5|DOUT\(0);
\REG_HEX4|ALT_INV_DOUT\(2) <= NOT \REG_HEX4|DOUT\(2);
\REG_HEX4|ALT_INV_DOUT\(1) <= NOT \REG_HEX4|DOUT\(1);
\REG_HEX4|ALT_INV_DOUT\(3) <= NOT \REG_HEX4|DOUT\(3);
\REG_HEX4|ALT_INV_DOUT\(0) <= NOT \REG_HEX4|DOUT\(0);
\REG_HEX3|ALT_INV_DOUT\(2) <= NOT \REG_HEX3|DOUT\(2);
\REG_HEX3|ALT_INV_DOUT\(1) <= NOT \REG_HEX3|DOUT\(1);
\REG_HEX3|ALT_INV_DOUT\(3) <= NOT \REG_HEX3|DOUT\(3);
\REG_HEX3|ALT_INV_DOUT\(0) <= NOT \REG_HEX3|DOUT\(0);
\REG_HEX2|ALT_INV_DOUT\(2) <= NOT \REG_HEX2|DOUT\(2);
\REG_HEX2|ALT_INV_DOUT\(1) <= NOT \REG_HEX2|DOUT\(1);
\REG_HEX2|ALT_INV_DOUT\(3) <= NOT \REG_HEX2|DOUT\(3);
\REG_HEX2|ALT_INV_DOUT\(0) <= NOT \REG_HEX2|DOUT\(0);
\REG_HEX1|ALT_INV_DOUT\(2) <= NOT \REG_HEX1|DOUT\(2);
\REG_HEX1|ALT_INV_DOUT\(1) <= NOT \REG_HEX1|DOUT\(1);
\REG_HEX1|ALT_INV_DOUT\(3) <= NOT \REG_HEX1|DOUT\(3);
\REG_HEX1|ALT_INV_DOUT\(0) <= NOT \REG_HEX1|DOUT\(0);
\REG_HEX0|ALT_INV_DOUT\(2) <= NOT \REG_HEX0|DOUT\(2);
\REG_HEX0|ALT_INV_DOUT\(1) <= NOT \REG_HEX0|DOUT\(1);
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
\MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~16_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~15_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~14_combout\;
\MEMORIA_DADOS|ALT_INV_ram~559_combout\ <= NOT \MEMORIA_DADOS|ram~559_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~13_combout\;
\MEMORIA_DADOS|ALT_INV_ram~558_combout\ <= NOT \MEMORIA_DADOS|ram~558_combout\;
\MEMORIA_DADOS|ALT_INV_ram~557_combout\ <= NOT \MEMORIA_DADOS|ram~557_combout\;
\MEMORIA_DADOS|ALT_INV_ram~70_q\ <= NOT \MEMORIA_DADOS|ram~70_q\;
\MEMORIA_DADOS|ALT_INV_ram~54_q\ <= NOT \MEMORIA_DADOS|ram~54_q\;
\MEMORIA_DADOS|ALT_INV_ram~556_combout\ <= NOT \MEMORIA_DADOS|ram~556_combout\;
\MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \MEMORIA_DADOS|ram~38_q\;
\MEMORIA_DADOS|ALT_INV_ram~22_q\ <= NOT \MEMORIA_DADOS|ram~22_q\;
\MEMORIA_DADOS|ALT_INV_ram~555_combout\ <= NOT \MEMORIA_DADOS|ram~555_combout\;
\MEMORIA_DADOS|ALT_INV_ram~78_q\ <= NOT \MEMORIA_DADOS|ram~78_q\;
\MEMORIA_DADOS|ALT_INV_ram~62_q\ <= NOT \MEMORIA_DADOS|ram~62_q\;
\MEMORIA_DADOS|ALT_INV_ram~554_combout\ <= NOT \MEMORIA_DADOS|ram~554_combout\;
\MEMORIA_DADOS|ALT_INV_ram~46_q\ <= NOT \MEMORIA_DADOS|ram~46_q\;
\MEMORIA_DADOS|ALT_INV_ram~30_q\ <= NOT \MEMORIA_DADOS|ram~30_q\;
\MEMORIA_DADOS|ALT_INV_ram~553_combout\ <= NOT \MEMORIA_DADOS|ram~553_combout\;
\MEMORIA_DADOS|ALT_INV_ram~552_combout\ <= NOT \MEMORIA_DADOS|ram~552_combout\;
\MEMORIA_DADOS|ALT_INV_ram~69_q\ <= NOT \MEMORIA_DADOS|ram~69_q\;
\MEMORIA_DADOS|ALT_INV_ram~77_q\ <= NOT \MEMORIA_DADOS|ram~77_q\;
\MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \MEMORIA_DADOS|ram~37_q\;
\MEMORIA_DADOS|ALT_INV_ram~45_q\ <= NOT \MEMORIA_DADOS|ram~45_q\;
\MEMORIA_DADOS|ALT_INV_ram~551_combout\ <= NOT \MEMORIA_DADOS|ram~551_combout\;
\MEMORIA_DADOS|ALT_INV_ram~53_q\ <= NOT \MEMORIA_DADOS|ram~53_q\;
\MEMORIA_DADOS|ALT_INV_ram~61_q\ <= NOT \MEMORIA_DADOS|ram~61_q\;
\MEMORIA_DADOS|ALT_INV_ram~21_q\ <= NOT \MEMORIA_DADOS|ram~21_q\;
\MEMORIA_DADOS|ALT_INV_ram~29_q\ <= NOT \MEMORIA_DADOS|ram~29_q\;
\MEMORIA_DADOS|ALT_INV_ram~550_combout\ <= NOT \MEMORIA_DADOS|ram~550_combout\;
\MEMORIA_DADOS|ALT_INV_ram~549_combout\ <= NOT \MEMORIA_DADOS|ram~549_combout\;
\MEMORIA_DADOS|ALT_INV_ram~68_q\ <= NOT \MEMORIA_DADOS|ram~68_q\;
\MEMORIA_DADOS|ALT_INV_ram~52_q\ <= NOT \MEMORIA_DADOS|ram~52_q\;
\MEMORIA_DADOS|ALT_INV_ram~548_combout\ <= NOT \MEMORIA_DADOS|ram~548_combout\;
\MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \MEMORIA_DADOS|ram~36_q\;
\MEMORIA_DADOS|ALT_INV_ram~20_q\ <= NOT \MEMORIA_DADOS|ram~20_q\;
\MEMORIA_DADOS|ALT_INV_ram~547_combout\ <= NOT \MEMORIA_DADOS|ram~547_combout\;
\MEMORIA_DADOS|ALT_INV_ram~76_q\ <= NOT \MEMORIA_DADOS|ram~76_q\;
\MEMORIA_DADOS|ALT_INV_ram~60_q\ <= NOT \MEMORIA_DADOS|ram~60_q\;
\MEMORIA_DADOS|ALT_INV_ram~546_combout\ <= NOT \MEMORIA_DADOS|ram~546_combout\;
\MEMORIA_DADOS|ALT_INV_ram~44_q\ <= NOT \MEMORIA_DADOS|ram~44_q\;
\MEMORIA_DADOS|ALT_INV_ram~28_q\ <= NOT \MEMORIA_DADOS|ram~28_q\;
\MEMORIA_DADOS|ALT_INV_ram~545_combout\ <= NOT \MEMORIA_DADOS|ram~545_combout\;
\MEMORIA_DADOS|ALT_INV_ram~544_combout\ <= NOT \MEMORIA_DADOS|ram~544_combout\;
\MEMORIA_DADOS|ALT_INV_ram~67_q\ <= NOT \MEMORIA_DADOS|ram~67_q\;
\MEMORIA_DADOS|ALT_INV_ram~75_q\ <= NOT \MEMORIA_DADOS|ram~75_q\;
\MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \MEMORIA_DADOS|ram~35_q\;
\MEMORIA_DADOS|ALT_INV_ram~43_q\ <= NOT \MEMORIA_DADOS|ram~43_q\;
\MEMORIA_DADOS|ALT_INV_ram~543_combout\ <= NOT \MEMORIA_DADOS|ram~543_combout\;
\MEMORIA_DADOS|ALT_INV_ram~51_q\ <= NOT \MEMORIA_DADOS|ram~51_q\;
\MEMORIA_DADOS|ALT_INV_ram~59_q\ <= NOT \MEMORIA_DADOS|ram~59_q\;
\MEMORIA_DADOS|ALT_INV_ram~19_q\ <= NOT \MEMORIA_DADOS|ram~19_q\;
\MEMORIA_DADOS|ALT_INV_ram~27_q\ <= NOT \MEMORIA_DADOS|ram~27_q\;
\MEMORIA_DADOS|ALT_INV_ram~542_combout\ <= NOT \MEMORIA_DADOS|ram~542_combout\;
\MEMORIA_DADOS|ALT_INV_ram~541_combout\ <= NOT \MEMORIA_DADOS|ram~541_combout\;
\MEMORIA_DADOS|ALT_INV_ram~66_q\ <= NOT \MEMORIA_DADOS|ram~66_q\;
\MEMORIA_DADOS|ALT_INV_ram~50_q\ <= NOT \MEMORIA_DADOS|ram~50_q\;
\MEMORIA_DADOS|ALT_INV_ram~540_combout\ <= NOT \MEMORIA_DADOS|ram~540_combout\;
\MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \MEMORIA_DADOS|ram~34_q\;
\MEMORIA_DADOS|ALT_INV_ram~18_q\ <= NOT \MEMORIA_DADOS|ram~18_q\;
\MEMORIA_DADOS|ALT_INV_ram~539_combout\ <= NOT \MEMORIA_DADOS|ram~539_combout\;
\MEMORIA_DADOS|ALT_INV_ram~74_q\ <= NOT \MEMORIA_DADOS|ram~74_q\;
\MEMORIA_DADOS|ALT_INV_ram~58_q\ <= NOT \MEMORIA_DADOS|ram~58_q\;
\MEMORIA_DADOS|ALT_INV_ram~538_combout\ <= NOT \MEMORIA_DADOS|ram~538_combout\;
\MEMORIA_DADOS|ALT_INV_ram~42_q\ <= NOT \MEMORIA_DADOS|ram~42_q\;
\MEMORIA_DADOS|ALT_INV_ram~26_q\ <= NOT \MEMORIA_DADOS|ram~26_q\;
\MEMORIA_DADOS|ALT_INV_ram~537_combout\ <= NOT \MEMORIA_DADOS|ram~537_combout\;
\MEMORIA_DADOS|ALT_INV_ram~536_combout\ <= NOT \MEMORIA_DADOS|ram~536_combout\;
\MEMORIA_DADOS|ALT_INV_ram~65_q\ <= NOT \MEMORIA_DADOS|ram~65_q\;
\MEMORIA_DADOS|ALT_INV_ram~73_q\ <= NOT \MEMORIA_DADOS|ram~73_q\;
\MEMORIA_DADOS|ALT_INV_ram~33_q\ <= NOT \MEMORIA_DADOS|ram~33_q\;
\MEMORIA_DADOS|ALT_INV_ram~41_q\ <= NOT \MEMORIA_DADOS|ram~41_q\;
\MEMORIA_DADOS|ALT_INV_ram~535_combout\ <= NOT \MEMORIA_DADOS|ram~535_combout\;
\MEMORIA_DADOS|ALT_INV_ram~49_q\ <= NOT \MEMORIA_DADOS|ram~49_q\;
\MEMORIA_DADOS|ALT_INV_ram~57_q\ <= NOT \MEMORIA_DADOS|ram~57_q\;
\MEMORIA_DADOS|ALT_INV_ram~17_q\ <= NOT \MEMORIA_DADOS|ram~17_q\;
\MEMORIA_DADOS|ALT_INV_ram~25_q\ <= NOT \MEMORIA_DADOS|ram~25_q\;
\MEMORIA_DADOS|ALT_INV_ram~534_combout\ <= NOT \MEMORIA_DADOS|ram~534_combout\;
\MEMORIA_DADOS|ALT_INV_ram~533_combout\ <= NOT \MEMORIA_DADOS|ram~533_combout\;
\MEMORIA_DADOS|ALT_INV_ram~64_q\ <= NOT \MEMORIA_DADOS|ram~64_q\;
\MEMORIA_DADOS|ALT_INV_ram~48_q\ <= NOT \MEMORIA_DADOS|ram~48_q\;
\MEMORIA_DADOS|ALT_INV_ram~532_combout\ <= NOT \MEMORIA_DADOS|ram~532_combout\;
\MEMORIA_DADOS|ALT_INV_ram~32_q\ <= NOT \MEMORIA_DADOS|ram~32_q\;
\MEMORIA_DADOS|ALT_INV_ram~16_q\ <= NOT \MEMORIA_DADOS|ram~16_q\;
\MEMORIA_DADOS|ALT_INV_ram~531_combout\ <= NOT \MEMORIA_DADOS|ram~531_combout\;
\MEMORIA_DADOS|ALT_INV_ram~72_q\ <= NOT \MEMORIA_DADOS|ram~72_q\;
\MEMORIA_DADOS|ALT_INV_ram~56_q\ <= NOT \MEMORIA_DADOS|ram~56_q\;
\MEMORIA_DADOS|ALT_INV_ram~530_combout\ <= NOT \MEMORIA_DADOS|ram~530_combout\;
\MEMORIA_DADOS|ALT_INV_ram~40_q\ <= NOT \MEMORIA_DADOS|ram~40_q\;
\MEMORIA_DADOS|ALT_INV_ram~24_q\ <= NOT \MEMORIA_DADOS|ram~24_q\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~529_combout\ <= NOT \MEMORIA_DADOS|ram~529_combout\;
\MEMORIA_DADOS|ALT_INV_ram~528_combout\ <= NOT \MEMORIA_DADOS|ram~528_combout\;
\MEMORIA_DADOS|ALT_INV_ram~63_q\ <= NOT \MEMORIA_DADOS|ram~63_q\;
\MEMORIA_DADOS|ALT_INV_ram~71_q\ <= NOT \MEMORIA_DADOS|ram~71_q\;
\MEMORIA_DADOS|ALT_INV_ram~31_q\ <= NOT \MEMORIA_DADOS|ram~31_q\;
\MEMORIA_DADOS|ALT_INV_ram~39_q\ <= NOT \MEMORIA_DADOS|ram~39_q\;
\MEMORIA_DADOS|ALT_INV_ram~527_combout\ <= NOT \MEMORIA_DADOS|ram~527_combout\;
\MEMORIA_DADOS|ALT_INV_ram~47_q\ <= NOT \MEMORIA_DADOS|ram~47_q\;
\MEMORIA_DADOS|ALT_INV_ram~55_q\ <= NOT \MEMORIA_DADOS|ram~55_q\;
\REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REG_HEX4|DOUT[2]~DUPLICATE_q\;
\REG_HEX2|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REG_HEX2|DOUT[1]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[7]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[6]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[4]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[2]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X50_Y0_N19
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

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X44_Y0_N2
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

-- Location: IOOBUF_X54_Y14_N96
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X54_Y15_N22
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X44_Y45_N36
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X42_Y45_N36
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X54_Y15_N39
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X44_Y45_N19
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

-- Location: IOOBUF_X43_Y45_N36
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

-- Location: IOOBUF_X42_Y45_N2
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

-- Location: IOOBUF_X44_Y45_N2
\REG_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_A(4));

-- Location: IOOBUF_X43_Y45_N2
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

-- Location: IOOBUF_X54_Y14_N45
\REG_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_A(6));

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G1
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

-- Location: LABCELL_X43_Y4_N30
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

-- Location: LABCELL_X44_Y4_N48
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X43_Y4_N50
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X43_Y4_N33
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

-- Location: LABCELL_X43_Y4_N24
\MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~1_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~1_combout\);

-- Location: FF_X43_Y4_N41
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X43_Y4_N32
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~1_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~2_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X43_Y4_N35
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~5_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~4_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y4_N21
\MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~5_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~5_combout\);

-- Location: LABCELL_X43_Y4_N6
\MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~6_combout\);

-- Location: FF_X43_Y4_N38
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~9_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~6_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y4_N9
\MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~3_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~3_combout\);

-- Location: LABCELL_X43_Y4_N18
\MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~4_combout\ = ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~4_combout\);

-- Location: FF_X43_Y4_N34
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~5_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~4_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X43_Y4_N36
\CPU|SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|SOMADOR|Add0~6\ ))
-- \CPU|SOMADOR|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|SOMADOR|Add0~6\,
	sumout => \CPU|SOMADOR|Add0~9_sumout\,
	cout => \CPU|SOMADOR|Add0~10\);

-- Location: FF_X43_Y4_N37
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~9_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~6_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X43_Y4_N39
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

-- Location: FF_X43_Y4_N40
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X43_Y4_N42
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

-- Location: FF_X43_Y4_N44
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X43_Y4_N45
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

-- Location: LABCELL_X43_Y4_N15
\MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~7_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~7_combout\);

-- Location: LABCELL_X43_Y4_N12
\MEMORIA_INTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~12_combout\ = ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~12_combout\);

-- Location: FF_X43_Y4_N47
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~21_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~12_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X43_Y4_N48
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

-- Location: FF_X43_Y4_N49
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y5_N30
\MEMORIA_INTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~11_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~11_combout\);

-- Location: LABCELL_X43_Y5_N36
\MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~9_combout\ = ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~9_combout\);

-- Location: LABCELL_X43_Y4_N27
\MEMORIA_INTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~10_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (((\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110011001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~10_combout\);

-- Location: LABCELL_X43_Y5_N42
\CPU|DECODIFICADOR_INSTRUCAO|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MEMORIA_INTRUCAO|memROM~11_combout\ & \MEMORIA_INTRUCAO|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\);

-- Location: FF_X43_Y4_N52
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X43_Y4_N51
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

-- Location: FF_X43_Y4_N53
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y4_N3
\MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~0_combout\ = ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100001111110000110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~0_combout\);

-- Location: LABCELL_X43_Y4_N0
\MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~2_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~2_combout\);

-- Location: FF_X43_Y4_N31
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~1_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~2_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X44_Y4_N0
\MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~8_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \MEMORIA_INTRUCAO|memROM~8_combout\);

-- Location: LABCELL_X43_Y5_N3
\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MEMORIA_INTRUCAO|memROM~11_combout\ & !\MEMORIA_INTRUCAO|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\);

-- Location: LABCELL_X44_Y4_N30
\MEMORIA_DADOS|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~559_combout\ = ( !\MEMORIA_INTRUCAO|memROM~9_combout\ & ( !\CPU|PC|DOUT\(7) & ( (\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (!\MEMORIA_INTRUCAO|memROM~10_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~559_combout\);

-- Location: MLABCELL_X42_Y4_N24
\MEMORIA_DADOS|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~566_combout\ = ( \MEMORIA_DADOS|ram~559_combout\ & ( (\MEMORIA_INTRUCAO|memROM~4_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_INTRUCAO|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	combout => \MEMORIA_DADOS|ram~566_combout\);

-- Location: FF_X43_Y5_N8
\MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~74_q\);

-- Location: LABCELL_X44_Y4_N3
\MEMORIA_DADOS|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~562_combout\ = ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~559_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_INTRUCAO|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~562_combout\);

-- Location: FF_X43_Y5_N56
\MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~58_q\);

-- Location: LABCELL_X43_Y5_N21
\MEMORIA_DADOS|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~539_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~74_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~58_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~539_combout\);

-- Location: LABCELL_X44_Y4_N18
\MEMORIA_DADOS|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~564_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_DADOS|ram~559_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_INTRUCAO|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	combout => \MEMORIA_DADOS|ram~564_combout\);

-- Location: FF_X43_Y4_N19
\MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~42_q\);

-- Location: MLABCELL_X42_Y4_N39
\MEMORIA_DADOS|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~560_combout\ = ( \MEMORIA_DADOS|ram~559_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & !\MEMORIA_INTRUCAO|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	combout => \MEMORIA_DADOS|ram~560_combout\);

-- Location: FF_X43_Y4_N28
\MEMORIA_DADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~26_q\);

-- Location: LABCELL_X43_Y5_N51
\MEMORIA_DADOS|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~538_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~42_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~42_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~26_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~538_combout\);

-- Location: LABCELL_X44_Y4_N12
\MEMORIA_DADOS|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~563_combout\ = ( \MEMORIA_DADOS|ram~559_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~4_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_INTRUCAO|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	combout => \MEMORIA_DADOS|ram~563_combout\);

-- Location: FF_X42_Y5_N16
\MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~50_q\);

-- Location: MLABCELL_X42_Y4_N21
\MEMORIA_DADOS|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~567_combout\ = ( \MEMORIA_DADOS|ram~559_combout\ & ( (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_INTRUCAO|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	combout => \MEMORIA_DADOS|ram~567_combout\);

-- Location: FF_X43_Y5_N29
\MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~66_q\);

-- Location: LABCELL_X43_Y5_N27
\MEMORIA_DADOS|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~541_combout\ = ( \MEMORIA_DADOS|ram~66_q\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ ) ) ) # ( \MEMORIA_DADOS|ram~66_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~50_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~66_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~50_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~50_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~541_combout\);

-- Location: LABCELL_X44_Y4_N36
\MEMORIA_DADOS|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~565_combout\ = ( \MEMORIA_DADOS|ram~559_combout\ & ( (\MEMORIA_INTRUCAO|memROM~4_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	combout => \MEMORIA_DADOS|ram~565_combout\);

-- Location: FF_X42_Y5_N38
\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

-- Location: MLABCELL_X42_Y4_N54
\MEMORIA_DADOS|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~561_combout\ = ( \MEMORIA_DADOS|ram~559_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & !\MEMORIA_INTRUCAO|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	combout => \MEMORIA_DADOS|ram~561_combout\);

-- Location: FF_X42_Y5_N59
\MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~18_q\);

-- Location: MLABCELL_X42_Y5_N0
\MEMORIA_DADOS|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~540_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( \MEMORIA_DADOS|ram~34_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_DADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~18_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~540_combout\);

-- Location: LABCELL_X43_Y5_N12
\MEMORIA_DADOS|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~542_combout\ = ( \MEMORIA_DADOS|ram~541_combout\ & ( \MEMORIA_DADOS|ram~540_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\) # ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~538_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~539_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~541_combout\ & ( \MEMORIA_DADOS|ram~540_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~6_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~538_combout\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~539_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~541_combout\ & ( 
-- !\MEMORIA_DADOS|ram~540_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~6_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~538_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~539_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~541_combout\ & ( !\MEMORIA_DADOS|ram~540_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & 
-- ((\MEMORIA_DADOS|ram~538_combout\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~539_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~539_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~541_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~540_combout\,
	combout => \MEMORIA_DADOS|ram~542_combout\);

-- Location: LABCELL_X44_Y3_N24
\MEMORIA_INTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~15_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( \MEMORIA_INTRUCAO|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~15_combout\);

-- Location: FF_X42_Y4_N10
\MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~49_q\);

-- Location: FF_X42_Y4_N17
\MEMORIA_DADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~25_q\);

-- Location: FF_X42_Y4_N26
\MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~17_q\);

-- Location: LABCELL_X43_Y5_N45
\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ $ (!\MEMORIA_INTRUCAO|memROM~9_combout\))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MEMORIA_INTRUCAO|memROM~11_combout\ & !\MEMORIA_INTRUCAO|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

-- Location: LABCELL_X44_Y3_N15
\MEMORIA_INTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~14_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( \MEMORIA_INTRUCAO|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~14_combout\);

-- Location: LABCELL_X44_Y3_N39
\MEMORIA_INTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~13_combout\ = ( !\MEMORIA_INTRUCAO|memROM~1_combout\ & ( \MEMORIA_INTRUCAO|memROM~0_combout\ ) ) # ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\MEMORIA_INTRUCAO|memROM~0_combout\ ) ) # ( !\MEMORIA_INTRUCAO|memROM~1_combout\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~13_combout\);

-- Location: LABCELL_X43_Y3_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~529_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (!\MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~529_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (!\MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111110001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	dataf => \MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X43_Y3_N0
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

-- Location: LABCELL_X43_Y3_N3
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~529_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|PC|DOUT[7]~DUPLICATE_q\)) # (\MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~529_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|PC|DOUT[7]~DUPLICATE_q\)) # (\MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X44_Y3_N0
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\MEMORIA_DADOS|ram~529_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\)) ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \CPU|ULA1|Add1~1_sumout\ ) ) # ( \CPU|ULA1|Equal0~0_combout\ & ( !\CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- ((\MEMORIA_DADOS|ram~529_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110001101111111111111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X43_Y5_N0
\CPU|DECODIFICADOR_INSTRUCAO|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~11_combout\) # (!\MEMORIA_INTRUCAO|memROM~9_combout\)) # (\MEMORIA_INTRUCAO|memROM~8_combout\) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110111011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\);

-- Location: LABCELL_X43_Y5_N33
\CPU|DECODIFICADOR_INSTRUCAO|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & ((\MEMORIA_INTRUCAO|memROM~9_combout\) # (\MEMORIA_INTRUCAO|memROM~8_combout\))) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MEMORIA_INTRUCAO|memROM~11_combout\ & !\MEMORIA_INTRUCAO|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\);

-- Location: FF_X43_Y3_N32
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: FF_X42_Y4_N20
\MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~47_q\);

-- Location: FF_X44_Y4_N56
\MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~55_q\);

-- Location: FF_X42_Y4_N14
\MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~23_q\);

-- Location: FF_X42_Y4_N50
\MEMORIA_DADOS|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~15_q\);

-- Location: MLABCELL_X42_Y4_N48
\MEMORIA_DADOS|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~527_combout\ = ( \MEMORIA_DADOS|ram~15_q\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~47_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~55_q\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~15_q\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~47_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~55_q\))) ) ) ) # ( \MEMORIA_DADOS|ram~15_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~23_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~15_q\ & ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~23_q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~47_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~55_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~23_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~15_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \MEMORIA_DADOS|ram~527_combout\);

-- Location: FF_X42_Y3_N26
\MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~71_q\);

-- Location: LABCELL_X41_Y3_N33
\MEMORIA_DADOS|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~31feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~31feeder_combout\);

-- Location: FF_X41_Y3_N34
\MEMORIA_DADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~31feeder_combout\,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~31_q\);

-- Location: LABCELL_X41_Y3_N12
\MEMORIA_DADOS|ram~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~39feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~39feeder_combout\);

-- Location: FF_X41_Y3_N14
\MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~39feeder_combout\,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~39_q\);

-- Location: FF_X42_Y3_N14
\MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~63_q\);

-- Location: MLABCELL_X42_Y3_N12
\MEMORIA_DADOS|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~528_combout\ = ( \MEMORIA_DADOS|ram~63_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~39_q\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~71_q\)) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~63_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~39_q\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~71_q\)) ) ) ) # ( \MEMORIA_DADOS|ram~63_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~6_combout\) # (\MEMORIA_DADOS|ram~31_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~63_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~31_q\ & !\MEMORIA_INTRUCAO|memROM~6_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~71_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~31_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~39_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~63_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~528_combout\);

-- Location: MLABCELL_X42_Y3_N42
\MEMORIA_DADOS|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~529_combout\ = ( \MEMORIA_DADOS|ram~528_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~527_combout\) # (\MEMORIA_INTRUCAO|memROM~4_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~528_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~4_combout\ & (\MEMORIA_DADOS|ram~527_combout\ & !\MEMORIA_INTRUCAO|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~527_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~528_combout\,
	combout => \MEMORIA_DADOS|ram~529_combout\);

-- Location: LABCELL_X43_Y3_N6
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~534_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~14_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT[1]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~534_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~14_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT[1]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: LABCELL_X44_Y3_N6
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( ((!\CPU|ULA1|Equal0~0_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) # (\MEMORIA_DADOS|ram~534_combout\) ) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (\MEMORIA_DADOS|ram~534_combout\))) ) ) ) # ( \CPU|ULA1|Add1~5_sumout\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|ram~534_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( 
-- (\MEMORIA_DADOS|ram~534_combout\ & (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|ULA1|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111111110011000000000000001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X43_Y3_N34
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: LABCELL_X43_Y3_N33
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~534_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~14_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~534_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~14_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(1),
	dataf => \MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: FF_X43_Y3_N35
\CPU|REG1|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X43_Y4_N13
\MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~24_q\);

-- Location: FF_X43_Y4_N11
\MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~40_q\);

-- Location: LABCELL_X44_Y4_N39
\MEMORIA_DADOS|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~530_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~40_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) # ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~24_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~24_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~40_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~530_combout\);

-- Location: FF_X42_Y4_N28
\MEMORIA_DADOS|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~16_q\);

-- Location: FF_X43_Y3_N56
\MEMORIA_DADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~32_q\);

-- Location: LABCELL_X44_Y4_N9
\MEMORIA_DADOS|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~532_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~32_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~16_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~32_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~532_combout\);

-- Location: FF_X43_Y2_N37
\MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~72_q\);

-- Location: FF_X44_Y4_N29
\MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~56_q\);

-- Location: LABCELL_X44_Y4_N27
\MEMORIA_DADOS|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~531_combout\ = ( \MEMORIA_DADOS|ram~56_q\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~72_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~56_q\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( 
-- (\MEMORIA_DADOS|ram~72_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~56_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~56_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~531_combout\);

-- Location: FF_X44_Y4_N23
\MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~64_q\);

-- Location: FF_X44_Y4_N8
\MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~48_q\);

-- Location: LABCELL_X44_Y4_N15
\MEMORIA_DADOS|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~533_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~4_combout\ & ((\MEMORIA_DADOS|ram~48_q\))) # (\MEMORIA_INTRUCAO|memROM~4_combout\ & (\MEMORIA_DADOS|ram~64_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~64_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~48_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~533_combout\);

-- Location: LABCELL_X44_Y4_N42
\MEMORIA_DADOS|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~534_combout\ = ( \MEMORIA_DADOS|ram~531_combout\ & ( \MEMORIA_DADOS|ram~533_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~532_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\MEMORIA_DADOS|ram~530_combout\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~531_combout\ & ( \MEMORIA_DADOS|ram~533_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- ((\MEMORIA_DADOS|ram~532_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~530_combout\)))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~531_combout\ & ( 
-- !\MEMORIA_DADOS|ram~533_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~532_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~530_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~6_combout\ & (((\MEMORIA_INTRUCAO|memROM~2_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~531_combout\ & ( !\MEMORIA_DADOS|ram~533_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- ((\MEMORIA_DADOS|ram~532_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~530_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~530_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~532_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~531_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	combout => \MEMORIA_DADOS|ram~534_combout\);

-- Location: LABCELL_X43_Y3_N9
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~537_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~15_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~537_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~15_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: MLABCELL_X42_Y3_N18
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\CPU|ULA1|Equal0~0_combout\) # (\MEMORIA_DADOS|ram~537_combout\)) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((\MEMORIA_DADOS|ram~537_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\))) ) ) ) # ( \CPU|ULA1|Add1~9_sumout\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~537_combout\)) ) ) ) # ( !\CPU|ULA1|Add1~9_sumout\ & ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( 
-- (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_DADOS|ram~537_combout\ & \CPU|ULA1|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010111100101111001000000111000001111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X43_Y3_N38
\CPU|REG1|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X43_Y2_N29
\MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~57_q\);

-- Location: MLABCELL_X42_Y4_N6
\MEMORIA_DADOS|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~535_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_DADOS|ram~57_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( 
-- \MEMORIA_DADOS|ram~49_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_DADOS|ram~25_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( 
-- \MEMORIA_DADOS|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~49_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~25_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~17_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~57_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \MEMORIA_DADOS|ram~535_combout\);

-- Location: FF_X41_Y4_N26
\MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~41_q\);

-- Location: FF_X42_Y3_N11
\MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~73_q\);

-- Location: FF_X43_Y3_N28
\MEMORIA_DADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~33_q\);

-- Location: FF_X42_Y3_N50
\MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~65_q\);

-- Location: MLABCELL_X42_Y3_N48
\MEMORIA_DADOS|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~536_combout\ = ( \MEMORIA_DADOS|ram~65_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~41_q\)) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~73_q\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~65_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~41_q\)) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~73_q\))) ) ) ) # ( \MEMORIA_DADOS|ram~65_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~33_q\) # (\MEMORIA_INTRUCAO|memROM~6_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~65_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_DADOS|ram~33_q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~41_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~33_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~65_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~536_combout\);

-- Location: MLABCELL_X42_Y3_N9
\MEMORIA_DADOS|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~537_combout\ = ( \MEMORIA_DADOS|ram~536_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~535_combout\) # (\MEMORIA_INTRUCAO|memROM~4_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~536_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & \MEMORIA_DADOS|ram~535_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~535_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~536_combout\,
	combout => \MEMORIA_DADOS|ram~537_combout\);

-- Location: LABCELL_X43_Y3_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~537_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~537_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(2),
	dataf => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: FF_X43_Y3_N37
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: LABCELL_X43_Y3_N39
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~542_combout\) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~542_combout\) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X43_Y3_N12
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\MEMORIA_DADOS|ram~542_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\MEMORIA_DADOS|ram~542_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X44_Y3_N45
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( \MEMORIA_DADOS|ram~542_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (!\CPU|ULA1|Equal0~0_combout\) ) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( \MEMORIA_DADOS|ram~542_combout\ & 
-- ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|ULA1|Equal0~0_combout\) ) ) ) # ( \CPU|ULA1|Add1~13_sumout\ & ( !\MEMORIA_DADOS|ram~542_combout\ & ( !\CPU|ULA1|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001010000010101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X43_Y3_N41
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: LABCELL_X44_Y4_N57
\DECODIFICADOR_3X8_0a2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_3X8_0a2|Equal0~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~9_combout\ & ( !\CPU|PC|DOUT\(7) & ( (\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \DECODIFICADOR_3X8_0a2|Equal0~0_combout\);

-- Location: MLABCELL_X42_Y2_N6
\DECODIFICADOR_3X8_0a2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_3X8_0a2|Equal0~1_combout\ = ( \DECODIFICADOR_3X8_0a2|Equal0~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & !\MEMORIA_INTRUCAO|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\,
	combout => \DECODIFICADOR_3X8_0a2|Equal0~1_combout\);

-- Location: FF_X42_Y2_N50
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: FF_X42_Y2_N44
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: FF_X42_Y2_N47
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: FF_X42_Y2_N53
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: MLABCELL_X42_Y2_N15
\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) $ (!\REG_HEX0|DOUT\(2)))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( 
-- (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N30
\DECOD_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(3))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(3)) 
-- # (\REG_HEX0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N12
\DECOD_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(0) & ( (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(3) & 
-- ((\REG_HEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N39
\DECOD_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(1) & ((\REG_HEX0|DOUT\(2)))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & 
-- (!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N36
\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3)) # ((!\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N42
\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(1)) # (\REG_HEX0|DOUT\(0))))) # (\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (!\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110001010000010011000101000001001100010100000100110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N45
\DECOD_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) $ (\REG_HEX0|DOUT\(2)))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y2_N9
\DECODIFICADOR_3X8_0a2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_3X8_0a2|Equal0~2_combout\ = ( \DECODIFICADOR_3X8_0a2|Equal0~0_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & !\MEMORIA_INTRUCAO|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\,
	combout => \DECODIFICADOR_3X8_0a2|Equal0~2_combout\);

-- Location: FF_X42_Y2_N8
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: FF_X42_Y2_N11
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X42_Y2_N35
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: FF_X42_Y2_N2
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: LABCELL_X43_Y2_N12
\DECOD_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[0]~0_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (\REG_HEX1|DOUT\(3)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N51
\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = (!\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(3))))) # (\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(2))) # (\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011000101000101001100010100010100110001010001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N15
\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N6
\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(3))) # (\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(0))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(0) 
-- & !\REG_HEX1|DOUT\(3))) # (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N33
\DECOD_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[4]~4_combout\ = ( \REG_HEX1|DOUT\(1) & ( (\REG_HEX1|DOUT\(0) & !\REG_HEX1|DOUT\(3)) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N0
\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = ( \REG_HEX1|DOUT\(0) & ( !\REG_HEX1|DOUT\(3) $ (((\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N9
\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = ( \REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(2))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(1) & 
-- (\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000110100001101000011010000100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y2_N51
\DECODIFICADOR_3X8_0a2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_3X8_0a2|Equal0~3_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & \DECODIFICADOR_3X8_0a2|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \DECODIFICADOR_3X8_0a2|Equal0~3_combout\);

-- Location: FF_X43_Y2_N53
\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

-- Location: FF_X43_Y2_N49
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

-- Location: LABCELL_X43_Y2_N30
\REG_HEX2|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \REG_HEX2|DOUT[2]~feeder_combout\);

-- Location: FF_X43_Y2_N32
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[2]~feeder_combout\,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

-- Location: FF_X43_Y2_N35
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: LABCELL_X43_Y2_N21
\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) $ (!\REG_HEX2|DOUT\(2)))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( 
-- (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y2_N39
\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(3))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(3) $ 
-- (!\REG_HEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000011110101010100000101000010100000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	datae => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N3
\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: FF_X43_Y2_N50
\REG_HEX2|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N45
\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT[1]~DUPLICATE_q\ & (!\REG_HEX2|DOUT\(2) $ (\REG_HEX2|DOUT\(0)))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT[1]~DUPLICATE_q\ & (!\REG_HEX2|DOUT\(2) $ 
-- (!\REG_HEX2|DOUT\(0)))) # (\REG_HEX2|DOUT[1]~DUPLICATE_q\ & (\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y2_N24
\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = ( \REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(3)) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(2) & (\REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010100000101000001010101111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	datae => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N54
\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT[1]~DUPLICATE_q\)) 
-- # (\REG_HEX2|DOUT\(0) & ((!\REG_HEX2|DOUT\(2)) # (\REG_HEX2|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N18
\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = ( \REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(0))) ) ) # ( !\REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(3) 
-- & !\REG_HEX2|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	dataf => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y4_N0
\DECODIFICADOR_3X8_0a2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_3X8_0a2|Equal0~4_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( \DECODIFICADOR_3X8_0a2|Equal0~0_combout\ & ( (\MEMORIA_INTRUCAO|memROM~4_combout\ & \MEMORIA_INTRUCAO|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\,
	combout => \DECODIFICADOR_3X8_0a2|Equal0~4_combout\);

-- Location: FF_X42_Y2_N26
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: FF_X42_Y2_N59
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: FF_X42_Y2_N29
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: FF_X42_Y2_N56
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: MLABCELL_X42_Y2_N3
\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) # (\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( 
-- (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101001010101000000001010000000001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	datae => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N18
\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(0) & ((\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ 
-- (!\REG_HEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N21
\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N54
\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(0))))) # (\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & 
-- ((\REG_HEX3|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010000011000110001000001100011000100000110001100010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N24
\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = (!\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(3)))))) # (\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(0) & ((!\REG_HEX3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101000000011101010100000001110101010000000111010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N27
\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(1))) # (\REG_HEX3|DOUT\(0) & 
-- ((!\REG_HEX3|DOUT\(2)) # (\REG_HEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N57
\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(2)))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y4_N30
\DECODIFICADOR_3X8_0a2|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_3X8_0a2|Equal0~5_combout\ = ( \DECODIFICADOR_3X8_0a2|Equal0~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & \MEMORIA_INTRUCAO|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\,
	combout => \DECODIFICADOR_3X8_0a2|Equal0~5_combout\);

-- Location: FF_X41_Y4_N49
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: FF_X41_Y4_N2
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: FF_X41_Y4_N47
\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: FF_X41_Y4_N44
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: LABCELL_X41_Y4_N6
\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: FF_X41_Y4_N50
\REG_HEX4|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N12
\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT[2]~DUPLICATE_q\)) # (\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT[2]~DUPLICATE_q\ & 
-- (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y4_N15
\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT[2]~DUPLICATE_q\ & ( (\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT[2]~DUPLICATE_q\ & ( (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & 
-- \REG_HEX4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y4_N54
\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) $ (\REG_HEX4|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT[2]~DUPLICATE_q\ & 
-- !\REG_HEX4|DOUT\(1))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT[2]~DUPLICATE_q\ $ (\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y4_N57
\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = ( \REG_HEX4|DOUT[2]~DUPLICATE_q\ & ( (!\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(1)) # (\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT[2]~DUPLICATE_q\ & ( (\REG_HEX4|DOUT\(0) & ((!\REG_HEX4|DOUT\(3)) # 
-- (!\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y4_N27
\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(1)))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (((\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000111010000010000011101000001000001110100000100000111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y4_N24
\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) & !\REG_HEX4|DOUT\(1))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(1)))) # (\REG_HEX4|DOUT\(2) & 
-- (\REG_HEX4|DOUT\(0) & \REG_HEX4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000011110011000000001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y4_N57
\DECODIFICADOR_3X8_0a2|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_3X8_0a2|Equal0~6_combout\ = ( \DECODIFICADOR_3X8_0a2|Equal0~0_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & \MEMORIA_INTRUCAO|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \DECODIFICADOR_3X8_0a2|ALT_INV_Equal0~0_combout\,
	combout => \DECODIFICADOR_3X8_0a2|Equal0~6_combout\);

-- Location: FF_X41_Y4_N38
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
	ena => \DECODIFICADOR_3X8_0a2|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

-- Location: LABCELL_X41_Y4_N30
\REG_HEX5|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX5|DOUT[0]~feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \REG_HEX5|DOUT[0]~feeder_combout\);

-- Location: FF_X41_Y4_N32
\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX5|DOUT[0]~feeder_combout\,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

-- Location: LABCELL_X41_Y4_N33
\REG_HEX5|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX5|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \REG_HEX5|DOUT[2]~feeder_combout\);

-- Location: FF_X41_Y4_N35
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX5|DOUT[2]~feeder_combout\,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

-- Location: FF_X41_Y4_N41
\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DECODIFICADOR_3X8_0a2|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

-- Location: LABCELL_X41_Y4_N18
\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(2))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(2)))) # 
-- (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(0) & \REG_HEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
	datab => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y4_N21
\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = ( \REG_HEX5|DOUT\(2) & ( (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(1)))) # (\REG_HEX5|DOUT\(3) & ((!\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(1)))) ) ) # ( !\REG_HEX5|DOUT\(2) & ( 
-- (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(0) & \REG_HEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101101011011010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
	datab => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	dataf => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y4_N9
\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(3))) # (\REG_HEX5|DOUT\(2) & ((\REG_HEX5|DOUT\(3)))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(2) & 
-- (!\REG_HEX5|DOUT\(0) & \REG_HEX5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y4_N51
\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = ( \REG_HEX5|DOUT\(3) & ( (\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(2) $ (\REG_HEX5|DOUT\(0)))) ) ) # ( !\REG_HEX5|DOUT\(3) & ( (!\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(0))) # (\REG_HEX5|DOUT\(2) 
-- & (!\REG_HEX5|DOUT\(1) $ (\REG_HEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001001000010010000101001001010010010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(2),
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y4_N36
\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(3)) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(0))) # (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y4_N39
\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = ( \REG_HEX5|DOUT\(2) & ( (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) $ (!\REG_HEX5|DOUT\(1)))) ) ) # ( !\REG_HEX5|DOUT\(2) & ( (!\REG_HEX5|DOUT\(3) & ((\REG_HEX5|DOUT\(1)) # (\REG_HEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
	datab => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	dataf => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y4_N3
\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = ( \REG_HEX5|DOUT\(3) & ( (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(0))) ) ) # ( !\REG_HEX5|DOUT\(3) & ( (!\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(1))) # (\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(1) 
-- & \REG_HEX5|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001010000000100000010001001100010010100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(2),
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y4_N54
\CPU|SOMADOR|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|SOMADOR|Add0~30\,
	sumout => \CPU|SOMADOR|Add0~33_sumout\);

-- Location: FF_X43_Y4_N55
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~33_sumout\,
	asdata => \MEMORIA_INTRUCAO|memROM~12_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X43_Y3_N15
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\MEMORIA_DADOS|ram~545_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\MEMORIA_DADOS|ram~545_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: MLABCELL_X42_Y3_N57
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((\MEMORIA_DADOS|ram~545_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) ) # ( !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & 
-- (\MEMORIA_DADOS|ram~545_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X43_Y3_N43
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: FF_X43_Y3_N58
\MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

-- Location: FF_X41_Y3_N2
\MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~43_q\);

-- Location: FF_X42_Y3_N8
\MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~75_q\);

-- Location: FF_X42_Y3_N32
\MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~67_q\);

-- Location: MLABCELL_X42_Y3_N30
\MEMORIA_DADOS|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~544_combout\ = ( \MEMORIA_DADOS|ram~67_q\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~75_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~67_q\ & ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~75_q\) ) ) ) # ( \MEMORIA_DADOS|ram~67_q\ & ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~35_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- ((\MEMORIA_DADOS|ram~43_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~67_q\ & ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~35_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~43_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~43_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~67_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \MEMORIA_DADOS|ram~544_combout\);

-- Location: FF_X42_Y4_N38
\MEMORIA_DADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~27_q\);

-- Location: FF_X42_Y4_N8
\MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~51_q\);

-- Location: FF_X44_Y4_N25
\MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~59_q\);

-- Location: FF_X42_Y4_N44
\MEMORIA_DADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~19_q\);

-- Location: MLABCELL_X42_Y4_N42
\MEMORIA_DADOS|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~543_combout\ = ( \MEMORIA_DADOS|ram~19_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~27_q\)) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~59_q\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~19_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~27_q\)) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~59_q\))) ) ) ) # ( \MEMORIA_DADOS|ram~19_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\) # (\MEMORIA_DADOS|ram~51_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~19_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~51_q\ & \MEMORIA_INTRUCAO|memROM~6_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~27_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~51_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~59_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~19_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~543_combout\);

-- Location: MLABCELL_X42_Y3_N6
\MEMORIA_DADOS|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~545_combout\ = ( \MEMORIA_DADOS|ram~543_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~4_combout\) # (\MEMORIA_DADOS|ram~544_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~543_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~4_combout\ & \MEMORIA_DADOS|ram~544_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~544_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	combout => \MEMORIA_DADOS|ram~545_combout\);

-- Location: LABCELL_X43_Y3_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~545_combout\) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~545_combout\) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: FF_X43_Y3_N44
\CPU|REG1|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N57
\MEMORIA_INTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~16_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( \MEMORIA_INTRUCAO|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~16_combout\);

-- Location: FF_X42_Y4_N23
\MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~52_q\);

-- Location: FF_X42_Y3_N22
\MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~68_q\);

-- Location: MLABCELL_X42_Y4_N33
\MEMORIA_DADOS|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~549_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~68_q\) ) ) # ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~52_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~52_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~68_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~549_combout\);

-- Location: FF_X42_Y4_N46
\MEMORIA_DADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~20_q\);

-- Location: FF_X41_Y3_N29
\MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~36_q\);

-- Location: LABCELL_X41_Y3_N27
\MEMORIA_DADOS|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~548_combout\ = ( \MEMORIA_DADOS|ram~36_q\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ ) ) ) # ( \MEMORIA_DADOS|ram~36_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~20_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~36_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~20_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~20_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~548_combout\);

-- Location: FF_X43_Y3_N19
\MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~60_q\);

-- Location: FF_X42_Y3_N56
\MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~76_q\);

-- Location: MLABCELL_X42_Y3_N54
\MEMORIA_DADOS|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~547_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~76_q\) ) ) # ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~60_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~60_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~76_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~547_combout\);

-- Location: FF_X42_Y4_N5
\MEMORIA_DADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~28_q\);

-- Location: FF_X41_Y3_N47
\MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~44_q\);

-- Location: LABCELL_X41_Y3_N45
\MEMORIA_DADOS|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~546_combout\ = ( \MEMORIA_DADOS|ram~44_q\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ ) ) ) # ( \MEMORIA_DADOS|ram~44_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~28_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~44_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~28_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~28_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~44_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~546_combout\);

-- Location: MLABCELL_X42_Y3_N27
\MEMORIA_DADOS|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~550_combout\ = ( \MEMORIA_DADOS|ram~547_combout\ & ( \MEMORIA_DADOS|ram~546_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~548_combout\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & 
-- (\MEMORIA_DADOS|ram~549_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~547_combout\ & ( \MEMORIA_DADOS|ram~546_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (((\MEMORIA_DADOS|ram~548_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~549_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~547_combout\ & ( !\MEMORIA_DADOS|ram~546_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~548_combout\)))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (((\MEMORIA_DADOS|ram~549_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~547_combout\ & ( !\MEMORIA_DADOS|ram~546_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~548_combout\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & 
-- (\MEMORIA_DADOS|ram~549_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~549_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~547_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~546_combout\,
	combout => \MEMORIA_DADOS|ram~550_combout\);

-- Location: LABCELL_X43_Y3_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~550_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~16_combout\ & 
-- (!\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~550_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~16_combout\ & 
-- (!\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110010001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|REG1|ALT_INV_DOUT\(5),
	dataf => \MEMORIA_DADOS|ALT_INV_ram~550_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X43_Y3_N18
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~550_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~16_combout\) # ((\CPU|PC|DOUT[7]~DUPLICATE_q\)))) ) + 
-- ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|ram~550_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~16_combout\) # ((\CPU|PC|DOUT[7]~DUPLICATE_q\)))) ) + ( 
-- \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~550_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: MLABCELL_X42_Y3_N39
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \MEMORIA_DADOS|ram~550_combout\ & ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (\MEMORIA_INTRUCAO|memROM~12_combout\)) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~550_combout\ & ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((\MEMORIA_INTRUCAO|memROM~12_combout\ & \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) ) ) # ( \MEMORIA_DADOS|ram~550_combout\ & ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~550_combout\ & ( !\CPU|ULA1|Add1~21_sumout\ & ( 
-- (\CPU|ULA1|Equal0~0_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010000010110101010101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~550_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X43_Y3_N46
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: LABCELL_X43_Y3_N21
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\MEMORIA_DADOS|ram~553_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\MEMORIA_DADOS|ram~553_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X43_Y3_N54
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~553_combout\)) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & 
-- (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~553_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X43_Y3_N50
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: FF_X43_Y3_N5
\MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~61_q\);

-- Location: FF_X42_Y4_N41
\MEMORIA_DADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~29_q\);

-- Location: FF_X42_Y4_N53
\MEMORIA_DADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~21_q\);

-- Location: FF_X42_Y3_N2
\MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~53_q\);

-- Location: MLABCELL_X42_Y3_N0
\MEMORIA_DADOS|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~551_combout\ = ( \MEMORIA_DADOS|ram~53_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~29_q\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~61_q\)) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~53_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~29_q\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~61_q\)) ) ) ) # ( \MEMORIA_DADOS|ram~53_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~21_q\) # (\MEMORIA_INTRUCAO|memROM~6_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~53_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_DADOS|ram~21_q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~61_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~29_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~21_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~53_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~551_combout\);

-- Location: FF_X42_Y3_N37
\MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~77_q\);

-- Location: FF_X41_Y3_N11
\MEMORIA_DADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~45_q\);

-- Location: FF_X41_Y3_N49
\MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

-- Location: FF_X41_Y3_N20
\MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~69_q\);

-- Location: LABCELL_X41_Y3_N18
\MEMORIA_DADOS|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~552_combout\ = ( \MEMORIA_DADOS|ram~69_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~45_q\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~77_q\)) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~69_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & ((\MEMORIA_DADOS|ram~45_q\))) # (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_DADOS|ram~77_q\)) ) ) ) # ( \MEMORIA_DADOS|ram~69_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~37_q\) # (\MEMORIA_INTRUCAO|memROM~6_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~69_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_DADOS|ram~37_q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~45_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~69_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~552_combout\);

-- Location: MLABCELL_X42_Y3_N45
\MEMORIA_DADOS|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~553_combout\ = ( \MEMORIA_DADOS|ram~552_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~551_combout\) # (\MEMORIA_INTRUCAO|memROM~4_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~552_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & \MEMORIA_DADOS|ram~551_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~551_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~552_combout\,
	combout => \MEMORIA_DADOS|ram~553_combout\);

-- Location: LABCELL_X43_Y3_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~553_combout\) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~553_combout\) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: FF_X43_Y3_N49
\CPU|REG1|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N24
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\MEMORIA_DADOS|ram~558_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT[7]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X43_Y3_N57
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~558_combout\)) ) ) # ( !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & 
-- (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~558_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X43_Y3_N53
\CPU|REG1|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X44_Y3_N32
\MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~46_q\);

-- Location: FF_X44_Y3_N50
\MEMORIA_DADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~30_q\);

-- Location: LABCELL_X44_Y3_N48
\MEMORIA_DADOS|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~554_combout\ = ( \MEMORIA_DADOS|ram~30_q\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (\MEMORIA_DADOS|ram~46_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~30_q\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( 
-- (\MEMORIA_DADOS|ram~46_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~30_q\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~46_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~30_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~554_combout\);

-- Location: LABCELL_X44_Y5_N36
\MEMORIA_DADOS|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~54feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~54feeder_combout\);

-- Location: FF_X44_Y5_N38
\MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~54feeder_combout\,
	ena => \MEMORIA_DADOS|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~54_q\);

-- Location: FF_X42_Y3_N16
\MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~70_q\);

-- Location: LABCELL_X44_Y3_N21
\MEMORIA_DADOS|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~557_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( \MEMORIA_DADOS|ram~70_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_DADOS|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~54_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~557_combout\);

-- Location: FF_X42_Y4_N55
\MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~22_q\);

-- Location: FF_X44_Y3_N56
\MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

-- Location: LABCELL_X44_Y3_N54
\MEMORIA_DADOS|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~556_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~38_q\) ) ) # ( !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- \MEMORIA_DADOS|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~22_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_DADOS|ram~556_combout\);

-- Location: LABCELL_X44_Y5_N12
\MEMORIA_DADOS|ram~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~62feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~62feeder_combout\);

-- Location: FF_X44_Y5_N14
\MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~62feeder_combout\,
	ena => \MEMORIA_DADOS|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~62_q\);

-- Location: FF_X44_Y5_N23
\MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~78_q\);

-- Location: LABCELL_X44_Y5_N21
\MEMORIA_DADOS|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~555_combout\ = ( \MEMORIA_DADOS|ram~78_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~4_combout\) # (\MEMORIA_DADOS|ram~62_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~78_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- (\MEMORIA_DADOS|ram~62_q\ & !\MEMORIA_INTRUCAO|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~62_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~78_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~555_combout\);

-- Location: LABCELL_X44_Y3_N33
\MEMORIA_DADOS|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~558_combout\ = ( \MEMORIA_DADOS|ram~556_combout\ & ( \MEMORIA_DADOS|ram~555_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~6_combout\) # (\MEMORIA_DADOS|ram~557_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~6_combout\)) # (\MEMORIA_DADOS|ram~554_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~556_combout\ & ( \MEMORIA_DADOS|ram~555_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_DADOS|ram~557_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~6_combout\)) # (\MEMORIA_DADOS|ram~554_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~556_combout\ & ( 
-- !\MEMORIA_DADOS|ram~555_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~6_combout\) # (\MEMORIA_DADOS|ram~557_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~554_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~6_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~556_combout\ & ( !\MEMORIA_DADOS|ram~555_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~6_combout\ & \MEMORIA_DADOS|ram~557_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~554_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~554_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~557_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~556_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~555_combout\,
	combout => \MEMORIA_DADOS|ram~558_combout\);

-- Location: LABCELL_X43_Y3_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REG1|DOUT\(7) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \MEMORIA_DADOS|ram~558_combout\) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: FF_X43_Y3_N52
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);
END structure;


