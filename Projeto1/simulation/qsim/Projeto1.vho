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

-- DATE "10/07/2021 14:29:00"

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
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \REG_A[0]~output_o\ : std_logic;
SIGNAL \REG_A[1]~output_o\ : std_logic;
SIGNAL \REG_A[2]~output_o\ : std_logic;
SIGNAL \REG_A[3]~output_o\ : std_logic;
SIGNAL \REG_A[4]~output_o\ : std_logic;
SIGNAL \REG_A[5]~output_o\ : std_logic;
SIGNAL \REG_A[6]~output_o\ : std_logic;
SIGNAL \REG_A[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~18_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \CPU|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~2\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~6\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~10\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~14\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~18\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~22\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~26\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~21_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~22_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~17_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~20_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Habilita_reg0~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux3~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~550_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~561_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~19_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~536_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux4~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~565_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~534_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux5~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~547_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~532_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux6~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~16_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~531_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~15_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~530_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \FLIP_FLOP_DM|DOUT~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~11_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Habilita_reg1~combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~30\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux2~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~538_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux1~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~541_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux0~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~553_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~543_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \CPU|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux7~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~30\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~q\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_END_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|Entrada_reg1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|Entrada_reg0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Entrada_reg0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Entrada_reg1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Habilita_reg0~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Habilita_reg1~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \FLIP_FLOP_DM|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \CPU|REG_END_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~2_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \FF_LEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~11_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOMADOR|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

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
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(7) <= NOT \CPU|BANCO_REG|Entrada_reg0\(7);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(7) <= NOT \CPU|BANCO_REG|Entrada_reg1\(7);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(6) <= NOT \CPU|BANCO_REG|Entrada_reg0\(6);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(6) <= NOT \CPU|BANCO_REG|Entrada_reg1\(6);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(5) <= NOT \CPU|BANCO_REG|Entrada_reg0\(5);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(5) <= NOT \CPU|BANCO_REG|Entrada_reg1\(5);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(4) <= NOT \CPU|BANCO_REG|Entrada_reg0\(4);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(4) <= NOT \CPU|BANCO_REG|Entrada_reg1\(4);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(3) <= NOT \CPU|BANCO_REG|Entrada_reg0\(3);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(3) <= NOT \CPU|BANCO_REG|Entrada_reg1\(3);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(2) <= NOT \CPU|BANCO_REG|Entrada_reg0\(2);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(2) <= NOT \CPU|BANCO_REG|Entrada_reg1\(2);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(1) <= NOT \CPU|BANCO_REG|Entrada_reg0\(1);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(1) <= NOT \CPU|BANCO_REG|Entrada_reg1\(1);
\CPU|BANCO_REG|ALT_INV_Habilita_reg0~combout\ <= NOT \CPU|BANCO_REG|Habilita_reg0~combout\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(0) <= NOT \CPU|BANCO_REG|Entrada_reg0\(0);
\CPU|BANCO_REG|ALT_INV_Habilita_reg1~combout\ <= NOT \CPU|BANCO_REG|Habilita_reg1~combout\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(0) <= NOT \CPU|BANCO_REG|Entrada_reg1\(0);
\MEMORIA_DADOS|ALT_INV_dado_out~0_combout\ <= NOT \MEMORIA_DADOS|dado_out~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~549_combout\ <= NOT \MEMORIA_DADOS|ram~549_combout\;
\MEMORIA_DADOS|ALT_INV_ram~548_combout\ <= NOT \MEMORIA_DADOS|ram~548_combout\;
\MEMORIA_DADOS|ALT_INV_ram~547_combout\ <= NOT \MEMORIA_DADOS|ram~547_combout\;
\MEMORIA_DADOS|ALT_INV_ram~546_combout\ <= NOT \MEMORIA_DADOS|ram~546_combout\;
\MEMORIA_DADOS|ALT_INV_ram~545_combout\ <= NOT \MEMORIA_DADOS|ram~545_combout\;
\MEMORIA_DADOS|ALT_INV_ram~544_combout\ <= NOT \MEMORIA_DADOS|ram~544_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~10_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~10_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~9_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~9_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~22_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~21_combout\;
\CPU|ULA1|ALT_INV_saida[7]~7_combout\ <= NOT \CPU|ULA1|saida[7]~7_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~8_combout\;
\MEMORIA_DADOS|ALT_INV_ram~543_combout\ <= NOT \MEMORIA_DADOS|ram~543_combout\;
\MEMORIA_DADOS|ALT_INV_ram~542_combout\ <= NOT \MEMORIA_DADOS|ram~542_combout\;
\MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \MEMORIA_DADOS|ram~38_q\;
\MEMORIA_DADOS|ALT_INV_ram~30_q\ <= NOT \MEMORIA_DADOS|ram~30_q\;
\MEMORIA_DADOS|ALT_INV_ram~22_q\ <= NOT \MEMORIA_DADOS|ram~22_q\;
\CPU|ULA1|ALT_INV_saida[6]~6_combout\ <= NOT \CPU|ULA1|saida[6]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~7_combout\;
\MEMORIA_DADOS|ALT_INV_ram~541_combout\ <= NOT \MEMORIA_DADOS|ram~541_combout\;
\MEMORIA_DADOS|ALT_INV_ram~540_combout\ <= NOT \MEMORIA_DADOS|ram~540_combout\;
\MEMORIA_DADOS|ALT_INV_ram~539_combout\ <= NOT \MEMORIA_DADOS|ram~539_combout\;
\MEMORIA_DADOS|ALT_INV_ram~29_q\ <= NOT \MEMORIA_DADOS|ram~29_q\;
\MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \MEMORIA_DADOS|ram~37_q\;
\MEMORIA_DADOS|ALT_INV_ram~21_q\ <= NOT \MEMORIA_DADOS|ram~21_q\;
\CPU|ULA1|ALT_INV_saida[5]~5_combout\ <= NOT \CPU|ULA1|saida[5]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~6_combout\;
\MEMORIA_DADOS|ALT_INV_ram~538_combout\ <= NOT \MEMORIA_DADOS|ram~538_combout\;
\MEMORIA_DADOS|ALT_INV_ram~537_combout\ <= NOT \MEMORIA_DADOS|ram~537_combout\;
\MEMORIA_DADOS|ALT_INV_ram~28_q\ <= NOT \MEMORIA_DADOS|ram~28_q\;
\MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \MEMORIA_DADOS|ram~36_q\;
\MEMORIA_DADOS|ALT_INV_ram~20_q\ <= NOT \MEMORIA_DADOS|ram~20_q\;
\CPU|ULA1|ALT_INV_saida[4]~4_combout\ <= NOT \CPU|ULA1|saida[4]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~5_combout\;
\MEMORIA_DADOS|ALT_INV_ram~536_combout\ <= NOT \MEMORIA_DADOS|ram~536_combout\;
\MEMORIA_DADOS|ALT_INV_ram~535_combout\ <= NOT \MEMORIA_DADOS|ram~535_combout\;
\MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \MEMORIA_DADOS|ram~35_q\;
\MEMORIA_DADOS|ALT_INV_ram~27_q\ <= NOT \MEMORIA_DADOS|ram~27_q\;
\MEMORIA_DADOS|ALT_INV_ram~19_q\ <= NOT \MEMORIA_DADOS|ram~19_q\;
\CPU|ULA1|ALT_INV_saida[3]~3_combout\ <= NOT \CPU|ULA1|saida[3]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~4_combout\;
\MEMORIA_DADOS|ALT_INV_ram~534_combout\ <= NOT \MEMORIA_DADOS|ram~534_combout\;
\MEMORIA_DADOS|ALT_INV_ram~533_combout\ <= NOT \MEMORIA_DADOS|ram~533_combout\;
\MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \MEMORIA_DADOS|ram~34_q\;
\MEMORIA_DADOS|ALT_INV_ram~26_q\ <= NOT \MEMORIA_DADOS|ram~26_q\;
\MEMORIA_DADOS|ALT_INV_ram~18_q\ <= NOT \MEMORIA_DADOS|ram~18_q\;
\CPU|ULA1|ALT_INV_saida[2]~2_combout\ <= NOT \CPU|ULA1|saida[2]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~3_combout\;
\MEMORIA_DADOS|ALT_INV_ram~532_combout\ <= NOT \MEMORIA_DADOS|ram~532_combout\;
\MEMORIA_DADOS|ALT_INV_ram~25_q\ <= NOT \MEMORIA_DADOS|ram~25_q\;
\MEMORIA_DADOS|ALT_INV_ram~33_q\ <= NOT \MEMORIA_DADOS|ram~33_q\;
\MEMORIA_DADOS|ALT_INV_ram~17_q\ <= NOT \MEMORIA_DADOS|ram~17_q\;
\CPU|ULA1|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|ULA1|saida[1]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~2_combout\;
\MEMORIA_DADOS|ALT_INV_ram~531_combout\ <= NOT \MEMORIA_DADOS|ram~531_combout\;
\MEMORIA_DADOS|ALT_INV_ram~32_q\ <= NOT \MEMORIA_DADOS|ram~32_q\;
\MEMORIA_DADOS|ALT_INV_ram~24_q\ <= NOT \MEMORIA_DADOS|ram~24_q\;
\MEMORIA_DADOS|ALT_INV_ram~16_q\ <= NOT \MEMORIA_DADOS|ram~16_q\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~20_combout\;
\CPU|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|ULA1|saida[0]~0_combout\;
\CPU|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA1|Equal1~0_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\FLIP_FLOP_DM|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_DM|DOUT~q\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~530_combout\ <= NOT \MEMORIA_DADOS|ram~530_combout\;
\MEMORIA_DADOS|ALT_INV_ram~529_combout\ <= NOT \MEMORIA_DADOS|ram~529_combout\;
\MEMORIA_DADOS|ALT_INV_ram~31_q\ <= NOT \MEMORIA_DADOS|ram~31_q\;
\MEMORIA_DADOS|ALT_INV_ram~528_combout\ <= NOT \MEMORIA_DADOS|ram~528_combout\;
\MEMORIA_DADOS|ALT_INV_ram~23_q\ <= NOT \MEMORIA_DADOS|ram~23_q\;
\MEMORIA_DADOS|ALT_INV_ram~527_combout\ <= NOT \MEMORIA_DADOS|ram~527_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~19_combout\;
\MEMORIA_DADOS|ALT_INV_ram~15_q\ <= NOT \MEMORIA_DADOS|ram~15_q\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG|DOUT~0_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(8) <= NOT \CPU|REG_END_RET|DOUT\(8);
\CPU|REG_END_RET|ALT_INV_DOUT\(7) <= NOT \CPU|REG_END_RET|DOUT\(7);
\CPU|REG_END_RET|ALT_INV_DOUT\(6) <= NOT \CPU|REG_END_RET|DOUT\(6);
\MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~18_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(5) <= NOT \CPU|REG_END_RET|DOUT\(5);
\CPU|REG_END_RET|ALT_INV_DOUT\(4) <= NOT \CPU|REG_END_RET|DOUT\(4);
\CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~2_combout\ <= NOT \CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux0~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\;
\CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[1]~1_combout\ <= NOT \CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\;
\CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~0_combout\ <= NOT \CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(3) <= NOT \CPU|REG_END_RET|DOUT\(3);
\MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~17_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(2) <= NOT \CPU|REG_END_RET|DOUT\(2);
\CPU|REG_END_RET|ALT_INV_DOUT\(1) <= NOT \CPU|REG_END_RET|DOUT\(1);
\CPU|REG_END_RET|ALT_INV_DOUT\(0) <= NOT \CPU|REG_END_RET|DOUT\(0);
\CPU|MUX2|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUX2|Equal1~0_combout\;
\CPU|MUX2|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX2|Equal2~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~16_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~15_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~14_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~13_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~12_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~11_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~10_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~9_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~8_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~7_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~6_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~5_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~4_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~3_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~2_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~1_combout\;
\FF_LEDR9|ALT_INV_DOUT~q\ <= NOT \FF_LEDR9|DOUT~q\;
\FF_LEDR8|ALT_INV_DOUT~q\ <= NOT \FF_LEDR8|DOUT~q\;
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(7) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(7);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(7) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(7);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(6) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(6);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(6) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(6);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(5) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(5);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(5) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(5);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(4) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(4);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(4) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(4);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(3) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(3);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(3) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(3);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(2) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(2);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(2) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(2);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(1) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(1);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(1) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(1);
\CPU|BANCO_REG|ALT_INV_Mux7~0_combout\ <= NOT \CPU|BANCO_REG|Mux7~0_combout\;
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(0) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(0);
\MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~0_combout\;
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(0) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(0);
\REG_HEX3|ALT_INV_DOUT\(2) <= NOT \REG_HEX3|DOUT\(2);
\REG_HEX3|ALT_INV_DOUT\(1) <= NOT \REG_HEX3|DOUT\(1);
\REG_HEX3|ALT_INV_DOUT\(3) <= NOT \REG_HEX3|DOUT\(3);
\REG_HEX3|ALT_INV_DOUT\(0) <= NOT \REG_HEX3|DOUT\(0);
\CPU|MUX1|ALT_INV_saida_MUX[0]~11_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~11_combout\;
\MEMORIA_DADOS|ALT_INV_ram~565_combout\ <= NOT \MEMORIA_DADOS|ram~565_combout\;
\MEMORIA_DADOS|ALT_INV_ram~561_combout\ <= NOT \MEMORIA_DADOS|ram~561_combout\;
\MEMORIA_DADOS|ALT_INV_ram~557_combout\ <= NOT \MEMORIA_DADOS|ram~557_combout\;
\MEMORIA_DADOS|ALT_INV_ram~553_combout\ <= NOT \MEMORIA_DADOS|ram~553_combout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~33_sumout\ <= NOT \CPU|SOMADOR|Add0~33_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~29_sumout\ <= NOT \CPU|SOMADOR|Add0~29_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~25_sumout\ <= NOT \CPU|SOMADOR|Add0~25_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~21_sumout\ <= NOT \CPU|SOMADOR|Add0~21_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~17_sumout\ <= NOT \CPU|SOMADOR|Add0~17_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~13_sumout\ <= NOT \CPU|SOMADOR|Add0~13_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~9_sumout\ <= NOT \CPU|SOMADOR|Add0~9_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~5_sumout\ <= NOT \CPU|SOMADOR|Add0~5_sumout\;
\CPU|SOMADOR|ALT_INV_Add0~1_sumout\ <= NOT \CPU|SOMADOR|Add0~1_sumout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

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
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

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
	o => \PC_OUT[5]~output_o\);

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
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

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
	o => \PC_OUT[8]~output_o\);

\REG_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[0]~output_o\);

\REG_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[1]~output_o\);

\REG_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[2]~output_o\);

\REG_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[3]~output_o\);

\REG_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[4]~output_o\);

\REG_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[5]~output_o\);

\REG_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[6]~output_o\);

\REG_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \REG_A[7]~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~6_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & 
-- ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010010000100110000000000011111000100100001001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~6_combout\);

\MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~7_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010000000000001101000000000000110100000000000011010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~7_combout\);

\CPU|LOGICA_DE_DESVIO|Saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\ = (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & ((!\CPU|PC|DOUT\(0)) # (!\MEMORIA_INTRUCAO|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000011000000100000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\);

\MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~4_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ 
-- (((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101011000000110110000000000001101010110000001101100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~4_combout\);

\MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~5_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000001001000000000000000000100100000010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~5_combout\);

\CPU|LOGICA_DE_DESVIO|Saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~4_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\);

\MEMORIA_INTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~10_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000000000010100000000000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~10_combout\);

\MEMORIA_INTRUCAO|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~18_combout\ = (!\CPU|PC|DOUT\(3) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~18_combout\);

\MEMORIA_INTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~14_combout\ = (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~14_combout\);

\MEMORIA_INTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~15_combout\ = (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~15_combout\);

\MEMORIA_INTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~16_combout\ = (\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~16_combout\);

\CPU|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|Equal1~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~16_combout\))) # (\MEMORIA_INTRUCAO|memROM~14_combout\ 
-- & (((\MEMORIA_INTRUCAO|memROM~15_combout\ & !\MEMORIA_INTRUCAO|memROM~16_combout\)))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (\MEMORIA_INTRUCAO|memROM~14_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~16_combout\))) # (\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000110100000000000010010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX2|Equal1~0_combout\);

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

\CPU|REG_END_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~25_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(6));

\CPU|MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~6_combout\ = ( \CPU|REG_END_RET|DOUT\(6) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~25_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(6) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~25_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMADOR|ALT_INV_Add0~25_sumout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(6),
	combout => \CPU|MUX2|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

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

\CPU|REG_END_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~29_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(7));

\CPU|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = ( \CPU|SOMADOR|Add0~29_sumout\ & ( \CPU|REG_END_RET|DOUT\(7) & ( ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ & ((!\CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\) # (!\CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\)))) # 
-- (\CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\) ) ) ) # ( !\CPU|SOMADOR|Add0~29_sumout\ & ( \CPU|REG_END_RET|DOUT\(7) & ( \CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\ ) ) ) # ( \CPU|SOMADOR|Add0~29_sumout\ & ( !\CPU|REG_END_RET|DOUT\(7) & ( 
-- (!\CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\ & (!\CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ & ((!\CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\) # (!\CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001000000000110011001100111111001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~0_combout\,
	datab => \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[1]~1_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux0~0_combout\,
	datad => \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~2_combout\,
	datae => \CPU|SOMADOR|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|REG_END_RET|ALT_INV_DOUT\(7),
	combout => \CPU|MUX2|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~0_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~0_combout\);

\MEMORIA_INTRUCAO|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~21_combout\ = (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~21_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~16_combout\ & (!\MEMORIA_INTRUCAO|memROM~13_combout\ $ (!\MEMORIA_INTRUCAO|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~14_combout\) # ((\MEMORIA_INTRUCAO|memROM~16_combout\) # (\MEMORIA_INTRUCAO|memROM~15_combout\))) # (\MEMORIA_INTRUCAO|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111000000000000000011011111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~5_combout\))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( !\MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\MEMORIA_INTRUCAO|memROM~1_combout\ & (!\MEMORIA_INTRUCAO|memROM~4_combout\ & !\MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\);

\MEMORIA_DADOS|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out~0_combout\ = ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(1) & ( (\MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & \MEMORIA_INTRUCAO|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000010000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|dado_out~0_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\MEMORIA_INTRUCAO|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~22_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~22_combout\);

\MEMORIA_INTRUCAO|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~17_combout\ = ( !\CPU|PC|DOUT\(0) & ( \MEMORIA_INTRUCAO|memROM~22_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~17_combout\);

\MEMORIA_INTRUCAO|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~20_combout\ = (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000100000001100000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~20_combout\);

\CPU|BANCO_REG|Entrada_reg0[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(4) = ( \CPU|BANCO_REG|Entrada_reg0\(4) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(4) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[4]~4_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(4) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[4]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(4));

\CPU|DECODIFICADOR_INSTRUCAO|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~16_combout\ $ (((!\MEMORIA_INTRUCAO|memROM~13_combout\ & !\MEMORIA_INTRUCAO|memROM~14_combout\))))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ 
-- & (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~14_combout\ & !\MEMORIA_INTRUCAO|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000000011110001000000001111000100000000111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\);

\CPU|BANCO_REG|Habilita_reg0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Habilita_reg0~combout\ = ( \CPU|BANCO_REG|Habilita_reg0~combout\ & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Habilita_reg0~combout\ & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( !\CPU|BANCO_REG|Habilita_reg0~combout\ & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Habilita_reg0~combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Habilita_reg0~combout\);

\CPU|BANCO_REG|REG_0|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(4),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(4));

\CPU|BANCO_REG|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux3~0_combout\ = ( \CPU|BANCO_REG|REG_1|DOUT\(4) & ( \CPU|BANCO_REG|REG_0|DOUT\(4) ) ) # ( !\CPU|BANCO_REG|REG_1|DOUT\(4) & ( \CPU|BANCO_REG|REG_0|DOUT\(4) & ( (((\CPU|PC|DOUT\(5) & !\MEMORIA_INTRUCAO|memROM~0_combout\)) # 
-- (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|BANCO_REG|REG_1|DOUT\(4) & ( !\CPU|BANCO_REG|REG_0|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000001111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(4),
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(4),
	combout => \CPU|BANCO_REG|Mux3~0_combout\);

\MEMORIA_DADOS|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~552_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~552_combout\);

\MEMORIA_DADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~19_q\);

\MEMORIA_DADOS|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~551_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~551_combout\);

\MEMORIA_DADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~27_q\);

\MEMORIA_DADOS|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~550_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1)))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( !\CPU|PC|DOUT\(0) & ( 
-- (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~550_combout\);

\MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

\MEMORIA_DADOS|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~535_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_DADOS|ram~35_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( 
-- \MEMORIA_DADOS|ram~27_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_DADOS|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~19_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~27_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_DADOS|ram~535_combout\);

\MEMORIA_DADOS|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~561_combout\ = ( \MEMORIA_DADOS|ram~535_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~17_combout\ & !\MEMORIA_INTRUCAO|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~535_combout\,
	combout => \MEMORIA_DADOS|ram~561_combout\);

\MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~8_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~8_combout\);

\MEMORIA_INTRUCAO|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~19_combout\ = (!\CPU|PC|DOUT\(1) & (\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~19_combout\);

\MEMORIA_DADOS|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~536_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( \MEMORIA_DADOS|ram~561_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~561_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \MEMORIA_DADOS|ram~536_combout\);

\CPU|MUX1|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~5_combout\ = (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_DADOS|dado_out~0_combout\ & (\SW[4]~input_o\)) # (\MEMORIA_DADOS|dado_out~0_combout\ & ((\MEMORIA_DADOS|ram~536_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~536_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~5_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & !\MEMORIA_INTRUCAO|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\CPU|BANCO_REG|Entrada_reg0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(3) = ( \CPU|BANCO_REG|Entrada_reg0\(3) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(3) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[3]~3_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(3) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[3]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[3]~3_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(3),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(3));

\CPU|BANCO_REG|REG_0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(3),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(3));

\CPU|BANCO_REG|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux4~0_combout\ = ( \CPU|BANCO_REG|REG_1|DOUT\(3) & ( \CPU|BANCO_REG|REG_0|DOUT\(3) ) ) # ( !\CPU|BANCO_REG|REG_1|DOUT\(3) & ( \CPU|BANCO_REG|REG_0|DOUT\(3) & ( (((\CPU|PC|DOUT\(5) & !\MEMORIA_INTRUCAO|memROM~0_combout\)) # 
-- (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|BANCO_REG|REG_1|DOUT\(3) & ( !\CPU|BANCO_REG|REG_0|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000001111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(3),
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(3),
	combout => \CPU|BANCO_REG|Mux4~0_combout\);

\MEMORIA_DADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~26_q\);

\MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~18_q\);

\MEMORIA_DADOS|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~565_combout\ = ( !\MEMORIA_INTRUCAO|memROM~3_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~26_q\ & (!\MEMORIA_INTRUCAO|memROM~17_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\)) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~3_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~17_combout\ & (\MEMORIA_DADOS|ram~18_q\ & !\MEMORIA_INTRUCAO|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000001000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~26_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~18_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~565_combout\);

\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

\MEMORIA_DADOS|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~533_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & \MEMORIA_DADOS|ram~34_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	combout => \MEMORIA_DADOS|ram~533_combout\);

\MEMORIA_DADOS|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~534_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_DADOS|ram~533_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( 
-- \MEMORIA_DADOS|ram~565_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~565_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_DADOS|ram~534_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\CPU|MUX1|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~4_combout\ = ( \SW[3]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~534_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~17_combout\)) ) ) # ( !\SW[3]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~534_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	datae => \ALT_INV_SW[3]~input_o\,
	combout => \CPU|MUX1|saida_MUX[3]~4_combout\);

\CPU|BANCO_REG|Entrada_reg0[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(2) = ( \CPU|BANCO_REG|Entrada_reg0\(2) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(2) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[2]~2_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(2) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[2]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[2]~2_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(2),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(2));

\CPU|BANCO_REG|REG_0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(2),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(2));

\CPU|BANCO_REG|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux5~0_combout\ = ( \CPU|BANCO_REG|REG_1|DOUT\(2) & ( \CPU|BANCO_REG|REG_0|DOUT\(2) ) ) # ( !\CPU|BANCO_REG|REG_1|DOUT\(2) & ( \CPU|BANCO_REG|REG_0|DOUT\(2) & ( (((\CPU|PC|DOUT\(5) & !\MEMORIA_INTRUCAO|memROM~0_combout\)) # 
-- (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|BANCO_REG|REG_1|DOUT\(2) & ( !\CPU|BANCO_REG|REG_0|DOUT\(2) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000001111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(2),
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(2),
	combout => \CPU|BANCO_REG|Mux5~0_combout\);

\MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~17_q\);

\MEMORIA_DADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~33_q\);

\MEMORIA_DADOS|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~547_combout\ = ( \MEMORIA_DADOS|ram~33_q\ & ( (!\MEMORIA_INTRUCAO|memROM~17_combout\ & ((\MEMORIA_DADOS|ram~17_q\) # (\MEMORIA_INTRUCAO|memROM~11_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~33_q\ & ( (!\MEMORIA_INTRUCAO|memROM~11_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~17_combout\ & \MEMORIA_DADOS|ram~17_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000001100001111000000000000110000000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~17_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~33_q\,
	combout => \MEMORIA_DADOS|ram~547_combout\);

\MEMORIA_DADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~25_q\);

\MEMORIA_DADOS|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~548_combout\ = (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~25_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~25_q\,
	combout => \MEMORIA_DADOS|ram~548_combout\);

\MEMORIA_DADOS|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~549_combout\ = ( \MEMORIA_INTRUCAO|memROM~17_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~11_combout\ & \MEMORIA_INTRUCAO|memROM~19_combout\))) ) ) # ( !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\) # 
-- ((!\MEMORIA_INTRUCAO|memROM~11_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~11_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010101000100010001000100111101000101010001000100010001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	combout => \MEMORIA_DADOS|ram~549_combout\);

\MEMORIA_DADOS|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~532_combout\ = ( \MEMORIA_DADOS|ram~548_combout\ & ( \MEMORIA_DADOS|ram~549_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~547_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( 
-- \MEMORIA_DADOS|ram~548_combout\ & ( !\MEMORIA_DADOS|ram~549_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~547_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100000000000000000000101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~547_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~549_combout\,
	combout => \MEMORIA_DADOS|ram~532_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\CPU|MUX1|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~3_combout\ = ( \SW[2]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~532_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) # ( !\SW[2]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~532_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~532_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \CPU|MUX1|saida_MUX[2]~3_combout\);

\CPU|BANCO_REG|Entrada_reg0[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(1) = ( \CPU|BANCO_REG|Entrada_reg0\(1) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(1) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[1]~1_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(1) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(1),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(1));

\CPU|BANCO_REG|REG_0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(1),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(1));

\CPU|BANCO_REG|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux6~0_combout\ = ( \CPU|BANCO_REG|REG_1|DOUT\(1) & ( \CPU|BANCO_REG|REG_0|DOUT\(1) ) ) # ( !\CPU|BANCO_REG|REG_1|DOUT\(1) & ( \CPU|BANCO_REG|REG_0|DOUT\(1) & ( (((\CPU|PC|DOUT\(5) & !\MEMORIA_INTRUCAO|memROM~0_combout\)) # 
-- (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|BANCO_REG|REG_1|DOUT\(1) & ( !\CPU|BANCO_REG|REG_0|DOUT\(1) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000001111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(1),
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(1),
	combout => \CPU|BANCO_REG|Mux6~0_combout\);

\MEMORIA_DADOS|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~16_q\);

\MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~24_q\);

\MEMORIA_DADOS|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~544_combout\ = (!\MEMORIA_INTRUCAO|memROM~3_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~16_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~16_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~24_q\,
	combout => \MEMORIA_DADOS|ram~544_combout\);

\MEMORIA_DADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~32_q\);

\MEMORIA_DADOS|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~545_combout\ = ( \MEMORIA_DADOS|ram~32_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & !\MEMORIA_INTRUCAO|memROM~17_combout\) ) ) # ( !\MEMORIA_DADOS|ram~32_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~11_combout\ & !\MEMORIA_INTRUCAO|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000101000001010000010000000100000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~32_q\,
	combout => \MEMORIA_DADOS|ram~545_combout\);

\MEMORIA_DADOS|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~546_combout\ = ( !\MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~19_combout\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|ram~546_combout\);

\MEMORIA_DADOS|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~531_combout\ = ( \MEMORIA_DADOS|ram~545_combout\ & ( \MEMORIA_DADOS|ram~546_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~19_combout\ & ((\MEMORIA_DADOS|ram~544_combout\) # (\MEMORIA_INTRUCAO|memROM~11_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~545_combout\ & ( \MEMORIA_DADOS|ram~546_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_INTRUCAO|memROM~19_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~545_combout\ & ( 
-- !\MEMORIA_DADOS|ram~546_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & (!\MEMORIA_INTRUCAO|memROM~11_combout\ & \MEMORIA_DADOS|ram~544_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000010001000100010101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~544_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~546_combout\,
	combout => \MEMORIA_DADOS|ram~531_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~2_combout\ = (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_DADOS|dado_out~0_combout\ & ((\SW[1]~input_o\))) # (\MEMORIA_DADOS|dado_out~0_combout\ & (\MEMORIA_DADOS|ram~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~531_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[1]~2_combout\);

\MEMORIA_DADOS|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~15_q\);

\MEMORIA_DADOS|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~527_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~17_combout\ & \MEMORIA_DADOS|ram~15_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~15_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \MEMORIA_DADOS|ram~527_combout\);

\MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~23_q\);

\MEMORIA_DADOS|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~528_combout\ = ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~17_combout\ & (\MEMORIA_DADOS|ram~23_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~23_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \MEMORIA_DADOS|ram~528_combout\);

\MEMORIA_DADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~31_q\);

\MEMORIA_DADOS|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~529_combout\ = ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~17_combout\ & (\MEMORIA_DADOS|ram~31_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~31_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \MEMORIA_DADOS|ram~529_combout\);

\MEMORIA_DADOS|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~530_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_DADOS|ram~529_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( 
-- \MEMORIA_DADOS|ram~528_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_DADOS|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~527_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~528_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_DADOS|ram~530_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\CPU|MUX1|saida_MUX[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~10_combout\ = ( \KEY[3]~input_o\ & ( \KEY[1]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (((!\MEMORIA_INTRUCAO|memROM~11_combout\ & \SW[8]~input_o\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) ) # ( !\KEY[3]~input_o\ & 
-- ( \KEY[1]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~11_combout\ & ((\SW[8]~input_o\) # (\MEMORIA_INTRUCAO|memROM~12_combout\)))) ) ) ) # ( \KEY[3]~input_o\ & ( !\KEY[1]~input_o\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~3_combout\ & ((!\MEMORIA_INTRUCAO|memROM~11_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \SW[8]~input_o\)) # (\MEMORIA_INTRUCAO|memROM~11_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\)))) ) ) ) # ( !\KEY[3]~input_o\ & 
-- ( !\KEY[1]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~11_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \SW[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000101000001000001000100010000000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~10_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\CPU|PC|DOUT\(5) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \comb~1_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \CPU|PC|DOUT\(5) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \comb~2_combout\);

\MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001000000000101000100000000010100010000000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~9_combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\CPU|PC|DOUT\(3) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~9_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \comb~6_combout\);

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \comb~6_combout\ & ( (\MEMORIA_INTRUCAO|memROM~3_combout\ & (\MEMORIA_INTRUCAO|memROM~19_combout\ & (\comb~2_combout\ & \MEMORIA_INTRUCAO|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datae => \ALT_INV_comb~6_combout\,
	combout => \comb~7_combout\);

\FLIP_FLOP_DM|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_DM|DOUT~q\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\CPU|MUX1|saida_MUX[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~9_combout\ = ( \KEY[2]~input_o\ & ( \SW[9]~input_o\ & ( ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\SW[0]~input_o\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\FLIP_FLOP_DM|DOUT~q\))) # (\MEMORIA_INTRUCAO|memROM~11_combout\) ) ) 
-- ) # ( !\KEY[2]~input_o\ & ( \SW[9]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~11_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\SW[0]~input_o\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\FLIP_FLOP_DM|DOUT~q\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~11_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\)) ) ) ) # ( \KEY[2]~input_o\ & ( !\SW[9]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~11_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\SW[0]~input_o\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\FLIP_FLOP_DM|DOUT~q\)))) # (\MEMORIA_INTRUCAO|memROM~11_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\)) ) ) ) # ( !\KEY[2]~input_o\ & ( !\SW[9]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~11_combout\ & 
-- ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\SW[0]~input_o\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\FLIP_FLOP_DM|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \FLIP_FLOP_DM|ALT_INV_DOUT~q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~9_combout\);

\CPU|MUX1|saida_MUX[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~11_combout\ = ( !\MEMORIA_INTRUCAO|memROM~3_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\CPU|MUX1|saida_MUX[0]~9_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\CPU|MUX1|saida_MUX[0]~10_combout\))) ) ) # ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\FPGA_RESET_N~input_o\ & (((\comb~1_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\))))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\CPU|MUX1|saida_MUX[0]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000001010000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET_N~input_o\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[0]~10_combout\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datag => \CPU|MUX1|ALT_INV_saida_MUX[0]~9_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~11_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~16_combout\ $ (((!\MEMORIA_INTRUCAO|memROM~13_combout\ & !\MEMORIA_INTRUCAO|memROM~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010000000011100001000000001110000100000000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~19_combout\ & (\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & \comb~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_comb~6_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~1_combout\ = ( \CPU|MUX1|saida_MUX[0]~11_combout\ & ( \CPU|MUX1|saida_MUX[0]~0_combout\ ) ) # ( !\CPU|MUX1|saida_MUX[0]~11_combout\ & ( \CPU|MUX1|saida_MUX[0]~0_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (((\MEMORIA_DADOS|ram~530_combout\ & \MEMORIA_DADOS|dado_out~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\)) ) ) ) # ( \CPU|MUX1|saida_MUX[0]~11_combout\ & ( !\CPU|MUX1|saida_MUX[0]~0_combout\ & ( 
-- (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~530_combout\ & \MEMORIA_DADOS|dado_out~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\)) ) ) ) # ( 
-- !\CPU|MUX1|saida_MUX[0]~11_combout\ & ( !\CPU|MUX1|saida_MUX[0]~0_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~530_combout\ & \MEMORIA_DADOS|dado_out~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010100000101001101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~530_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[0]~11_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~1_combout\);

\CPU|BANCO_REG|Entrada_reg1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(0) = ( \CPU|BANCO_REG|Entrada_reg1\(0) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(0) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[0]~0_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(0) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(0),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(0));

\CPU|BANCO_REG|Habilita_reg1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Habilita_reg1~combout\ = ( \CPU|BANCO_REG|Habilita_reg1~combout\ & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( !\CPU|BANCO_REG|Habilita_reg1~combout\ & ( 
-- \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( \CPU|BANCO_REG|Habilita_reg1~combout\ & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Habilita_reg1~combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Habilita_reg1~combout\);

\CPU|BANCO_REG|REG_1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(0),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(0));

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

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~1_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_0|DOUT\(0))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_1|DOUT\(0)))))) # 
-- (\CPU|PC|DOUT\(7) & (\CPU|BANCO_REG|REG_0|DOUT\(0))) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~1_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_0|DOUT\(0))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_1|DOUT\(0)))))) # 
-- (\CPU|PC|DOUT\(7) & (\CPU|BANCO_REG|REG_0|DOUT\(0))) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001110010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(0),
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(0),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|MUX1|saida_MUX[0]~1_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_0|DOUT\(0))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_1|DOUT\(0)))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(0))))) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|MUX1|saida_MUX[0]~1_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_0|DOUT\(0))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_1|DOUT\(0)))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(0))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(0),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Equal1~0_combout\ & ( \CPU|ULA1|Add0~1_sumout\ ) ) # ( !\CPU|ULA1|Equal1~0_combout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[0]~1_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & 
-- ((\CPU|ULA1|Add1~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001111111100100111001001110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|BANCO_REG|Entrada_reg0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(0) = ( \CPU|BANCO_REG|Entrada_reg0\(0) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(0) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(0) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(0),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(0));

\CPU|BANCO_REG|REG_0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(0),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(0));

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~2_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(1)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(1))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(1))))) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~2_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(1)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(1))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(1))))) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(1),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|MUX1|saida_MUX[1]~2_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(1)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(1))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(1))))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|MUX1|saida_MUX[1]~2_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(1)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(1))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(1))))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(1),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[1]~2_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~21_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~5_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[1]~2_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~21_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|BANCO_REG|Entrada_reg1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(1) = ( \CPU|BANCO_REG|Entrada_reg1\(1) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[1]~1_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(1) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[1]~1_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(1) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(1),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(1));

\CPU|BANCO_REG|REG_1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(1),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(1));

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~3_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(2)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(2))))) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~3_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(2)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(2))))) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(2),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|MUX1|saida_MUX[2]~3_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(2)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(2))))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|MUX1|saida_MUX[2]~3_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(2)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(2))))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(2),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add0~9_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[2]~3_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~9_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[2]~3_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|BANCO_REG|Entrada_reg1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(2) = ( \CPU|BANCO_REG|Entrada_reg1\(2) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[2]~2_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(2) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[2]~2_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(2) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[2]~2_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(2),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(2));

\CPU|BANCO_REG|REG_1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(2),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(2));

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[3]~4_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(3)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(3))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(3))))) ) + ( \CPU|ULA1|Add1~26\ ))
-- \CPU|ULA1|Add1~30\ = CARRY(( !\CPU|MUX1|saida_MUX[3]~4_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(3)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(3))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(3))))) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(3),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\,
	cout => \CPU|ULA1|Add1~30\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|MUX1|saida_MUX[3]~4_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(3)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(3))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(3))))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|MUX1|saida_MUX[3]~4_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(3)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(3))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(3))))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(3),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[3]~4_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[3]~4_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~29_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|BANCO_REG|Entrada_reg1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(3) = ( \CPU|BANCO_REG|Entrada_reg1\(3) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[3]~3_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(3) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[3]~3_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(3) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[3]~3_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(3),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(3));

\CPU|BANCO_REG|REG_1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(3),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(3));

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|MUX1|saida_MUX[4]~5_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(4)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(4))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(4))))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|MUX1|saida_MUX[4]~5_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(4)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(4))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(4))))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(4),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add0~17_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[4]~5_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~1_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[4]~5_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|BANCO_REG|Entrada_reg1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(4) = ( \CPU|BANCO_REG|Entrada_reg1\(4) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[4]~4_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(4) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[4]~4_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(4) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(4));

\CPU|BANCO_REG|REG_1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(4),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(4));

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[4]~5_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(4)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(4))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(4))))) ) + ( \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( !\CPU|MUX1|saida_MUX[4]~5_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(4)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(4))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(4))))) ) + ( \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(4),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|BANCO_REG|Entrada_reg0[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(5) = ( \CPU|BANCO_REG|Entrada_reg0\(5) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(5) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[5]~5_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(5) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[5]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[5]~5_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(5),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(5));

\CPU|BANCO_REG|REG_0|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(5),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(5));

\CPU|BANCO_REG|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux2~0_combout\ = ( \CPU|BANCO_REG|REG_1|DOUT\(5) & ( \CPU|BANCO_REG|REG_0|DOUT\(5) ) ) # ( !\CPU|BANCO_REG|REG_1|DOUT\(5) & ( \CPU|BANCO_REG|REG_0|DOUT\(5) & ( (((\CPU|PC|DOUT\(5) & !\MEMORIA_INTRUCAO|memROM~0_combout\)) # 
-- (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|BANCO_REG|REG_1|DOUT\(5) & ( !\CPU|BANCO_REG|REG_0|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000001111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(5),
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(5),
	combout => \CPU|BANCO_REG|Mux2~0_combout\);

\MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~36_q\);

\MEMORIA_DADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~20_q\);

\MEMORIA_DADOS|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~557_combout\ = ( !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (\MEMORIA_DADOS|ram~36_q\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & !\MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~19_combout\ & (\MEMORIA_DADOS|ram~20_q\ & !\MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000001000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~20_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_DADOS|ram~557_combout\);

\MEMORIA_DADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~28_q\);

\MEMORIA_DADOS|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~537_combout\ = ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( (\MEMORIA_DADOS|ram~28_q\ & (!\MEMORIA_INTRUCAO|memROM~11_combout\ & !\MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~28_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	combout => \MEMORIA_DADOS|ram~537_combout\);

\MEMORIA_DADOS|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~538_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~537_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~557_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~557_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~538_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU|MUX1|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~6_combout\ = (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_DADOS|dado_out~0_combout\ & ((\SW[5]~input_o\))) # (\MEMORIA_DADOS|dado_out~0_combout\ & (\MEMORIA_DADOS|ram~538_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \CPU|MUX1|saida_MUX[5]~6_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|MUX1|saida_MUX[5]~6_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(5)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(5))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(5))))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|MUX1|saida_MUX[5]~6_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(5)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(5))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(5))))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(5),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[5]~6_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~5_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[5]~6_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~5_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|BANCO_REG|Entrada_reg1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(5) = ( \CPU|BANCO_REG|Entrada_reg1\(5) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[5]~5_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(5) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[5]~5_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(5) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[5]~5_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(5),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(5));

\CPU|BANCO_REG|REG_1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(5),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(5));

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~6_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(5)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(5))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(5))))) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~6_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(5)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(5))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(5))))) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(5),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|BANCO_REG|Entrada_reg0[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(6) = ( \CPU|BANCO_REG|Entrada_reg0\(6) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(6) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[6]~6_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(6) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[6]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[6]~6_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(6),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(6));

\CPU|BANCO_REG|REG_0|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(6),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(6));

\CPU|BANCO_REG|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux1~0_combout\ = ( \CPU|BANCO_REG|REG_1|DOUT\(6) & ( \CPU|BANCO_REG|REG_0|DOUT\(6) ) ) # ( !\CPU|BANCO_REG|REG_1|DOUT\(6) & ( \CPU|BANCO_REG|REG_0|DOUT\(6) & ( (((\CPU|PC|DOUT\(5) & !\MEMORIA_INTRUCAO|memROM~0_combout\)) # 
-- (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|BANCO_REG|REG_1|DOUT\(6) & ( !\CPU|BANCO_REG|REG_0|DOUT\(6) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000001111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(6),
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(6),
	combout => \CPU|BANCO_REG|Mux1~0_combout\);

\MEMORIA_DADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~21_q\);

\MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

\MEMORIA_DADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~29_q\);

\MEMORIA_DADOS|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~539_combout\ = ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~29_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~37_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~21_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~29_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~539_combout\);

\MEMORIA_DADOS|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~540_combout\ = ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( \MEMORIA_DADOS|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ALT_INV_ram~539_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	combout => \MEMORIA_DADOS|ram~540_combout\);

\MEMORIA_DADOS|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~541_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~3_combout\ & ( \MEMORIA_DADOS|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~540_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_DADOS|ram~541_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU|MUX1|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~7_combout\ = ( \SW[6]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~541_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\)) ) ) # ( !\SW[6]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~541_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~541_combout\,
	datae => \ALT_INV_SW[6]~input_o\,
	combout => \CPU|MUX1|saida_MUX[6]~7_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|MUX1|saida_MUX[6]~7_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(6)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(6))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(6))))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|MUX1|saida_MUX[6]~7_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(6)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(6))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(6))))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(6),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add0~25_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[6]~7_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~25_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[6]~7_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|BANCO_REG|Entrada_reg1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(6) = ( \CPU|BANCO_REG|Entrada_reg1\(6) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[6]~6_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(6) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[6]~6_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(6) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[6]~6_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(6),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(6));

\CPU|BANCO_REG|REG_1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(6),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(6));

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~7_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(6)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(6))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(6))))) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~7_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(6)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(6))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(6))))) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(6),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU|BANCO_REG|Entrada_reg0[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(7) = ( \CPU|BANCO_REG|Entrada_reg0\(7) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(7) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[7]~7_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(7) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[7]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[7]~7_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(7),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(7));

\CPU|BANCO_REG|REG_0|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg0\(7),
	ena => \CPU|BANCO_REG|Habilita_reg0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_0|DOUT\(7));

\CPU|BANCO_REG|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux0~0_combout\ = ( \CPU|BANCO_REG|REG_1|DOUT\(7) & ( \CPU|BANCO_REG|REG_0|DOUT\(7) ) ) # ( !\CPU|BANCO_REG|REG_1|DOUT\(7) & ( \CPU|BANCO_REG|REG_0|DOUT\(7) & ( (((\CPU|PC|DOUT\(5) & !\MEMORIA_INTRUCAO|memROM~0_combout\)) # 
-- (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|BANCO_REG|REG_1|DOUT\(7) & ( !\CPU|BANCO_REG|REG_0|DOUT\(7) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000001111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(7),
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(7),
	combout => \CPU|BANCO_REG|Mux0~0_combout\);

\MEMORIA_DADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~30_q\);

\MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~22_q\);

\MEMORIA_DADOS|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~553_combout\ = ( !\MEMORIA_INTRUCAO|memROM~3_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~30_q\ & (!\MEMORIA_INTRUCAO|memROM~17_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\)) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~3_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~17_combout\ & (\MEMORIA_DADOS|ram~22_q\ & !\MEMORIA_INTRUCAO|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000001000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~30_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~22_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~553_combout\);

\MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

\MEMORIA_DADOS|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~542_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( (\MEMORIA_DADOS|ram~38_q\ & (!\MEMORIA_INTRUCAO|memROM~3_combout\ & !\MEMORIA_INTRUCAO|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \MEMORIA_DADOS|ram~542_combout\);

\MEMORIA_DADOS|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~543_combout\ = ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~542_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~543_combout\);

\CPU|MUX1|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~8_combout\ = (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_DADOS|dado_out~0_combout\ & (\SW[7]~input_o\)) # (\MEMORIA_DADOS|dado_out~0_combout\ & ((\MEMORIA_DADOS|ram~543_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~8_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|MUX1|saida_MUX[7]~8_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(7)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(7))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(7))))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(7),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[7]~8_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[7]~8_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|BANCO_REG|Entrada_reg1[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(7) = ( \CPU|BANCO_REG|Entrada_reg1\(7) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( \CPU|ULA1|saida[7]~7_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(7) & ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- \CPU|ULA1|saida[7]~7_combout\ ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(7) & ( !\MEMORIA_INTRUCAO|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[7]~7_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(7),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(7));

\CPU|BANCO_REG|REG_1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg1\(7),
	ena => \CPU|BANCO_REG|Habilita_reg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_1|DOUT\(7));

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[7]~8_combout\ ) + ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\ & ((\CPU|BANCO_REG|REG_0|DOUT\(7)))) # (\MEMORIA_INTRUCAO|memROM~21_combout\ & (\CPU|BANCO_REG|REG_1|DOUT\(7))))) # 
-- (\CPU|PC|DOUT\(7) & (((\CPU|BANCO_REG|REG_0|DOUT\(7))))) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(7),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (((!\MEMORIA_INTRUCAO|memROM~16_combout\) # (\MEMORIA_INTRUCAO|memROM~15_combout\)) # (\MEMORIA_INTRUCAO|memROM~14_combout\)) # (\MEMORIA_INTRUCAO|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|FLAG|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

\CPU|FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~3_combout\ = ( \CPU|FLAG|DOUT~0_combout\ & ( \CPU|FLAG|DOUT~2_combout\ ) ) # ( !\CPU|FLAG|DOUT~0_combout\ & ( \CPU|FLAG|DOUT~2_combout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & 
-- !\CPU|ULA1|Add1~13_sumout\))) ) ) ) # ( \CPU|FLAG|DOUT~0_combout\ & ( !\CPU|FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~0_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLAG|DOUT~3_combout\);

\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|FLAG|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

\CPU|LOGICA_DE_DESVIO|Saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\ = (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~5_combout\ & ((!\MEMORIA_INTRUCAO|memROM~4_combout\) # (\CPU|FLAG|DOUT~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000101000001000000010100000100000001010000010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datad => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\);

\CPU|REG_END_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~17_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(4));

\CPU|MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~4_combout\ = ( \CPU|SOMADOR|Add0~17_sumout\ & ( \CPU|REG_END_RET|DOUT\(4) & ( ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ & ((!\CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\) # (!\CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\)))) # 
-- (\CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\) ) ) ) # ( !\CPU|SOMADOR|Add0~17_sumout\ & ( \CPU|REG_END_RET|DOUT\(4) & ( \CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\ ) ) ) # ( \CPU|SOMADOR|Add0~17_sumout\ & ( !\CPU|REG_END_RET|DOUT\(4) & ( 
-- (!\CPU|LOGICA_DE_DESVIO|Saida[1]~1_combout\ & (!\CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ & ((!\CPU|LOGICA_DE_DESVIO|Saida[0]~0_combout\) # (!\CPU|LOGICA_DE_DESVIO|Saida[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001000000000110011001100111111001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~0_combout\,
	datab => \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[1]~1_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux0~0_combout\,
	datad => \CPU|LOGICA_DE_DESVIO|ALT_INV_Saida[0]~2_combout\,
	datae => \CPU|SOMADOR|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|REG_END_RET|ALT_INV_DOUT\(4),
	combout => \CPU|MUX2|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~1_combout\);

\MEMORIA_INTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~13_combout\ = (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~13_combout\);

\CPU|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|Equal2~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~16_combout\ & (!\MEMORIA_INTRUCAO|memROM~13_combout\ $ (!\MEMORIA_INTRUCAO|memROM~14_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & (((\MEMORIA_INTRUCAO|memROM~14_combout\ & !\MEMORIA_INTRUCAO|memROM~16_combout\)))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (\MEMORIA_INTRUCAO|memROM~14_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~15_combout\ $ (!\MEMORIA_INTRUCAO|memROM~16_combout\)))) # (\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100000000000110110000000000010011000000000001101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX2|Equal2~0_combout\);

\CPU|REG_END_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~13_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(3));

\CPU|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = ( \CPU|REG_END_RET|DOUT\(3) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~13_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & ((!\CPU|MUX2|Equal1~0_combout\) # ((\MEMORIA_INTRUCAO|memROM~17_combout\)))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(3) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~13_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\CPU|MUX2|Equal1~0_combout\ & ((\MEMORIA_INTRUCAO|memROM~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~13_sumout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(3),
	combout => \CPU|MUX2|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~3_combout\ = ( !\CPU|PC|DOUT\(2) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) & 
-- \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~3_combout\);

\CPU|REG_END_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~9_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(2));

\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \CPU|REG_END_RET|DOUT\(2) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~9_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~3_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(2) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~9_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMADOR|ALT_INV_Add0~9_sumout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(2),
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\MEMORIA_INTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~11_combout\ = ( \CPU|PC|DOUT\(5) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( 
-- \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000100000001101100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~11_combout\);

\CPU|REG_END_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~5_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(1));

\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|REG_END_RET|DOUT\(1) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~5_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~11_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(1) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~5_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~11_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMADOR|ALT_INV_Add0~5_sumout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~2_combout\ = ( \CPU|PC|DOUT\(5) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000000100001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~2_combout\);

\CPU|REG_END_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~1_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(0));

\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|REG_END_RET|DOUT\(0) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~1_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(0) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~1_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\CPU|MUX2|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001111110001110100001100000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~1_sumout\,
	datad => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(0),
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\MEMORIA_INTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~12_combout\ = ( \CPU|PC|DOUT\(5) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \MEMORIA_INTRUCAO|memROM~1_combout\ & 
-- ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010010000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~12_combout\);

\CPU|REG_END_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~21_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(5));

\CPU|MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = ( \CPU|REG_END_RET|DOUT\(5) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~21_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(5) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~21_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMADOR|ALT_INV_Add0~21_sumout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(5),
	combout => \CPU|MUX2|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|BANCO_REG|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux7~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~0_combout\ & ( \CPU|BANCO_REG|REG_0|DOUT\(0) & ( ((\CPU|BANCO_REG|REG_1|DOUT\(0)) # (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~0_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(0) & ( (((\CPU|BANCO_REG|REG_1|DOUT\(0)) # (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(5)) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~0_combout\ & ( !\CPU|BANCO_REG|REG_0|DOUT\(0) & ( (!\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(7) & \CPU|BANCO_REG|REG_1|DOUT\(0))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~0_combout\ & ( !\CPU|BANCO_REG|REG_0|DOUT\(0) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & \CPU|BANCO_REG|REG_1|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001100000001111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(0),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	dataf => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(0),
	combout => \CPU|BANCO_REG|Mux7~0_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~4_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~5_combout\))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( !\MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\MEMORIA_INTRUCAO|memROM~1_combout\ & (\MEMORIA_INTRUCAO|memROM~4_combout\ & !\MEMORIA_INTRUCAO|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~9_combout\ & ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(3) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & ((!\MEMORIA_INTRUCAO|memROM~8_combout\) # (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \comb~0_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (\comb~0_combout\ & \comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
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

\CPU|REG_END_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMADOR|Add0~33_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(8));

\CPU|MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~8_combout\ = ( !\CPU|MUX2|Equal1~0_combout\ & ( (((!\CPU|MUX2|Equal2~0_combout\ & ((\CPU|SOMADOR|Add0~33_sumout\))) # (\CPU|MUX2|Equal2~0_combout\ & (\CPU|REG_END_RET|DOUT\(8))))) ) ) # ( \CPU|MUX2|Equal1~0_combout\ & ( 
-- (!\CPU|MUX2|Equal2~0_combout\ & ((((\CPU|SOMADOR|Add0~33_sumout\))))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~9_combout\ & (\MEMORIA_INTRUCAO|memROM~1_combout\ & (!\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111000011110001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|SOMADOR|ALT_INV_Add0~33_sumout\,
	datae => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datag => \CPU|REG_END_RET|ALT_INV_DOUT\(8),
	combout => \CPU|MUX2|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & \comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	combout => \comb~4_combout\);

\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \comb~4_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~11_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\CPU|BANCO_REG|Mux7~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\FF_LEDR8|DOUT~q\))))) # 
-- (\MEMORIA_INTRUCAO|memROM~11_combout\ & (((\FF_LEDR8|DOUT~q\)))) ) ) # ( !\comb~4_combout\ & ( \FF_LEDR8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010100110011001100110011001100110101001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\,
	datab => \FF_LEDR8|ALT_INV_DOUT~q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \ALT_INV_comb~4_combout\,
	combout => \FF_LEDR8|DOUT~0_combout\);

\FF_LEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FF_LEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR8|DOUT~q\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~3_combout\ & (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & \comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	combout => \comb~5_combout\);

\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \FF_LEDR9|DOUT~q\ ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\comb~5_combout\ & (((\FF_LEDR9|DOUT~q\)))) # (\comb~5_combout\ & ((!\MEMORIA_INTRUCAO|memROM~11_combout\ & 
-- ((\FF_LEDR9|DOUT~q\))) # (\MEMORIA_INTRUCAO|memROM~11_combout\ & (\CPU|BANCO_REG|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110101001100110011001100110011001101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\,
	datab => \FF_LEDR9|ALT_INV_DOUT~q\,
	datac => \ALT_INV_comb~5_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \FF_LEDR9|DOUT~0_combout\);

\FF_LEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FF_LEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR9|DOUT~q\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_REG_A(0) <= \REG_A[0]~output_o\;

ww_REG_A(1) <= \REG_A[1]~output_o\;

ww_REG_A(2) <= \REG_A[2]~output_o\;

ww_REG_A(3) <= \REG_A[3]~output_o\;

ww_REG_A(4) <= \REG_A[4]~output_o\;

ww_REG_A(5) <= \REG_A[5]~output_o\;

ww_REG_A(6) <= \REG_A[6]~output_o\;

ww_REG_A(7) <= \REG_A[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


