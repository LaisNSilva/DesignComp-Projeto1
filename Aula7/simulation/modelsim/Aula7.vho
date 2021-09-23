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

-- DATE "09/23/2021 18:20:35"

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
	FPGA_RESET : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Aula7;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
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
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~14\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~18\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~22\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~2\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~6\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~10\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~26\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|process_0~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|process_0~1_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~314_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~306feeder_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~306_q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~282_q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~274_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~540_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~298_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~290feeder_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~290_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~577_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~330_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~322feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~572_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~322_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~542_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~575_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~570_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~573_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~26_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~539_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~571_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~574_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~569_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~576_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~541_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~543_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~313_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~329_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~532_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~25_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~281_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~297_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~531_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~273_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~33_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~289feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~289_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~529_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~305_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~49feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~65feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~321_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~530_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~533_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~28_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~52feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~534_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~536_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~300feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~300_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~324_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~292_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~332_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~537_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~316_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~308_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~284_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~276_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~535_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~538_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~291_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~275_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~544_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~299_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~27_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~283_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~546_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~331_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~315_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~547_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~307_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~323_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~545_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~548_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX1|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX3|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX4|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~285_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~29_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~45feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~301feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~301_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~551_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~309_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~325_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~550_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~293_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~277_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~549_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~317_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~333_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~552_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~553_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~46feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~556_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~286_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~310_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~278_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~318_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~555_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~326_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~294_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~334_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~302feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~302_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~557_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~30_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~54feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~554_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~31feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~31_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~560_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~559_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~279_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~327_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~311_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~295_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~561_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~319_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~287_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~303_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~335_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~562_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~563_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~328_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~320_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~312_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~336_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~567_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~304_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~288_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~280_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~296_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~566_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~565_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~32_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~24feeder_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~564_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~568_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~q\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~q\ : std_logic;
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_LEDR0a7|DOUT\ : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET <= FPGA_RESET;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|MEMORIA_DADOS|ALT_INV_ram~542_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~542_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~330_q\ <= NOT \CPU|MEMORIA_DADOS|ram~330_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~322_q\ <= NOT \CPU|MEMORIA_DADOS|ram~322_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~298_q\ <= NOT \CPU|MEMORIA_DADOS|ram~298_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~290_q\ <= NOT \CPU|MEMORIA_DADOS|ram~290_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~541_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~541_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~74_q\ <= NOT \CPU|MEMORIA_DADOS|ram~74_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~66_q\ <= NOT \CPU|MEMORIA_DADOS|ram~66_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~42_q\ <= NOT \CPU|MEMORIA_DADOS|ram~42_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \CPU|MEMORIA_DADOS|ram~34_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~540_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~540_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~314_q\ <= NOT \CPU|MEMORIA_DADOS|ram~314_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~306_q\ <= NOT \CPU|MEMORIA_DADOS|ram~306_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~282_q\ <= NOT \CPU|MEMORIA_DADOS|ram~282_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~274_q\ <= NOT \CPU|MEMORIA_DADOS|ram~274_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~539_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~539_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~58_q\ <= NOT \CPU|MEMORIA_DADOS|ram~58_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~50_q\ <= NOT \CPU|MEMORIA_DADOS|ram~50_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~26_q\ <= NOT \CPU|MEMORIA_DADOS|ram~26_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~18_q\ <= NOT \CPU|MEMORIA_DADOS|ram~18_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~538_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~537_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~537_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~332_q\ <= NOT \CPU|MEMORIA_DADOS|ram~332_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~324_q\ <= NOT \CPU|MEMORIA_DADOS|ram~324_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~300_q\ <= NOT \CPU|MEMORIA_DADOS|ram~300_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~292_q\ <= NOT \CPU|MEMORIA_DADOS|ram~292_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~536_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~536_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~76_q\ <= NOT \CPU|MEMORIA_DADOS|ram~76_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~68_q\ <= NOT \CPU|MEMORIA_DADOS|ram~68_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~44_q\ <= NOT \CPU|MEMORIA_DADOS|ram~44_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \CPU|MEMORIA_DADOS|ram~36_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~535_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~535_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~316_q\ <= NOT \CPU|MEMORIA_DADOS|ram~316_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~308_q\ <= NOT \CPU|MEMORIA_DADOS|ram~308_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~284_q\ <= NOT \CPU|MEMORIA_DADOS|ram~284_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~276_q\ <= NOT \CPU|MEMORIA_DADOS|ram~276_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~534_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~534_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~60_q\ <= NOT \CPU|MEMORIA_DADOS|ram~60_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~52_q\ <= NOT \CPU|MEMORIA_DADOS|ram~52_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~28_q\ <= NOT \CPU|MEMORIA_DADOS|ram~28_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~20_q\ <= NOT \CPU|MEMORIA_DADOS|ram~20_q\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~533_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~532_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~532_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~329_q\ <= NOT \CPU|MEMORIA_DADOS|ram~329_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~73_q\ <= NOT \CPU|MEMORIA_DADOS|ram~73_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~313_q\ <= NOT \CPU|MEMORIA_DADOS|ram~313_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~57_q\ <= NOT \CPU|MEMORIA_DADOS|ram~57_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~531_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~531_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~297_q\ <= NOT \CPU|MEMORIA_DADOS|ram~297_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~41_q\ <= NOT \CPU|MEMORIA_DADOS|ram~41_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~281_q\ <= NOT \CPU|MEMORIA_DADOS|ram~281_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~25_q\ <= NOT \CPU|MEMORIA_DADOS|ram~25_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~530_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~530_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~321_q\ <= NOT \CPU|MEMORIA_DADOS|ram~321_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~65_q\ <= NOT \CPU|MEMORIA_DADOS|ram~65_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~305_q\ <= NOT \CPU|MEMORIA_DADOS|ram~305_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~49_q\ <= NOT \CPU|MEMORIA_DADOS|ram~49_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~529_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~529_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~289_q\ <= NOT \CPU|MEMORIA_DADOS|ram~289_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~33_q\ <= NOT \CPU|MEMORIA_DADOS|ram~33_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~273_q\ <= NOT \CPU|MEMORIA_DADOS|ram~273_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~17_q\ <= NOT \CPU|MEMORIA_DADOS|ram~17_q\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\ <= NOT \CPU|MEMORIA_DADOS|process_0~1_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_process_0~0_combout\ <= NOT \CPU|MEMORIA_DADOS|process_0~0_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~12_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~11_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~10_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~9_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~8_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~7_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~6_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~5_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~4_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~3_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~2_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~1_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~0_combout\;
\FF_LEDR9|ALT_INV_DOUT~q\ <= NOT \FF_LEDR9|DOUT~q\;
\FF_LEDR8|ALT_INV_DOUT~q\ <= NOT \FF_LEDR8|DOUT~q\;
\REG_HEX5|ALT_INV_DOUT\(2) <= NOT \REG_HEX5|DOUT\(2);
\REG_HEX5|ALT_INV_DOUT\(1) <= NOT \REG_HEX5|DOUT\(1);
\REG_HEX5|ALT_INV_DOUT\(3) <= NOT \REG_HEX5|DOUT\(3);
\REG_HEX5|ALT_INV_DOUT\(0) <= NOT \REG_HEX5|DOUT\(0);
\REG_HEX4|ALT_INV_DOUT\(2) <= NOT \REG_HEX4|DOUT\(2);
\REG_HEX4|ALT_INV_DOUT\(1) <= NOT \REG_HEX4|DOUT\(1);
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~16_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~15_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~14_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~13_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~568_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~567_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~567_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~336_q\ <= NOT \CPU|MEMORIA_DADOS|ram~336_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~328_q\ <= NOT \CPU|MEMORIA_DADOS|ram~328_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~320_q\ <= NOT \CPU|MEMORIA_DADOS|ram~320_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~312_q\ <= NOT \CPU|MEMORIA_DADOS|ram~312_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~566_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~566_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~304_q\ <= NOT \CPU|MEMORIA_DADOS|ram~304_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~296_q\ <= NOT \CPU|MEMORIA_DADOS|ram~296_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~288_q\ <= NOT \CPU|MEMORIA_DADOS|ram~288_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~280_q\ <= NOT \CPU|MEMORIA_DADOS|ram~280_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~565_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~565_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~80_q\ <= NOT \CPU|MEMORIA_DADOS|ram~80_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~72_q\ <= NOT \CPU|MEMORIA_DADOS|ram~72_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~64_q\ <= NOT \CPU|MEMORIA_DADOS|ram~64_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~56_q\ <= NOT \CPU|MEMORIA_DADOS|ram~56_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~564_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~564_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~48_q\ <= NOT \CPU|MEMORIA_DADOS|ram~48_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~40_q\ <= NOT \CPU|MEMORIA_DADOS|ram~40_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~32_q\ <= NOT \CPU|MEMORIA_DADOS|ram~32_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~24_q\ <= NOT \CPU|MEMORIA_DADOS|ram~24_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~563_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~562_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~562_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~335_q\ <= NOT \CPU|MEMORIA_DADOS|ram~335_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~303_q\ <= NOT \CPU|MEMORIA_DADOS|ram~303_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~319_q\ <= NOT \CPU|MEMORIA_DADOS|ram~319_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~287_q\ <= NOT \CPU|MEMORIA_DADOS|ram~287_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~561_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~561_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~327_q\ <= NOT \CPU|MEMORIA_DADOS|ram~327_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~295_q\ <= NOT \CPU|MEMORIA_DADOS|ram~295_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~311_q\ <= NOT \CPU|MEMORIA_DADOS|ram~311_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~279_q\ <= NOT \CPU|MEMORIA_DADOS|ram~279_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~560_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~560_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~79_q\ <= NOT \CPU|MEMORIA_DADOS|ram~79_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~47_q\ <= NOT \CPU|MEMORIA_DADOS|ram~47_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~63_q\ <= NOT \CPU|MEMORIA_DADOS|ram~63_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~31_q\ <= NOT \CPU|MEMORIA_DADOS|ram~31_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~559_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~559_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~71_q\ <= NOT \CPU|MEMORIA_DADOS|ram~71_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~39_q\ <= NOT \CPU|MEMORIA_DADOS|ram~39_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~55_q\ <= NOT \CPU|MEMORIA_DADOS|ram~55_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~23_q\ <= NOT \CPU|MEMORIA_DADOS|ram~23_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~558_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~557_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~557_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~334_q\ <= NOT \CPU|MEMORIA_DADOS|ram~334_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~326_q\ <= NOT \CPU|MEMORIA_DADOS|ram~326_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~302_q\ <= NOT \CPU|MEMORIA_DADOS|ram~302_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~294_q\ <= NOT \CPU|MEMORIA_DADOS|ram~294_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~556_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~556_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~78_q\ <= NOT \CPU|MEMORIA_DADOS|ram~78_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~70_q\ <= NOT \CPU|MEMORIA_DADOS|ram~70_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~46_q\ <= NOT \CPU|MEMORIA_DADOS|ram~46_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \CPU|MEMORIA_DADOS|ram~38_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~555_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~555_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~318_q\ <= NOT \CPU|MEMORIA_DADOS|ram~318_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~310_q\ <= NOT \CPU|MEMORIA_DADOS|ram~310_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~286_q\ <= NOT \CPU|MEMORIA_DADOS|ram~286_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~278_q\ <= NOT \CPU|MEMORIA_DADOS|ram~278_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~554_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~554_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~62_q\ <= NOT \CPU|MEMORIA_DADOS|ram~62_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~54_q\ <= NOT \CPU|MEMORIA_DADOS|ram~54_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~30_q\ <= NOT \CPU|MEMORIA_DADOS|ram~30_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~22_q\ <= NOT \CPU|MEMORIA_DADOS|ram~22_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~553_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~552_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~552_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~333_q\ <= NOT \CPU|MEMORIA_DADOS|ram~333_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~77_q\ <= NOT \CPU|MEMORIA_DADOS|ram~77_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~317_q\ <= NOT \CPU|MEMORIA_DADOS|ram~317_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~61_q\ <= NOT \CPU|MEMORIA_DADOS|ram~61_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~551_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~551_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~301_q\ <= NOT \CPU|MEMORIA_DADOS|ram~301_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~45_q\ <= NOT \CPU|MEMORIA_DADOS|ram~45_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~285_q\ <= NOT \CPU|MEMORIA_DADOS|ram~285_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~29_q\ <= NOT \CPU|MEMORIA_DADOS|ram~29_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~550_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~550_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~325_q\ <= NOT \CPU|MEMORIA_DADOS|ram~325_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~69_q\ <= NOT \CPU|MEMORIA_DADOS|ram~69_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~309_q\ <= NOT \CPU|MEMORIA_DADOS|ram~309_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~53_q\ <= NOT \CPU|MEMORIA_DADOS|ram~53_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~549_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~549_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~293_q\ <= NOT \CPU|MEMORIA_DADOS|ram~293_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \CPU|MEMORIA_DADOS|ram~37_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~277_q\ <= NOT \CPU|MEMORIA_DADOS|ram~277_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~21_q\ <= NOT \CPU|MEMORIA_DADOS|ram~21_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~548_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~547_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~547_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~331_q\ <= NOT \CPU|MEMORIA_DADOS|ram~331_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~75_q\ <= NOT \CPU|MEMORIA_DADOS|ram~75_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~315_q\ <= NOT \CPU|MEMORIA_DADOS|ram~315_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~59_q\ <= NOT \CPU|MEMORIA_DADOS|ram~59_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~546_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~546_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~299_q\ <= NOT \CPU|MEMORIA_DADOS|ram~299_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~43_q\ <= NOT \CPU|MEMORIA_DADOS|ram~43_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~283_q\ <= NOT \CPU|MEMORIA_DADOS|ram~283_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~27_q\ <= NOT \CPU|MEMORIA_DADOS|ram~27_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~545_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~545_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~323_q\ <= NOT \CPU|MEMORIA_DADOS|ram~323_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~67_q\ <= NOT \CPU|MEMORIA_DADOS|ram~67_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~307_q\ <= NOT \CPU|MEMORIA_DADOS|ram~307_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~51_q\ <= NOT \CPU|MEMORIA_DADOS|ram~51_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~544_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~544_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~291_q\ <= NOT \CPU|MEMORIA_DADOS|ram~291_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \CPU|MEMORIA_DADOS|ram~35_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~275_q\ <= NOT \CPU|MEMORIA_DADOS|ram~275_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~19_q\ <= NOT \CPU|MEMORIA_DADOS|ram~19_q\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~543_combout\;
\REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_HEX4|DOUT[0]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[6]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[5]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[4]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|REG1|DOUT[0]~DUPLICATE_q\;

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X25_Y0_N36
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X22_Y0_N53
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X22_Y0_N36
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y0_N53
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X16_Y0_N42
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X22_Y0_N2
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X18_Y45_N53
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X11_Y0_N19
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0a7|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: MLABCELL_X18_Y5_N3
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

-- Location: LABCELL_X17_Y3_N30
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

-- Location: FF_X17_Y3_N43
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

-- Location: LABCELL_X17_Y3_N39
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

-- Location: LABCELL_X17_Y3_N42
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

-- Location: FF_X17_Y3_N44
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
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
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N45
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

-- Location: LABCELL_X17_Y3_N48
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

-- Location: FF_X17_Y3_N49
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

-- Location: LABCELL_X17_Y3_N15
\CPU|MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~0_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~0_combout\);

-- Location: LABCELL_X17_Y3_N3
\CPU|MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~1_combout\);

-- Location: FF_X17_Y3_N46
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~21_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~1_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: FF_X17_Y3_N47
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~21_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~1_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N9
\CPU|MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~4_combout\ = ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~4_combout\);

-- Location: LABCELL_X17_Y3_N21
\CPU|MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~5_combout\);

-- Location: FF_X17_Y3_N32
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~1_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~5_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X17_Y3_N33
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

-- Location: FF_X17_Y3_N50
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

-- Location: FF_X17_Y3_N31
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~1_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~5_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N24
\CPU|MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000110000100000000011000010000000001100001000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~2_combout\);

-- Location: LABCELL_X17_Y3_N18
\CPU|MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~3_combout\);

-- Location: FF_X17_Y3_N35
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~5_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~3_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X17_Y3_N36
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

-- Location: LABCELL_X17_Y3_N6
\CPU|MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~6_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~6_combout\);

-- Location: LABCELL_X17_Y3_N0
\CPU|MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~7_combout\);

-- Location: FF_X17_Y3_N38
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~9_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~7_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: FF_X17_Y3_N41
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

-- Location: LABCELL_X17_Y3_N12
\CPU|MEMORIA_INTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~11_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~11_combout\);

-- Location: MLABCELL_X18_Y3_N39
\CPU|MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~9_combout\ = ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~9_combout\);

-- Location: FF_X17_Y3_N40
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

-- Location: FF_X17_Y3_N37
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~9_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~7_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X17_Y3_N34
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~5_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~3_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y3_N0
\CPU|MEMORIA_INTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~12_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[1]~DUPLICATE_q\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111010010111111111101000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~12_combout\);

-- Location: LABCELL_X17_Y3_N27
\CPU|MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~8_combout\ = (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~8_combout\);

-- Location: MLABCELL_X18_Y3_N24
\CPU|DECODIFICADOR_INSTRUCAO|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\);

-- Location: FF_X17_Y3_N53
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

-- Location: LABCELL_X17_Y3_N51
\CPU|SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|SOMADOR|Add0~26\,
	sumout => \CPU|SOMADOR|Add0~29_sumout\);

-- Location: FF_X17_Y3_N52
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

-- Location: MLABCELL_X18_Y3_N54
\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\);

-- Location: MLABCELL_X13_Y3_N51
\CPU|MEMORIA_INTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~14_combout\ = ( !\CPU|PC|DOUT\(4) & ( \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~14_combout\);

-- Location: MLABCELL_X18_Y3_N27
\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~12_combout\)) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ 
-- & ( (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ $ (\CPU|MEMORIA_INTRUCAO|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

-- Location: MLABCELL_X18_Y3_N57
\CPU|MEMORIA_DADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|process_0~0_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \CPU|MEMORIA_DADOS|process_0~0_combout\);

-- Location: MLABCELL_X18_Y3_N3
\CPU|MEMORIA_INTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~10_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~10_combout\);

-- Location: LABCELL_X19_Y3_N54
\CPU|MEMORIA_DADOS|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|process_0~1_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~10_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ & \CPU|MEMORIA_DADOS|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \CPU|MEMORIA_DADOS|process_0~1_combout\);

-- Location: LABCELL_X19_Y3_N39
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X13_Y3_N10
\CPU|MEMORIA_DADOS|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~314_q\);

-- Location: LABCELL_X14_Y2_N42
\CPU|MEMORIA_DADOS|ram~306feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~306feeder_combout\ = ( \CPU|REG1|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~306feeder_combout\);

-- Location: LABCELL_X19_Y3_N15
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \comb~4_combout\);

-- Location: FF_X14_Y2_N43
\CPU|MEMORIA_DADOS|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~306feeder_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~306_q\);

-- Location: LABCELL_X19_Y3_N6
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|process_0~1_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \comb~1_combout\);

-- Location: FF_X14_Y3_N44
\CPU|MEMORIA_DADOS|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~282_q\);

-- Location: MLABCELL_X18_Y4_N24
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~0_combout\);

-- Location: FF_X17_Y3_N29
\CPU|MEMORIA_DADOS|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~274_q\);

-- Location: LABCELL_X14_Y3_N45
\CPU|MEMORIA_DADOS|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~540_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~314_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~306_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~282_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~314_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~306_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~282_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~274_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~540_combout\);

-- Location: MLABCELL_X18_Y4_N33
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|process_0~1_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \comb~3_combout\);

-- Location: FF_X17_Y4_N41
\CPU|MEMORIA_DADOS|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~298_q\);

-- Location: LABCELL_X14_Y2_N3
\CPU|MEMORIA_DADOS|ram~290feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~290feeder_combout\ = ( \CPU|REG1|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~290feeder_combout\);

-- Location: LABCELL_X19_Y4_N45
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|process_0~1_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \comb~2_combout\);

-- Location: FF_X14_Y2_N4
\CPU|MEMORIA_DADOS|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~290feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~290_q\);

-- Location: LABCELL_X16_Y2_N57
\CPU|MEMORIA_DADOS|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~577_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|process_0~1_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~1_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~577_combout\);

-- Location: FF_X14_Y3_N14
\CPU|MEMORIA_DADOS|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~330_q\);

-- Location: LABCELL_X14_Y2_N54
\CPU|MEMORIA_DADOS|ram~322feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~322feeder_combout\ = ( \CPU|REG1|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~322feeder_combout\);

-- Location: LABCELL_X16_Y2_N42
\CPU|MEMORIA_DADOS|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~572_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~572_combout\);

-- Location: FF_X14_Y2_N55
\CPU|MEMORIA_DADOS|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~322feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~322_q\);

-- Location: LABCELL_X14_Y3_N15
\CPU|MEMORIA_DADOS|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~542_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~330_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~322_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~298_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~290_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~298_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~290_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~330_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~322_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~542_combout\);

-- Location: LABCELL_X19_Y4_N0
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~6_combout\);

-- Location: FF_X19_Y3_N10
\CPU|MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~18_q\);

-- Location: LABCELL_X16_Y3_N45
\CPU|MEMORIA_DADOS|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~575_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~575_combout\);

-- Location: FF_X16_Y3_N25
\CPU|MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~58_q\);

-- Location: LABCELL_X16_Y2_N0
\CPU|MEMORIA_DADOS|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~570_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~570_combout\);

-- Location: FF_X13_Y4_N55
\CPU|MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~50_q\);

-- Location: LABCELL_X16_Y3_N48
\CPU|MEMORIA_DADOS|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~573_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~573_combout\);

-- Location: FF_X14_Y3_N56
\CPU|MEMORIA_DADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~26_q\);

-- Location: LABCELL_X14_Y3_N57
\CPU|MEMORIA_DADOS|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~539_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~58_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~50_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~26_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~18_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~58_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~50_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~26_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~539_combout\);

-- Location: LABCELL_X17_Y2_N33
\CPU|MEMORIA_DADOS|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~571_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~571_combout\);

-- Location: FF_X18_Y3_N40
\CPU|MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~66_q\);

-- Location: LABCELL_X19_Y3_N18
\CPU|MEMORIA_DADOS|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~574_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|process_0~1_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~574_combout\);

-- Location: FF_X18_Y3_N32
\CPU|MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~42_q\);

-- Location: LABCELL_X19_Y4_N33
\CPU|MEMORIA_DADOS|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~569_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~569_combout\);

-- Location: FF_X19_Y4_N52
\CPU|MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~34_q\);

-- Location: MLABCELL_X18_Y3_N30
\CPU|MEMORIA_DADOS|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~576_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|process_0~1_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~576_combout\);

-- Location: FF_X18_Y3_N47
\CPU|MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~74_q\);

-- Location: MLABCELL_X18_Y3_N42
\CPU|MEMORIA_DADOS|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~541_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~74_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~66_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~42_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~42_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~34_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~541_combout\);

-- Location: LABCELL_X14_Y3_N6
\CPU|MEMORIA_DADOS|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~543_combout\ = ( \CPU|MEMORIA_DADOS|ram~539_combout\ & ( \CPU|MEMORIA_DADOS|ram~541_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~540_combout\)) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~542_combout\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~539_combout\ & ( \CPU|MEMORIA_DADOS|ram~541_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (((\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~540_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~542_combout\))))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~539_combout\ & ( !\CPU|MEMORIA_DADOS|ram~541_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~540_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~542_combout\))))) ) ) ) # ( 
-- !\CPU|MEMORIA_DADOS|ram~539_combout\ & ( !\CPU|MEMORIA_DADOS|ram~541_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~540_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~542_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~540_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~539_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~541_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~543_combout\);

-- Location: LABCELL_X16_Y3_N30
\CPU|MEMORIA_INTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~13_combout\ = ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|MEMORIA_INTRUCAO|memROM~4_combout\ & !\CPU|PC|DOUT[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~13_combout\);

-- Location: MLABCELL_X13_Y4_N0
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

-- Location: MLABCELL_X13_Y4_N3
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~13_combout\)) # 
-- (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~13_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) 
-- + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X12_Y4_N48
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|MEMORIA_DADOS|ram~533_combout\ & ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # ((!\CPU|ULA1|Equal0~0_combout\) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) ) # ( 
-- !\CPU|MEMORIA_DADOS|ram~533_combout\ & ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~533_combout\ & ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~533_combout\ & ( !\CPU|ULA1|Add1~1_sumout\ & ( 
-- (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|ULA1|Equal0~0_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X18_Y3_N18
\CPU|DECODIFICADOR_INSTRUCAO|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~8_combout\ ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\) # ((!\CPU|MEMORIA_INTRUCAO|memROM~9_combout\) # 
-- (!\CPU|MEMORIA_INTRUCAO|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\);

-- Location: MLABCELL_X18_Y3_N21
\CPU|DECODIFICADOR_INSTRUCAO|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~12_combout\ $ (((\CPU|MEMORIA_INTRUCAO|memROM~8_combout\) # (\CPU|MEMORIA_INTRUCAO|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\);

-- Location: FF_X13_Y4_N32
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

-- Location: MLABCELL_X13_Y4_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: FF_X13_Y4_N31
\CPU|REG1|DOUT[0]~DUPLICATE\ : dffeas
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
	q => \CPU|REG1|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X13_Y3_N46
\CPU|MEMORIA_DADOS|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~313_q\);

-- Location: FF_X16_Y3_N43
\CPU|MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~57_q\);

-- Location: FF_X18_Y3_N20
\CPU|MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~73_q\);

-- Location: FF_X17_Y3_N56
\CPU|MEMORIA_DADOS|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~329_q\);

-- Location: LABCELL_X17_Y3_N57
\CPU|MEMORIA_DADOS|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~532_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~329_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~73_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~313_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~313_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~57_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~329_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~532_combout\);

-- Location: FF_X16_Y3_N49
\CPU|MEMORIA_DADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~25_q\);

-- Location: FF_X18_Y4_N38
\CPU|MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~41_q\);

-- Location: FF_X18_Y4_N44
\CPU|MEMORIA_DADOS|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~281_q\);

-- Location: FF_X17_Y4_N7
\CPU|MEMORIA_DADOS|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~297_q\);

-- Location: LABCELL_X17_Y4_N45
\CPU|MEMORIA_DADOS|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~531_combout\ = ( \CPU|MEMORIA_DADOS|ram~297_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # (\CPU|MEMORIA_DADOS|ram~41_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~297_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~41_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~297_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~25_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((\CPU|MEMORIA_DADOS|ram~281_q\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~297_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~25_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((\CPU|MEMORIA_DADOS|ram~281_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~25_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~41_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~281_q\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~297_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~531_combout\);

-- Location: FF_X17_Y4_N20
\CPU|MEMORIA_DADOS|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~273_q\);

-- Location: FF_X17_Y4_N17
\CPU|MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~17_q\);

-- Location: FF_X19_Y4_N13
\CPU|MEMORIA_DADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~33_q\);

-- Location: MLABCELL_X18_Y2_N21
\CPU|MEMORIA_DADOS|ram~289feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~289feeder_combout\ = ( \CPU|REG1|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~289feeder_combout\);

-- Location: FF_X18_Y2_N23
\CPU|MEMORIA_DADOS|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~289feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~289_q\);

-- Location: LABCELL_X17_Y4_N21
\CPU|MEMORIA_DADOS|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~529_combout\ = ( \CPU|MEMORIA_DADOS|ram~289_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # (\CPU|MEMORIA_DADOS|ram~33_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~289_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~33_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~289_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~17_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~273_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~289_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~17_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~273_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~273_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~17_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~33_q\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~289_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~529_combout\);

-- Location: FF_X16_Y2_N56
\CPU|MEMORIA_DADOS|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~305_q\);

-- Location: LABCELL_X16_Y2_N24
\CPU|MEMORIA_DADOS|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~49feeder_combout\ = ( \CPU|REG1|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~49feeder_combout\);

-- Location: FF_X16_Y2_N26
\CPU|MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~49feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~49_q\);

-- Location: LABCELL_X16_Y2_N12
\CPU|MEMORIA_DADOS|ram~65feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~65feeder_combout\ = ( \CPU|REG1|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~65feeder_combout\);

-- Location: FF_X16_Y2_N14
\CPU|MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~65feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~65_q\);

-- Location: FF_X17_Y2_N2
\CPU|MEMORIA_DADOS|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~321_q\);

-- Location: LABCELL_X16_Y3_N21
\CPU|MEMORIA_DADOS|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~530_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~321_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~65_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~305_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~305_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~49_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~65_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~321_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~530_combout\);

-- Location: LABCELL_X17_Y4_N3
\CPU|MEMORIA_DADOS|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~533_combout\ = ( \CPU|MEMORIA_DADOS|ram~529_combout\ & ( \CPU|MEMORIA_DADOS|ram~530_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\) # ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~531_combout\))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~532_combout\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~529_combout\ & ( \CPU|MEMORIA_DADOS|ram~530_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- (((\CPU|MEMORIA_DADOS|ram~531_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~5_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)) # (\CPU|MEMORIA_DADOS|ram~532_combout\))) ) ) ) # ( 
-- \CPU|MEMORIA_DADOS|ram~529_combout\ & ( !\CPU|MEMORIA_DADOS|ram~530_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\) # (\CPU|MEMORIA_DADOS|ram~531_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ 
-- & (\CPU|MEMORIA_DADOS|ram~532_combout\ & ((\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~529_combout\ & ( !\CPU|MEMORIA_DADOS|ram~530_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~531_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~532_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~532_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~531_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~530_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~533_combout\);

-- Location: MLABCELL_X13_Y4_N6
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~14_combout\)) # 
-- (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT[1]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~14_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) 
-- + ( \CPU|REG1|DOUT[1]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X14_Y4_N30
\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~543_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\))) ) ) # ( !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~543_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

-- Location: FF_X13_Y4_N34
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: MLABCELL_X13_Y4_N33
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~14_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~14_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(1),
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: FF_X13_Y4_N35
\CPU|REG1|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X16_Y4_N29
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: FF_X16_Y3_N47
\CPU|MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~60_q\);

-- Location: FF_X13_Y4_N25
\CPU|MEMORIA_DADOS|ram~20\ : dffeas
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
	q => \CPU|MEMORIA_DADOS|ram~20_q\);

-- Location: FF_X14_Y3_N1
\CPU|MEMORIA_DADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~28_q\);

-- Location: LABCELL_X16_Y2_N36
\CPU|MEMORIA_DADOS|ram~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~52feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_DADOS|ram~52feeder_combout\);

-- Location: FF_X16_Y2_N38
\CPU|MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~52feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~52_q\);

-- Location: LABCELL_X14_Y3_N3
\CPU|MEMORIA_DADOS|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~534_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~60_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~52_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~28_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~60_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~20_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~28_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~52_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~534_combout\);

-- Location: FF_X18_Y3_N38
\CPU|MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~68_q\);

-- Location: FF_X18_Y3_N52
\CPU|MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~44_q\);

-- Location: FF_X19_Y4_N11
\CPU|MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~36_q\);

-- Location: FF_X18_Y3_N11
\CPU|MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~76_q\);

-- Location: MLABCELL_X18_Y3_N6
\CPU|MEMORIA_DADOS|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~536_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~76_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~68_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~44_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~44_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~36_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~76_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~536_combout\);

-- Location: LABCELL_X17_Y4_N24
\CPU|MEMORIA_DADOS|ram~300feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~300feeder_combout\ = \CPU|REG1|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_DADOS|ram~300feeder_combout\);

-- Location: FF_X17_Y4_N26
\CPU|MEMORIA_DADOS|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~300feeder_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~300_q\);

-- Location: FF_X14_Y2_N25
\CPU|MEMORIA_DADOS|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~324_q\);

-- Location: FF_X14_Y2_N19
\CPU|MEMORIA_DADOS|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~292_q\);

-- Location: FF_X14_Y3_N26
\CPU|MEMORIA_DADOS|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~332_q\);

-- Location: LABCELL_X14_Y3_N27
\CPU|MEMORIA_DADOS|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~537_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~332_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~324_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~300_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~300_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~324_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~292_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~332_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~537_combout\);

-- Location: FF_X13_Y3_N7
\CPU|MEMORIA_DADOS|ram~316\ : dffeas
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
	q => \CPU|MEMORIA_DADOS|ram~316_q\);

-- Location: FF_X14_Y2_N16
\CPU|MEMORIA_DADOS|ram~308\ : dffeas
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
	q => \CPU|MEMORIA_DADOS|ram~308_q\);

-- Location: FF_X13_Y3_N2
\CPU|MEMORIA_DADOS|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~284_q\);

-- Location: FF_X17_Y3_N10
\CPU|MEMORIA_DADOS|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~276_q\);

-- Location: MLABCELL_X13_Y3_N18
\CPU|MEMORIA_DADOS|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~535_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~316_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~308_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~284_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~316_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~308_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~284_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~276_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~535_combout\);

-- Location: LABCELL_X14_Y3_N18
\CPU|MEMORIA_DADOS|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~538_combout\ = ( \CPU|MEMORIA_DADOS|ram~537_combout\ & ( \CPU|MEMORIA_DADOS|ram~535_combout\ & ( ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~534_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~536_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~537_combout\ & ( \CPU|MEMORIA_DADOS|ram~535_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (((\CPU|MEMORIA_INTRUCAO|memROM~1_combout\)) # (\CPU|MEMORIA_DADOS|ram~534_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (((\CPU|MEMORIA_DADOS|ram~536_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\)))) ) ) ) # ( 
-- \CPU|MEMORIA_DADOS|ram~537_combout\ & ( !\CPU|MEMORIA_DADOS|ram~535_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~534_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (((\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # (\CPU|MEMORIA_DADOS|ram~536_combout\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~537_combout\ & ( !\CPU|MEMORIA_DADOS|ram~535_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~534_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~536_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~536_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~535_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~538_combout\);

-- Location: LABCELL_X16_Y3_N33
\CPU|MEMORIA_INTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~15_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~15_combout\);

-- Location: FF_X16_Y4_N50
\CPU|MEMORIA_DADOS|ram~19\ : dffeas
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
	q => \CPU|MEMORIA_DADOS|ram~19_q\);

-- Location: FF_X16_Y4_N14
\CPU|MEMORIA_DADOS|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~291_q\);

-- Location: FF_X19_Y4_N59
\CPU|MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~35_q\);

-- Location: FF_X16_Y4_N7
\CPU|MEMORIA_DADOS|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~275_q\);

-- Location: LABCELL_X16_Y4_N27
\CPU|MEMORIA_DADOS|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~544_combout\ = ( \CPU|MEMORIA_DADOS|ram~275_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((\CPU|MEMORIA_DADOS|ram~35_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~291_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~275_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((\CPU|MEMORIA_DADOS|ram~35_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~291_q\)) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~275_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # (\CPU|MEMORIA_DADOS|ram~19_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~275_q\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~19_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~19_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~291_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~275_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~544_combout\);

-- Location: FF_X17_Y4_N53
\CPU|MEMORIA_DADOS|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~299_q\);

-- Location: FF_X18_Y3_N35
\CPU|MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~43_q\);

-- Location: FF_X16_Y3_N38
\CPU|MEMORIA_DADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~27_q\);

-- Location: FF_X18_Y4_N11
\CPU|MEMORIA_DADOS|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~283_q\);

-- Location: LABCELL_X16_Y4_N33
\CPU|MEMORIA_DADOS|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~546_combout\ = ( \CPU|MEMORIA_DADOS|ram~283_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((\CPU|MEMORIA_DADOS|ram~43_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~299_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~283_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((\CPU|MEMORIA_DADOS|ram~43_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~299_q\)) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~283_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # (\CPU|MEMORIA_DADOS|ram~27_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~283_q\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~27_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~299_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~43_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~27_q\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~283_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~546_combout\);

-- Location: FF_X16_Y3_N20
\CPU|MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~59_q\);

-- Location: FF_X16_Y3_N14
\CPU|MEMORIA_DADOS|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~331_q\);

-- Location: FF_X18_Y3_N16
\CPU|MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~75_q\);

-- Location: FF_X13_Y3_N31
\CPU|MEMORIA_DADOS|ram~315\ : dffeas
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
	q => \CPU|MEMORIA_DADOS|ram~315_q\);

-- Location: LABCELL_X16_Y3_N15
\CPU|MEMORIA_DADOS|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~547_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~331_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~75_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~315_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~59_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~331_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~315_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~547_combout\);

-- Location: FF_X16_Y2_N5
\CPU|MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~67_q\);

-- Location: FF_X16_Y2_N41
\CPU|MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~51_q\);

-- Location: FF_X16_Y2_N53
\CPU|MEMORIA_DADOS|ram~307\ : dffeas
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
	q => \CPU|MEMORIA_DADOS|ram~307_q\);

-- Location: FF_X17_Y2_N38
\CPU|MEMORIA_DADOS|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~323_q\);

-- Location: LABCELL_X16_Y2_N48
\CPU|MEMORIA_DADOS|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~545_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~323_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~67_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~307_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~51_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~307_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~323_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~545_combout\);

-- Location: LABCELL_X14_Y4_N36
\CPU|MEMORIA_DADOS|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~548_combout\ = ( \CPU|MEMORIA_DADOS|ram~547_combout\ & ( \CPU|MEMORIA_DADOS|ram~545_combout\ & ( ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~544_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~546_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~547_combout\ & ( \CPU|MEMORIA_DADOS|ram~545_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~544_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((\CPU|MEMORIA_DADOS|ram~546_combout\))))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- (((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~547_combout\ & ( !\CPU|MEMORIA_DADOS|ram~545_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~544_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((\CPU|MEMORIA_DADOS|ram~546_combout\))))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)))) ) ) ) # ( 
-- !\CPU|MEMORIA_DADOS|ram~547_combout\ & ( !\CPU|MEMORIA_DADOS|ram~545_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~544_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~546_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~544_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~546_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~547_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~548_combout\);

-- Location: MLABCELL_X13_Y4_N36
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- (!\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- (!\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110010001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|REG1|ALT_INV_DOUT\(2),
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: MLABCELL_X13_Y4_N9
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~15_combout\)) # 
-- (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~15_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) 
-- + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X14_Y4_N45
\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~548_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~548_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

-- Location: FF_X13_Y4_N37
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[2]~3_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: MLABCELL_X13_Y4_N39
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~538_combout\) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~538_combout\) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: MLABCELL_X13_Y4_N12
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~538_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|MEMORIA_DADOS|ram~538_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: LABCELL_X14_Y4_N33
\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~538_combout\)) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & 
-- (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~538_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010101010111011101010101011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

-- Location: FF_X13_Y4_N41
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: FF_X16_Y4_N59
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
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: FF_X16_Y4_N37
\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: FF_X16_Y4_N31
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
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: LABCELL_X16_Y4_N15
\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(0) & ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(3)) ) ) ) # ( !\REG_HEX0|DOUT\(0) & ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(3)) ) ) ) # ( 
-- \REG_HEX0|DOUT\(0) & ( !\REG_HEX0|DOUT\(2) & ( !\REG_HEX0|DOUT\(1) $ (\REG_HEX0|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datae => \REG_HEX0|ALT_INV_DOUT\(0),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X17_Y4_N36
\DECOD_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(3) & ( \REG_HEX0|DOUT\(0) & ( \REG_HEX0|DOUT\(1) ) ) ) # ( !\REG_HEX0|DOUT\(3) & ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2)) ) ) ) # ( \REG_HEX0|DOUT\(3) & ( 
-- !\REG_HEX0|DOUT\(0) & ( \REG_HEX0|DOUT\(2) ) ) ) # ( !\REG_HEX0|DOUT\(3) & ( !\REG_HEX0|DOUT\(0) & ( (\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datae => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X16_Y4_N51
\DECOD_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X16_Y4_N45
\DECOD_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & 
-- (\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(1))) # (\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X16_Y4_N18
\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = ( \REG_HEX0|DOUT\(0) & ( \REG_HEX0|DOUT\(2) & ( !\REG_HEX0|DOUT\(3) ) ) ) # ( !\REG_HEX0|DOUT\(0) & ( \REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(1)) ) ) ) # ( \REG_HEX0|DOUT\(0) & ( 
-- !\REG_HEX0|DOUT\(2) & ( (!\REG_HEX0|DOUT\(3)) # (!\REG_HEX0|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datae => \REG_HEX0|ALT_INV_DOUT\(0),
	dataf => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X16_Y4_N6
\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = ( \REG_HEX0|DOUT\(3) & ( (\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(1))) ) ) # ( !\REG_HEX0|DOUT\(3) & ( (!\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(1)) # (\REG_HEX0|DOUT\(0)))) # 
-- (\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(2),
	datab => \REG_HEX0|ALT_INV_DOUT\(0),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X16_Y4_N9
\DECOD_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(3) & ( (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(1))) ) ) # ( !\REG_HEX0|DOUT\(3) & ( (!\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(1)))) # (\REG_HEX0|DOUT\(2) & 
-- (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: FF_X19_Y4_N23
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
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: LABCELL_X19_Y4_N18
\REG_HEX1|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX1|DOUT[3]~feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \REG_HEX1|DOUT[3]~feeder_combout\);

-- Location: FF_X19_Y4_N19
\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX1|DOUT[3]~feeder_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: FF_X19_Y4_N5
\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X19_Y4_N26
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: LABCELL_X19_Y4_N9
\DECOD_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[0]~0_combout\ = ( \REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(0))) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & 
-- (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X19_Y4_N6
\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(1) $ (!\REG_HEX1|DOUT\(0))))) # (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(2))) # (\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X19_Y4_N15
\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(0) & ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(2)) ) ) ) # ( !\REG_HEX1|DOUT\(0) & ( \REG_HEX1|DOUT\(3) & ( \REG_HEX1|DOUT\(2) ) ) ) # ( !\REG_HEX1|DOUT\(0) & ( 
-- !\REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000000000000000000000000111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	datae => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X19_Y4_N27
\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = ( \REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(3) & !\REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & ((\REG_HEX1|DOUT\(0)))) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(3) & 
-- (!\REG_HEX1|DOUT\(2) $ (!\REG_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X19_Y4_N54
\DECOD_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[4]~4_combout\ = ( \REG_HEX1|DOUT\(0) & ( \REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1)) ) ) ) # ( \REG_HEX1|DOUT\(0) & ( !\REG_HEX1|DOUT\(3) ) ) # ( !\REG_HEX1|DOUT\(0) & ( !\REG_HEX1|DOUT\(3) & ( 
-- (\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datae => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X19_Y4_N24
\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3) & ((\REG_HEX1|DOUT\(1)) # (\REG_HEX1|DOUT\(0))))) # (\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (!\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110001100000010011000110000001001100011000000100110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(0),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X19_Y4_N36
\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = ( !\REG_HEX1|DOUT\(0) & ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1)) ) ) ) # ( \REG_HEX1|DOUT\(0) & ( !\REG_HEX1|DOUT\(3) & ( !\REG_HEX1|DOUT\(2) $ (\REG_HEX1|DOUT\(1)) ) ) ) # ( 
-- !\REG_HEX1|DOUT\(0) & ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101001011010010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datae => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X18_Y2_N54
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

-- Location: FF_X18_Y2_N56
\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[3]~feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

-- Location: MLABCELL_X18_Y2_N36
\REG_HEX2|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[0]~feeder_combout\ = ( \CPU|REG1|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \REG_HEX2|DOUT[0]~feeder_combout\);

-- Location: FF_X18_Y2_N37
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[0]~feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: MLABCELL_X18_Y2_N12
\REG_HEX2|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[1]~feeder_combout\ = ( \CPU|REG1|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \REG_HEX2|DOUT[1]~feeder_combout\);

-- Location: FF_X18_Y2_N14
\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[1]~feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

-- Location: MLABCELL_X18_Y2_N18
\REG_HEX2|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX2|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \REG_HEX2|DOUT[2]~feeder_combout\);

-- Location: FF_X18_Y2_N20
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[2]~feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

-- Location: MLABCELL_X18_Y2_N3
\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(0)))) ) ) # ( !\REG_HEX2|DOUT\(2) & ( (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X18_Y2_N6
\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(3)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ 
-- (!\REG_HEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(2),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y2_N9
\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(3))) # (\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(3)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(2) & 
-- (!\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y2_N51
\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(3) & ( (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(2) $ (\REG_HEX2|DOUT\(0)))) ) ) # ( !\REG_HEX2|DOUT\(3) & ( (!\REG_HEX2|DOUT\(2) & (\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(1))) # (\REG_HEX2|DOUT\(2) 
-- & (!\REG_HEX2|DOUT\(0) $ (\REG_HEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001000010010000100101100001011000010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(2),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datae => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y2_N42
\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & \REG_HEX2|DOUT\(0)) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(0)))) # (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y2_N24
\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = ( \REG_HEX2|DOUT\(0) & ( !\REG_HEX2|DOUT\(3) $ (((\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(1)))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(2) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000101101001011010000100000001000001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(2),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datae => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y2_N33
\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = ( \REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(1))) # (\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(1))) ) ) # ( !\REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(3) 
-- & !\REG_HEX2|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	dataf => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: FF_X18_Y4_N29
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
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: FF_X18_Y4_N32
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
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: LABCELL_X17_Y4_N27
\REG_HEX3|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX3|DOUT[3]~feeder_combout\ = \CPU|REG1|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \REG_HEX3|DOUT[3]~feeder_combout\);

-- Location: FF_X17_Y4_N28
\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX3|DOUT[3]~feeder_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: FF_X18_Y4_N26
\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: MLABCELL_X18_Y4_N39
\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = ( \REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(0) & ( !\REG_HEX3|DOUT\(1) $ (!\REG_HEX3|DOUT\(2)) ) ) ) # ( !\REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2)) ) ) ) # ( 
-- !\REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010100000101000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datae => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X18_Y4_N6
\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)) ) ) ) # ( !\REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(2) & ( !\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(1)) ) ) ) # ( 
-- \REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(2) & ( (\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011010010110101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datae => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y4_N51
\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000001100110001000101000100000000000011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	datae => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y4_N54
\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) & !\REG_HEX3|DOUT\(3))) # (\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(0))) ) ) # ( !\REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(0) 
-- & !\REG_HEX3|DOUT\(3))) # (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y4_N57
\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3)) # ((!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y4_N15
\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = ( \REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2)) ) ) ) # ( !\REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(2)) # (\REG_HEX3|DOUT\(1)) ) ) ) # ( 
-- !\REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(0) & ( (\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011110101111101010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datae => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y4_N45
\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = ( !\REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(0) & ( !\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(2)) ) ) ) # ( \REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2)) ) ) ) # ( 
-- !\REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datae => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: FF_X18_Y2_N31
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
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: LABCELL_X17_Y2_N12
\REG_HEX4|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX4|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \REG_HEX4|DOUT[2]~feeder_combout\);

-- Location: FF_X17_Y2_N14
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_HEX4|DOUT[2]~feeder_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: FF_X17_Y2_N52
\REG_HEX4|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X17_Y2_N32
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
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: LABCELL_X17_Y2_N48
\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = ( \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( \REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(2)) ) ) ) # ( \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( !\REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(3) $ 
-- (\REG_HEX4|DOUT\(2)) ) ) ) # ( !\REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( !\REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011000011001100000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	datae => \REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X17_Y2_N57
\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(3) & ( \REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT[0]~DUPLICATE_q\) # (\REG_HEX4|DOUT\(2)) ) ) ) # ( !\REG_HEX4|DOUT\(3) & ( \REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(2) & 
-- !\REG_HEX4|DOUT[0]~DUPLICATE_q\) ) ) ) # ( \REG_HEX4|DOUT\(3) & ( !\REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT[0]~DUPLICATE_q\) ) ) ) # ( !\REG_HEX4|DOUT\(3) & ( !\REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(2) & 
-- \REG_HEX4|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: FF_X17_Y2_N53
\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: LABCELL_X17_Y2_N39
\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000001000110010001100001000000010000010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datae => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X17_Y2_N6
\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = ( \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( \REG_HEX4|DOUT\(1) & ( \REG_HEX4|DOUT\(2) ) ) ) # ( !\REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( \REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(2)) ) ) ) # ( 
-- \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( !\REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(2)) ) ) ) # ( !\REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( !\REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011000000000000110011000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	datae => \REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X17_Y2_N3
\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = ( \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( \REG_HEX4|DOUT\(2) & ( !\REG_HEX4|DOUT\(3) ) ) ) # ( !\REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(1) & !\REG_HEX4|DOUT\(3)) ) ) ) # ( 
-- \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(1)) # (!\REG_HEX4|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datae => \REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X17_Y2_N42
\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = ( \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( \REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(3) ) ) ) # ( !\REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( \REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(2)) ) ) ) # ( 
-- \REG_HEX4|DOUT[0]~DUPLICATE_q\ & ( !\REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001111001100000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	datae => \REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X17_Y2_N27
\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = ( !\REG_HEX4|DOUT\(3) & ( \REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT[0]~DUPLICATE_q\) ) ) ) # ( \REG_HEX4|DOUT\(3) & ( !\REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(2) & 
-- !\REG_HEX4|DOUT[0]~DUPLICATE_q\) ) ) ) # ( !\REG_HEX4|DOUT\(3) & ( !\REG_HEX4|DOUT\(1) & ( !\REG_HEX4|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100000011000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: FF_X13_Y3_N17
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
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

-- Location: FF_X13_Y3_N14
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
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

-- Location: FF_X13_Y3_N56
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
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

-- Location: FF_X13_Y3_N35
\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

-- Location: MLABCELL_X13_Y3_N3
\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = ( \REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) & ( !\REG_HEX5|DOUT\(2) $ (!\REG_HEX5|DOUT\(1)) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1)) ) ) ) # ( 
-- !\REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011000000110000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X13_Y3_N57
\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(0) & ((\REG_HEX5|DOUT\(3)))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(0) $ 
-- (!\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X13_Y3_N24
\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = ( \REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(2)) ) ) ) # ( \REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(0) & ( \REG_HEX5|DOUT\(2) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( 
-- !\REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000001111111100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X13_Y3_N33
\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = ( \REG_HEX5|DOUT\(0) & ( \REG_HEX5|DOUT\(1) & ( \REG_HEX5|DOUT\(2) ) ) ) # ( !\REG_HEX5|DOUT\(0) & ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(3) & !\REG_HEX5|DOUT\(2)) ) ) ) # ( \REG_HEX5|DOUT\(0) & ( 
-- !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(3) & !\REG_HEX5|DOUT\(2)) ) ) ) # ( !\REG_HEX5|DOUT\(0) & ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(3) & \REG_HEX5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000001010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datae => \REG_HEX5|ALT_INV_DOUT\(0),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X13_Y3_N54
\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = (!\REG_HEX5|DOUT\(1) & ((!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(0))) # (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(3)))))) # (\REG_HEX5|DOUT\(1) & (\REG_HEX5|DOUT\(0) & ((!\REG_HEX5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101000000010111010100000001011101010000000101110101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X13_Y3_N12
\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = ( \REG_HEX5|DOUT\(0) & ( !\REG_HEX5|DOUT\(3) $ (((\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1)))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(3) & \REG_HEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(3),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X13_Y3_N15
\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) $ (\REG_HEX5|DOUT\(2)))) ) ) # ( !\REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y3_N24
\REG_LEDR0a7|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[0]~feeder_combout\ = ( \CPU|REG1|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \REG_LEDR0a7|DOUT[0]~feeder_combout\);

-- Location: FF_X19_Y3_N25
\REG_LEDR0a7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[0]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(0));

-- Location: FF_X19_Y3_N46
\REG_LEDR0a7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(1));

-- Location: LABCELL_X19_Y3_N51
\REG_LEDR0a7|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[2]~feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \REG_LEDR0a7|DOUT[2]~feeder_combout\);

-- Location: FF_X19_Y3_N52
\REG_LEDR0a7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[2]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(2));

-- Location: FF_X13_Y4_N17
\REG_LEDR0a7|DOUT[3]\ : dffeas
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
	q => \REG_LEDR0a7|DOUT\(3));

-- Location: FF_X18_Y4_N49
\CPU|MEMORIA_DADOS|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~285_q\);

-- Location: FF_X16_Y3_N53
\CPU|MEMORIA_DADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~29_q\);

-- Location: MLABCELL_X18_Y4_N3
\CPU|MEMORIA_DADOS|ram~45feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~45feeder_combout\ = ( \CPU|REG1|DOUT[4]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~45feeder_combout\);

-- Location: FF_X18_Y4_N4
\CPU|MEMORIA_DADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~45feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~45_q\);

-- Location: LABCELL_X17_Y4_N30
\CPU|MEMORIA_DADOS|ram~301feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~301feeder_combout\ = ( \CPU|REG1|DOUT[4]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~301feeder_combout\);

-- Location: FF_X17_Y4_N31
\CPU|MEMORIA_DADOS|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~301feeder_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~301_q\);

-- Location: LABCELL_X16_Y4_N39
\CPU|MEMORIA_DADOS|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~551_combout\ = ( \CPU|MEMORIA_DADOS|ram~301_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~45_q\) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~301_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & \CPU|MEMORIA_DADOS|ram~45_q\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~301_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~29_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~285_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~301_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~29_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~285_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~285_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~29_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~45_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~301_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~551_combout\);

-- Location: FF_X16_Y2_N11
\CPU|MEMORIA_DADOS|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~309_q\);

-- Location: FF_X17_Y2_N10
\CPU|MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~53_q\);

-- Location: FF_X16_Y2_N20
\CPU|MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~69_q\);

-- Location: FF_X17_Y2_N23
\CPU|MEMORIA_DADOS|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~325_q\);

-- Location: LABCELL_X16_Y3_N57
\CPU|MEMORIA_DADOS|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~550_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~325_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~69_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~309_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~309_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~53_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~325_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~550_combout\);

-- Location: FF_X19_Y4_N34
\CPU|MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~37_q\);

-- Location: FF_X16_Y4_N22
\CPU|MEMORIA_DADOS|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~293_q\);

-- Location: FF_X16_Y4_N44
\CPU|MEMORIA_DADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~21_q\);

-- Location: FF_X16_Y4_N56
\CPU|MEMORIA_DADOS|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~277_q\);

-- Location: LABCELL_X16_Y4_N57
\CPU|MEMORIA_DADOS|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~549_combout\ = ( \CPU|MEMORIA_DADOS|ram~277_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~37_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~293_q\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~277_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~37_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~293_q\))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~277_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # (\CPU|MEMORIA_DADOS|ram~21_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~277_q\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~21_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~293_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~21_q\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~277_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~549_combout\);

-- Location: FF_X16_Y3_N5
\CPU|MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~61_q\);

-- Location: FF_X13_Y3_N28
\CPU|MEMORIA_DADOS|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~317_q\);

-- Location: FF_X18_Y3_N25
\CPU|MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~77_q\);

-- Location: FF_X16_Y3_N11
\CPU|MEMORIA_DADOS|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~333_q\);

-- Location: LABCELL_X16_Y3_N39
\CPU|MEMORIA_DADOS|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~552_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~333_q\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) # (\CPU|MEMORIA_DADOS|ram~317_q\) ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~333_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~61_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~77_q\))) ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( 
-- !\CPU|MEMORIA_DADOS|ram~333_q\ & ( (\CPU|MEMORIA_DADOS|ram~317_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_DADOS|ram~333_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~61_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~77_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~61_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~317_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~333_q\,
	combout => \CPU|MEMORIA_DADOS|ram~552_combout\);

-- Location: LABCELL_X14_Y4_N54
\CPU|MEMORIA_DADOS|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~553_combout\ = ( \CPU|MEMORIA_DADOS|ram~549_combout\ & ( \CPU|MEMORIA_DADOS|ram~552_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) # (\CPU|MEMORIA_DADOS|ram~550_combout\)))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~7_combout\)) # (\CPU|MEMORIA_DADOS|ram~551_combout\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~549_combout\ & ( \CPU|MEMORIA_DADOS|ram~552_combout\ & ( 
-- (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & \CPU|MEMORIA_DADOS|ram~550_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~7_combout\)) # 
-- (\CPU|MEMORIA_DADOS|ram~551_combout\))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~549_combout\ & ( !\CPU|MEMORIA_DADOS|ram~552_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) # 
-- (\CPU|MEMORIA_DADOS|ram~550_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~551_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~549_combout\ & ( 
-- !\CPU|MEMORIA_DADOS|ram~552_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & \CPU|MEMORIA_DADOS|ram~550_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~551_combout\ & 
-- (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~551_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~550_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~549_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~552_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~553_combout\);

-- Location: MLABCELL_X13_Y4_N15
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~553_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|MEMORIA_DADOS|ram~553_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT\(4),
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X14_Y4_N42
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~553_combout\)) ) ) # ( !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & 
-- (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~553_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X13_Y4_N44
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

-- Location: MLABCELL_X13_Y4_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~553_combout\) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~553_combout\) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: FF_X13_Y4_N43
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

-- Location: LABCELL_X16_Y4_N48
\REG_LEDR0a7|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[4]~feeder_combout\ = \CPU|REG1|DOUT[4]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG1|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \REG_LEDR0a7|DOUT[4]~feeder_combout\);

-- Location: FF_X16_Y4_N49
\REG_LEDR0a7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[4]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(4));

-- Location: LABCELL_X16_Y3_N0
\CPU|MEMORIA_INTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~16_combout\ = ( !\CPU|PC|DOUT[6]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~0_combout\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~16_combout\);

-- Location: MLABCELL_X13_Y4_N18
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~16_combout\)) # 
-- (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|REG1|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~16_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) 
-- + ( \CPU|REG1|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: MLABCELL_X13_Y4_N57
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_DADOS|ram~558_combout\)) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- ((\CPU|MEMORIA_INTRUCAO|memROM~1_combout\)))) ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_DADOS|ram~558_combout\)) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- ((\CPU|MEMORIA_INTRUCAO|memROM~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X13_Y4_N46
\CPU|REG1|DOUT[5]~DUPLICATE\ : dffeas
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
	q => \CPU|REG1|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X19_Y4_N40
\CPU|MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~38_q\);

-- Location: MLABCELL_X18_Y4_N18
\CPU|MEMORIA_DADOS|ram~46feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~46feeder_combout\ = ( \CPU|REG1|DOUT[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~46feeder_combout\);

-- Location: FF_X18_Y4_N19
\CPU|MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~46feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~46_q\);

-- Location: FF_X14_Y4_N11
\CPU|MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~70_q\);

-- Location: FF_X14_Y4_N20
\CPU|MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~78_q\);

-- Location: LABCELL_X14_Y4_N18
\CPU|MEMORIA_DADOS|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~556_combout\ = ( \CPU|MEMORIA_DADOS|ram~78_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|MEMORIA_DADOS|ram~46_q\) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~78_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & \CPU|MEMORIA_DADOS|ram~46_q\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~78_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~38_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~70_q\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~78_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~38_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~70_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~38_q\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~46_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~78_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~556_combout\);

-- Location: FF_X13_Y3_N50
\CPU|MEMORIA_DADOS|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~286_q\);

-- Location: FF_X17_Y2_N56
\CPU|MEMORIA_DADOS|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~310_q\);

-- Location: FF_X17_Y3_N26
\CPU|MEMORIA_DADOS|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~278_q\);

-- Location: FF_X13_Y3_N38
\CPU|MEMORIA_DADOS|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~318_q\);

-- Location: MLABCELL_X13_Y3_N36
\CPU|MEMORIA_DADOS|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~555_combout\ = ( \CPU|MEMORIA_DADOS|ram~318_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) # (\CPU|MEMORIA_DADOS|ram~286_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~318_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|MEMORIA_DADOS|ram~286_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~318_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~278_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~310_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~318_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~278_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~310_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~286_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~310_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~278_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~318_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~555_combout\);

-- Location: FF_X17_Y2_N26
\CPU|MEMORIA_DADOS|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~326_q\);

-- Location: FF_X19_Y3_N1
\CPU|MEMORIA_DADOS|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~294_q\);

-- Location: FF_X14_Y3_N32
\CPU|MEMORIA_DADOS|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~334_q\);

-- Location: LABCELL_X17_Y4_N33
\CPU|MEMORIA_DADOS|ram~302feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~302feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \CPU|MEMORIA_DADOS|ram~302feeder_combout\);

-- Location: FF_X17_Y4_N35
\CPU|MEMORIA_DADOS|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~302feeder_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~302_q\);

-- Location: LABCELL_X14_Y3_N33
\CPU|MEMORIA_DADOS|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~557_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~334_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~326_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~302_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~326_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~294_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~334_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~302_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~557_combout\);

-- Location: FF_X16_Y3_N56
\CPU|MEMORIA_DADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~30_q\);

-- Location: FF_X19_Y3_N23
\CPU|MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~22_q\);

-- Location: LABCELL_X16_Y2_N33
\CPU|MEMORIA_DADOS|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~54feeder_combout\ = ( \CPU|REG1|DOUT[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \CPU|MEMORIA_DADOS|ram~54feeder_combout\);

-- Location: FF_X16_Y2_N34
\CPU|MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~54feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~54_q\);

-- Location: FF_X16_Y3_N23
\CPU|MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~62_q\);

-- Location: LABCELL_X16_Y3_N27
\CPU|MEMORIA_DADOS|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~554_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~62_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~54_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~30_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~30_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~22_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~54_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~62_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~554_combout\);

-- Location: LABCELL_X14_Y4_N6
\CPU|MEMORIA_DADOS|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~558_combout\ = ( \CPU|MEMORIA_DADOS|ram~557_combout\ & ( \CPU|MEMORIA_DADOS|ram~554_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)) # (\CPU|MEMORIA_DADOS|ram~556_combout\))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) # (\CPU|MEMORIA_DADOS|ram~555_combout\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~557_combout\ & ( \CPU|MEMORIA_DADOS|ram~554_combout\ & ( 
-- (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)) # (\CPU|MEMORIA_DADOS|ram~556_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((\CPU|MEMORIA_DADOS|ram~555_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~557_combout\ & ( !\CPU|MEMORIA_DADOS|ram~554_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~556_combout\ & 
-- ((\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) # (\CPU|MEMORIA_DADOS|ram~555_combout\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~557_combout\ & ( 
-- !\CPU|MEMORIA_DADOS|ram~554_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_DADOS|ram~556_combout\ & ((\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((\CPU|MEMORIA_DADOS|ram~555_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~556_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~555_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~557_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~554_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~558_combout\);

-- Location: MLABCELL_X13_Y4_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~16_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~16_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(5),
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: FF_X13_Y4_N47
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

-- Location: FF_X19_Y3_N58
\REG_LEDR0a7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(5));

-- Location: FF_X16_Y3_N1
\CPU|MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~63_q\);

-- Location: LABCELL_X14_Y3_N51
\CPU|MEMORIA_DADOS|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~31feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \CPU|MEMORIA_DADOS|ram~31feeder_combout\);

-- Location: FF_X14_Y3_N52
\CPU|MEMORIA_DADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~31feeder_combout\,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~31_q\);

-- Location: FF_X19_Y3_N31
\CPU|MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~47_q\);

-- Location: FF_X14_Y4_N2
\CPU|MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~79_q\);

-- Location: LABCELL_X14_Y4_N0
\CPU|MEMORIA_DADOS|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~560_combout\ = ( \CPU|MEMORIA_DADOS|ram~79_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) # (\CPU|MEMORIA_DADOS|ram~63_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~79_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|MEMORIA_DADOS|ram~63_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~79_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~31_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~47_q\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~79_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~31_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~47_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~63_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~31_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~47_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~79_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~560_combout\);

-- Location: FF_X19_Y4_N16
\CPU|MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~39_q\);

-- Location: FF_X13_Y4_N23
\CPU|MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~55_q\);

-- Location: MLABCELL_X13_Y4_N21
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~563_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|MEMORIA_DADOS|ram~563_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X14_Y4_N24
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( \CPU|MEMORIA_DADOS|ram~563_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (!\CPU|ULA1|Equal0~0_combout\) ) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~563_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|ULA1|Equal0~0_combout\) ) ) ) # ( \CPU|ULA1|Add1~25_sumout\ & ( !\CPU|MEMORIA_DADOS|ram~563_combout\ & ( !\CPU|ULA1|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001100000011001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X13_Y4_N50
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

-- Location: FF_X13_Y4_N29
\CPU|MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~23_q\);

-- Location: FF_X14_Y4_N14
\CPU|MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~71_q\);

-- Location: LABCELL_X14_Y4_N12
\CPU|MEMORIA_DADOS|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~559_combout\ = ( \CPU|MEMORIA_DADOS|ram~71_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) # (\CPU|MEMORIA_DADOS|ram~39_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~71_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~39_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~71_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~23_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~55_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~71_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~23_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~55_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~39_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~55_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~23_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~71_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~559_combout\);

-- Location: FF_X17_Y4_N2
\CPU|MEMORIA_DADOS|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~279_q\);

-- Location: FF_X14_Y4_N28
\CPU|MEMORIA_DADOS|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~327_q\);

-- Location: FF_X18_Y2_N28
\CPU|MEMORIA_DADOS|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~311_q\);

-- Location: FF_X18_Y2_N49
\CPU|MEMORIA_DADOS|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~295_q\);

-- Location: LABCELL_X16_Y4_N3
\CPU|MEMORIA_DADOS|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~561_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~327_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~295_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~311_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~279_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~279_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~327_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~311_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~295_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~561_combout\);

-- Location: FF_X13_Y3_N40
\CPU|MEMORIA_DADOS|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~319_q\);

-- Location: FF_X13_Y3_N5
\CPU|MEMORIA_DADOS|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~287_q\);

-- Location: FF_X17_Y4_N43
\CPU|MEMORIA_DADOS|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~303_q\);

-- Location: FF_X14_Y3_N38
\CPU|MEMORIA_DADOS|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~335_q\);

-- Location: LABCELL_X14_Y3_N36
\CPU|MEMORIA_DADOS|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~562_combout\ = ( \CPU|MEMORIA_DADOS|ram~335_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) # (\CPU|MEMORIA_DADOS|ram~319_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~335_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|MEMORIA_DADOS|ram~319_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~335_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~287_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~303_q\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~335_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~287_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~303_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~319_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~287_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~303_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~335_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~562_combout\);

-- Location: LABCELL_X14_Y4_N48
\CPU|MEMORIA_DADOS|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~563_combout\ = ( \CPU|MEMORIA_DADOS|ram~561_combout\ & ( \CPU|MEMORIA_DADOS|ram~562_combout\ & ( ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((\CPU|MEMORIA_DADOS|ram~559_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~560_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~561_combout\ & ( \CPU|MEMORIA_DADOS|ram~562_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((\CPU|MEMORIA_DADOS|ram~559_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~560_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~561_combout\ & ( !\CPU|MEMORIA_DADOS|ram~562_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~559_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~560_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) ) # ( 
-- !\CPU|MEMORIA_DADOS|ram~561_combout\ & ( !\CPU|MEMORIA_DADOS|ram~562_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((\CPU|MEMORIA_DADOS|ram~559_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ 
-- & (\CPU|MEMORIA_DADOS|ram~560_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~560_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~561_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~562_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~563_combout\);

-- Location: MLABCELL_X13_Y4_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~563_combout\) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~563_combout\) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: FF_X13_Y4_N49
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

-- Location: FF_X19_Y3_N14
\REG_LEDR0a7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(6));

-- Location: FF_X17_Y2_N19
\CPU|MEMORIA_DADOS|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~328_q\);

-- Location: FF_X13_Y3_N58
\CPU|MEMORIA_DADOS|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~320_q\);

-- Location: FF_X17_Y2_N16
\CPU|MEMORIA_DADOS|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~312_q\);

-- Location: FF_X16_Y3_N8
\CPU|MEMORIA_DADOS|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~336_q\);

-- Location: LABCELL_X16_Y3_N6
\CPU|MEMORIA_DADOS|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~567_combout\ = ( \CPU|MEMORIA_DADOS|ram~336_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\) # (\CPU|MEMORIA_DADOS|ram~328_q\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~336_q\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (\CPU|MEMORIA_DADOS|ram~328_q\ & !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~336_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~312_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~320_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~336_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~312_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~320_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~328_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~320_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~312_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~336_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~567_combout\);

-- Location: FF_X18_Y4_N34
\CPU|MEMORIA_DADOS|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~304_q\);

-- Location: FF_X18_Y4_N14
\CPU|MEMORIA_DADOS|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~288_q\);

-- Location: FF_X16_Y4_N1
\CPU|MEMORIA_DADOS|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~280_q\);

-- Location: FF_X16_Y4_N19
\CPU|MEMORIA_DADOS|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~296_q\);

-- Location: LABCELL_X17_Y4_N48
\CPU|MEMORIA_DADOS|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~566_combout\ = ( \CPU|MEMORIA_DADOS|ram~296_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~288_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~304_q\)) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~296_q\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~288_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~304_q\)) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~296_q\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (\CPU|MEMORIA_DADOS|ram~280_q\) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~296_q\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & \CPU|MEMORIA_DADOS|ram~280_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~304_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~288_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~280_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~296_q\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~566_combout\);

-- Location: FF_X17_Y2_N46
\CPU|MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~56_q\);

-- Location: FF_X18_Y3_N59
\CPU|MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~72_q\);

-- Location: FF_X18_Y3_N14
\CPU|MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~80_q\);

-- Location: FF_X16_Y3_N28
\CPU|MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~64_q\);

-- Location: MLABCELL_X18_Y3_N12
\CPU|MEMORIA_DADOS|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~565_combout\ = ( \CPU|MEMORIA_DADOS|ram~80_q\ & ( \CPU|MEMORIA_DADOS|ram~64_q\ & ( ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~56_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~72_q\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~80_q\ & ( \CPU|MEMORIA_DADOS|ram~64_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~56_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~72_q\))))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~80_q\ & ( 
-- !\CPU|MEMORIA_DADOS|ram~64_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_DADOS|ram~56_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~72_q\))))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~80_q\ & ( !\CPU|MEMORIA_DADOS|ram~64_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & (\CPU|MEMORIA_DADOS|ram~56_q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|MEMORIA_DADOS|ram~72_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~56_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~80_q\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~64_q\,
	combout => \CPU|MEMORIA_DADOS|ram~565_combout\);

-- Location: FF_X16_Y3_N40
\CPU|MEMORIA_DADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~32_q\);

-- Location: LABCELL_X19_Y3_N42
\CPU|MEMORIA_DADOS|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~24feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \CPU|MEMORIA_DADOS|ram~24feeder_combout\);

-- Location: FF_X19_Y3_N43
\CPU|MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MEMORIA_DADOS|ram~24feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~24_q\);

-- Location: FF_X18_Y3_N50
\CPU|MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~48_q\);

-- Location: FF_X19_Y4_N31
\CPU|MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~40_q\);

-- Location: MLABCELL_X18_Y3_N48
\CPU|MEMORIA_DADOS|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~564_combout\ = ( \CPU|MEMORIA_DADOS|ram~48_q\ & ( \CPU|MEMORIA_DADOS|ram~40_q\ & ( ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((\CPU|MEMORIA_DADOS|ram~24_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~32_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~48_q\ & ( \CPU|MEMORIA_DADOS|ram~40_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- ((\CPU|MEMORIA_DADOS|ram~24_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~32_q\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~48_q\ & ( 
-- !\CPU|MEMORIA_DADOS|ram~40_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((\CPU|MEMORIA_DADOS|ram~24_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~32_q\)))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~48_q\ & ( !\CPU|MEMORIA_DADOS|ram~40_q\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ 
-- & ((\CPU|MEMORIA_DADOS|ram~24_q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\CPU|MEMORIA_DADOS|ram~32_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~32_q\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~24_q\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~48_q\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~40_q\,
	combout => \CPU|MEMORIA_DADOS|ram~564_combout\);

-- Location: LABCELL_X17_Y4_N54
\CPU|MEMORIA_DADOS|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~568_combout\ = ( \CPU|MEMORIA_DADOS|ram~565_combout\ & ( \CPU|MEMORIA_DADOS|ram~564_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\) # ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~566_combout\))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~567_combout\))) ) ) ) # ( !\CPU|MEMORIA_DADOS|ram~565_combout\ & ( \CPU|MEMORIA_DADOS|ram~564_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- (((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\)))) # (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~566_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~567_combout\)))) ) ) ) # ( \CPU|MEMORIA_DADOS|ram~565_combout\ & ( !\CPU|MEMORIA_DADOS|ram~564_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (((\CPU|MEMORIA_INTRUCAO|memROM~7_combout\)))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~566_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\CPU|MEMORIA_DADOS|ram~567_combout\)))) ) ) ) # ( 
-- !\CPU|MEMORIA_DADOS|ram~565_combout\ & ( !\CPU|MEMORIA_DADOS|ram~564_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|MEMORIA_DADOS|ram~566_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- (\CPU|MEMORIA_DADOS|ram~567_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~567_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~566_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_ram~565_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_ram~564_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~568_combout\);

-- Location: MLABCELL_X13_Y4_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REG1|DOUT\(7) ) + ( (\CPU|MEMORIA_DADOS|ram~568_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X13_Y4_N24
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~568_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(7),
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: MLABCELL_X13_Y4_N54
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~568_combout\)) ) ) # ( !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & 
-- (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~568_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X13_Y4_N53
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

-- Location: LABCELL_X16_Y4_N42
\REG_LEDR0a7|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[7]~feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \REG_LEDR0a7|DOUT[7]~feeder_combout\);

-- Location: FF_X16_Y4_N43
\REG_LEDR0a7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[7]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(7));

-- Location: MLABCELL_X13_Y3_N42
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~0_combout\ & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))) ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~0_combout\ & ( !\CPU|PC|DOUT\(5) & ( 
-- (\CPU|MEMORIA_INTRUCAO|memROM~2_combout\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \comb~7_combout\);

-- Location: MLABCELL_X13_Y3_N6
\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \CPU|REG1|DOUT[0]~DUPLICATE_q\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (!\comb~7_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~5_combout\))) # (\FF_LEDR8|DOUT~q\) ) ) ) # ( 
-- !\CPU|REG1|DOUT[0]~DUPLICATE_q\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\FF_LEDR8|DOUT~q\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\) # (\comb~7_combout\)) # (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) ) ) # ( \CPU|REG1|DOUT[0]~DUPLICATE_q\ 
-- & ( !\CPU|MEMORIA_DADOS|process_0~1_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) ) # ( !\CPU|REG1|DOUT[0]~DUPLICATE_q\ & ( !\CPU|MEMORIA_DADOS|process_0~1_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000001110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datab => \ALT_INV_comb~7_combout\,
	datac => \FF_LEDR8|ALT_INV_DOUT~q\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \FF_LEDR8|DOUT~0_combout\);

-- Location: FF_X13_Y3_N20
\FF_LEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \FF_LEDR8|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR8|DOUT~q\);

-- Location: LABCELL_X19_Y4_N48
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~8_combout\);

-- Location: LABCELL_X19_Y4_N42
\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = ( \comb~8_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((\FF_LEDR9|DOUT~q\))) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|REG1|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\comb~8_combout\ & ( \FF_LEDR9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \FF_LEDR9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \FF_LEDR9|DOUT~0_combout\);

-- Location: FF_X19_Y4_N43
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

-- Location: IOIBUF_X54_Y20_N4
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X43_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X54_Y14_N95
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X44_Y0_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X34_Y45_N35
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N55
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X52_Y45_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y45_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X40_Y45_N41
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X43_Y45_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X54_Y18_N95
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X43_Y45_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y18_N95
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


