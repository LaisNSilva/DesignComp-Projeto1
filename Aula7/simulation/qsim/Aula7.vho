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

-- DATE "09/24/2021 15:38:12"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Aula7;

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
SIGNAL \CPU|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~2\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~18\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~22\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~26\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~6\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~10\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~14\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|process_0~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|process_0~1_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~273_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~569_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~33_q\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~289_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~529_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~570_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~305_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~571_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~572_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~321_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~530_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~573_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~25_q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~281_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~574_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~297_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~531_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~575_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~313_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~576_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~577_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~329_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~532_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~533_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~28_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~534_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~276_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~284_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~308_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~316_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~535_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~536_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~292_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~300_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~324_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~332_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~537_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~538_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~26_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~539_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~274_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~282_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~306_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~314_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~540_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~541_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~290_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~298_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~322_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~330_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~542_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~543_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~275_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~291_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~544_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~307_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~323_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~545_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~27_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~283_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~299_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~546_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~315_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~331_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~547_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~548_combout\ : std_logic;
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
SIGNAL \DECOD_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
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
SIGNAL \CPU|MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~277_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~293_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~549_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~309_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~325_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~550_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~29_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~285_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~301_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~551_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~317_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~333_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~552_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~553_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~30_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~554_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~278_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~286_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~310_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~318_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~555_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~556_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~294_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~302_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~326_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~334_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~557_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~559_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~31_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~560_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~279_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~311_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~295_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~327_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~561_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~287_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~319_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~303_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~335_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~562_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~563_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~32_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~564_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~565_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~280_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~288_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~296_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~304_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~566_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~312_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~320_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~328_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~336_q\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~567_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ram~568_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
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
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \CPU|MEMORIA_DADOS|ALT_INV_ram~567_combout\ : std_logic;

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
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\REG_HEX4|ALT_INV_DOUT\(3) <= NOT \REG_HEX4|DOUT\(3);
\REG_HEX4|ALT_INV_DOUT\(0) <= NOT \REG_HEX4|DOUT\(0);
\REG_HEX3|ALT_INV_DOUT\(2) <= NOT \REG_HEX3|DOUT\(2);
\REG_HEX3|ALT_INV_DOUT\(1) <= NOT \REG_HEX3|DOUT\(1);
\REG_HEX3|ALT_INV_DOUT\(3) <= NOT \REG_HEX3|DOUT\(3);
\REG_HEX3|ALT_INV_DOUT\(0) <= NOT \REG_HEX3|DOUT\(0);
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
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~16_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~15_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~14_combout\;
\CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ <= NOT \CPU|MEMORIA_INTRUCAO|memROM~13_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~568_combout\;
\CPU|MEMORIA_DADOS|ALT_INV_ram~567_combout\ <= NOT \CPU|MEMORIA_DADOS|ram~567_combout\;

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

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\CPU|MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~0_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~0_combout\);

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

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~9_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~9_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~11_combout\ = (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~11_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~12_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~12_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\ = (!\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ = ( !\CPU|PC|DOUT\(7) & ( (\CPU|MEMORIA_INTRUCAO|memROM~0_combout\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~1_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~21_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~1_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000010000000010100001000000001010000100000000101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~2_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~3_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~5_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~3_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

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

\CPU|MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~6_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~6_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~7_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~9_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~7_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

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

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~4_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~4_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~5_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMADOR|Add0~1_sumout\,
	asdata => \CPU|MEMORIA_INTRUCAO|memROM~5_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~8_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~8_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ = (!\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~13_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & \CPU|MEMORIA_INTRUCAO|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~13_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~10_combout\ = (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~10_combout\);

\CPU|MEMORIA_DADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|process_0~0_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \CPU|MEMORIA_DADOS|process_0~0_combout\);

\CPU|MEMORIA_DADOS|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|process_0~1_combout\ = ( !\CPU|MEMORIA_INTRUCAO|memROM~12_combout\ & ( \CPU|MEMORIA_DADOS|process_0~0_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~10_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \CPU|MEMORIA_DADOS|process_0~1_combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~6_combout\);

\CPU|MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~17_q\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~0_combout\);

\CPU|MEMORIA_DADOS|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~273_q\);

\CPU|MEMORIA_DADOS|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~569_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~569_combout\);

\CPU|MEMORIA_DADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~33_q\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~2_combout\);

\CPU|MEMORIA_DADOS|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~289_q\);

\CPU|MEMORIA_DADOS|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~529_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~289_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~33_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~273_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~17_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~273_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~33_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~289_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~529_combout\);

\CPU|MEMORIA_DADOS|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~570_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~570_combout\);

\CPU|MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~49_q\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~4_combout\);

\CPU|MEMORIA_DADOS|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~305_q\);

\CPU|MEMORIA_DADOS|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~571_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~571_combout\);

\CPU|MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~65_q\);

\CPU|MEMORIA_DADOS|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~572_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~572_combout\);

\CPU|MEMORIA_DADOS|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~321_q\);

\CPU|MEMORIA_DADOS|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~530_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~321_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~65_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~305_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~49_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~305_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~65_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~321_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~530_combout\);

\CPU|MEMORIA_DADOS|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~573_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~573_combout\);

\CPU|MEMORIA_DADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~25_q\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~1_combout\);

\CPU|MEMORIA_DADOS|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~281_q\);

\CPU|MEMORIA_DADOS|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~574_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~574_combout\);

\CPU|MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~41_q\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~3_combout\);

\CPU|MEMORIA_DADOS|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~297_q\);

\CPU|MEMORIA_DADOS|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~531_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~297_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~41_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~281_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~25_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~281_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~41_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~297_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~531_combout\);

\CPU|MEMORIA_DADOS|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~575_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~575_combout\);

\CPU|MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~57_q\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~5_combout\);

\CPU|MEMORIA_DADOS|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~313_q\);

\CPU|MEMORIA_DADOS|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~576_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~576_combout\);

\CPU|MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~73_q\);

\CPU|MEMORIA_DADOS|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~577_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~577_combout\);

\CPU|MEMORIA_DADOS|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~329_q\);

\CPU|MEMORIA_DADOS|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~532_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~329_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~73_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~313_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~57_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~313_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~329_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~532_combout\);

\CPU|MEMORIA_DADOS|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~533_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~532_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~531_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~530_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~530_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~531_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~532_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~533_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT\(7) & (\CPU|MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT\(7) & (\CPU|MEMORIA_INTRUCAO|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ $ (\CPU|MEMORIA_INTRUCAO|memROM~12_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~8_combout\ & 
-- (!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\ & \CPU|MEMORIA_INTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010010001000000001001000100000000100100010000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

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

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~13_combout\) # ((\CPU|PC|DOUT\(7))))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~533_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~13_combout\) # ((\CPU|PC|DOUT\(7))))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~533_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\))) ) ) # ( !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~533_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ = ((!\CPU|MEMORIA_INTRUCAO|memROM~9_combout\) # ((!\CPU|MEMORIA_INTRUCAO|memROM~11_combout\) # (!\CPU|MEMORIA_INTRUCAO|memROM~12_combout\))) # (\CPU|MEMORIA_INTRUCAO|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111111111110111111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ = (\CPU|MEMORIA_INTRUCAO|memROM~9_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~12_combout\ $ (((\CPU|MEMORIA_INTRUCAO|memROM~11_combout\) # (\CPU|MEMORIA_INTRUCAO|memROM~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010011001000000001001100100000000100110010000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\);

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

\CPU|MEMORIA_DADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~20_q\);

\CPU|MEMORIA_DADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~28_q\);

\CPU|MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~52_q\);

\CPU|MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~60_q\);

\CPU|MEMORIA_DADOS|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~534_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~60_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~52_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~28_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~20_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~28_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~52_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~60_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~534_combout\);

\CPU|MEMORIA_DADOS|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~276_q\);

\CPU|MEMORIA_DADOS|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~284_q\);

\CPU|MEMORIA_DADOS|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~308_q\);

\CPU|MEMORIA_DADOS|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~316_q\);

\CPU|MEMORIA_DADOS|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~535_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~316_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~308_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~284_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~276_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~284_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~308_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~316_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~535_combout\);

\CPU|MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~36_q\);

\CPU|MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~44_q\);

\CPU|MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~68_q\);

\CPU|MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~76_q\);

\CPU|MEMORIA_DADOS|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~536_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~76_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~68_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~44_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~36_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~44_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~76_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~536_combout\);

\CPU|MEMORIA_DADOS|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~292_q\);

\CPU|MEMORIA_DADOS|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~300_q\);

\CPU|MEMORIA_DADOS|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~324_q\);

\CPU|MEMORIA_DADOS|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~332_q\);

\CPU|MEMORIA_DADOS|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~537_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~332_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~324_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~300_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~292_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~300_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~324_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~332_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~537_combout\);

\CPU|MEMORIA_DADOS|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~538_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~537_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~536_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~535_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~535_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~536_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~538_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~15_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & \CPU|MEMORIA_INTRUCAO|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~15_combout\);

\CPU|MEMORIA_INTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~14_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & \CPU|MEMORIA_INTRUCAO|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \CPU|MEMORIA_INTRUCAO|memROM~14_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT\(7) & (\CPU|MEMORIA_INTRUCAO|memROM~14_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT\(7) & (\CPU|MEMORIA_INTRUCAO|memROM~14_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~14_combout\)) # (\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~543_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~14_combout\)) # (\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~543_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\))) ) ) # ( !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~543_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

\CPU|MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~18_q\);

\CPU|MEMORIA_DADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~26_q\);

\CPU|MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~50_q\);

\CPU|MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~58_q\);

\CPU|MEMORIA_DADOS|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~539_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~58_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~50_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~26_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~18_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~26_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~50_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~58_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~539_combout\);

\CPU|MEMORIA_DADOS|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~274_q\);

\CPU|MEMORIA_DADOS|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~282_q\);

\CPU|MEMORIA_DADOS|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~306_q\);

\CPU|MEMORIA_DADOS|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~314_q\);

\CPU|MEMORIA_DADOS|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~540_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~314_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~306_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~282_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~274_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~282_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~306_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~314_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~540_combout\);

\CPU|MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~34_q\);

\CPU|MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~42_q\);

\CPU|MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~66_q\);

\CPU|MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~74_q\);

\CPU|MEMORIA_DADOS|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~541_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~74_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~66_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~42_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~34_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~42_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~541_combout\);

\CPU|MEMORIA_DADOS|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~290_q\);

\CPU|MEMORIA_DADOS|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~298_q\);

\CPU|MEMORIA_DADOS|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~322_q\);

\CPU|MEMORIA_DADOS|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~330_q\);

\CPU|MEMORIA_DADOS|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~542_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~330_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~322_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~298_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~290_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~290_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~298_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~322_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~330_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~542_combout\);

\CPU|MEMORIA_DADOS|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~543_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~542_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~541_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~540_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~539_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~540_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~541_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~543_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~15_combout\ & (!\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~15_combout\ & (!\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~15_combout\)) # (\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~548_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_INTRUCAO|memROM~15_combout\)) # (\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~548_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\))) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~548_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[2]~3_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

\CPU|MEMORIA_DADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~19_q\);

\CPU|MEMORIA_DADOS|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~275_q\);

\CPU|MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~35_q\);

\CPU|MEMORIA_DADOS|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~291_q\);

\CPU|MEMORIA_DADOS|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~544_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~291_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~35_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~275_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~19_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~275_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~291_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~544_combout\);

\CPU|MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~51_q\);

\CPU|MEMORIA_DADOS|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~307_q\);

\CPU|MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~67_q\);

\CPU|MEMORIA_DADOS|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~323_q\);

\CPU|MEMORIA_DADOS|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~545_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~323_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~67_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~307_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~51_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~307_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~323_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~545_combout\);

\CPU|MEMORIA_DADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~27_q\);

\CPU|MEMORIA_DADOS|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~283_q\);

\CPU|MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~43_q\);

\CPU|MEMORIA_DADOS|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~299_q\);

\CPU|MEMORIA_DADOS|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~546_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~299_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~43_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~283_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~27_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~283_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~43_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~299_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~546_combout\);

\CPU|MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~59_q\);

\CPU|MEMORIA_DADOS|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~315_q\);

\CPU|MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~75_q\);

\CPU|MEMORIA_DADOS|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~331_q\);

\CPU|MEMORIA_DADOS|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~547_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~331_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~75_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~315_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~59_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~315_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~331_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~547_combout\);

\CPU|MEMORIA_DADOS|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~548_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~547_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~546_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~545_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~544_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~546_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~547_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~548_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~538_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~538_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~538_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|MEMORIA_DADOS|ram~538_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~5_sumout\)))) # (\CPU|ULA1|Equal0~0_combout\ & (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_DADOS|ram~538_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) $ (!\REG_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

\DECOD_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[1]~1_combout\ = (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(1))))) # (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[1]~1_combout\);

\DECOD_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[2]~2_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[2]~2_combout\);

\DECOD_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[3]~3_combout\ = (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & \REG_HEX0|DOUT\(3))) # (\REG_HEX0|DOUT\(0) & 
-- (\REG_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX0|rascSaida7seg[3]~3_combout\);

\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = (!\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(0)))) # (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3))))) # (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (((!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX0|rascSaida7seg[5]~5_combout\);

\DECOD_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[6]~6_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) $ (\REG_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX0|rascSaida7seg[6]~6_combout\);

\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

\DECOD_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[0]~0_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) $ (!\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[0]~0_combout\);

\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(1))))) # (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(3))) # (\REG_HEX1|DOUT\(0) & 
-- (\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

\DECOD_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[4]~4_combout\ = (!\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(2) & ((\REG_HEX1|DOUT\(0)))) # (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3))))) # (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & ((\REG_HEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX1|rascSaida7seg[4]~4_combout\);

\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(3)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (((!\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) $ (!\REG_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(1))))) # (\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(3))) # (\REG_HEX2|DOUT\(0) & 
-- (\REG_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = (!\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(0)))) # (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(3))))) # (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & ((\REG_HEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(3)))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (((!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) $ (\REG_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) $ (!\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(1))))) # (\REG_HEX3|DOUT\(3) & ((!\REG_HEX3|DOUT\(0) & ((\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(3))) # (\REG_HEX3|DOUT\(0) & 
-- (\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = (!\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & ((\REG_HEX3|DOUT\(0)))) # (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(3))))) # (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & ((\REG_HEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(3)))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (((!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) $ (!\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = (!\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(1))))) # (\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1) & !\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(3))) # (\REG_HEX4|DOUT\(0) & 
-- (\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = (!\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(2) & ((\REG_HEX4|DOUT\(0)))) # (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(3))))) # (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(3)))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (((!\REG_HEX4|DOUT\(1) & \REG_HEX4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) $ (\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

\REG_HEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(1) $ (!\REG_HEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = (!\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(1))))) # (\REG_HEX5|DOUT\(3) & ((!\REG_HEX5|DOUT\(0) & ((\REG_HEX5|DOUT\(2)))) # (\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(2)))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(1) & ((!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(3))) # (\REG_HEX5|DOUT\(0) & 
-- (\REG_HEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = (!\REG_HEX5|DOUT\(1) & ((!\REG_HEX5|DOUT\(2) & ((\REG_HEX5|DOUT\(0)))) # (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(3))))) # (\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) & ((\REG_HEX5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(3)))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) $ (((!\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) $ (\REG_HEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

\REG_LEDR0a7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(0));

\REG_LEDR0a7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(1));

\REG_LEDR0a7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(2));

\REG_LEDR0a7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(3));

\CPU|MEMORIA_DADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~21_q\);

\CPU|MEMORIA_DADOS|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~277_q\);

\CPU|MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~37_q\);

\CPU|MEMORIA_DADOS|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~293_q\);

\CPU|MEMORIA_DADOS|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~549_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~293_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~37_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~277_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~21_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~277_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~293_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~549_combout\);

\CPU|MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~53_q\);

\CPU|MEMORIA_DADOS|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~309_q\);

\CPU|MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~69_q\);

\CPU|MEMORIA_DADOS|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~325_q\);

\CPU|MEMORIA_DADOS|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~550_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~325_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~69_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~309_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~53_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~309_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~325_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~550_combout\);

\CPU|MEMORIA_DADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~29_q\);

\CPU|MEMORIA_DADOS|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~285_q\);

\CPU|MEMORIA_DADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~45_q\);

\CPU|MEMORIA_DADOS|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~301_q\);

\CPU|MEMORIA_DADOS|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~551_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~301_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~45_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~285_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~29_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~285_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~45_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~301_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~551_combout\);

\CPU|MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~61_q\);

\CPU|MEMORIA_DADOS|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~317_q\);

\CPU|MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~77_q\);

\CPU|MEMORIA_DADOS|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~333_q\);

\CPU|MEMORIA_DADOS|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~552_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~333_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~77_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~317_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ 
-- & ( \CPU|MEMORIA_DADOS|ram~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~61_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~317_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~333_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~552_combout\);

\CPU|MEMORIA_DADOS|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~553_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~552_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~551_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~550_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_DADOS|ram~549_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~549_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~550_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~551_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~552_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~553_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~553_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~553_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~553_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|MEMORIA_DADOS|ram~553_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|ULA1|Equal0~0_combout\ & (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_DADOS|ram~553_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

\REG_LEDR0a7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(4));

\CPU|MEMORIA_INTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_INTRUCAO|memROM~16_combout\ = (\CPU|MEMORIA_INTRUCAO|memROM~0_combout\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \CPU|MEMORIA_INTRUCAO|memROM~16_combout\);

\CPU|MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~22_q\);

\CPU|MEMORIA_DADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~30_q\);

\CPU|MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~54_q\);

\CPU|MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~62_q\);

\CPU|MEMORIA_DADOS|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~554_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~62_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~54_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~30_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~22_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~30_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~54_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~62_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~554_combout\);

\CPU|MEMORIA_DADOS|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~278_q\);

\CPU|MEMORIA_DADOS|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~286_q\);

\CPU|MEMORIA_DADOS|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~310_q\);

\CPU|MEMORIA_DADOS|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~318_q\);

\CPU|MEMORIA_DADOS|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~555_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~318_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~310_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~286_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~278_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~286_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~310_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~318_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~555_combout\);

\CPU|MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~38_q\);

\CPU|MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~46_q\);

\CPU|MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~70_q\);

\CPU|MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~78_q\);

\CPU|MEMORIA_DADOS|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~556_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~78_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~70_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~46_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~38_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~46_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~78_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~556_combout\);

\CPU|MEMORIA_DADOS|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~294_q\);

\CPU|MEMORIA_DADOS|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~302_q\);

\CPU|MEMORIA_DADOS|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~326_q\);

\CPU|MEMORIA_DADOS|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~334_q\);

\CPU|MEMORIA_DADOS|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~557_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~334_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~326_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~302_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_DADOS|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~294_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~302_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~326_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~334_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~557_combout\);

\CPU|MEMORIA_DADOS|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~558_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~557_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~556_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~555_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~554_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~555_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~556_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~557_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~558_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~16_combout\ & (!\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_INTRUCAO|memROM~16_combout\ & (!\CPU|PC|DOUT\(7)))) ) + ( 
-- \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~16_combout\) # ((\CPU|PC|DOUT\(7))))) ) + ( 
-- \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MEMORIA_DADOS|ram~558_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~16_combout\) # ((\CPU|PC|DOUT\(7))))) ) + ( 
-- \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\) # ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~558_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\))) ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MEMORIA_DADOS|ram~558_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\CPU|MEMORIA_INTRUCAO|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

\REG_LEDR0a7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(5));

\CPU|MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~23_q\);

\CPU|MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~55_q\);

\CPU|MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~39_q\);

\CPU|MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~71_q\);

\CPU|MEMORIA_DADOS|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~559_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~71_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~39_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~55_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~23_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~55_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~39_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~71_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~559_combout\);

\CPU|MEMORIA_DADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~31_q\);

\CPU|MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~63_q\);

\CPU|MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~47_q\);

\CPU|MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~79_q\);

\CPU|MEMORIA_DADOS|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~560_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~79_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~47_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~63_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~31_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~63_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~47_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~79_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~560_combout\);

\CPU|MEMORIA_DADOS|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~279_q\);

\CPU|MEMORIA_DADOS|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~311_q\);

\CPU|MEMORIA_DADOS|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~295_q\);

\CPU|MEMORIA_DADOS|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~327_q\);

\CPU|MEMORIA_DADOS|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~561_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~327_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~295_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~311_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~279_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~279_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~311_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~295_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~327_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~561_combout\);

\CPU|MEMORIA_DADOS|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~287_q\);

\CPU|MEMORIA_DADOS|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~319_q\);

\CPU|MEMORIA_DADOS|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~303_q\);

\CPU|MEMORIA_DADOS|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~335_q\);

\CPU|MEMORIA_DADOS|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~562_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~335_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~303_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~319_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~287_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~287_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~319_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~303_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~335_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~562_combout\);

\CPU|MEMORIA_DADOS|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~563_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~562_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~561_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~560_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~559_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~560_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~561_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~562_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~563_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~563_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~563_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~563_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|MEMORIA_DADOS|ram~563_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|ULA1|Equal0~0_combout\ & (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_DADOS|ram~563_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

\REG_LEDR0a7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(6));

\CPU|MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~24_q\);

\CPU|MEMORIA_DADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~32_q\);

\CPU|MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~40_q\);

\CPU|MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~48_q\);

\CPU|MEMORIA_DADOS|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~564_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~48_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~40_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~32_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~24_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~32_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~40_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~48_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~564_combout\);

\CPU|MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~56_q\);

\CPU|MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~64_q\);

\CPU|MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~72_q\);

\CPU|MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~80_q\);

\CPU|MEMORIA_DADOS|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~565_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~80_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( 
-- \CPU|MEMORIA_DADOS|ram~72_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~64_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~56_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~64_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~80_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~565_combout\);

\CPU|MEMORIA_DADOS|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~280_q\);

\CPU|MEMORIA_DADOS|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~288_q\);

\CPU|MEMORIA_DADOS|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~296_q\);

\CPU|MEMORIA_DADOS|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~304_q\);

\CPU|MEMORIA_DADOS|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~566_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~304_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~296_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~288_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~280_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~288_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~296_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~304_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~566_combout\);

\CPU|MEMORIA_DADOS|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~312_q\);

\CPU|MEMORIA_DADOS|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~320_q\);

\CPU|MEMORIA_DADOS|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~328_q\);

\CPU|MEMORIA_DADOS|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|MEMORIA_DADOS|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|MEMORIA_DADOS|ram~336_q\);

\CPU|MEMORIA_DADOS|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~567_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~336_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & 
-- ( \CPU|MEMORIA_DADOS|ram~328_q\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~320_q\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ( \CPU|MEMORIA_DADOS|ram~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~312_q\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~320_q\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~328_q\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~336_q\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~567_combout\);

\CPU|MEMORIA_DADOS|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MEMORIA_DADOS|ram~568_combout\ = ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~567_combout\ ) ) ) # ( !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( 
-- \CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~566_combout\ ) ) ) # ( \CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~565_combout\ ) ) ) # ( 
-- !\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ( !\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|MEMORIA_DADOS|ram~564_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_DADOS|ALT_INV_ram~564_combout\,
	datab => \CPU|MEMORIA_DADOS|ALT_INV_ram~565_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~566_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~567_combout\,
	datae => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \CPU|MEMORIA_DADOS|ram~568_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & \CPU|MEMORIA_DADOS|ram~568_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|MEMORIA_DADOS|ram~568_combout\) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|ULA1|Equal0~0_combout\ & (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\CPU|MEMORIA_DADOS|ram~568_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODIFICADOR_INSTRUCAO|Mux8~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

\REG_LEDR0a7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(7));

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( !\CPU|PC|DOUT\(7) & ( \CPU|MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (\CPU|MEMORIA_INTRUCAO|memROM~0_combout\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \comb~7_combout\);

\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( \comb~7_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) ) # ( !\CPU|MEMORIA_DADOS|process_0~1_combout\ & ( \comb~7_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) ) # ( 
-- \CPU|MEMORIA_DADOS|process_0~1_combout\ & ( !\comb~7_combout\ & ( (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (\FF_LEDR8|DOUT~q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & ((!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & ((\CPU|REG1|DOUT\(0)))) # 
-- (\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & (\FF_LEDR8|DOUT~q\)))) ) ) ) # ( !\CPU|MEMORIA_DADOS|process_0~1_combout\ & ( !\comb~7_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100110101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_LEDR8|ALT_INV_DOUT~q\,
	datab => \CPU|REG1|ALT_INV_DOUT\(0),
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_comb~7_combout\,
	combout => \FF_LEDR8|DOUT~0_combout\);

\FF_LEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FF_LEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR8|DOUT~q\);

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\CPU|MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~5_combout\ & (!\CPU|MEMORIA_INTRUCAO|memROM~7_combout\ & \CPU|MEMORIA_DADOS|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datad => \CPU|MEMORIA_DADOS|ALT_INV_process_0~1_combout\,
	combout => \comb~8_combout\);

\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = (!\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & (\FF_LEDR9|DOUT~q\)) # (\CPU|MEMORIA_INTRUCAO|memROM~3_combout\ & ((!\comb~8_combout\ & (\FF_LEDR9|DOUT~q\)) # (\comb~8_combout\ & ((\CPU|REG1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_LEDR9|ALT_INV_DOUT~q\,
	datab => \CPU|REG1|ALT_INV_DOUT\(0),
	datac => \CPU|MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \ALT_INV_comb~8_combout\,
	combout => \FF_LEDR9|DOUT~0_combout\);

\FF_LEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FF_LEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR9|DOUT~q\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

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


