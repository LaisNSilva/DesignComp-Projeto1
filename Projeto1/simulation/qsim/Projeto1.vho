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

-- DATE "10/08/2021 14:32:11"

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
SIGNAL \MEMORIA_INTRUCAO|memROM~26_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~51_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~24_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~25_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~27_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~28_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~29_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~30_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~31_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~2\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~6\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~17_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~18_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~19_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~20_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~21_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~22_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~23_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~56_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~57_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~69_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~59_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~70_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~60_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~61_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~47_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~48_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~49_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~50_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~52_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~53_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~54_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~55_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~68_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~45_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~71_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~72_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~58_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~73_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~66_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~37_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~38_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~39_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~40_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~62_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~63_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~64_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~65_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~695_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|process_0~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~696_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~699_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~700_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~727_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~728_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~731_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~732_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~611_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~703_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~704_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~147_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~707_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~708_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~155_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~735_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~736_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~179_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~739_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~740_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~187_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~612_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~711_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~712_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~715_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~716_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~743_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~744_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~115_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~747_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~748_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~123_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~613_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~719_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~720_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~211_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~723_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~724_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~219_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~751_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~752_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~243_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~755_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~756_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~251_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~614_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~615_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~697_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~698_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~275_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~701_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~702_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~283_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~713_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~714_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~339_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~717_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~718_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~347_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~616_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~729_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~730_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~307_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~733_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~734_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~315_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~745_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~746_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~371_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~749_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~750_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~379_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~617_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~705_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~706_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~403_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~709_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~710_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~411_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~721_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~722_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~467_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~725_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~726_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~475_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~618_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~737_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~738_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~435_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~741_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~742_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~443_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~753_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~754_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~499_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~757_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~758_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~507_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~619_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~620_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~759_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~760_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~763_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~764_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~767_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~768_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~163_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~771_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~772_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~171_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~621_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~791_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~792_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~799_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~800_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~795_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~796_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~195_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~803_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~804_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~203_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~622_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~775_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~776_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~99_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~779_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~780_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~107_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~783_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~784_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~227_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~787_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~788_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~235_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~623_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~807_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~808_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~131_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~815_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~816_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~139_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~811_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~812_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~259_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~819_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~820_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~267_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~624_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~625_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~761_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~762_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~291_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~765_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~766_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~299_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~793_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~794_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~323_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~801_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~802_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~331_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~626_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~769_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~770_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~419_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~773_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~774_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~427_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~797_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~798_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~451_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~805_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~806_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~459_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~627_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~777_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~778_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~355_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~781_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~782_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~363_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~809_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~810_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~387_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~817_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~818_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~395_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~628_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~785_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~786_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~483_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~789_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~790_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~491_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~813_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~814_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~515_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~821_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~822_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~523_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~629_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~630_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~631_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~590_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~146_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~154_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~162_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~170_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~591_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~98_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~106_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~592_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~210_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~218_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~226_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~234_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~593_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~594_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~274_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~402_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~290_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~418_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~595_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~282_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~410_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~298_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~426_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~596_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~338_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~466_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~354_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~482_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~597_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~346_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~474_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~362_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~490_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~598_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~599_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~114_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~130_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~600_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~122_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~138_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~601_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~178_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~194_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~242_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~258_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~602_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~186_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~202_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~250_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~266_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~603_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~604_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~306_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~314_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~322_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~330_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~605_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~434_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~442_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~450_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~458_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~606_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~370_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~378_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~386_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~394_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~607_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~498_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~506_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~514_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~522_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~608_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~609_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~610_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~113_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~569_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~145_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~177_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~209_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~241_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~570_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~129_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~571_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~161_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~193_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~225_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~257_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~572_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~573_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~273_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~305_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~401_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~433_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~574_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~289_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~321_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~417_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~449_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~575_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~337_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~369_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~465_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~497_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~576_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~353_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~385_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~481_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~513_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~577_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~578_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~579_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~153_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~185_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~169_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~201_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~580_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~121_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~137_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~581_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~217_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~249_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~233_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~265_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~582_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~583_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~281_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~409_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~345_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~473_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~584_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~313_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~441_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~377_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~505_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~585_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~297_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~425_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~361_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~489_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~586_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~329_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~457_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~393_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~521_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~587_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~588_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~589_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~16_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~272_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~288_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~304_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~320_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~336_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~352_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~550_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~112_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~368_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~128_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~384_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~280_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~344_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~553_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~312_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~120_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~376_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~554_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~296_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~104_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~360_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~555_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~328_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~136_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~392_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~556_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~144_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~400_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~176_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~432_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~558_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~160_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~416_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~192_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~448_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~559_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~208_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~464_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~240_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~496_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~560_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~224_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~480_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~256_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~512_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~561_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~562_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~152_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~408_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~168_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~424_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~563_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~184_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~440_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~200_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~456_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~564_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~216_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~472_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~232_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~488_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~565_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~248_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~504_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~264_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~520_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~566_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~567_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~568_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~15_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~271_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~279_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~143_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~399_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~151_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~407_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~335_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~343_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~207_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~463_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~215_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~471_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~530_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~531_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~303_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~311_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~532_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~175_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~431_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~183_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~439_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~111_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~367_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~119_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~375_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~534_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~239_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~495_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~247_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~503_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~536_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~287_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~295_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~159_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~415_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~167_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~423_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~351_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~103_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~359_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~223_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~479_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~231_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~487_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~319_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~191_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~447_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~327_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~199_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~455_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~127_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~383_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~255_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~511_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~135_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~391_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~263_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~519_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~547_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \FLIP_FLOP_DM|DOUT~q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Saida_Dados[0]~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \detectorSub1|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub1|saidaQ~q\ : std_logic;
SIGNAL \detectorSub1|saida~combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY1|DOUT~q\ : std_logic;
SIGNAL \Saida_Dados[0]~1_combout\ : std_logic;
SIGNAL \Saida_Dados[0]~4_combout\ : std_logic;
SIGNAL \Saida_Dados[0]~2_combout\ : std_logic;
SIGNAL \Saida_Dados[0]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~78_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~74_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Habilita_reg0~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Habilita_reg1~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Equal0~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Habilita_reg2~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Equal0~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Habilita_reg3~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux5~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux4~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~9_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux3~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~30\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~632_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~148_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~180_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~164_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~196_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~633_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~116_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~132_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~634_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~212_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~244_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~228_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~260_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~635_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~636_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~276_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~308_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~404_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~436_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~637_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~292_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~324_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~420_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~452_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~638_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~340_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~372_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~468_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~500_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~639_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~356_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~388_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~484_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~516_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~640_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~641_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~642_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~156_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~188_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~172_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~204_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~643_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~124_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~108_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~140_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~644_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~220_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~252_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~236_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~268_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~645_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~646_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~284_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~316_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~348_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~380_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~647_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~412_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~444_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~476_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~508_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~648_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~300_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~332_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~364_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~396_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~649_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~428_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~460_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~492_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~524_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~650_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~651_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~652_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~11_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux2~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~12_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux1~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~101_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~653_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~109_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~654_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~149_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~165_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~213_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~229_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~655_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~157_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~173_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~221_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~237_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~656_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~657_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~277_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~405_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~293_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~421_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~658_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~285_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~413_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~301_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~429_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~659_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~341_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~469_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~357_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~485_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~660_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~349_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~477_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~365_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~493_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~661_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~662_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~663_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~181_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~189_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~197_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~205_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~664_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~117_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~125_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~133_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~141_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~665_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~245_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~253_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~261_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~269_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~666_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~667_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~309_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~325_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~373_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~389_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~668_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~317_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~333_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~381_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~397_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~669_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~437_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~453_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~501_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~517_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~670_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~445_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~461_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~509_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~525_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~671_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~672_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~673_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~13_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux0~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~150_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~182_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~674_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~158_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~190_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~675_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~118_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~214_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~246_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~676_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~126_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~222_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~254_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~677_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~678_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~166_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~174_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~679_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~198_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~206_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~680_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~102_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~110_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~230_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~238_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~681_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~134_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~142_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~262_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~270_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~682_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~683_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~278_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~310_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~342_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~374_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~684_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~286_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~318_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~350_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~382_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~685_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~406_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~438_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~470_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~502_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~686_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~414_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~446_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~478_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~510_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~687_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~688_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~294_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~302_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~422_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~430_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~689_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~326_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~334_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~454_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~462_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~690_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~358_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~366_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~486_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~494_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~691_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~390_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~398_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~518_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~526_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~692_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~693_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~694_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~10\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~32_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~33_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~34_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~35_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~36_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~67_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~14\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~18\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~22\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \CPU|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~41_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~42_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~26\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~43_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~44_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~46_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|Mux7~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
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
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~30\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~q\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|Entrada_reg1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_2|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_3|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_LEDR0a7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REG_END_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|Entrada_reg0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|Entrada_reg2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|Entrada_reg3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~1_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_DM|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \CPU|REG_END_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~64_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~63_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~62_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~60_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~59_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~58_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~57_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~56_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~54_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~53_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~52_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~51_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~50_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~49_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~48_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~47_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \FF_LEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\ : std_logic;
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
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~4_combout\ : std_logic;
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
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~13_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[6]~12_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Entrada_reg3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Entrada_reg2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Entrada_reg1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Entrada_reg0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_Habilita_reg3~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Habilita_reg2~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Habilita_reg1~combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_Habilita_reg0~combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~73_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~72_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~71_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~70_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~69_combout\ : std_logic;
SIGNAL \detectorSub1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

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
\MEMORIA_DADOS|ALT_INV_ram~644_combout\ <= NOT \MEMORIA_DADOS|ram~644_combout\;
\MEMORIA_DADOS|ALT_INV_ram~140_q\ <= NOT \MEMORIA_DADOS|ram~140_q\;
\MEMORIA_DADOS|ALT_INV_ram~108_q\ <= NOT \MEMORIA_DADOS|ram~108_q\;
\MEMORIA_DADOS|ALT_INV_ram~124_q\ <= NOT \MEMORIA_DADOS|ram~124_q\;
\MEMORIA_DADOS|ALT_INV_ram~92_q\ <= NOT \MEMORIA_DADOS|ram~92_q\;
\MEMORIA_DADOS|ALT_INV_ram~643_combout\ <= NOT \MEMORIA_DADOS|ram~643_combout\;
\MEMORIA_DADOS|ALT_INV_ram~204_q\ <= NOT \MEMORIA_DADOS|ram~204_q\;
\MEMORIA_DADOS|ALT_INV_ram~172_q\ <= NOT \MEMORIA_DADOS|ram~172_q\;
\MEMORIA_DADOS|ALT_INV_ram~188_q\ <= NOT \MEMORIA_DADOS|ram~188_q\;
\MEMORIA_DADOS|ALT_INV_ram~156_q\ <= NOT \MEMORIA_DADOS|ram~156_q\;
\MEMORIA_DADOS|ALT_INV_ram~642_combout\ <= NOT \MEMORIA_DADOS|ram~642_combout\;
\MEMORIA_DADOS|ALT_INV_ram~76_q\ <= NOT \MEMORIA_DADOS|ram~76_q\;
\MEMORIA_DADOS|ALT_INV_ram~44_q\ <= NOT \MEMORIA_DADOS|ram~44_q\;
\MEMORIA_DADOS|ALT_INV_ram~60_q\ <= NOT \MEMORIA_DADOS|ram~60_q\;
\MEMORIA_DADOS|ALT_INV_ram~28_q\ <= NOT \MEMORIA_DADOS|ram~28_q\;
\MEMORIA_DADOS|ALT_INV_ram~641_combout\ <= NOT \MEMORIA_DADOS|ram~641_combout\;
\MEMORIA_DADOS|ALT_INV_ram~640_combout\ <= NOT \MEMORIA_DADOS|ram~640_combout\;
\MEMORIA_DADOS|ALT_INV_ram~516_q\ <= NOT \MEMORIA_DADOS|ram~516_q\;
\MEMORIA_DADOS|ALT_INV_ram~484_q\ <= NOT \MEMORIA_DADOS|ram~484_q\;
\MEMORIA_DADOS|ALT_INV_ram~388_q\ <= NOT \MEMORIA_DADOS|ram~388_q\;
\MEMORIA_DADOS|ALT_INV_ram~356_q\ <= NOT \MEMORIA_DADOS|ram~356_q\;
\MEMORIA_DADOS|ALT_INV_ram~639_combout\ <= NOT \MEMORIA_DADOS|ram~639_combout\;
\MEMORIA_DADOS|ALT_INV_ram~500_q\ <= NOT \MEMORIA_DADOS|ram~500_q\;
\MEMORIA_DADOS|ALT_INV_ram~468_q\ <= NOT \MEMORIA_DADOS|ram~468_q\;
\MEMORIA_DADOS|ALT_INV_ram~372_q\ <= NOT \MEMORIA_DADOS|ram~372_q\;
\MEMORIA_DADOS|ALT_INV_ram~340_q\ <= NOT \MEMORIA_DADOS|ram~340_q\;
\MEMORIA_DADOS|ALT_INV_ram~638_combout\ <= NOT \MEMORIA_DADOS|ram~638_combout\;
\MEMORIA_DADOS|ALT_INV_ram~452_q\ <= NOT \MEMORIA_DADOS|ram~452_q\;
\MEMORIA_DADOS|ALT_INV_ram~420_q\ <= NOT \MEMORIA_DADOS|ram~420_q\;
\MEMORIA_DADOS|ALT_INV_ram~324_q\ <= NOT \MEMORIA_DADOS|ram~324_q\;
\MEMORIA_DADOS|ALT_INV_ram~292_q\ <= NOT \MEMORIA_DADOS|ram~292_q\;
\MEMORIA_DADOS|ALT_INV_ram~637_combout\ <= NOT \MEMORIA_DADOS|ram~637_combout\;
\MEMORIA_DADOS|ALT_INV_ram~436_q\ <= NOT \MEMORIA_DADOS|ram~436_q\;
\MEMORIA_DADOS|ALT_INV_ram~404_q\ <= NOT \MEMORIA_DADOS|ram~404_q\;
\MEMORIA_DADOS|ALT_INV_ram~308_q\ <= NOT \MEMORIA_DADOS|ram~308_q\;
\MEMORIA_DADOS|ALT_INV_ram~276_q\ <= NOT \MEMORIA_DADOS|ram~276_q\;
\MEMORIA_DADOS|ALT_INV_ram~636_combout\ <= NOT \MEMORIA_DADOS|ram~636_combout\;
\MEMORIA_DADOS|ALT_INV_ram~635_combout\ <= NOT \MEMORIA_DADOS|ram~635_combout\;
\MEMORIA_DADOS|ALT_INV_ram~260_q\ <= NOT \MEMORIA_DADOS|ram~260_q\;
\MEMORIA_DADOS|ALT_INV_ram~228_q\ <= NOT \MEMORIA_DADOS|ram~228_q\;
\MEMORIA_DADOS|ALT_INV_ram~244_q\ <= NOT \MEMORIA_DADOS|ram~244_q\;
\MEMORIA_DADOS|ALT_INV_ram~212_q\ <= NOT \MEMORIA_DADOS|ram~212_q\;
\MEMORIA_DADOS|ALT_INV_ram~634_combout\ <= NOT \MEMORIA_DADOS|ram~634_combout\;
\MEMORIA_DADOS|ALT_INV_ram~132_q\ <= NOT \MEMORIA_DADOS|ram~132_q\;
\MEMORIA_DADOS|ALT_INV_ram~100_q\ <= NOT \MEMORIA_DADOS|ram~100_q\;
\MEMORIA_DADOS|ALT_INV_ram~116_q\ <= NOT \MEMORIA_DADOS|ram~116_q\;
\MEMORIA_DADOS|ALT_INV_ram~84_q\ <= NOT \MEMORIA_DADOS|ram~84_q\;
\MEMORIA_DADOS|ALT_INV_ram~633_combout\ <= NOT \MEMORIA_DADOS|ram~633_combout\;
\MEMORIA_DADOS|ALT_INV_ram~196_q\ <= NOT \MEMORIA_DADOS|ram~196_q\;
\MEMORIA_DADOS|ALT_INV_ram~164_q\ <= NOT \MEMORIA_DADOS|ram~164_q\;
\MEMORIA_DADOS|ALT_INV_ram~180_q\ <= NOT \MEMORIA_DADOS|ram~180_q\;
\MEMORIA_DADOS|ALT_INV_ram~148_q\ <= NOT \MEMORIA_DADOS|ram~148_q\;
\MEMORIA_DADOS|ALT_INV_ram~632_combout\ <= NOT \MEMORIA_DADOS|ram~632_combout\;
\MEMORIA_DADOS|ALT_INV_ram~68_q\ <= NOT \MEMORIA_DADOS|ram~68_q\;
\MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \MEMORIA_DADOS|ram~36_q\;
\MEMORIA_DADOS|ALT_INV_ram~52_q\ <= NOT \MEMORIA_DADOS|ram~52_q\;
\MEMORIA_DADOS|ALT_INV_ram~20_q\ <= NOT \MEMORIA_DADOS|ram~20_q\;
\CPU|ULA1|ALT_INV_saida[4]~9_combout\ <= NOT \CPU|ULA1|saida[4]~9_combout\;
\CPU|ULA1|ALT_INV_saida[4]~8_combout\ <= NOT \CPU|ULA1|saida[4]~8_combout\;
\MEMORIA_DADOS|ALT_INV_ram~631_combout\ <= NOT \MEMORIA_DADOS|ram~631_combout\;
\MEMORIA_DADOS|ALT_INV_ram~630_combout\ <= NOT \MEMORIA_DADOS|ram~630_combout\;
\MEMORIA_DADOS|ALT_INV_ram~629_combout\ <= NOT \MEMORIA_DADOS|ram~629_combout\;
\MEMORIA_DADOS|ALT_INV_ram~523_q\ <= NOT \MEMORIA_DADOS|ram~523_q\;
\MEMORIA_DADOS|ALT_INV_ram~515_q\ <= NOT \MEMORIA_DADOS|ram~515_q\;
\MEMORIA_DADOS|ALT_INV_ram~491_q\ <= NOT \MEMORIA_DADOS|ram~491_q\;
\MEMORIA_DADOS|ALT_INV_ram~483_q\ <= NOT \MEMORIA_DADOS|ram~483_q\;
\MEMORIA_DADOS|ALT_INV_ram~628_combout\ <= NOT \MEMORIA_DADOS|ram~628_combout\;
\MEMORIA_DADOS|ALT_INV_ram~395_q\ <= NOT \MEMORIA_DADOS|ram~395_q\;
\MEMORIA_DADOS|ALT_INV_ram~387_q\ <= NOT \MEMORIA_DADOS|ram~387_q\;
\MEMORIA_DADOS|ALT_INV_ram~363_q\ <= NOT \MEMORIA_DADOS|ram~363_q\;
\MEMORIA_DADOS|ALT_INV_ram~355_q\ <= NOT \MEMORIA_DADOS|ram~355_q\;
\MEMORIA_DADOS|ALT_INV_ram~627_combout\ <= NOT \MEMORIA_DADOS|ram~627_combout\;
\MEMORIA_DADOS|ALT_INV_ram~459_q\ <= NOT \MEMORIA_DADOS|ram~459_q\;
\MEMORIA_DADOS|ALT_INV_ram~451_q\ <= NOT \MEMORIA_DADOS|ram~451_q\;
\MEMORIA_DADOS|ALT_INV_ram~427_q\ <= NOT \MEMORIA_DADOS|ram~427_q\;
\MEMORIA_DADOS|ALT_INV_ram~419_q\ <= NOT \MEMORIA_DADOS|ram~419_q\;
\MEMORIA_DADOS|ALT_INV_ram~626_combout\ <= NOT \MEMORIA_DADOS|ram~626_combout\;
\MEMORIA_DADOS|ALT_INV_ram~331_q\ <= NOT \MEMORIA_DADOS|ram~331_q\;
\MEMORIA_DADOS|ALT_INV_ram~323_q\ <= NOT \MEMORIA_DADOS|ram~323_q\;
\MEMORIA_DADOS|ALT_INV_ram~299_q\ <= NOT \MEMORIA_DADOS|ram~299_q\;
\MEMORIA_DADOS|ALT_INV_ram~291_q\ <= NOT \MEMORIA_DADOS|ram~291_q\;
\MEMORIA_DADOS|ALT_INV_ram~625_combout\ <= NOT \MEMORIA_DADOS|ram~625_combout\;
\MEMORIA_DADOS|ALT_INV_ram~624_combout\ <= NOT \MEMORIA_DADOS|ram~624_combout\;
\MEMORIA_DADOS|ALT_INV_ram~267_q\ <= NOT \MEMORIA_DADOS|ram~267_q\;
\MEMORIA_DADOS|ALT_INV_ram~259_q\ <= NOT \MEMORIA_DADOS|ram~259_q\;
\MEMORIA_DADOS|ALT_INV_ram~139_q\ <= NOT \MEMORIA_DADOS|ram~139_q\;
\MEMORIA_DADOS|ALT_INV_ram~131_q\ <= NOT \MEMORIA_DADOS|ram~131_q\;
\MEMORIA_DADOS|ALT_INV_ram~623_combout\ <= NOT \MEMORIA_DADOS|ram~623_combout\;
\MEMORIA_DADOS|ALT_INV_ram~235_q\ <= NOT \MEMORIA_DADOS|ram~235_q\;
\MEMORIA_DADOS|ALT_INV_ram~227_q\ <= NOT \MEMORIA_DADOS|ram~227_q\;
\MEMORIA_DADOS|ALT_INV_ram~107_q\ <= NOT \MEMORIA_DADOS|ram~107_q\;
\MEMORIA_DADOS|ALT_INV_ram~99_q\ <= NOT \MEMORIA_DADOS|ram~99_q\;
\MEMORIA_DADOS|ALT_INV_ram~622_combout\ <= NOT \MEMORIA_DADOS|ram~622_combout\;
\MEMORIA_DADOS|ALT_INV_ram~203_q\ <= NOT \MEMORIA_DADOS|ram~203_q\;
\MEMORIA_DADOS|ALT_INV_ram~195_q\ <= NOT \MEMORIA_DADOS|ram~195_q\;
\MEMORIA_DADOS|ALT_INV_ram~75_q\ <= NOT \MEMORIA_DADOS|ram~75_q\;
\MEMORIA_DADOS|ALT_INV_ram~67_q\ <= NOT \MEMORIA_DADOS|ram~67_q\;
\MEMORIA_DADOS|ALT_INV_ram~621_combout\ <= NOT \MEMORIA_DADOS|ram~621_combout\;
\MEMORIA_DADOS|ALT_INV_ram~171_q\ <= NOT \MEMORIA_DADOS|ram~171_q\;
\MEMORIA_DADOS|ALT_INV_ram~163_q\ <= NOT \MEMORIA_DADOS|ram~163_q\;
\MEMORIA_DADOS|ALT_INV_ram~43_q\ <= NOT \MEMORIA_DADOS|ram~43_q\;
\MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \MEMORIA_DADOS|ram~35_q\;
\MEMORIA_DADOS|ALT_INV_ram~620_combout\ <= NOT \MEMORIA_DADOS|ram~620_combout\;
\MEMORIA_DADOS|ALT_INV_ram~619_combout\ <= NOT \MEMORIA_DADOS|ram~619_combout\;
\MEMORIA_DADOS|ALT_INV_ram~507_q\ <= NOT \MEMORIA_DADOS|ram~507_q\;
\MEMORIA_DADOS|ALT_INV_ram~499_q\ <= NOT \MEMORIA_DADOS|ram~499_q\;
\MEMORIA_DADOS|ALT_INV_ram~443_q\ <= NOT \MEMORIA_DADOS|ram~443_q\;
\MEMORIA_DADOS|ALT_INV_ram~435_q\ <= NOT \MEMORIA_DADOS|ram~435_q\;
\MEMORIA_DADOS|ALT_INV_ram~618_combout\ <= NOT \MEMORIA_DADOS|ram~618_combout\;
\MEMORIA_DADOS|ALT_INV_ram~475_q\ <= NOT \MEMORIA_DADOS|ram~475_q\;
\MEMORIA_DADOS|ALT_INV_ram~467_q\ <= NOT \MEMORIA_DADOS|ram~467_q\;
\MEMORIA_DADOS|ALT_INV_ram~411_q\ <= NOT \MEMORIA_DADOS|ram~411_q\;
\MEMORIA_DADOS|ALT_INV_ram~403_q\ <= NOT \MEMORIA_DADOS|ram~403_q\;
\MEMORIA_DADOS|ALT_INV_ram~617_combout\ <= NOT \MEMORIA_DADOS|ram~617_combout\;
\MEMORIA_DADOS|ALT_INV_ram~379_q\ <= NOT \MEMORIA_DADOS|ram~379_q\;
\MEMORIA_DADOS|ALT_INV_ram~371_q\ <= NOT \MEMORIA_DADOS|ram~371_q\;
\MEMORIA_DADOS|ALT_INV_ram~315_q\ <= NOT \MEMORIA_DADOS|ram~315_q\;
\MEMORIA_DADOS|ALT_INV_ram~307_q\ <= NOT \MEMORIA_DADOS|ram~307_q\;
\MEMORIA_DADOS|ALT_INV_ram~616_combout\ <= NOT \MEMORIA_DADOS|ram~616_combout\;
\MEMORIA_DADOS|ALT_INV_ram~347_q\ <= NOT \MEMORIA_DADOS|ram~347_q\;
\MEMORIA_DADOS|ALT_INV_ram~339_q\ <= NOT \MEMORIA_DADOS|ram~339_q\;
\MEMORIA_DADOS|ALT_INV_ram~283_q\ <= NOT \MEMORIA_DADOS|ram~283_q\;
\MEMORIA_DADOS|ALT_INV_ram~275_q\ <= NOT \MEMORIA_DADOS|ram~275_q\;
\MEMORIA_DADOS|ALT_INV_ram~615_combout\ <= NOT \MEMORIA_DADOS|ram~615_combout\;
\MEMORIA_DADOS|ALT_INV_ram~614_combout\ <= NOT \MEMORIA_DADOS|ram~614_combout\;
\MEMORIA_DADOS|ALT_INV_ram~251_q\ <= NOT \MEMORIA_DADOS|ram~251_q\;
\MEMORIA_DADOS|ALT_INV_ram~243_q\ <= NOT \MEMORIA_DADOS|ram~243_q\;
\MEMORIA_DADOS|ALT_INV_ram~219_q\ <= NOT \MEMORIA_DADOS|ram~219_q\;
\MEMORIA_DADOS|ALT_INV_ram~211_q\ <= NOT \MEMORIA_DADOS|ram~211_q\;
\MEMORIA_DADOS|ALT_INV_ram~613_combout\ <= NOT \MEMORIA_DADOS|ram~613_combout\;
\MEMORIA_DADOS|ALT_INV_ram~123_q\ <= NOT \MEMORIA_DADOS|ram~123_q\;
\MEMORIA_DADOS|ALT_INV_ram~115_q\ <= NOT \MEMORIA_DADOS|ram~115_q\;
\MEMORIA_DADOS|ALT_INV_ram~91_q\ <= NOT \MEMORIA_DADOS|ram~91_q\;
\MEMORIA_DADOS|ALT_INV_ram~83_q\ <= NOT \MEMORIA_DADOS|ram~83_q\;
\MEMORIA_DADOS|ALT_INV_ram~612_combout\ <= NOT \MEMORIA_DADOS|ram~612_combout\;
\MEMORIA_DADOS|ALT_INV_ram~187_q\ <= NOT \MEMORIA_DADOS|ram~187_q\;
\MEMORIA_DADOS|ALT_INV_ram~179_q\ <= NOT \MEMORIA_DADOS|ram~179_q\;
\MEMORIA_DADOS|ALT_INV_ram~155_q\ <= NOT \MEMORIA_DADOS|ram~155_q\;
\MEMORIA_DADOS|ALT_INV_ram~147_q\ <= NOT \MEMORIA_DADOS|ram~147_q\;
\MEMORIA_DADOS|ALT_INV_ram~611_combout\ <= NOT \MEMORIA_DADOS|ram~611_combout\;
\MEMORIA_DADOS|ALT_INV_ram~59_q\ <= NOT \MEMORIA_DADOS|ram~59_q\;
\MEMORIA_DADOS|ALT_INV_ram~51_q\ <= NOT \MEMORIA_DADOS|ram~51_q\;
\MEMORIA_DADOS|ALT_INV_ram~27_q\ <= NOT \MEMORIA_DADOS|ram~27_q\;
\MEMORIA_DADOS|ALT_INV_ram~19_q\ <= NOT \MEMORIA_DADOS|ram~19_q\;
\CPU|ULA1|ALT_INV_saida[3]~7_combout\ <= NOT \CPU|ULA1|saida[3]~7_combout\;
\CPU|ULA1|ALT_INV_saida[3]~6_combout\ <= NOT \CPU|ULA1|saida[3]~6_combout\;
\MEMORIA_DADOS|ALT_INV_ram~610_combout\ <= NOT \MEMORIA_DADOS|ram~610_combout\;
\MEMORIA_DADOS|ALT_INV_ram~609_combout\ <= NOT \MEMORIA_DADOS|ram~609_combout\;
\MEMORIA_DADOS|ALT_INV_ram~608_combout\ <= NOT \MEMORIA_DADOS|ram~608_combout\;
\MEMORIA_DADOS|ALT_INV_ram~522_q\ <= NOT \MEMORIA_DADOS|ram~522_q\;
\MEMORIA_DADOS|ALT_INV_ram~514_q\ <= NOT \MEMORIA_DADOS|ram~514_q\;
\MEMORIA_DADOS|ALT_INV_ram~506_q\ <= NOT \MEMORIA_DADOS|ram~506_q\;
\MEMORIA_DADOS|ALT_INV_ram~498_q\ <= NOT \MEMORIA_DADOS|ram~498_q\;
\MEMORIA_DADOS|ALT_INV_ram~607_combout\ <= NOT \MEMORIA_DADOS|ram~607_combout\;
\MEMORIA_DADOS|ALT_INV_ram~394_q\ <= NOT \MEMORIA_DADOS|ram~394_q\;
\MEMORIA_DADOS|ALT_INV_ram~386_q\ <= NOT \MEMORIA_DADOS|ram~386_q\;
\MEMORIA_DADOS|ALT_INV_ram~378_q\ <= NOT \MEMORIA_DADOS|ram~378_q\;
\MEMORIA_DADOS|ALT_INV_ram~370_q\ <= NOT \MEMORIA_DADOS|ram~370_q\;
\MEMORIA_DADOS|ALT_INV_ram~606_combout\ <= NOT \MEMORIA_DADOS|ram~606_combout\;
\MEMORIA_DADOS|ALT_INV_ram~458_q\ <= NOT \MEMORIA_DADOS|ram~458_q\;
\MEMORIA_DADOS|ALT_INV_ram~450_q\ <= NOT \MEMORIA_DADOS|ram~450_q\;
\MEMORIA_DADOS|ALT_INV_ram~442_q\ <= NOT \MEMORIA_DADOS|ram~442_q\;
\MEMORIA_DADOS|ALT_INV_ram~434_q\ <= NOT \MEMORIA_DADOS|ram~434_q\;
\MEMORIA_DADOS|ALT_INV_ram~605_combout\ <= NOT \MEMORIA_DADOS|ram~605_combout\;
\MEMORIA_DADOS|ALT_INV_ram~330_q\ <= NOT \MEMORIA_DADOS|ram~330_q\;
\MEMORIA_DADOS|ALT_INV_ram~322_q\ <= NOT \MEMORIA_DADOS|ram~322_q\;
\MEMORIA_DADOS|ALT_INV_ram~314_q\ <= NOT \MEMORIA_DADOS|ram~314_q\;
\MEMORIA_DADOS|ALT_INV_ram~306_q\ <= NOT \MEMORIA_DADOS|ram~306_q\;
\MEMORIA_DADOS|ALT_INV_ram~604_combout\ <= NOT \MEMORIA_DADOS|ram~604_combout\;
\MEMORIA_DADOS|ALT_INV_ram~603_combout\ <= NOT \MEMORIA_DADOS|ram~603_combout\;
\MEMORIA_DADOS|ALT_INV_ram~266_q\ <= NOT \MEMORIA_DADOS|ram~266_q\;
\MEMORIA_DADOS|ALT_INV_ram~250_q\ <= NOT \MEMORIA_DADOS|ram~250_q\;
\MEMORIA_DADOS|ALT_INV_ram~202_q\ <= NOT \MEMORIA_DADOS|ram~202_q\;
\MEMORIA_DADOS|ALT_INV_ram~186_q\ <= NOT \MEMORIA_DADOS|ram~186_q\;
\MEMORIA_DADOS|ALT_INV_ram~602_combout\ <= NOT \MEMORIA_DADOS|ram~602_combout\;
\MEMORIA_DADOS|ALT_INV_ram~258_q\ <= NOT \MEMORIA_DADOS|ram~258_q\;
\MEMORIA_DADOS|ALT_INV_ram~242_q\ <= NOT \MEMORIA_DADOS|ram~242_q\;
\MEMORIA_DADOS|ALT_INV_ram~194_q\ <= NOT \MEMORIA_DADOS|ram~194_q\;
\MEMORIA_DADOS|ALT_INV_ram~178_q\ <= NOT \MEMORIA_DADOS|ram~178_q\;
\MEMORIA_DADOS|ALT_INV_ram~601_combout\ <= NOT \MEMORIA_DADOS|ram~601_combout\;
\MEMORIA_DADOS|ALT_INV_ram~138_q\ <= NOT \MEMORIA_DADOS|ram~138_q\;
\MEMORIA_DADOS|ALT_INV_ram~122_q\ <= NOT \MEMORIA_DADOS|ram~122_q\;
\MEMORIA_DADOS|ALT_INV_ram~74_q\ <= NOT \MEMORIA_DADOS|ram~74_q\;
\MEMORIA_DADOS|ALT_INV_ram~58_q\ <= NOT \MEMORIA_DADOS|ram~58_q\;
\MEMORIA_DADOS|ALT_INV_ram~600_combout\ <= NOT \MEMORIA_DADOS|ram~600_combout\;
\MEMORIA_DADOS|ALT_INV_ram~130_q\ <= NOT \MEMORIA_DADOS|ram~130_q\;
\MEMORIA_DADOS|ALT_INV_ram~114_q\ <= NOT \MEMORIA_DADOS|ram~114_q\;
\MEMORIA_DADOS|ALT_INV_ram~66_q\ <= NOT \MEMORIA_DADOS|ram~66_q\;
\MEMORIA_DADOS|ALT_INV_ram~50_q\ <= NOT \MEMORIA_DADOS|ram~50_q\;
\MEMORIA_DADOS|ALT_INV_ram~599_combout\ <= NOT \MEMORIA_DADOS|ram~599_combout\;
\MEMORIA_DADOS|ALT_INV_ram~598_combout\ <= NOT \MEMORIA_DADOS|ram~598_combout\;
\MEMORIA_DADOS|ALT_INV_ram~490_q\ <= NOT \MEMORIA_DADOS|ram~490_q\;
\MEMORIA_DADOS|ALT_INV_ram~362_q\ <= NOT \MEMORIA_DADOS|ram~362_q\;
\MEMORIA_DADOS|ALT_INV_ram~474_q\ <= NOT \MEMORIA_DADOS|ram~474_q\;
\MEMORIA_DADOS|ALT_INV_ram~346_q\ <= NOT \MEMORIA_DADOS|ram~346_q\;
\MEMORIA_DADOS|ALT_INV_ram~597_combout\ <= NOT \MEMORIA_DADOS|ram~597_combout\;
\MEMORIA_DADOS|ALT_INV_ram~482_q\ <= NOT \MEMORIA_DADOS|ram~482_q\;
\MEMORIA_DADOS|ALT_INV_ram~354_q\ <= NOT \MEMORIA_DADOS|ram~354_q\;
\MEMORIA_DADOS|ALT_INV_ram~466_q\ <= NOT \MEMORIA_DADOS|ram~466_q\;
\MEMORIA_DADOS|ALT_INV_ram~338_q\ <= NOT \MEMORIA_DADOS|ram~338_q\;
\MEMORIA_DADOS|ALT_INV_ram~596_combout\ <= NOT \MEMORIA_DADOS|ram~596_combout\;
\MEMORIA_DADOS|ALT_INV_ram~426_q\ <= NOT \MEMORIA_DADOS|ram~426_q\;
\MEMORIA_DADOS|ALT_INV_ram~298_q\ <= NOT \MEMORIA_DADOS|ram~298_q\;
\MEMORIA_DADOS|ALT_INV_ram~410_q\ <= NOT \MEMORIA_DADOS|ram~410_q\;
\MEMORIA_DADOS|ALT_INV_ram~282_q\ <= NOT \MEMORIA_DADOS|ram~282_q\;
\MEMORIA_DADOS|ALT_INV_ram~595_combout\ <= NOT \MEMORIA_DADOS|ram~595_combout\;
\MEMORIA_DADOS|ALT_INV_ram~418_q\ <= NOT \MEMORIA_DADOS|ram~418_q\;
\MEMORIA_DADOS|ALT_INV_ram~290_q\ <= NOT \MEMORIA_DADOS|ram~290_q\;
\MEMORIA_DADOS|ALT_INV_ram~402_q\ <= NOT \MEMORIA_DADOS|ram~402_q\;
\MEMORIA_DADOS|ALT_INV_ram~274_q\ <= NOT \MEMORIA_DADOS|ram~274_q\;
\MEMORIA_DADOS|ALT_INV_ram~594_combout\ <= NOT \MEMORIA_DADOS|ram~594_combout\;
\MEMORIA_DADOS|ALT_INV_ram~593_combout\ <= NOT \MEMORIA_DADOS|ram~593_combout\;
\MEMORIA_DADOS|ALT_INV_ram~234_q\ <= NOT \MEMORIA_DADOS|ram~234_q\;
\MEMORIA_DADOS|ALT_INV_ram~226_q\ <= NOT \MEMORIA_DADOS|ram~226_q\;
\MEMORIA_DADOS|ALT_INV_ram~218_q\ <= NOT \MEMORIA_DADOS|ram~218_q\;
\MEMORIA_DADOS|ALT_INV_ram~210_q\ <= NOT \MEMORIA_DADOS|ram~210_q\;
\MEMORIA_DADOS|ALT_INV_ram~592_combout\ <= NOT \MEMORIA_DADOS|ram~592_combout\;
\MEMORIA_DADOS|ALT_INV_ram~106_q\ <= NOT \MEMORIA_DADOS|ram~106_q\;
\MEMORIA_DADOS|ALT_INV_ram~98_q\ <= NOT \MEMORIA_DADOS|ram~98_q\;
\MEMORIA_DADOS|ALT_INV_ram~90_q\ <= NOT \MEMORIA_DADOS|ram~90_q\;
\MEMORIA_DADOS|ALT_INV_ram~82_q\ <= NOT \MEMORIA_DADOS|ram~82_q\;
\MEMORIA_DADOS|ALT_INV_ram~591_combout\ <= NOT \MEMORIA_DADOS|ram~591_combout\;
\MEMORIA_DADOS|ALT_INV_ram~170_q\ <= NOT \MEMORIA_DADOS|ram~170_q\;
\MEMORIA_DADOS|ALT_INV_ram~162_q\ <= NOT \MEMORIA_DADOS|ram~162_q\;
\MEMORIA_DADOS|ALT_INV_ram~154_q\ <= NOT \MEMORIA_DADOS|ram~154_q\;
\MEMORIA_DADOS|ALT_INV_ram~146_q\ <= NOT \MEMORIA_DADOS|ram~146_q\;
\MEMORIA_DADOS|ALT_INV_ram~590_combout\ <= NOT \MEMORIA_DADOS|ram~590_combout\;
\MEMORIA_DADOS|ALT_INV_ram~42_q\ <= NOT \MEMORIA_DADOS|ram~42_q\;
\MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \MEMORIA_DADOS|ram~34_q\;
\MEMORIA_DADOS|ALT_INV_ram~26_q\ <= NOT \MEMORIA_DADOS|ram~26_q\;
\MEMORIA_DADOS|ALT_INV_ram~18_q\ <= NOT \MEMORIA_DADOS|ram~18_q\;
\CPU|ULA1|ALT_INV_saida[2]~5_combout\ <= NOT \CPU|ULA1|saida[2]~5_combout\;
\CPU|ULA1|ALT_INV_saida[2]~4_combout\ <= NOT \CPU|ULA1|saida[2]~4_combout\;
\MEMORIA_DADOS|ALT_INV_ram~589_combout\ <= NOT \MEMORIA_DADOS|ram~589_combout\;
\MEMORIA_DADOS|ALT_INV_ram~588_combout\ <= NOT \MEMORIA_DADOS|ram~588_combout\;
\MEMORIA_DADOS|ALT_INV_ram~587_combout\ <= NOT \MEMORIA_DADOS|ram~587_combout\;
\MEMORIA_DADOS|ALT_INV_ram~521_q\ <= NOT \MEMORIA_DADOS|ram~521_q\;
\MEMORIA_DADOS|ALT_INV_ram~393_q\ <= NOT \MEMORIA_DADOS|ram~393_q\;
\MEMORIA_DADOS|ALT_INV_ram~457_q\ <= NOT \MEMORIA_DADOS|ram~457_q\;
\MEMORIA_DADOS|ALT_INV_ram~329_q\ <= NOT \MEMORIA_DADOS|ram~329_q\;
\MEMORIA_DADOS|ALT_INV_ram~586_combout\ <= NOT \MEMORIA_DADOS|ram~586_combout\;
\MEMORIA_DADOS|ALT_INV_ram~489_q\ <= NOT \MEMORIA_DADOS|ram~489_q\;
\MEMORIA_DADOS|ALT_INV_ram~361_q\ <= NOT \MEMORIA_DADOS|ram~361_q\;
\MEMORIA_DADOS|ALT_INV_ram~425_q\ <= NOT \MEMORIA_DADOS|ram~425_q\;
\MEMORIA_DADOS|ALT_INV_ram~297_q\ <= NOT \MEMORIA_DADOS|ram~297_q\;
\MEMORIA_DADOS|ALT_INV_ram~585_combout\ <= NOT \MEMORIA_DADOS|ram~585_combout\;
\MEMORIA_DADOS|ALT_INV_ram~505_q\ <= NOT \MEMORIA_DADOS|ram~505_q\;
\MEMORIA_DADOS|ALT_INV_ram~377_q\ <= NOT \MEMORIA_DADOS|ram~377_q\;
\MEMORIA_DADOS|ALT_INV_ram~441_q\ <= NOT \MEMORIA_DADOS|ram~441_q\;
\MEMORIA_DADOS|ALT_INV_ram~313_q\ <= NOT \MEMORIA_DADOS|ram~313_q\;
\MEMORIA_DADOS|ALT_INV_ram~584_combout\ <= NOT \MEMORIA_DADOS|ram~584_combout\;
\MEMORIA_DADOS|ALT_INV_ram~473_q\ <= NOT \MEMORIA_DADOS|ram~473_q\;
\MEMORIA_DADOS|ALT_INV_ram~345_q\ <= NOT \MEMORIA_DADOS|ram~345_q\;
\MEMORIA_DADOS|ALT_INV_ram~409_q\ <= NOT \MEMORIA_DADOS|ram~409_q\;
\MEMORIA_DADOS|ALT_INV_ram~281_q\ <= NOT \MEMORIA_DADOS|ram~281_q\;
\MEMORIA_DADOS|ALT_INV_ram~583_combout\ <= NOT \MEMORIA_DADOS|ram~583_combout\;
\MEMORIA_DADOS|ALT_INV_ram~582_combout\ <= NOT \MEMORIA_DADOS|ram~582_combout\;
\MEMORIA_DADOS|ALT_INV_ram~265_q\ <= NOT \MEMORIA_DADOS|ram~265_q\;
\MEMORIA_DADOS|ALT_INV_ram~233_q\ <= NOT \MEMORIA_DADOS|ram~233_q\;
\MEMORIA_DADOS|ALT_INV_ram~249_q\ <= NOT \MEMORIA_DADOS|ram~249_q\;
\MEMORIA_DADOS|ALT_INV_ram~217_q\ <= NOT \MEMORIA_DADOS|ram~217_q\;
\MEMORIA_DADOS|ALT_INV_ram~581_combout\ <= NOT \MEMORIA_DADOS|ram~581_combout\;
\MEMORIA_DADOS|ALT_INV_ram~137_q\ <= NOT \MEMORIA_DADOS|ram~137_q\;
\MEMORIA_DADOS|ALT_INV_ram~105_q\ <= NOT \MEMORIA_DADOS|ram~105_q\;
\MEMORIA_DADOS|ALT_INV_ram~121_q\ <= NOT \MEMORIA_DADOS|ram~121_q\;
\MEMORIA_DADOS|ALT_INV_ram~89_q\ <= NOT \MEMORIA_DADOS|ram~89_q\;
\MEMORIA_DADOS|ALT_INV_ram~580_combout\ <= NOT \MEMORIA_DADOS|ram~580_combout\;
\MEMORIA_DADOS|ALT_INV_ram~201_q\ <= NOT \MEMORIA_DADOS|ram~201_q\;
\MEMORIA_DADOS|ALT_INV_ram~169_q\ <= NOT \MEMORIA_DADOS|ram~169_q\;
\MEMORIA_DADOS|ALT_INV_ram~185_q\ <= NOT \MEMORIA_DADOS|ram~185_q\;
\MEMORIA_DADOS|ALT_INV_ram~153_q\ <= NOT \MEMORIA_DADOS|ram~153_q\;
\MEMORIA_DADOS|ALT_INV_ram~579_combout\ <= NOT \MEMORIA_DADOS|ram~579_combout\;
\MEMORIA_DADOS|ALT_INV_ram~73_q\ <= NOT \MEMORIA_DADOS|ram~73_q\;
\MEMORIA_DADOS|ALT_INV_ram~41_q\ <= NOT \MEMORIA_DADOS|ram~41_q\;
\MEMORIA_DADOS|ALT_INV_ram~57_q\ <= NOT \MEMORIA_DADOS|ram~57_q\;
\MEMORIA_DADOS|ALT_INV_ram~25_q\ <= NOT \MEMORIA_DADOS|ram~25_q\;
\MEMORIA_DADOS|ALT_INV_ram~578_combout\ <= NOT \MEMORIA_DADOS|ram~578_combout\;
\MEMORIA_DADOS|ALT_INV_ram~577_combout\ <= NOT \MEMORIA_DADOS|ram~577_combout\;
\MEMORIA_DADOS|ALT_INV_ram~513_q\ <= NOT \MEMORIA_DADOS|ram~513_q\;
\MEMORIA_DADOS|ALT_INV_ram~481_q\ <= NOT \MEMORIA_DADOS|ram~481_q\;
\MEMORIA_DADOS|ALT_INV_ram~385_q\ <= NOT \MEMORIA_DADOS|ram~385_q\;
\MEMORIA_DADOS|ALT_INV_ram~353_q\ <= NOT \MEMORIA_DADOS|ram~353_q\;
\MEMORIA_DADOS|ALT_INV_ram~576_combout\ <= NOT \MEMORIA_DADOS|ram~576_combout\;
\MEMORIA_DADOS|ALT_INV_ram~497_q\ <= NOT \MEMORIA_DADOS|ram~497_q\;
\MEMORIA_DADOS|ALT_INV_ram~465_q\ <= NOT \MEMORIA_DADOS|ram~465_q\;
\MEMORIA_DADOS|ALT_INV_ram~369_q\ <= NOT \MEMORIA_DADOS|ram~369_q\;
\MEMORIA_DADOS|ALT_INV_ram~337_q\ <= NOT \MEMORIA_DADOS|ram~337_q\;
\MEMORIA_DADOS|ALT_INV_ram~575_combout\ <= NOT \MEMORIA_DADOS|ram~575_combout\;
\MEMORIA_DADOS|ALT_INV_ram~449_q\ <= NOT \MEMORIA_DADOS|ram~449_q\;
\MEMORIA_DADOS|ALT_INV_ram~417_q\ <= NOT \MEMORIA_DADOS|ram~417_q\;
\MEMORIA_DADOS|ALT_INV_ram~321_q\ <= NOT \MEMORIA_DADOS|ram~321_q\;
\MEMORIA_DADOS|ALT_INV_ram~289_q\ <= NOT \MEMORIA_DADOS|ram~289_q\;
\MEMORIA_DADOS|ALT_INV_ram~574_combout\ <= NOT \MEMORIA_DADOS|ram~574_combout\;
\MEMORIA_DADOS|ALT_INV_ram~433_q\ <= NOT \MEMORIA_DADOS|ram~433_q\;
\MEMORIA_DADOS|ALT_INV_ram~401_q\ <= NOT \MEMORIA_DADOS|ram~401_q\;
\MEMORIA_DADOS|ALT_INV_ram~305_q\ <= NOT \MEMORIA_DADOS|ram~305_q\;
\MEMORIA_DADOS|ALT_INV_ram~273_q\ <= NOT \MEMORIA_DADOS|ram~273_q\;
\MEMORIA_DADOS|ALT_INV_ram~573_combout\ <= NOT \MEMORIA_DADOS|ram~573_combout\;
\MEMORIA_DADOS|ALT_INV_ram~572_combout\ <= NOT \MEMORIA_DADOS|ram~572_combout\;
\MEMORIA_DADOS|ALT_INV_ram~257_q\ <= NOT \MEMORIA_DADOS|ram~257_q\;
\MEMORIA_DADOS|ALT_INV_ram~225_q\ <= NOT \MEMORIA_DADOS|ram~225_q\;
\MEMORIA_DADOS|ALT_INV_ram~193_q\ <= NOT \MEMORIA_DADOS|ram~193_q\;
\MEMORIA_DADOS|ALT_INV_ram~161_q\ <= NOT \MEMORIA_DADOS|ram~161_q\;
\MEMORIA_DADOS|ALT_INV_ram~571_combout\ <= NOT \MEMORIA_DADOS|ram~571_combout\;
\MEMORIA_DADOS|ALT_INV_ram~129_q\ <= NOT \MEMORIA_DADOS|ram~129_q\;
\MEMORIA_DADOS|ALT_INV_ram~97_q\ <= NOT \MEMORIA_DADOS|ram~97_q\;
\MEMORIA_DADOS|ALT_INV_ram~65_q\ <= NOT \MEMORIA_DADOS|ram~65_q\;
\MEMORIA_DADOS|ALT_INV_ram~33_q\ <= NOT \MEMORIA_DADOS|ram~33_q\;
\MEMORIA_DADOS|ALT_INV_ram~570_combout\ <= NOT \MEMORIA_DADOS|ram~570_combout\;
\MEMORIA_DADOS|ALT_INV_ram~241_q\ <= NOT \MEMORIA_DADOS|ram~241_q\;
\MEMORIA_DADOS|ALT_INV_ram~209_q\ <= NOT \MEMORIA_DADOS|ram~209_q\;
\MEMORIA_DADOS|ALT_INV_ram~177_q\ <= NOT \MEMORIA_DADOS|ram~177_q\;
\MEMORIA_DADOS|ALT_INV_ram~145_q\ <= NOT \MEMORIA_DADOS|ram~145_q\;
\MEMORIA_DADOS|ALT_INV_ram~569_combout\ <= NOT \MEMORIA_DADOS|ram~569_combout\;
\MEMORIA_DADOS|ALT_INV_ram~113_q\ <= NOT \MEMORIA_DADOS|ram~113_q\;
\MEMORIA_DADOS|ALT_INV_ram~81_q\ <= NOT \MEMORIA_DADOS|ram~81_q\;
\MEMORIA_DADOS|ALT_INV_ram~49_q\ <= NOT \MEMORIA_DADOS|ram~49_q\;
\MEMORIA_DADOS|ALT_INV_ram~17_q\ <= NOT \MEMORIA_DADOS|ram~17_q\;
\CPU|ULA1|ALT_INV_saida[1]~3_combout\ <= NOT \CPU|ULA1|saida[1]~3_combout\;
\CPU|ULA1|ALT_INV_saida[1]~2_combout\ <= NOT \CPU|ULA1|saida[1]~2_combout\;
\MEMORIA_DADOS|ALT_INV_ram~568_combout\ <= NOT \MEMORIA_DADOS|ram~568_combout\;
\MEMORIA_DADOS|ALT_INV_ram~567_combout\ <= NOT \MEMORIA_DADOS|ram~567_combout\;
\MEMORIA_DADOS|ALT_INV_ram~566_combout\ <= NOT \MEMORIA_DADOS|ram~566_combout\;
\MEMORIA_DADOS|ALT_INV_ram~520_q\ <= NOT \MEMORIA_DADOS|ram~520_q\;
\MEMORIA_DADOS|ALT_INV_ram~264_q\ <= NOT \MEMORIA_DADOS|ram~264_q\;
\MEMORIA_DADOS|ALT_INV_ram~504_q\ <= NOT \MEMORIA_DADOS|ram~504_q\;
\MEMORIA_DADOS|ALT_INV_ram~248_q\ <= NOT \MEMORIA_DADOS|ram~248_q\;
\MEMORIA_DADOS|ALT_INV_ram~565_combout\ <= NOT \MEMORIA_DADOS|ram~565_combout\;
\MEMORIA_DADOS|ALT_INV_ram~488_q\ <= NOT \MEMORIA_DADOS|ram~488_q\;
\MEMORIA_DADOS|ALT_INV_ram~232_q\ <= NOT \MEMORIA_DADOS|ram~232_q\;
\MEMORIA_DADOS|ALT_INV_ram~472_q\ <= NOT \MEMORIA_DADOS|ram~472_q\;
\MEMORIA_DADOS|ALT_INV_ram~216_q\ <= NOT \MEMORIA_DADOS|ram~216_q\;
\MEMORIA_DADOS|ALT_INV_ram~564_combout\ <= NOT \MEMORIA_DADOS|ram~564_combout\;
\MEMORIA_DADOS|ALT_INV_ram~456_q\ <= NOT \MEMORIA_DADOS|ram~456_q\;
\MEMORIA_DADOS|ALT_INV_ram~200_q\ <= NOT \MEMORIA_DADOS|ram~200_q\;
\MEMORIA_DADOS|ALT_INV_ram~440_q\ <= NOT \MEMORIA_DADOS|ram~440_q\;
\MEMORIA_DADOS|ALT_INV_ram~184_q\ <= NOT \MEMORIA_DADOS|ram~184_q\;
\MEMORIA_DADOS|ALT_INV_ram~563_combout\ <= NOT \MEMORIA_DADOS|ram~563_combout\;
\MEMORIA_DADOS|ALT_INV_ram~424_q\ <= NOT \MEMORIA_DADOS|ram~424_q\;
\MEMORIA_DADOS|ALT_INV_ram~168_q\ <= NOT \MEMORIA_DADOS|ram~168_q\;
\MEMORIA_DADOS|ALT_INV_ram~408_q\ <= NOT \MEMORIA_DADOS|ram~408_q\;
\MEMORIA_DADOS|ALT_INV_ram~152_q\ <= NOT \MEMORIA_DADOS|ram~152_q\;
\MEMORIA_DADOS|ALT_INV_ram~562_combout\ <= NOT \MEMORIA_DADOS|ram~562_combout\;
\MEMORIA_DADOS|ALT_INV_ram~561_combout\ <= NOT \MEMORIA_DADOS|ram~561_combout\;
\MEMORIA_DADOS|ALT_INV_ram~512_q\ <= NOT \MEMORIA_DADOS|ram~512_q\;
\MEMORIA_DADOS|ALT_INV_ram~256_q\ <= NOT \MEMORIA_DADOS|ram~256_q\;
\MEMORIA_DADOS|ALT_INV_ram~480_q\ <= NOT \MEMORIA_DADOS|ram~480_q\;
\MEMORIA_DADOS|ALT_INV_ram~224_q\ <= NOT \MEMORIA_DADOS|ram~224_q\;
\MEMORIA_DADOS|ALT_INV_ram~560_combout\ <= NOT \MEMORIA_DADOS|ram~560_combout\;
\MEMORIA_DADOS|ALT_INV_ram~496_q\ <= NOT \MEMORIA_DADOS|ram~496_q\;
\MEMORIA_DADOS|ALT_INV_ram~240_q\ <= NOT \MEMORIA_DADOS|ram~240_q\;
\MEMORIA_DADOS|ALT_INV_ram~464_q\ <= NOT \MEMORIA_DADOS|ram~464_q\;
\MEMORIA_DADOS|ALT_INV_ram~208_q\ <= NOT \MEMORIA_DADOS|ram~208_q\;
\MEMORIA_DADOS|ALT_INV_ram~559_combout\ <= NOT \MEMORIA_DADOS|ram~559_combout\;
\MEMORIA_DADOS|ALT_INV_ram~448_q\ <= NOT \MEMORIA_DADOS|ram~448_q\;
\MEMORIA_DADOS|ALT_INV_ram~192_q\ <= NOT \MEMORIA_DADOS|ram~192_q\;
\MEMORIA_DADOS|ALT_INV_ram~416_q\ <= NOT \MEMORIA_DADOS|ram~416_q\;
\MEMORIA_DADOS|ALT_INV_ram~160_q\ <= NOT \MEMORIA_DADOS|ram~160_q\;
\MEMORIA_DADOS|ALT_INV_ram~558_combout\ <= NOT \MEMORIA_DADOS|ram~558_combout\;
\MEMORIA_DADOS|ALT_INV_ram~432_q\ <= NOT \MEMORIA_DADOS|ram~432_q\;
\MEMORIA_DADOS|ALT_INV_ram~176_q\ <= NOT \MEMORIA_DADOS|ram~176_q\;
\MEMORIA_DADOS|ALT_INV_ram~400_q\ <= NOT \MEMORIA_DADOS|ram~400_q\;
\MEMORIA_DADOS|ALT_INV_ram~144_q\ <= NOT \MEMORIA_DADOS|ram~144_q\;
\MEMORIA_DADOS|ALT_INV_ram~557_combout\ <= NOT \MEMORIA_DADOS|ram~557_combout\;
\MEMORIA_DADOS|ALT_INV_ram~556_combout\ <= NOT \MEMORIA_DADOS|ram~556_combout\;
\MEMORIA_DADOS|ALT_INV_ram~392_q\ <= NOT \MEMORIA_DADOS|ram~392_q\;
\MEMORIA_DADOS|ALT_INV_ram~136_q\ <= NOT \MEMORIA_DADOS|ram~136_q\;
\MEMORIA_DADOS|ALT_INV_ram~328_q\ <= NOT \MEMORIA_DADOS|ram~328_q\;
\MEMORIA_DADOS|ALT_INV_ram~72_q\ <= NOT \MEMORIA_DADOS|ram~72_q\;
\MEMORIA_DADOS|ALT_INV_ram~555_combout\ <= NOT \MEMORIA_DADOS|ram~555_combout\;
\MEMORIA_DADOS|ALT_INV_ram~360_q\ <= NOT \MEMORIA_DADOS|ram~360_q\;
\MEMORIA_DADOS|ALT_INV_ram~104_q\ <= NOT \MEMORIA_DADOS|ram~104_q\;
\MEMORIA_DADOS|ALT_INV_ram~296_q\ <= NOT \MEMORIA_DADOS|ram~296_q\;
\MEMORIA_DADOS|ALT_INV_ram~40_q\ <= NOT \MEMORIA_DADOS|ram~40_q\;
\MEMORIA_DADOS|ALT_INV_ram~554_combout\ <= NOT \MEMORIA_DADOS|ram~554_combout\;
\MEMORIA_DADOS|ALT_INV_ram~376_q\ <= NOT \MEMORIA_DADOS|ram~376_q\;
\MEMORIA_DADOS|ALT_INV_ram~120_q\ <= NOT \MEMORIA_DADOS|ram~120_q\;
\MEMORIA_DADOS|ALT_INV_ram~312_q\ <= NOT \MEMORIA_DADOS|ram~312_q\;
\MEMORIA_DADOS|ALT_INV_ram~56_q\ <= NOT \MEMORIA_DADOS|ram~56_q\;
\MEMORIA_DADOS|ALT_INV_ram~553_combout\ <= NOT \MEMORIA_DADOS|ram~553_combout\;
\MEMORIA_DADOS|ALT_INV_ram~344_q\ <= NOT \MEMORIA_DADOS|ram~344_q\;
\MEMORIA_DADOS|ALT_INV_ram~88_q\ <= NOT \MEMORIA_DADOS|ram~88_q\;
\MEMORIA_DADOS|ALT_INV_ram~280_q\ <= NOT \MEMORIA_DADOS|ram~280_q\;
\MEMORIA_DADOS|ALT_INV_ram~24_q\ <= NOT \MEMORIA_DADOS|ram~24_q\;
\MEMORIA_DADOS|ALT_INV_ram~552_combout\ <= NOT \MEMORIA_DADOS|ram~552_combout\;
\MEMORIA_DADOS|ALT_INV_ram~551_combout\ <= NOT \MEMORIA_DADOS|ram~551_combout\;
\MEMORIA_DADOS|ALT_INV_ram~384_q\ <= NOT \MEMORIA_DADOS|ram~384_q\;
\MEMORIA_DADOS|ALT_INV_ram~128_q\ <= NOT \MEMORIA_DADOS|ram~128_q\;
\MEMORIA_DADOS|ALT_INV_ram~368_q\ <= NOT \MEMORIA_DADOS|ram~368_q\;
\MEMORIA_DADOS|ALT_INV_ram~112_q\ <= NOT \MEMORIA_DADOS|ram~112_q\;
\MEMORIA_DADOS|ALT_INV_ram~550_combout\ <= NOT \MEMORIA_DADOS|ram~550_combout\;
\MEMORIA_DADOS|ALT_INV_ram~352_q\ <= NOT \MEMORIA_DADOS|ram~352_q\;
\MEMORIA_DADOS|ALT_INV_ram~96_q\ <= NOT \MEMORIA_DADOS|ram~96_q\;
\MEMORIA_DADOS|ALT_INV_ram~336_q\ <= NOT \MEMORIA_DADOS|ram~336_q\;
\MEMORIA_DADOS|ALT_INV_ram~80_q\ <= NOT \MEMORIA_DADOS|ram~80_q\;
\MEMORIA_DADOS|ALT_INV_ram~549_combout\ <= NOT \MEMORIA_DADOS|ram~549_combout\;
\MEMORIA_DADOS|ALT_INV_ram~320_q\ <= NOT \MEMORIA_DADOS|ram~320_q\;
\MEMORIA_DADOS|ALT_INV_ram~64_q\ <= NOT \MEMORIA_DADOS|ram~64_q\;
\MEMORIA_DADOS|ALT_INV_ram~304_q\ <= NOT \MEMORIA_DADOS|ram~304_q\;
\MEMORIA_DADOS|ALT_INV_ram~48_q\ <= NOT \MEMORIA_DADOS|ram~48_q\;
\MEMORIA_DADOS|ALT_INV_ram~548_combout\ <= NOT \MEMORIA_DADOS|ram~548_combout\;
\MEMORIA_DADOS|ALT_INV_ram~288_q\ <= NOT \MEMORIA_DADOS|ram~288_q\;
\MEMORIA_DADOS|ALT_INV_ram~32_q\ <= NOT \MEMORIA_DADOS|ram~32_q\;
\MEMORIA_DADOS|ALT_INV_ram~272_q\ <= NOT \MEMORIA_DADOS|ram~272_q\;
\MEMORIA_DADOS|ALT_INV_ram~16_q\ <= NOT \MEMORIA_DADOS|ram~16_q\;
\CPU|BANCO_REG|ALT_INV_Equal0~2_combout\ <= NOT \CPU|BANCO_REG|Equal0~2_combout\;
\CPU|BANCO_REG|ALT_INV_Equal0~1_combout\ <= NOT \CPU|BANCO_REG|Equal0~1_combout\;
\CPU|BANCO_REG|ALT_INV_Equal0~0_combout\ <= NOT \CPU|BANCO_REG|Equal0~0_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\;
\CPU|BANCO_REG|ALT_INV_Equal1~0_combout\ <= NOT \CPU|BANCO_REG|Equal1~0_combout\;
\CPU|ULA1|ALT_INV_saida[0]~1_combout\ <= NOT \CPU|ULA1|saida[0]~1_combout\;
\CPU|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|ULA1|saida[0]~0_combout\;
\ALT_INV_Saida_Dados[0]~2_combout\ <= NOT \Saida_Dados[0]~2_combout\;
\ALT_INV_Saida_Dados[0]~1_combout\ <= NOT \Saida_Dados[0]~1_combout\;
\FLIP_FLOP_KEY1|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_KEY1|DOUT~q\;
\ALT_INV_Saida_Dados[0]~0_combout\ <= NOT \Saida_Dados[0]~0_combout\;
\FLIP_FLOP_DM|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_DM|DOUT~q\;
\MEMORIA_DADOS|ALT_INV_dado_out~0_combout\ <= NOT \MEMORIA_DADOS|dado_out~0_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~547_combout\ <= NOT \MEMORIA_DADOS|ram~547_combout\;
\MEMORIA_DADOS|ALT_INV_ram~546_combout\ <= NOT \MEMORIA_DADOS|ram~546_combout\;
\MEMORIA_DADOS|ALT_INV_ram~545_combout\ <= NOT \MEMORIA_DADOS|ram~545_combout\;
\MEMORIA_DADOS|ALT_INV_ram~519_q\ <= NOT \MEMORIA_DADOS|ram~519_q\;
\MEMORIA_DADOS|ALT_INV_ram~263_q\ <= NOT \MEMORIA_DADOS|ram~263_q\;
\MEMORIA_DADOS|ALT_INV_ram~391_q\ <= NOT \MEMORIA_DADOS|ram~391_q\;
\MEMORIA_DADOS|ALT_INV_ram~135_q\ <= NOT \MEMORIA_DADOS|ram~135_q\;
\MEMORIA_DADOS|ALT_INV_ram~544_combout\ <= NOT \MEMORIA_DADOS|ram~544_combout\;
\MEMORIA_DADOS|ALT_INV_ram~511_q\ <= NOT \MEMORIA_DADOS|ram~511_q\;
\MEMORIA_DADOS|ALT_INV_ram~255_q\ <= NOT \MEMORIA_DADOS|ram~255_q\;
\MEMORIA_DADOS|ALT_INV_ram~383_q\ <= NOT \MEMORIA_DADOS|ram~383_q\;
\MEMORIA_DADOS|ALT_INV_ram~127_q\ <= NOT \MEMORIA_DADOS|ram~127_q\;
\MEMORIA_DADOS|ALT_INV_ram~543_combout\ <= NOT \MEMORIA_DADOS|ram~543_combout\;
\MEMORIA_DADOS|ALT_INV_ram~455_q\ <= NOT \MEMORIA_DADOS|ram~455_q\;
\MEMORIA_DADOS|ALT_INV_ram~199_q\ <= NOT \MEMORIA_DADOS|ram~199_q\;
\MEMORIA_DADOS|ALT_INV_ram~327_q\ <= NOT \MEMORIA_DADOS|ram~327_q\;
\MEMORIA_DADOS|ALT_INV_ram~71_q\ <= NOT \MEMORIA_DADOS|ram~71_q\;
\MEMORIA_DADOS|ALT_INV_ram~542_combout\ <= NOT \MEMORIA_DADOS|ram~542_combout\;
\MEMORIA_DADOS|ALT_INV_ram~447_q\ <= NOT \MEMORIA_DADOS|ram~447_q\;
\MEMORIA_DADOS|ALT_INV_ram~191_q\ <= NOT \MEMORIA_DADOS|ram~191_q\;
\MEMORIA_DADOS|ALT_INV_ram~319_q\ <= NOT \MEMORIA_DADOS|ram~319_q\;
\MEMORIA_DADOS|ALT_INV_ram~63_q\ <= NOT \MEMORIA_DADOS|ram~63_q\;
\MEMORIA_DADOS|ALT_INV_ram~541_combout\ <= NOT \MEMORIA_DADOS|ram~541_combout\;
\MEMORIA_DADOS|ALT_INV_ram~540_combout\ <= NOT \MEMORIA_DADOS|ram~540_combout\;
\MEMORIA_DADOS|ALT_INV_ram~487_q\ <= NOT \MEMORIA_DADOS|ram~487_q\;
\MEMORIA_DADOS|ALT_INV_ram~231_q\ <= NOT \MEMORIA_DADOS|ram~231_q\;
\MEMORIA_DADOS|ALT_INV_ram~479_q\ <= NOT \MEMORIA_DADOS|ram~479_q\;
\MEMORIA_DADOS|ALT_INV_ram~223_q\ <= NOT \MEMORIA_DADOS|ram~223_q\;
\MEMORIA_DADOS|ALT_INV_ram~539_combout\ <= NOT \MEMORIA_DADOS|ram~539_combout\;
\MEMORIA_DADOS|ALT_INV_ram~359_q\ <= NOT \MEMORIA_DADOS|ram~359_q\;
\MEMORIA_DADOS|ALT_INV_ram~103_q\ <= NOT \MEMORIA_DADOS|ram~103_q\;
\MEMORIA_DADOS|ALT_INV_ram~351_q\ <= NOT \MEMORIA_DADOS|ram~351_q\;
\MEMORIA_DADOS|ALT_INV_ram~95_q\ <= NOT \MEMORIA_DADOS|ram~95_q\;
\MEMORIA_DADOS|ALT_INV_ram~538_combout\ <= NOT \MEMORIA_DADOS|ram~538_combout\;
\MEMORIA_DADOS|ALT_INV_ram~423_q\ <= NOT \MEMORIA_DADOS|ram~423_q\;
\MEMORIA_DADOS|ALT_INV_ram~167_q\ <= NOT \MEMORIA_DADOS|ram~167_q\;
\MEMORIA_DADOS|ALT_INV_ram~415_q\ <= NOT \MEMORIA_DADOS|ram~415_q\;
\MEMORIA_DADOS|ALT_INV_ram~159_q\ <= NOT \MEMORIA_DADOS|ram~159_q\;
\MEMORIA_DADOS|ALT_INV_ram~537_combout\ <= NOT \MEMORIA_DADOS|ram~537_combout\;
\MEMORIA_DADOS|ALT_INV_ram~295_q\ <= NOT \MEMORIA_DADOS|ram~295_q\;
\MEMORIA_DADOS|ALT_INV_ram~39_q\ <= NOT \MEMORIA_DADOS|ram~39_q\;
\MEMORIA_DADOS|ALT_INV_ram~287_q\ <= NOT \MEMORIA_DADOS|ram~287_q\;
\MEMORIA_DADOS|ALT_INV_ram~31_q\ <= NOT \MEMORIA_DADOS|ram~31_q\;
\MEMORIA_DADOS|ALT_INV_ram~536_combout\ <= NOT \MEMORIA_DADOS|ram~536_combout\;
\MEMORIA_DADOS|ALT_INV_ram~535_combout\ <= NOT \MEMORIA_DADOS|ram~535_combout\;
\MEMORIA_DADOS|ALT_INV_ram~503_q\ <= NOT \MEMORIA_DADOS|ram~503_q\;
\MEMORIA_DADOS|ALT_INV_ram~247_q\ <= NOT \MEMORIA_DADOS|ram~247_q\;
\MEMORIA_DADOS|ALT_INV_ram~495_q\ <= NOT \MEMORIA_DADOS|ram~495_q\;
\MEMORIA_DADOS|ALT_INV_ram~239_q\ <= NOT \MEMORIA_DADOS|ram~239_q\;
\MEMORIA_DADOS|ALT_INV_ram~534_combout\ <= NOT \MEMORIA_DADOS|ram~534_combout\;
\MEMORIA_DADOS|ALT_INV_ram~375_q\ <= NOT \MEMORIA_DADOS|ram~375_q\;
\MEMORIA_DADOS|ALT_INV_ram~119_q\ <= NOT \MEMORIA_DADOS|ram~119_q\;
\MEMORIA_DADOS|ALT_INV_ram~367_q\ <= NOT \MEMORIA_DADOS|ram~367_q\;
\MEMORIA_DADOS|ALT_INV_ram~111_q\ <= NOT \MEMORIA_DADOS|ram~111_q\;
\MEMORIA_DADOS|ALT_INV_ram~533_combout\ <= NOT \MEMORIA_DADOS|ram~533_combout\;
\MEMORIA_DADOS|ALT_INV_ram~439_q\ <= NOT \MEMORIA_DADOS|ram~439_q\;
\MEMORIA_DADOS|ALT_INV_ram~183_q\ <= NOT \MEMORIA_DADOS|ram~183_q\;
\MEMORIA_DADOS|ALT_INV_ram~431_q\ <= NOT \MEMORIA_DADOS|ram~431_q\;
\MEMORIA_DADOS|ALT_INV_ram~175_q\ <= NOT \MEMORIA_DADOS|ram~175_q\;
\MEMORIA_DADOS|ALT_INV_ram~532_combout\ <= NOT \MEMORIA_DADOS|ram~532_combout\;
\MEMORIA_DADOS|ALT_INV_ram~311_q\ <= NOT \MEMORIA_DADOS|ram~311_q\;
\MEMORIA_DADOS|ALT_INV_ram~55_q\ <= NOT \MEMORIA_DADOS|ram~55_q\;
\MEMORIA_DADOS|ALT_INV_ram~303_q\ <= NOT \MEMORIA_DADOS|ram~303_q\;
\MEMORIA_DADOS|ALT_INV_ram~47_q\ <= NOT \MEMORIA_DADOS|ram~47_q\;
\MEMORIA_DADOS|ALT_INV_ram~531_combout\ <= NOT \MEMORIA_DADOS|ram~531_combout\;
\MEMORIA_DADOS|ALT_INV_ram~530_combout\ <= NOT \MEMORIA_DADOS|ram~530_combout\;
\MEMORIA_DADOS|ALT_INV_ram~471_q\ <= NOT \MEMORIA_DADOS|ram~471_q\;
\MEMORIA_DADOS|ALT_INV_ram~215_q\ <= NOT \MEMORIA_DADOS|ram~215_q\;
\MEMORIA_DADOS|ALT_INV_ram~463_q\ <= NOT \MEMORIA_DADOS|ram~463_q\;
\MEMORIA_DADOS|ALT_INV_ram~207_q\ <= NOT \MEMORIA_DADOS|ram~207_q\;
\MEMORIA_DADOS|ALT_INV_ram~529_combout\ <= NOT \MEMORIA_DADOS|ram~529_combout\;
\MEMORIA_DADOS|ALT_INV_ram~343_q\ <= NOT \MEMORIA_DADOS|ram~343_q\;
\MEMORIA_DADOS|ALT_INV_ram~87_q\ <= NOT \MEMORIA_DADOS|ram~87_q\;
\MEMORIA_DADOS|ALT_INV_ram~335_q\ <= NOT \MEMORIA_DADOS|ram~335_q\;
\MEMORIA_DADOS|ALT_INV_ram~79_q\ <= NOT \MEMORIA_DADOS|ram~79_q\;
\MEMORIA_DADOS|ALT_INV_ram~528_combout\ <= NOT \MEMORIA_DADOS|ram~528_combout\;
\MEMORIA_DADOS|ALT_INV_ram~407_q\ <= NOT \MEMORIA_DADOS|ram~407_q\;
\MEMORIA_DADOS|ALT_INV_ram~151_q\ <= NOT \MEMORIA_DADOS|ram~151_q\;
\MEMORIA_DADOS|ALT_INV_ram~399_q\ <= NOT \MEMORIA_DADOS|ram~399_q\;
\MEMORIA_DADOS|ALT_INV_ram~143_q\ <= NOT \MEMORIA_DADOS|ram~143_q\;
\MEMORIA_DADOS|ALT_INV_ram~527_combout\ <= NOT \MEMORIA_DADOS|ram~527_combout\;
\MEMORIA_DADOS|ALT_INV_ram~279_q\ <= NOT \MEMORIA_DADOS|ram~279_q\;
\MEMORIA_DADOS|ALT_INV_ram~23_q\ <= NOT \MEMORIA_DADOS|ram~23_q\;
\MEMORIA_DADOS|ALT_INV_ram~271_q\ <= NOT \MEMORIA_DADOS|ram~271_q\;
\MEMORIA_DADOS|ALT_INV_ram~15_q\ <= NOT \MEMORIA_DADOS|ram~15_q\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\;
\CPU|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA1|Equal1~0_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG|DOUT~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~68_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(8) <= NOT \CPU|REG_END_RET|DOUT\(8);
\CPU|REG_END_RET|ALT_INV_DOUT\(7) <= NOT \CPU|REG_END_RET|DOUT\(7);
\CPU|REG_END_RET|ALT_INV_DOUT\(6) <= NOT \CPU|REG_END_RET|DOUT\(6);
\MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~67_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(5) <= NOT \CPU|REG_END_RET|DOUT\(5);
\CPU|REG_END_RET|ALT_INV_DOUT\(4) <= NOT \CPU|REG_END_RET|DOUT\(4);
\MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~66_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(3) <= NOT \CPU|REG_END_RET|DOUT\(3);
\MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~65_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~64_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~64_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~63_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~63_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~62_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~62_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(2) <= NOT \CPU|REG_END_RET|DOUT\(2);
\CPU|REG_END_RET|ALT_INV_DOUT\(1) <= NOT \CPU|REG_END_RET|DOUT\(1);
\CPU|REG_END_RET|ALT_INV_DOUT\(0) <= NOT \CPU|REG_END_RET|DOUT\(0);
\CPU|MUX2|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUX2|Equal1~0_combout\;
\CPU|MUX2|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX2|Equal2~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~61_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~60_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~60_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~59_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~59_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~58_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~58_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~57_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~57_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~56_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~56_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~55_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~54_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~54_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~53_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~53_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~52_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~52_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~51_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~51_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~50_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~50_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~49_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~49_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~48_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~48_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~47_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~47_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~46_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~45_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~45_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~44_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~44_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~43_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~43_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~42_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~41_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~41_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~40_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~39_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~39_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~38_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~38_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~37_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~37_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~36_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~36_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~35_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~35_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~34_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~34_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~33_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~33_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~32_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~32_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~31_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~30_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~29_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~29_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~28_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~28_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~27_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~26_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~25_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~24_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~23_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~22_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~21_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~20_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~19_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~18_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~17_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~16_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~15_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~14_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~13_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~12_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~11_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~10_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~9_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~8_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~7_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~6_combout\;
\FF_LEDR9|ALT_INV_DOUT~q\ <= NOT \FF_LEDR9|DOUT~q\;
\FF_LEDR8|ALT_INV_DOUT~q\ <= NOT \FF_LEDR8|DOUT~q\;
\CPU|BANCO_REG|ALT_INV_Mux0~0_combout\ <= NOT \CPU|BANCO_REG|Mux0~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(7) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(7);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(7) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(7);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(7) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(7);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(7) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(7);
\CPU|BANCO_REG|ALT_INV_Mux1~0_combout\ <= NOT \CPU|BANCO_REG|Mux1~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(6) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(6);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(6) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(6);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(6) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(6);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(6) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(6);
\CPU|BANCO_REG|ALT_INV_Mux2~0_combout\ <= NOT \CPU|BANCO_REG|Mux2~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(5) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(5);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(5) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(5);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(5) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(5);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(5) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(5);
\CPU|BANCO_REG|ALT_INV_Mux3~0_combout\ <= NOT \CPU|BANCO_REG|Mux3~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(4) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(4);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(4) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(4);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(4) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(4);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(4) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(4);
\CPU|BANCO_REG|ALT_INV_Mux4~0_combout\ <= NOT \CPU|BANCO_REG|Mux4~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(3) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(3);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(3) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(3);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(3) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(3);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(3) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(3);
\CPU|BANCO_REG|ALT_INV_Mux5~0_combout\ <= NOT \CPU|BANCO_REG|Mux5~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(2) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(2);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(2) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(2);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(2) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(2);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(2) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(2);
\CPU|BANCO_REG|ALT_INV_Mux6~0_combout\ <= NOT \CPU|BANCO_REG|Mux6~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(1) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(1);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(1) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(1);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(1) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(1);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(1) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(1);
\CPU|BANCO_REG|ALT_INV_Mux7~0_combout\ <= NOT \CPU|BANCO_REG|Mux7~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~5_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~4_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~3_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~2_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~1_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~0_combout\;
\CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(0) <= NOT \CPU|BANCO_REG|REG_3|DOUT\(0);
\CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(0) <= NOT \CPU|BANCO_REG|REG_2|DOUT\(0);
\CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(0) <= NOT \CPU|BANCO_REG|REG_1|DOUT\(0);
\CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(0) <= NOT \CPU|BANCO_REG|REG_0|DOUT\(0);
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
\MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~78_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~74_combout\;
\ALT_INV_Saida_Dados[0]~4_combout\ <= NOT \Saida_Dados[0]~4_combout\;
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
\MEMORIA_DADOS|ALT_INV_ram~737_combout\ <= NOT \MEMORIA_DADOS|ram~737_combout\;
\MEMORIA_DADOS|ALT_INV_ram~735_combout\ <= NOT \MEMORIA_DADOS|ram~735_combout\;
\MEMORIA_DADOS|ALT_INV_ram~733_combout\ <= NOT \MEMORIA_DADOS|ram~733_combout\;
\MEMORIA_DADOS|ALT_INV_ram~731_combout\ <= NOT \MEMORIA_DADOS|ram~731_combout\;
\MEMORIA_DADOS|ALT_INV_ram~729_combout\ <= NOT \MEMORIA_DADOS|ram~729_combout\;
\MEMORIA_DADOS|ALT_INV_ram~727_combout\ <= NOT \MEMORIA_DADOS|ram~727_combout\;
\MEMORIA_DADOS|ALT_INV_ram~725_combout\ <= NOT \MEMORIA_DADOS|ram~725_combout\;
\MEMORIA_DADOS|ALT_INV_ram~723_combout\ <= NOT \MEMORIA_DADOS|ram~723_combout\;
\MEMORIA_DADOS|ALT_INV_ram~721_combout\ <= NOT \MEMORIA_DADOS|ram~721_combout\;
\MEMORIA_DADOS|ALT_INV_ram~719_combout\ <= NOT \MEMORIA_DADOS|ram~719_combout\;
\MEMORIA_DADOS|ALT_INV_ram~717_combout\ <= NOT \MEMORIA_DADOS|ram~717_combout\;
\MEMORIA_DADOS|ALT_INV_ram~715_combout\ <= NOT \MEMORIA_DADOS|ram~715_combout\;
\MEMORIA_DADOS|ALT_INV_ram~713_combout\ <= NOT \MEMORIA_DADOS|ram~713_combout\;
\MEMORIA_DADOS|ALT_INV_ram~711_combout\ <= NOT \MEMORIA_DADOS|ram~711_combout\;
\MEMORIA_DADOS|ALT_INV_ram~709_combout\ <= NOT \MEMORIA_DADOS|ram~709_combout\;
\MEMORIA_DADOS|ALT_INV_ram~707_combout\ <= NOT \MEMORIA_DADOS|ram~707_combout\;
\MEMORIA_DADOS|ALT_INV_ram~705_combout\ <= NOT \MEMORIA_DADOS|ram~705_combout\;
\MEMORIA_DADOS|ALT_INV_ram~703_combout\ <= NOT \MEMORIA_DADOS|ram~703_combout\;
\MEMORIA_DADOS|ALT_INV_ram~701_combout\ <= NOT \MEMORIA_DADOS|ram~701_combout\;
\MEMORIA_DADOS|ALT_INV_ram~699_combout\ <= NOT \MEMORIA_DADOS|ram~699_combout\;
\MEMORIA_DADOS|ALT_INV_ram~697_combout\ <= NOT \MEMORIA_DADOS|ram~697_combout\;
\MEMORIA_DADOS|ALT_INV_process_0~0_combout\ <= NOT \MEMORIA_DADOS|process_0~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~695_combout\ <= NOT \MEMORIA_DADOS|ram~695_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~4_combout\;
\ALT_INV_Saida_Dados[0]~3_combout\ <= NOT \Saida_Dados[0]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~2_combout\;
\CPU|ULA1|ALT_INV_saida[7]~13_combout\ <= NOT \CPU|ULA1|saida[7]~13_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~1_combout\;
\MEMORIA_DADOS|ALT_INV_ram~694_combout\ <= NOT \MEMORIA_DADOS|ram~694_combout\;
\MEMORIA_DADOS|ALT_INV_ram~693_combout\ <= NOT \MEMORIA_DADOS|ram~693_combout\;
\MEMORIA_DADOS|ALT_INV_ram~692_combout\ <= NOT \MEMORIA_DADOS|ram~692_combout\;
\MEMORIA_DADOS|ALT_INV_ram~526_q\ <= NOT \MEMORIA_DADOS|ram~526_q\;
\MEMORIA_DADOS|ALT_INV_ram~518_q\ <= NOT \MEMORIA_DADOS|ram~518_q\;
\MEMORIA_DADOS|ALT_INV_ram~398_q\ <= NOT \MEMORIA_DADOS|ram~398_q\;
\MEMORIA_DADOS|ALT_INV_ram~390_q\ <= NOT \MEMORIA_DADOS|ram~390_q\;
\MEMORIA_DADOS|ALT_INV_ram~691_combout\ <= NOT \MEMORIA_DADOS|ram~691_combout\;
\MEMORIA_DADOS|ALT_INV_ram~494_q\ <= NOT \MEMORIA_DADOS|ram~494_q\;
\MEMORIA_DADOS|ALT_INV_ram~486_q\ <= NOT \MEMORIA_DADOS|ram~486_q\;
\MEMORIA_DADOS|ALT_INV_ram~366_q\ <= NOT \MEMORIA_DADOS|ram~366_q\;
\MEMORIA_DADOS|ALT_INV_ram~358_q\ <= NOT \MEMORIA_DADOS|ram~358_q\;
\MEMORIA_DADOS|ALT_INV_ram~690_combout\ <= NOT \MEMORIA_DADOS|ram~690_combout\;
\MEMORIA_DADOS|ALT_INV_ram~462_q\ <= NOT \MEMORIA_DADOS|ram~462_q\;
\MEMORIA_DADOS|ALT_INV_ram~454_q\ <= NOT \MEMORIA_DADOS|ram~454_q\;
\MEMORIA_DADOS|ALT_INV_ram~334_q\ <= NOT \MEMORIA_DADOS|ram~334_q\;
\MEMORIA_DADOS|ALT_INV_ram~326_q\ <= NOT \MEMORIA_DADOS|ram~326_q\;
\MEMORIA_DADOS|ALT_INV_ram~689_combout\ <= NOT \MEMORIA_DADOS|ram~689_combout\;
\MEMORIA_DADOS|ALT_INV_ram~430_q\ <= NOT \MEMORIA_DADOS|ram~430_q\;
\MEMORIA_DADOS|ALT_INV_ram~422_q\ <= NOT \MEMORIA_DADOS|ram~422_q\;
\MEMORIA_DADOS|ALT_INV_ram~302_q\ <= NOT \MEMORIA_DADOS|ram~302_q\;
\MEMORIA_DADOS|ALT_INV_ram~294_q\ <= NOT \MEMORIA_DADOS|ram~294_q\;
\MEMORIA_DADOS|ALT_INV_ram~688_combout\ <= NOT \MEMORIA_DADOS|ram~688_combout\;
\MEMORIA_DADOS|ALT_INV_ram~687_combout\ <= NOT \MEMORIA_DADOS|ram~687_combout\;
\MEMORIA_DADOS|ALT_INV_ram~510_q\ <= NOT \MEMORIA_DADOS|ram~510_q\;
\MEMORIA_DADOS|ALT_INV_ram~478_q\ <= NOT \MEMORIA_DADOS|ram~478_q\;
\MEMORIA_DADOS|ALT_INV_ram~446_q\ <= NOT \MEMORIA_DADOS|ram~446_q\;
\MEMORIA_DADOS|ALT_INV_ram~414_q\ <= NOT \MEMORIA_DADOS|ram~414_q\;
\MEMORIA_DADOS|ALT_INV_ram~686_combout\ <= NOT \MEMORIA_DADOS|ram~686_combout\;
\MEMORIA_DADOS|ALT_INV_ram~502_q\ <= NOT \MEMORIA_DADOS|ram~502_q\;
\MEMORIA_DADOS|ALT_INV_ram~470_q\ <= NOT \MEMORIA_DADOS|ram~470_q\;
\MEMORIA_DADOS|ALT_INV_ram~438_q\ <= NOT \MEMORIA_DADOS|ram~438_q\;
\MEMORIA_DADOS|ALT_INV_ram~406_q\ <= NOT \MEMORIA_DADOS|ram~406_q\;
\MEMORIA_DADOS|ALT_INV_ram~685_combout\ <= NOT \MEMORIA_DADOS|ram~685_combout\;
\MEMORIA_DADOS|ALT_INV_ram~382_q\ <= NOT \MEMORIA_DADOS|ram~382_q\;
\MEMORIA_DADOS|ALT_INV_ram~350_q\ <= NOT \MEMORIA_DADOS|ram~350_q\;
\MEMORIA_DADOS|ALT_INV_ram~318_q\ <= NOT \MEMORIA_DADOS|ram~318_q\;
\MEMORIA_DADOS|ALT_INV_ram~286_q\ <= NOT \MEMORIA_DADOS|ram~286_q\;
\MEMORIA_DADOS|ALT_INV_ram~684_combout\ <= NOT \MEMORIA_DADOS|ram~684_combout\;
\MEMORIA_DADOS|ALT_INV_ram~374_q\ <= NOT \MEMORIA_DADOS|ram~374_q\;
\MEMORIA_DADOS|ALT_INV_ram~342_q\ <= NOT \MEMORIA_DADOS|ram~342_q\;
\MEMORIA_DADOS|ALT_INV_ram~310_q\ <= NOT \MEMORIA_DADOS|ram~310_q\;
\MEMORIA_DADOS|ALT_INV_ram~278_q\ <= NOT \MEMORIA_DADOS|ram~278_q\;
\MEMORIA_DADOS|ALT_INV_ram~683_combout\ <= NOT \MEMORIA_DADOS|ram~683_combout\;
\MEMORIA_DADOS|ALT_INV_ram~682_combout\ <= NOT \MEMORIA_DADOS|ram~682_combout\;
\MEMORIA_DADOS|ALT_INV_ram~270_q\ <= NOT \MEMORIA_DADOS|ram~270_q\;
\MEMORIA_DADOS|ALT_INV_ram~262_q\ <= NOT \MEMORIA_DADOS|ram~262_q\;
\MEMORIA_DADOS|ALT_INV_ram~142_q\ <= NOT \MEMORIA_DADOS|ram~142_q\;
\MEMORIA_DADOS|ALT_INV_ram~134_q\ <= NOT \MEMORIA_DADOS|ram~134_q\;
\MEMORIA_DADOS|ALT_INV_ram~681_combout\ <= NOT \MEMORIA_DADOS|ram~681_combout\;
\MEMORIA_DADOS|ALT_INV_ram~238_q\ <= NOT \MEMORIA_DADOS|ram~238_q\;
\MEMORIA_DADOS|ALT_INV_ram~230_q\ <= NOT \MEMORIA_DADOS|ram~230_q\;
\MEMORIA_DADOS|ALT_INV_ram~110_q\ <= NOT \MEMORIA_DADOS|ram~110_q\;
\MEMORIA_DADOS|ALT_INV_ram~102_q\ <= NOT \MEMORIA_DADOS|ram~102_q\;
\MEMORIA_DADOS|ALT_INV_ram~680_combout\ <= NOT \MEMORIA_DADOS|ram~680_combout\;
\MEMORIA_DADOS|ALT_INV_ram~206_q\ <= NOT \MEMORIA_DADOS|ram~206_q\;
\MEMORIA_DADOS|ALT_INV_ram~198_q\ <= NOT \MEMORIA_DADOS|ram~198_q\;
\MEMORIA_DADOS|ALT_INV_ram~78_q\ <= NOT \MEMORIA_DADOS|ram~78_q\;
\MEMORIA_DADOS|ALT_INV_ram~70_q\ <= NOT \MEMORIA_DADOS|ram~70_q\;
\MEMORIA_DADOS|ALT_INV_ram~679_combout\ <= NOT \MEMORIA_DADOS|ram~679_combout\;
\MEMORIA_DADOS|ALT_INV_ram~174_q\ <= NOT \MEMORIA_DADOS|ram~174_q\;
\MEMORIA_DADOS|ALT_INV_ram~166_q\ <= NOT \MEMORIA_DADOS|ram~166_q\;
\MEMORIA_DADOS|ALT_INV_ram~46_q\ <= NOT \MEMORIA_DADOS|ram~46_q\;
\MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \MEMORIA_DADOS|ram~38_q\;
\MEMORIA_DADOS|ALT_INV_ram~678_combout\ <= NOT \MEMORIA_DADOS|ram~678_combout\;
\MEMORIA_DADOS|ALT_INV_ram~677_combout\ <= NOT \MEMORIA_DADOS|ram~677_combout\;
\MEMORIA_DADOS|ALT_INV_ram~254_q\ <= NOT \MEMORIA_DADOS|ram~254_q\;
\MEMORIA_DADOS|ALT_INV_ram~222_q\ <= NOT \MEMORIA_DADOS|ram~222_q\;
\MEMORIA_DADOS|ALT_INV_ram~126_q\ <= NOT \MEMORIA_DADOS|ram~126_q\;
\MEMORIA_DADOS|ALT_INV_ram~94_q\ <= NOT \MEMORIA_DADOS|ram~94_q\;
\MEMORIA_DADOS|ALT_INV_ram~676_combout\ <= NOT \MEMORIA_DADOS|ram~676_combout\;
\MEMORIA_DADOS|ALT_INV_ram~246_q\ <= NOT \MEMORIA_DADOS|ram~246_q\;
\MEMORIA_DADOS|ALT_INV_ram~214_q\ <= NOT \MEMORIA_DADOS|ram~214_q\;
\MEMORIA_DADOS|ALT_INV_ram~118_q\ <= NOT \MEMORIA_DADOS|ram~118_q\;
\MEMORIA_DADOS|ALT_INV_ram~86_q\ <= NOT \MEMORIA_DADOS|ram~86_q\;
\MEMORIA_DADOS|ALT_INV_ram~675_combout\ <= NOT \MEMORIA_DADOS|ram~675_combout\;
\MEMORIA_DADOS|ALT_INV_ram~190_q\ <= NOT \MEMORIA_DADOS|ram~190_q\;
\MEMORIA_DADOS|ALT_INV_ram~158_q\ <= NOT \MEMORIA_DADOS|ram~158_q\;
\MEMORIA_DADOS|ALT_INV_ram~62_q\ <= NOT \MEMORIA_DADOS|ram~62_q\;
\MEMORIA_DADOS|ALT_INV_ram~30_q\ <= NOT \MEMORIA_DADOS|ram~30_q\;
\MEMORIA_DADOS|ALT_INV_ram~674_combout\ <= NOT \MEMORIA_DADOS|ram~674_combout\;
\MEMORIA_DADOS|ALT_INV_ram~182_q\ <= NOT \MEMORIA_DADOS|ram~182_q\;
\MEMORIA_DADOS|ALT_INV_ram~150_q\ <= NOT \MEMORIA_DADOS|ram~150_q\;
\MEMORIA_DADOS|ALT_INV_ram~54_q\ <= NOT \MEMORIA_DADOS|ram~54_q\;
\MEMORIA_DADOS|ALT_INV_ram~22_q\ <= NOT \MEMORIA_DADOS|ram~22_q\;
\CPU|ULA1|ALT_INV_saida[6]~12_combout\ <= NOT \CPU|ULA1|saida[6]~12_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~673_combout\ <= NOT \MEMORIA_DADOS|ram~673_combout\;
\MEMORIA_DADOS|ALT_INV_ram~672_combout\ <= NOT \MEMORIA_DADOS|ram~672_combout\;
\MEMORIA_DADOS|ALT_INV_ram~671_combout\ <= NOT \MEMORIA_DADOS|ram~671_combout\;
\MEMORIA_DADOS|ALT_INV_ram~525_q\ <= NOT \MEMORIA_DADOS|ram~525_q\;
\MEMORIA_DADOS|ALT_INV_ram~509_q\ <= NOT \MEMORIA_DADOS|ram~509_q\;
\MEMORIA_DADOS|ALT_INV_ram~461_q\ <= NOT \MEMORIA_DADOS|ram~461_q\;
\MEMORIA_DADOS|ALT_INV_ram~445_q\ <= NOT \MEMORIA_DADOS|ram~445_q\;
\MEMORIA_DADOS|ALT_INV_ram~670_combout\ <= NOT \MEMORIA_DADOS|ram~670_combout\;
\MEMORIA_DADOS|ALT_INV_ram~517_q\ <= NOT \MEMORIA_DADOS|ram~517_q\;
\MEMORIA_DADOS|ALT_INV_ram~501_q\ <= NOT \MEMORIA_DADOS|ram~501_q\;
\MEMORIA_DADOS|ALT_INV_ram~453_q\ <= NOT \MEMORIA_DADOS|ram~453_q\;
\MEMORIA_DADOS|ALT_INV_ram~437_q\ <= NOT \MEMORIA_DADOS|ram~437_q\;
\MEMORIA_DADOS|ALT_INV_ram~669_combout\ <= NOT \MEMORIA_DADOS|ram~669_combout\;
\MEMORIA_DADOS|ALT_INV_ram~397_q\ <= NOT \MEMORIA_DADOS|ram~397_q\;
\MEMORIA_DADOS|ALT_INV_ram~381_q\ <= NOT \MEMORIA_DADOS|ram~381_q\;
\MEMORIA_DADOS|ALT_INV_ram~333_q\ <= NOT \MEMORIA_DADOS|ram~333_q\;
\MEMORIA_DADOS|ALT_INV_ram~317_q\ <= NOT \MEMORIA_DADOS|ram~317_q\;
\MEMORIA_DADOS|ALT_INV_ram~668_combout\ <= NOT \MEMORIA_DADOS|ram~668_combout\;
\MEMORIA_DADOS|ALT_INV_ram~389_q\ <= NOT \MEMORIA_DADOS|ram~389_q\;
\MEMORIA_DADOS|ALT_INV_ram~373_q\ <= NOT \MEMORIA_DADOS|ram~373_q\;
\MEMORIA_DADOS|ALT_INV_ram~325_q\ <= NOT \MEMORIA_DADOS|ram~325_q\;
\MEMORIA_DADOS|ALT_INV_ram~309_q\ <= NOT \MEMORIA_DADOS|ram~309_q\;
\MEMORIA_DADOS|ALT_INV_ram~667_combout\ <= NOT \MEMORIA_DADOS|ram~667_combout\;
\MEMORIA_DADOS|ALT_INV_ram~666_combout\ <= NOT \MEMORIA_DADOS|ram~666_combout\;
\MEMORIA_DADOS|ALT_INV_ram~269_q\ <= NOT \MEMORIA_DADOS|ram~269_q\;
\MEMORIA_DADOS|ALT_INV_ram~261_q\ <= NOT \MEMORIA_DADOS|ram~261_q\;
\MEMORIA_DADOS|ALT_INV_ram~253_q\ <= NOT \MEMORIA_DADOS|ram~253_q\;
\MEMORIA_DADOS|ALT_INV_ram~245_q\ <= NOT \MEMORIA_DADOS|ram~245_q\;
\MEMORIA_DADOS|ALT_INV_ram~665_combout\ <= NOT \MEMORIA_DADOS|ram~665_combout\;
\MEMORIA_DADOS|ALT_INV_ram~141_q\ <= NOT \MEMORIA_DADOS|ram~141_q\;
\MEMORIA_DADOS|ALT_INV_ram~133_q\ <= NOT \MEMORIA_DADOS|ram~133_q\;
\MEMORIA_DADOS|ALT_INV_ram~125_q\ <= NOT \MEMORIA_DADOS|ram~125_q\;
\MEMORIA_DADOS|ALT_INV_ram~117_q\ <= NOT \MEMORIA_DADOS|ram~117_q\;
\MEMORIA_DADOS|ALT_INV_ram~664_combout\ <= NOT \MEMORIA_DADOS|ram~664_combout\;
\MEMORIA_DADOS|ALT_INV_ram~205_q\ <= NOT \MEMORIA_DADOS|ram~205_q\;
\MEMORIA_DADOS|ALT_INV_ram~197_q\ <= NOT \MEMORIA_DADOS|ram~197_q\;
\MEMORIA_DADOS|ALT_INV_ram~189_q\ <= NOT \MEMORIA_DADOS|ram~189_q\;
\MEMORIA_DADOS|ALT_INV_ram~181_q\ <= NOT \MEMORIA_DADOS|ram~181_q\;
\MEMORIA_DADOS|ALT_INV_ram~663_combout\ <= NOT \MEMORIA_DADOS|ram~663_combout\;
\MEMORIA_DADOS|ALT_INV_ram~77_q\ <= NOT \MEMORIA_DADOS|ram~77_q\;
\MEMORIA_DADOS|ALT_INV_ram~69_q\ <= NOT \MEMORIA_DADOS|ram~69_q\;
\MEMORIA_DADOS|ALT_INV_ram~61_q\ <= NOT \MEMORIA_DADOS|ram~61_q\;
\MEMORIA_DADOS|ALT_INV_ram~53_q\ <= NOT \MEMORIA_DADOS|ram~53_q\;
\MEMORIA_DADOS|ALT_INV_ram~662_combout\ <= NOT \MEMORIA_DADOS|ram~662_combout\;
\MEMORIA_DADOS|ALT_INV_ram~661_combout\ <= NOT \MEMORIA_DADOS|ram~661_combout\;
\MEMORIA_DADOS|ALT_INV_ram~493_q\ <= NOT \MEMORIA_DADOS|ram~493_q\;
\MEMORIA_DADOS|ALT_INV_ram~365_q\ <= NOT \MEMORIA_DADOS|ram~365_q\;
\MEMORIA_DADOS|ALT_INV_ram~477_q\ <= NOT \MEMORIA_DADOS|ram~477_q\;
\MEMORIA_DADOS|ALT_INV_ram~349_q\ <= NOT \MEMORIA_DADOS|ram~349_q\;
\MEMORIA_DADOS|ALT_INV_ram~660_combout\ <= NOT \MEMORIA_DADOS|ram~660_combout\;
\MEMORIA_DADOS|ALT_INV_ram~485_q\ <= NOT \MEMORIA_DADOS|ram~485_q\;
\MEMORIA_DADOS|ALT_INV_ram~357_q\ <= NOT \MEMORIA_DADOS|ram~357_q\;
\MEMORIA_DADOS|ALT_INV_ram~469_q\ <= NOT \MEMORIA_DADOS|ram~469_q\;
\MEMORIA_DADOS|ALT_INV_ram~341_q\ <= NOT \MEMORIA_DADOS|ram~341_q\;
\MEMORIA_DADOS|ALT_INV_ram~659_combout\ <= NOT \MEMORIA_DADOS|ram~659_combout\;
\MEMORIA_DADOS|ALT_INV_ram~429_q\ <= NOT \MEMORIA_DADOS|ram~429_q\;
\MEMORIA_DADOS|ALT_INV_ram~301_q\ <= NOT \MEMORIA_DADOS|ram~301_q\;
\MEMORIA_DADOS|ALT_INV_ram~413_q\ <= NOT \MEMORIA_DADOS|ram~413_q\;
\MEMORIA_DADOS|ALT_INV_ram~285_q\ <= NOT \MEMORIA_DADOS|ram~285_q\;
\MEMORIA_DADOS|ALT_INV_ram~658_combout\ <= NOT \MEMORIA_DADOS|ram~658_combout\;
\MEMORIA_DADOS|ALT_INV_ram~421_q\ <= NOT \MEMORIA_DADOS|ram~421_q\;
\MEMORIA_DADOS|ALT_INV_ram~293_q\ <= NOT \MEMORIA_DADOS|ram~293_q\;
\MEMORIA_DADOS|ALT_INV_ram~405_q\ <= NOT \MEMORIA_DADOS|ram~405_q\;
\MEMORIA_DADOS|ALT_INV_ram~277_q\ <= NOT \MEMORIA_DADOS|ram~277_q\;
\MEMORIA_DADOS|ALT_INV_ram~657_combout\ <= NOT \MEMORIA_DADOS|ram~657_combout\;
\MEMORIA_DADOS|ALT_INV_ram~656_combout\ <= NOT \MEMORIA_DADOS|ram~656_combout\;
\MEMORIA_DADOS|ALT_INV_ram~237_q\ <= NOT \MEMORIA_DADOS|ram~237_q\;
\MEMORIA_DADOS|ALT_INV_ram~221_q\ <= NOT \MEMORIA_DADOS|ram~221_q\;
\MEMORIA_DADOS|ALT_INV_ram~173_q\ <= NOT \MEMORIA_DADOS|ram~173_q\;
\MEMORIA_DADOS|ALT_INV_ram~157_q\ <= NOT \MEMORIA_DADOS|ram~157_q\;
\MEMORIA_DADOS|ALT_INV_ram~655_combout\ <= NOT \MEMORIA_DADOS|ram~655_combout\;
\MEMORIA_DADOS|ALT_INV_ram~229_q\ <= NOT \MEMORIA_DADOS|ram~229_q\;
\MEMORIA_DADOS|ALT_INV_ram~213_q\ <= NOT \MEMORIA_DADOS|ram~213_q\;
\MEMORIA_DADOS|ALT_INV_ram~165_q\ <= NOT \MEMORIA_DADOS|ram~165_q\;
\MEMORIA_DADOS|ALT_INV_ram~149_q\ <= NOT \MEMORIA_DADOS|ram~149_q\;
\MEMORIA_DADOS|ALT_INV_ram~654_combout\ <= NOT \MEMORIA_DADOS|ram~654_combout\;
\MEMORIA_DADOS|ALT_INV_ram~109_q\ <= NOT \MEMORIA_DADOS|ram~109_q\;
\MEMORIA_DADOS|ALT_INV_ram~93_q\ <= NOT \MEMORIA_DADOS|ram~93_q\;
\MEMORIA_DADOS|ALT_INV_ram~45_q\ <= NOT \MEMORIA_DADOS|ram~45_q\;
\MEMORIA_DADOS|ALT_INV_ram~29_q\ <= NOT \MEMORIA_DADOS|ram~29_q\;
\MEMORIA_DADOS|ALT_INV_ram~653_combout\ <= NOT \MEMORIA_DADOS|ram~653_combout\;
\MEMORIA_DADOS|ALT_INV_ram~101_q\ <= NOT \MEMORIA_DADOS|ram~101_q\;
\MEMORIA_DADOS|ALT_INV_ram~85_q\ <= NOT \MEMORIA_DADOS|ram~85_q\;
\MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \MEMORIA_DADOS|ram~37_q\;
\MEMORIA_DADOS|ALT_INV_ram~21_q\ <= NOT \MEMORIA_DADOS|ram~21_q\;
\CPU|ULA1|ALT_INV_saida[5]~11_combout\ <= NOT \CPU|ULA1|saida[5]~11_combout\;
\CPU|ULA1|ALT_INV_saida[5]~10_combout\ <= NOT \CPU|ULA1|saida[5]~10_combout\;
\MEMORIA_DADOS|ALT_INV_ram~652_combout\ <= NOT \MEMORIA_DADOS|ram~652_combout\;
\MEMORIA_DADOS|ALT_INV_ram~651_combout\ <= NOT \MEMORIA_DADOS|ram~651_combout\;
\MEMORIA_DADOS|ALT_INV_ram~650_combout\ <= NOT \MEMORIA_DADOS|ram~650_combout\;
\MEMORIA_DADOS|ALT_INV_ram~524_q\ <= NOT \MEMORIA_DADOS|ram~524_q\;
\MEMORIA_DADOS|ALT_INV_ram~492_q\ <= NOT \MEMORIA_DADOS|ram~492_q\;
\MEMORIA_DADOS|ALT_INV_ram~460_q\ <= NOT \MEMORIA_DADOS|ram~460_q\;
\MEMORIA_DADOS|ALT_INV_ram~428_q\ <= NOT \MEMORIA_DADOS|ram~428_q\;
\MEMORIA_DADOS|ALT_INV_ram~649_combout\ <= NOT \MEMORIA_DADOS|ram~649_combout\;
\MEMORIA_DADOS|ALT_INV_ram~396_q\ <= NOT \MEMORIA_DADOS|ram~396_q\;
\MEMORIA_DADOS|ALT_INV_ram~364_q\ <= NOT \MEMORIA_DADOS|ram~364_q\;
\MEMORIA_DADOS|ALT_INV_ram~332_q\ <= NOT \MEMORIA_DADOS|ram~332_q\;
\MEMORIA_DADOS|ALT_INV_ram~300_q\ <= NOT \MEMORIA_DADOS|ram~300_q\;
\MEMORIA_DADOS|ALT_INV_ram~648_combout\ <= NOT \MEMORIA_DADOS|ram~648_combout\;
\MEMORIA_DADOS|ALT_INV_ram~508_q\ <= NOT \MEMORIA_DADOS|ram~508_q\;
\MEMORIA_DADOS|ALT_INV_ram~476_q\ <= NOT \MEMORIA_DADOS|ram~476_q\;
\MEMORIA_DADOS|ALT_INV_ram~444_q\ <= NOT \MEMORIA_DADOS|ram~444_q\;
\MEMORIA_DADOS|ALT_INV_ram~412_q\ <= NOT \MEMORIA_DADOS|ram~412_q\;
\MEMORIA_DADOS|ALT_INV_ram~647_combout\ <= NOT \MEMORIA_DADOS|ram~647_combout\;
\MEMORIA_DADOS|ALT_INV_ram~380_q\ <= NOT \MEMORIA_DADOS|ram~380_q\;
\MEMORIA_DADOS|ALT_INV_ram~348_q\ <= NOT \MEMORIA_DADOS|ram~348_q\;
\MEMORIA_DADOS|ALT_INV_ram~316_q\ <= NOT \MEMORIA_DADOS|ram~316_q\;
\MEMORIA_DADOS|ALT_INV_ram~284_q\ <= NOT \MEMORIA_DADOS|ram~284_q\;
\MEMORIA_DADOS|ALT_INV_ram~646_combout\ <= NOT \MEMORIA_DADOS|ram~646_combout\;
\MEMORIA_DADOS|ALT_INV_ram~645_combout\ <= NOT \MEMORIA_DADOS|ram~645_combout\;
\MEMORIA_DADOS|ALT_INV_ram~268_q\ <= NOT \MEMORIA_DADOS|ram~268_q\;
\MEMORIA_DADOS|ALT_INV_ram~236_q\ <= NOT \MEMORIA_DADOS|ram~236_q\;
\MEMORIA_DADOS|ALT_INV_ram~252_q\ <= NOT \MEMORIA_DADOS|ram~252_q\;
\MEMORIA_DADOS|ALT_INV_ram~220_q\ <= NOT \MEMORIA_DADOS|ram~220_q\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(4) <= NOT \CPU|BANCO_REG|Entrada_reg3\(4);
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(4) <= NOT \CPU|BANCO_REG|Entrada_reg2\(4);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(4) <= NOT \CPU|BANCO_REG|Entrada_reg1\(4);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(4) <= NOT \CPU|BANCO_REG|Entrada_reg0\(4);
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(3) <= NOT \CPU|BANCO_REG|Entrada_reg3\(3);
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(3) <= NOT \CPU|BANCO_REG|Entrada_reg2\(3);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(3) <= NOT \CPU|BANCO_REG|Entrada_reg1\(3);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(3) <= NOT \CPU|BANCO_REG|Entrada_reg0\(3);
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(2) <= NOT \CPU|BANCO_REG|Entrada_reg3\(2);
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(2) <= NOT \CPU|BANCO_REG|Entrada_reg2\(2);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(2) <= NOT \CPU|BANCO_REG|Entrada_reg1\(2);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(2) <= NOT \CPU|BANCO_REG|Entrada_reg0\(2);
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(1) <= NOT \CPU|BANCO_REG|Entrada_reg3\(1);
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(1) <= NOT \CPU|BANCO_REG|Entrada_reg2\(1);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(1) <= NOT \CPU|BANCO_REG|Entrada_reg1\(1);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(1) <= NOT \CPU|BANCO_REG|Entrada_reg0\(1);
\CPU|BANCO_REG|ALT_INV_Habilita_reg3~combout\ <= NOT \CPU|BANCO_REG|Habilita_reg3~combout\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(0) <= NOT \CPU|BANCO_REG|Entrada_reg3\(0);
\CPU|BANCO_REG|ALT_INV_Habilita_reg2~combout\ <= NOT \CPU|BANCO_REG|Habilita_reg2~combout\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(0) <= NOT \CPU|BANCO_REG|Entrada_reg2\(0);
\CPU|BANCO_REG|ALT_INV_Habilita_reg1~combout\ <= NOT \CPU|BANCO_REG|Habilita_reg1~combout\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(0) <= NOT \CPU|BANCO_REG|Entrada_reg1\(0);
\CPU|BANCO_REG|ALT_INV_Habilita_reg0~combout\ <= NOT \CPU|BANCO_REG|Habilita_reg0~combout\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(0) <= NOT \CPU|BANCO_REG|Entrada_reg0\(0);
\MEMORIA_INTRUCAO|ALT_INV_memROM~73_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~73_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~72_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~72_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~71_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~71_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~70_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~70_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~69_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~69_combout\;
\detectorSub1|ALT_INV_saidaQ~q\ <= NOT \detectorSub1|saidaQ~q\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\ALT_INV_comb~11_combout\ <= NOT \comb~11_combout\;
\ALT_INV_comb~10_combout\ <= NOT \comb~10_combout\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\MEMORIA_DADOS|ALT_INV_ram~821_combout\ <= NOT \MEMORIA_DADOS|ram~821_combout\;
\MEMORIA_DADOS|ALT_INV_ram~819_combout\ <= NOT \MEMORIA_DADOS|ram~819_combout\;
\MEMORIA_DADOS|ALT_INV_ram~817_combout\ <= NOT \MEMORIA_DADOS|ram~817_combout\;
\MEMORIA_DADOS|ALT_INV_ram~815_combout\ <= NOT \MEMORIA_DADOS|ram~815_combout\;
\MEMORIA_DADOS|ALT_INV_ram~813_combout\ <= NOT \MEMORIA_DADOS|ram~813_combout\;
\MEMORIA_DADOS|ALT_INV_ram~811_combout\ <= NOT \MEMORIA_DADOS|ram~811_combout\;
\MEMORIA_DADOS|ALT_INV_ram~809_combout\ <= NOT \MEMORIA_DADOS|ram~809_combout\;
\MEMORIA_DADOS|ALT_INV_ram~807_combout\ <= NOT \MEMORIA_DADOS|ram~807_combout\;
\MEMORIA_DADOS|ALT_INV_ram~805_combout\ <= NOT \MEMORIA_DADOS|ram~805_combout\;
\MEMORIA_DADOS|ALT_INV_ram~803_combout\ <= NOT \MEMORIA_DADOS|ram~803_combout\;
\MEMORIA_DADOS|ALT_INV_ram~801_combout\ <= NOT \MEMORIA_DADOS|ram~801_combout\;
\MEMORIA_DADOS|ALT_INV_ram~799_combout\ <= NOT \MEMORIA_DADOS|ram~799_combout\;
\MEMORIA_DADOS|ALT_INV_ram~797_combout\ <= NOT \MEMORIA_DADOS|ram~797_combout\;
\MEMORIA_DADOS|ALT_INV_ram~795_combout\ <= NOT \MEMORIA_DADOS|ram~795_combout\;
\MEMORIA_DADOS|ALT_INV_ram~793_combout\ <= NOT \MEMORIA_DADOS|ram~793_combout\;
\MEMORIA_DADOS|ALT_INV_ram~791_combout\ <= NOT \MEMORIA_DADOS|ram~791_combout\;
\MEMORIA_DADOS|ALT_INV_ram~789_combout\ <= NOT \MEMORIA_DADOS|ram~789_combout\;
\MEMORIA_DADOS|ALT_INV_ram~787_combout\ <= NOT \MEMORIA_DADOS|ram~787_combout\;
\MEMORIA_DADOS|ALT_INV_ram~785_combout\ <= NOT \MEMORIA_DADOS|ram~785_combout\;
\MEMORIA_DADOS|ALT_INV_ram~783_combout\ <= NOT \MEMORIA_DADOS|ram~783_combout\;
\MEMORIA_DADOS|ALT_INV_ram~781_combout\ <= NOT \MEMORIA_DADOS|ram~781_combout\;
\MEMORIA_DADOS|ALT_INV_ram~779_combout\ <= NOT \MEMORIA_DADOS|ram~779_combout\;
\MEMORIA_DADOS|ALT_INV_ram~777_combout\ <= NOT \MEMORIA_DADOS|ram~777_combout\;
\MEMORIA_DADOS|ALT_INV_ram~775_combout\ <= NOT \MEMORIA_DADOS|ram~775_combout\;
\MEMORIA_DADOS|ALT_INV_ram~773_combout\ <= NOT \MEMORIA_DADOS|ram~773_combout\;
\MEMORIA_DADOS|ALT_INV_ram~771_combout\ <= NOT \MEMORIA_DADOS|ram~771_combout\;
\MEMORIA_DADOS|ALT_INV_ram~769_combout\ <= NOT \MEMORIA_DADOS|ram~769_combout\;
\MEMORIA_DADOS|ALT_INV_ram~767_combout\ <= NOT \MEMORIA_DADOS|ram~767_combout\;
\MEMORIA_DADOS|ALT_INV_ram~765_combout\ <= NOT \MEMORIA_DADOS|ram~765_combout\;
\MEMORIA_DADOS|ALT_INV_ram~763_combout\ <= NOT \MEMORIA_DADOS|ram~763_combout\;
\MEMORIA_DADOS|ALT_INV_ram~761_combout\ <= NOT \MEMORIA_DADOS|ram~761_combout\;
\MEMORIA_DADOS|ALT_INV_ram~759_combout\ <= NOT \MEMORIA_DADOS|ram~759_combout\;
\MEMORIA_DADOS|ALT_INV_ram~757_combout\ <= NOT \MEMORIA_DADOS|ram~757_combout\;
\MEMORIA_DADOS|ALT_INV_ram~755_combout\ <= NOT \MEMORIA_DADOS|ram~755_combout\;
\MEMORIA_DADOS|ALT_INV_ram~753_combout\ <= NOT \MEMORIA_DADOS|ram~753_combout\;
\MEMORIA_DADOS|ALT_INV_ram~751_combout\ <= NOT \MEMORIA_DADOS|ram~751_combout\;
\MEMORIA_DADOS|ALT_INV_ram~749_combout\ <= NOT \MEMORIA_DADOS|ram~749_combout\;
\MEMORIA_DADOS|ALT_INV_ram~747_combout\ <= NOT \MEMORIA_DADOS|ram~747_combout\;
\MEMORIA_DADOS|ALT_INV_ram~745_combout\ <= NOT \MEMORIA_DADOS|ram~745_combout\;
\MEMORIA_DADOS|ALT_INV_ram~743_combout\ <= NOT \MEMORIA_DADOS|ram~743_combout\;
\MEMORIA_DADOS|ALT_INV_ram~741_combout\ <= NOT \MEMORIA_DADOS|ram~741_combout\;
\MEMORIA_DADOS|ALT_INV_ram~739_combout\ <= NOT \MEMORIA_DADOS|ram~739_combout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(7) <= NOT \CPU|BANCO_REG|Entrada_reg3\(7);
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(7) <= NOT \CPU|BANCO_REG|Entrada_reg2\(7);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(7) <= NOT \CPU|BANCO_REG|Entrada_reg1\(7);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(7) <= NOT \CPU|BANCO_REG|Entrada_reg0\(7);
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(6) <= NOT \CPU|BANCO_REG|Entrada_reg3\(6);
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(6) <= NOT \CPU|BANCO_REG|Entrada_reg2\(6);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(6) <= NOT \CPU|BANCO_REG|Entrada_reg1\(6);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(6) <= NOT \CPU|BANCO_REG|Entrada_reg0\(6);
\CPU|BANCO_REG|ALT_INV_Entrada_reg3\(5) <= NOT \CPU|BANCO_REG|Entrada_reg3\(5);
\CPU|BANCO_REG|ALT_INV_Entrada_reg2\(5) <= NOT \CPU|BANCO_REG|Entrada_reg2\(5);
\CPU|BANCO_REG|ALT_INV_Entrada_reg1\(5) <= NOT \CPU|BANCO_REG|Entrada_reg1\(5);
\CPU|BANCO_REG|ALT_INV_Entrada_reg0\(5) <= NOT \CPU|BANCO_REG|Entrada_reg0\(5);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	i => \DECOD_HEX4|rascSaida7seg[0]~0_combout\,
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
	i => \DECOD_HEX4|rascSaida7seg[1]~1_combout\,
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
	i => \DECOD_HEX4|rascSaida7seg[2]~2_combout\,
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
	i => \DECOD_HEX4|rascSaida7seg[3]~3_combout\,
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
	i => \DECOD_HEX4|rascSaida7seg[4]~4_combout\,
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
	i => \DECOD_HEX4|rascSaida7seg[5]~5_combout\,
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
	i => \DECOD_HEX4|rascSaida7seg[6]~6_combout\,
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
	i => \DECOD_HEX5|rascSaida7seg[0]~0_combout\,
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
	i => \DECOD_HEX5|rascSaida7seg[1]~1_combout\,
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
	i => \DECOD_HEX5|rascSaida7seg[2]~2_combout\,
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
	i => \DECOD_HEX5|rascSaida7seg[3]~3_combout\,
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
	i => \DECOD_HEX5|rascSaida7seg[4]~4_combout\,
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
	i => \DECOD_HEX5|rascSaida7seg[5]~5_combout\,
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
	i => \DECOD_HEX5|rascSaida7seg[6]~6_combout\,
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
	i => \REG_LEDR0a7|DOUT\(0),
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
	i => \REG_LEDR0a7|DOUT\(1),
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
	i => \REG_LEDR0a7|DOUT\(2),
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
	i => \REG_LEDR0a7|DOUT\(3),
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
	i => \REG_LEDR0a7|DOUT\(4),
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
	i => \REG_LEDR0a7|DOUT\(5),
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
	i => \REG_LEDR0a7|DOUT\(6),
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
	i => \REG_LEDR0a7|DOUT\(7),
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

\MEMORIA_INTRUCAO|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~26_combout\ = (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~26_combout\);

\MEMORIA_INTRUCAO|memROM~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~51_combout\ = (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~51_combout\);

\MEMORIA_INTRUCAO|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~24_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(7))))

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
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~24_combout\);

\MEMORIA_INTRUCAO|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~25_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001111000000000000000000000000000011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~25_combout\);

\MEMORIA_INTRUCAO|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~27_combout\ = ( \MEMORIA_INTRUCAO|memROM~26_combout\ & ( (!\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010000110000000000000000000010110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~27_combout\);

\MEMORIA_INTRUCAO|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~28_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( 
-- (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000010101101000010101111000101010010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~28_combout\);

\MEMORIA_INTRUCAO|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~29_combout\ = ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000100010000000000000000000000100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~29_combout\);

\MEMORIA_INTRUCAO|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~30_combout\ = ( \MEMORIA_INTRUCAO|memROM~29_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5) & ((\MEMORIA_INTRUCAO|memROM~28_combout\))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3))))) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~29_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000001000001110000000000000110000000010000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~28_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~29_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~30_combout\);

\MEMORIA_INTRUCAO|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~31_combout\ = ((\MEMORIA_INTRUCAO|memROM~30_combout\) # (\MEMORIA_INTRUCAO|memROM~27_combout\)) # (\MEMORIA_INTRUCAO|memROM~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~31_combout\);

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

\MEMORIA_INTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~16_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(6)))))) ) ) # ( !\CPU|PC|DOUT\(3) & ( 
-- (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000100011000000001000011000011000001000110000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~16_combout\);

\MEMORIA_INTRUCAO|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~17_combout\ = ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101100000000000000000000000000001011000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~17_combout\);

\MEMORIA_INTRUCAO|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~18_combout\ = (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~18_combout\);

\MEMORIA_INTRUCAO|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~19_combout\ = ( \MEMORIA_INTRUCAO|memROM~17_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\CPU|PC|DOUT\(7) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~16_combout\))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~17_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & 
-- \MEMORIA_INTRUCAO|memROM~16_combout\))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~17_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~19_combout\);

\MEMORIA_INTRUCAO|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~20_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & 
-- (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100111000101001101000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~20_combout\);

\MEMORIA_INTRUCAO|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~21_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & 
-- ((!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2)))) ) ) 
-- ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011101111011110110100100110101001001101010010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~21_combout\);

\MEMORIA_INTRUCAO|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~22_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~22_combout\);

\MEMORIA_INTRUCAO|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~23_combout\ = ( \MEMORIA_INTRUCAO|memROM~22_combout\ & ( (!\CPU|PC|DOUT\(5) & (((!\MEMORIA_INTRUCAO|memROM~21_combout\)) # (\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & (\MEMORIA_INTRUCAO|memROM~20_combout\))) ) 
-- ) # ( !\MEMORIA_INTRUCAO|memROM~22_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5) & ((!\MEMORIA_INTRUCAO|memROM~21_combout\))) # (\CPU|PC|DOUT\(5) & (\MEMORIA_INTRUCAO|memROM~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000100101011100010011010001100000001001010111000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~23_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~23_combout\ & ( (\MEMORIA_INTRUCAO|memROM~10_combout\ & (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~19_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\);

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
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \CPU|REG_END_RET|DOUT\(2) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~9_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~31_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(2) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~9_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
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

\MEMORIA_INTRUCAO|memROM~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~56_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3)))) ) 
-- ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) ) ) 
-- ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010001100011010000001000001000111111110110100000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~56_combout\);

\MEMORIA_INTRUCAO|memROM~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~57_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001010110000010100101011000001010010101100000101001010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~57_combout\);

\MEMORIA_INTRUCAO|memROM~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~69_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2)))))) ) ) # ( 
-- !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000101100001000100000010001000000001011000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~69_combout\);

\MEMORIA_INTRUCAO|memROM~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~59_combout\ = (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~69_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~59_combout\);

\MEMORIA_INTRUCAO|memROM~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~70_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100011101000111010001110100011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \MEMORIA_INTRUCAO|memROM~70_combout\);

\MEMORIA_INTRUCAO|memROM~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~60_combout\ = ( !\CPU|PC|DOUT\(3) & ( \MEMORIA_INTRUCAO|memROM~70_combout\ & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~70_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~60_combout\);

\MEMORIA_INTRUCAO|memROM~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~61_combout\ = ( \MEMORIA_INTRUCAO|memROM~59_combout\ & ( \MEMORIA_INTRUCAO|memROM~60_combout\ ) ) # ( !\MEMORIA_INTRUCAO|memROM~59_combout\ & ( \MEMORIA_INTRUCAO|memROM~60_combout\ ) ) # ( \MEMORIA_INTRUCAO|memROM~59_combout\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~60_combout\ ) ) # ( !\MEMORIA_INTRUCAO|memROM~59_combout\ & ( !\MEMORIA_INTRUCAO|memROM~60_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~51_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_INTRUCAO|memROM~57_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~51_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_INTRUCAO|memROM~57_combout\)) # (\MEMORIA_INTRUCAO|memROM~56_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~51_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~56_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~57_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~59_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~60_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~61_combout\);

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
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|REG_END_RET|DOUT\(0) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~1_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~61_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(0) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~1_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~61_combout\ & ((\CPU|MUX2|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001111110001110100001100000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
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

\MEMORIA_INTRUCAO|memROM~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~47_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (((\CPU|PC|DOUT\(6)) # (\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & 
-- \CPU|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011000011100100001100001110010000110000111001000011000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~47_combout\);

\MEMORIA_INTRUCAO|memROM~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~48_combout\ = (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101000000000001110100000000000111010000000000011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~48_combout\);

\MEMORIA_INTRUCAO|memROM~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~49_combout\ = (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011000000000001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~49_combout\);

\MEMORIA_INTRUCAO|memROM~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~50_combout\ = ( \MEMORIA_INTRUCAO|memROM~48_combout\ & ( \MEMORIA_INTRUCAO|memROM~49_combout\ & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(3))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~48_combout\ & ( 
-- \MEMORIA_INTRUCAO|memROM~49_combout\ & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~48_combout\ & ( !\MEMORIA_INTRUCAO|memROM~49_combout\ & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) 
-- & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~48_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~49_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~50_combout\);

\MEMORIA_INTRUCAO|memROM~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~52_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # 
-- (\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ 
-- (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010010000011000000000001000000000100000001010011001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~52_combout\);

\MEMORIA_INTRUCAO|memROM~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~53_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100110000000110010011000000011001001100000001100100110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~53_combout\);

\MEMORIA_INTRUCAO|memROM~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~54_combout\ = (!\MEMORIA_INTRUCAO|memROM~51_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_INTRUCAO|memROM~53_combout\)))) # (\MEMORIA_INTRUCAO|memROM~51_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~53_combout\)) # (\MEMORIA_INTRUCAO|memROM~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~51_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~52_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~53_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~54_combout\);

\MEMORIA_INTRUCAO|memROM~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~55_combout\ = (((\MEMORIA_INTRUCAO|memROM~26_combout\ & \MEMORIA_INTRUCAO|memROM~47_combout\)) # (\MEMORIA_INTRUCAO|memROM~54_combout\)) # (\MEMORIA_INTRUCAO|memROM~50_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~47_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~50_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~54_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~55_combout\);

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
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|REG_END_RET|DOUT\(1) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~5_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~55_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(1) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~5_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
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

\MEMORIA_INTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~14_combout\ = ( \CPU|PC|DOUT\(7) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) ) # ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(6)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000100000000000000000000000010000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~14_combout\);

\MEMORIA_INTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~15_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) & \MEMORIA_INTRUCAO|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~15_combout\);

\MEMORIA_INTRUCAO|memROM~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~68_combout\ = (!\MEMORIA_INTRUCAO|memROM~13_combout\ & !\MEMORIA_INTRUCAO|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~68_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~10_combout\ & (\MEMORIA_INTRUCAO|memROM~68_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & \MEMORIA_INTRUCAO|memROM~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\);

\MEMORIA_INTRUCAO|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~45_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000011111001110000001111100111000000111110011100000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~45_combout\);

\MEMORIA_INTRUCAO|memROM~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~71_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) $ (((\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(1)))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4)) # 
-- (!\CPU|PC|DOUT\(6))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) $ (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(4)))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(4)) # ((!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(1))))) ) 
-- ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(4)) # (!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(6) & ((\CPU|PC|DOUT\(1)))))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(6))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(4)) # (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000110000000111100001101101001011110110001101101011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~71_combout\);

\MEMORIA_INTRUCAO|memROM~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~72_combout\ = ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(3)) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(4) & 
-- ((!\CPU|PC|DOUT\(3)) # ((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101011101010100101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~72_combout\);

\MEMORIA_INTRUCAO|memROM~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~58_combout\ = (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~58_combout\);

\MEMORIA_INTRUCAO|memROM~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~73_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(1) & ((\MEMORIA_INTRUCAO|memROM~51_combout\))) # (\CPU|PC|DOUT\(1) & (\MEMORIA_INTRUCAO|memROM~58_combout\)) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- \CPU|PC|DOUT\(3) & ( \MEMORIA_INTRUCAO|memROM~51_combout\ ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1) & ((\MEMORIA_INTRUCAO|memROM~51_combout\))) # (\CPU|PC|DOUT\(1) & 
-- (\MEMORIA_INTRUCAO|memROM~58_combout\)))) # (\CPU|PC|DOUT\(6) & (((\MEMORIA_INTRUCAO|memROM~51_combout\)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1) & ((\MEMORIA_INTRUCAO|memROM~51_combout\))) # 
-- (\CPU|PC|DOUT\(1) & (\MEMORIA_INTRUCAO|memROM~58_combout\)))) # (\CPU|PC|DOUT\(6) & (((\MEMORIA_INTRUCAO|memROM~51_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010011001100110101001100110011001100110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~58_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~51_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~73_combout\);

\MEMORIA_INTRUCAO|memROM~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~66_combout\ = ( \MEMORIA_INTRUCAO|memROM~72_combout\ & ( \MEMORIA_INTRUCAO|memROM~73_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~71_combout\) # ((\MEMORIA_INTRUCAO|memROM~24_combout\ & !\MEMORIA_INTRUCAO|memROM~45_combout\)) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~72_combout\ & ( \MEMORIA_INTRUCAO|memROM~73_combout\ & ( (!\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~45_combout\))) # (\CPU|PC|DOUT\(0) & ((!\MEMORIA_INTRUCAO|memROM~71_combout\) # 
-- ((\MEMORIA_INTRUCAO|memROM~24_combout\ & !\MEMORIA_INTRUCAO|memROM~45_combout\)))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~72_combout\ & ( !\MEMORIA_INTRUCAO|memROM~73_combout\ & ( (!\CPU|PC|DOUT\(0) & ((!\MEMORIA_INTRUCAO|memROM~71_combout\) # 
-- ((\MEMORIA_INTRUCAO|memROM~24_combout\ & !\MEMORIA_INTRUCAO|memROM~45_combout\)))) # (\CPU|PC|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~45_combout\))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~72_combout\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~73_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & !\MEMORIA_INTRUCAO|memROM~45_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000101110100011000001110101001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~45_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~71_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~72_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~73_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~66_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ = (\MEMORIA_INTRUCAO|memROM~68_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & (!\MEMORIA_INTRUCAO|memROM~10_combout\ $ (!\MEMORIA_INTRUCAO|memROM~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000000010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~10_combout\ & (!\MEMORIA_INTRUCAO|memROM~68_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & !\MEMORIA_INTRUCAO|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~6_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~6_combout\);

\MEMORIA_INTRUCAO|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~37_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010000000001000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~37_combout\);

\MEMORIA_INTRUCAO|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~38_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)) # 
-- (\CPU|PC|DOUT\(6))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (((\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(6) & (((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101010101010000000000000011100100001000000000000010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~38_combout\);

\MEMORIA_INTRUCAO|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~39_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000000000110000000000000011000000000000001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~39_combout\);

\MEMORIA_INTRUCAO|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~40_combout\ = ( \MEMORIA_INTRUCAO|memROM~38_combout\ & ( \MEMORIA_INTRUCAO|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(7)) # ((\MEMORIA_INTRUCAO|memROM~6_combout\)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & 
-- ((\MEMORIA_INTRUCAO|memROM~37_combout\)))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~38_combout\ & ( \MEMORIA_INTRUCAO|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(5) & (((\MEMORIA_INTRUCAO|memROM~6_combout\)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & 
-- ((\MEMORIA_INTRUCAO|memROM~37_combout\)))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~38_combout\ & ( !\MEMORIA_INTRUCAO|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~37_combout\))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~38_combout\ & ( !\MEMORIA_INTRUCAO|memROM~39_combout\ & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~37_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100100010001100110000001010010011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~37_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~38_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~39_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~40_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~23_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ $ (((!\MEMORIA_INTRUCAO|memROM~10_combout\ & \MEMORIA_INTRUCAO|memROM~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000100000110100000010000011010000001000001101000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\);

\MEMORIA_DADOS|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~67_combout\ & (!\MEMORIA_INTRUCAO|memROM~40_combout\ & (!\MEMORIA_INTRUCAO|memROM~42_combout\ & \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\,
	combout => \MEMORIA_DADOS|dado_out~0_combout\);

\MEMORIA_INTRUCAO|memROM~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~62_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( 
-- \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(6)) # (\CPU|PC|DOUT\(0)))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(6)))) # 
-- (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(6))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000100000001100100000010001010000010101001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~62_combout\);

\MEMORIA_INTRUCAO|memROM~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~63_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111000000000000011100000000000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~63_combout\);

\MEMORIA_INTRUCAO|memROM~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~64_combout\ = ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & 
-- (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010000100000000000001110000010000100001000000000000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~64_combout\);

\MEMORIA_INTRUCAO|memROM~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~65_combout\ = ( \MEMORIA_INTRUCAO|memROM~63_combout\ & ( \MEMORIA_INTRUCAO|memROM~64_combout\ & ( (((\MEMORIA_INTRUCAO|memROM~51_combout\ & \MEMORIA_INTRUCAO|memROM~62_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~58_combout\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~63_combout\ & ( \MEMORIA_INTRUCAO|memROM~64_combout\ & ( ((\MEMORIA_INTRUCAO|memROM~51_combout\ & \MEMORIA_INTRUCAO|memROM~62_combout\)) # (\MEMORIA_INTRUCAO|memROM~58_combout\) ) 
-- ) ) # ( \MEMORIA_INTRUCAO|memROM~63_combout\ & ( !\MEMORIA_INTRUCAO|memROM~64_combout\ & ( ((\MEMORIA_INTRUCAO|memROM~51_combout\ & \MEMORIA_INTRUCAO|memROM~62_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~63_combout\ & ( !\MEMORIA_INTRUCAO|memROM~64_combout\ & ( (\MEMORIA_INTRUCAO|memROM~51_combout\ & \MEMORIA_INTRUCAO|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011111101010101011101110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~58_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~51_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~62_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~63_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~64_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~65_combout\);

\MEMORIA_DADOS|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~695_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~695_combout\);

\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~23_combout\ & ( (\MEMORIA_INTRUCAO|memROM~10_combout\ & (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\);

\MEMORIA_DADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|process_0~0_combout\ = (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~67_combout\ & (!\MEMORIA_INTRUCAO|memROM~40_combout\ & !\MEMORIA_INTRUCAO|memROM~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\,
	combout => \MEMORIA_DADOS|process_0~0_combout\);

\MEMORIA_DADOS|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~696_combout\ = (\MEMORIA_DADOS|ram~695_combout\ & \MEMORIA_DADOS|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~695_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~696_combout\);

\MEMORIA_DADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~19_q\);

\MEMORIA_DADOS|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~699_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~699_combout\);

\MEMORIA_DADOS|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~700_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~699_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~699_combout\,
	combout => \MEMORIA_DADOS|ram~700_combout\);

\MEMORIA_DADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~27_q\);

\MEMORIA_DADOS|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~727_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~727_combout\);

\MEMORIA_DADOS|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~728_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~727_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~727_combout\,
	combout => \MEMORIA_DADOS|ram~728_combout\);

\MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~51_q\);

\MEMORIA_DADOS|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~731_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~731_combout\);

\MEMORIA_DADOS|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~732_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~731_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~731_combout\,
	combout => \MEMORIA_DADOS|ram~732_combout\);

\MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~59_q\);

\MEMORIA_DADOS|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~611_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~59_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~51_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~27_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~19_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~27_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~51_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~59_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~611_combout\);

\MEMORIA_DADOS|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~703_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~703_combout\);

\MEMORIA_DADOS|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~704_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~703_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~703_combout\,
	combout => \MEMORIA_DADOS|ram~704_combout\);

\MEMORIA_DADOS|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~147_q\);

\MEMORIA_DADOS|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~707_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~707_combout\);

\MEMORIA_DADOS|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~708_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~707_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~707_combout\,
	combout => \MEMORIA_DADOS|ram~708_combout\);

\MEMORIA_DADOS|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~155_q\);

\MEMORIA_DADOS|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~735_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~735_combout\);

\MEMORIA_DADOS|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~736_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~735_combout\,
	combout => \MEMORIA_DADOS|ram~736_combout\);

\MEMORIA_DADOS|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~179_q\);

\MEMORIA_DADOS|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~739_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~739_combout\);

\MEMORIA_DADOS|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~740_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~739_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~739_combout\,
	combout => \MEMORIA_DADOS|ram~740_combout\);

\MEMORIA_DADOS|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~187_q\);

\MEMORIA_DADOS|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~612_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~187_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~179_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~155_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~147_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~155_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~179_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~187_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~612_combout\);

\MEMORIA_DADOS|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~711_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~711_combout\);

\MEMORIA_DADOS|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~712_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~711_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~711_combout\,
	combout => \MEMORIA_DADOS|ram~712_combout\);

\MEMORIA_DADOS|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~83_q\);

\MEMORIA_DADOS|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~715_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~715_combout\);

\MEMORIA_DADOS|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~716_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~715_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~715_combout\,
	combout => \MEMORIA_DADOS|ram~716_combout\);

\MEMORIA_DADOS|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~91_q\);

\MEMORIA_DADOS|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~743_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~743_combout\);

\MEMORIA_DADOS|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~744_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~743_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~743_combout\,
	combout => \MEMORIA_DADOS|ram~744_combout\);

\MEMORIA_DADOS|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~115_q\);

\MEMORIA_DADOS|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~747_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~747_combout\);

\MEMORIA_DADOS|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~748_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~747_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~747_combout\,
	combout => \MEMORIA_DADOS|ram~748_combout\);

\MEMORIA_DADOS|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~123_q\);

\MEMORIA_DADOS|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~613_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~123_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~115_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~91_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~83_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~91_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~115_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~123_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~613_combout\);

\MEMORIA_DADOS|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~719_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~719_combout\);

\MEMORIA_DADOS|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~720_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~719_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~719_combout\,
	combout => \MEMORIA_DADOS|ram~720_combout\);

\MEMORIA_DADOS|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~211_q\);

\MEMORIA_DADOS|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~723_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~723_combout\);

\MEMORIA_DADOS|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~724_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~723_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~723_combout\,
	combout => \MEMORIA_DADOS|ram~724_combout\);

\MEMORIA_DADOS|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~219_q\);

\MEMORIA_DADOS|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~751_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~751_combout\);

\MEMORIA_DADOS|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~752_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~751_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~751_combout\,
	combout => \MEMORIA_DADOS|ram~752_combout\);

\MEMORIA_DADOS|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~243_q\);

\MEMORIA_DADOS|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~755_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~755_combout\);

\MEMORIA_DADOS|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~756_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~755_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~755_combout\,
	combout => \MEMORIA_DADOS|ram~756_combout\);

\MEMORIA_DADOS|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~251_q\);

\MEMORIA_DADOS|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~614_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~251_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~243_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~219_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~211_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~219_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~243_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~251_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~614_combout\);

\MEMORIA_DADOS|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~615_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~614_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~613_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~612_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~611_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~611_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~612_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~613_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~614_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~615_combout\);

\MEMORIA_DADOS|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~697_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~697_combout\);

\MEMORIA_DADOS|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~698_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~697_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~697_combout\,
	combout => \MEMORIA_DADOS|ram~698_combout\);

\MEMORIA_DADOS|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~275_q\);

\MEMORIA_DADOS|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~701_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~701_combout\);

\MEMORIA_DADOS|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~702_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~701_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~701_combout\,
	combout => \MEMORIA_DADOS|ram~702_combout\);

\MEMORIA_DADOS|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~283_q\);

\MEMORIA_DADOS|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~713_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~713_combout\);

\MEMORIA_DADOS|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~714_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~713_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~713_combout\,
	combout => \MEMORIA_DADOS|ram~714_combout\);

\MEMORIA_DADOS|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~339_q\);

\MEMORIA_DADOS|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~717_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~717_combout\);

\MEMORIA_DADOS|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~718_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~717_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~717_combout\,
	combout => \MEMORIA_DADOS|ram~718_combout\);

\MEMORIA_DADOS|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~347_q\);

\MEMORIA_DADOS|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~616_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~347_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~339_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~283_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~275_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~283_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~339_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~347_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~616_combout\);

\MEMORIA_DADOS|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~729_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~729_combout\);

\MEMORIA_DADOS|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~730_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~729_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~729_combout\,
	combout => \MEMORIA_DADOS|ram~730_combout\);

\MEMORIA_DADOS|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~307_q\);

\MEMORIA_DADOS|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~733_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~733_combout\);

\MEMORIA_DADOS|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~734_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~733_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~733_combout\,
	combout => \MEMORIA_DADOS|ram~734_combout\);

\MEMORIA_DADOS|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~315_q\);

\MEMORIA_DADOS|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~745_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~745_combout\);

\MEMORIA_DADOS|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~746_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~745_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~745_combout\,
	combout => \MEMORIA_DADOS|ram~746_combout\);

\MEMORIA_DADOS|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~371_q\);

\MEMORIA_DADOS|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~749_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~749_combout\);

\MEMORIA_DADOS|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~750_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~749_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~749_combout\,
	combout => \MEMORIA_DADOS|ram~750_combout\);

\MEMORIA_DADOS|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~379_q\);

\MEMORIA_DADOS|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~617_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~379_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~371_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~315_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~307_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~315_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~371_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~379_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~617_combout\);

\MEMORIA_DADOS|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~705_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~705_combout\);

\MEMORIA_DADOS|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~706_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~705_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~705_combout\,
	combout => \MEMORIA_DADOS|ram~706_combout\);

\MEMORIA_DADOS|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~403_q\);

\MEMORIA_DADOS|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~709_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~709_combout\);

\MEMORIA_DADOS|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~710_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~709_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~709_combout\,
	combout => \MEMORIA_DADOS|ram~710_combout\);

\MEMORIA_DADOS|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~411_q\);

\MEMORIA_DADOS|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~721_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~721_combout\);

\MEMORIA_DADOS|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~722_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~721_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~721_combout\,
	combout => \MEMORIA_DADOS|ram~722_combout\);

\MEMORIA_DADOS|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~467_q\);

\MEMORIA_DADOS|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~725_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~725_combout\);

\MEMORIA_DADOS|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~726_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~725_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~725_combout\,
	combout => \MEMORIA_DADOS|ram~726_combout\);

\MEMORIA_DADOS|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~475_q\);

\MEMORIA_DADOS|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~618_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~475_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~467_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~411_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~403_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~411_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~467_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~475_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~618_combout\);

\MEMORIA_DADOS|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~737_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~737_combout\);

\MEMORIA_DADOS|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~738_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~737_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~737_combout\,
	combout => \MEMORIA_DADOS|ram~738_combout\);

\MEMORIA_DADOS|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~435_q\);

\MEMORIA_DADOS|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~741_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~741_combout\);

\MEMORIA_DADOS|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~742_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~741_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~741_combout\,
	combout => \MEMORIA_DADOS|ram~742_combout\);

\MEMORIA_DADOS|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~443_q\);

\MEMORIA_DADOS|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~753_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~753_combout\);

\MEMORIA_DADOS|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~754_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~753_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~753_combout\,
	combout => \MEMORIA_DADOS|ram~754_combout\);

\MEMORIA_DADOS|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~499_q\);

\MEMORIA_DADOS|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~757_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~757_combout\);

\MEMORIA_DADOS|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~758_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~757_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~757_combout\,
	combout => \MEMORIA_DADOS|ram~758_combout\);

\MEMORIA_DADOS|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~507_q\);

\MEMORIA_DADOS|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~619_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~507_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~499_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~443_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~435_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~443_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~499_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~507_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~619_combout\);

\MEMORIA_DADOS|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~620_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~619_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~618_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~617_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~616_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~616_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~617_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~618_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~619_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~620_combout\);

\MEMORIA_DADOS|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~759_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~759_combout\);

\MEMORIA_DADOS|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~760_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~759_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~759_combout\,
	combout => \MEMORIA_DADOS|ram~760_combout\);

\MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

\MEMORIA_DADOS|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~763_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~763_combout\);

\MEMORIA_DADOS|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~764_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~763_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~763_combout\,
	combout => \MEMORIA_DADOS|ram~764_combout\);

\MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~43_q\);

\MEMORIA_DADOS|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~767_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~767_combout\);

\MEMORIA_DADOS|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~768_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~767_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~767_combout\,
	combout => \MEMORIA_DADOS|ram~768_combout\);

\MEMORIA_DADOS|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~163_q\);

\MEMORIA_DADOS|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~771_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~771_combout\);

\MEMORIA_DADOS|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~772_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~771_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~771_combout\,
	combout => \MEMORIA_DADOS|ram~772_combout\);

\MEMORIA_DADOS|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~171_q\);

\MEMORIA_DADOS|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~621_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~171_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~163_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~43_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~43_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~163_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~171_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~621_combout\);

\MEMORIA_DADOS|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~791_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~791_combout\);

\MEMORIA_DADOS|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~792_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~791_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~791_combout\,
	combout => \MEMORIA_DADOS|ram~792_combout\);

\MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~67_q\);

\MEMORIA_DADOS|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~799_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~799_combout\);

\MEMORIA_DADOS|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~800_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~799_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~799_combout\,
	combout => \MEMORIA_DADOS|ram~800_combout\);

\MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~75_q\);

\MEMORIA_DADOS|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~795_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~795_combout\);

\MEMORIA_DADOS|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~796_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~795_combout\,
	combout => \MEMORIA_DADOS|ram~796_combout\);

\MEMORIA_DADOS|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~195_q\);

\MEMORIA_DADOS|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~803_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~803_combout\);

\MEMORIA_DADOS|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~804_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~803_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~803_combout\,
	combout => \MEMORIA_DADOS|ram~804_combout\);

\MEMORIA_DADOS|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~203_q\);

\MEMORIA_DADOS|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~622_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~203_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~195_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~75_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~195_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~203_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~622_combout\);

\MEMORIA_DADOS|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~775_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~775_combout\);

\MEMORIA_DADOS|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~776_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~775_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~775_combout\,
	combout => \MEMORIA_DADOS|ram~776_combout\);

\MEMORIA_DADOS|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~99_q\);

\MEMORIA_DADOS|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~779_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~779_combout\);

\MEMORIA_DADOS|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~780_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~779_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~779_combout\,
	combout => \MEMORIA_DADOS|ram~780_combout\);

\MEMORIA_DADOS|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~107_q\);

\MEMORIA_DADOS|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~783_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~783_combout\);

\MEMORIA_DADOS|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~784_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~783_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~783_combout\,
	combout => \MEMORIA_DADOS|ram~784_combout\);

\MEMORIA_DADOS|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~227_q\);

\MEMORIA_DADOS|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~787_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~787_combout\);

\MEMORIA_DADOS|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~788_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~787_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~787_combout\,
	combout => \MEMORIA_DADOS|ram~788_combout\);

\MEMORIA_DADOS|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~235_q\);

\MEMORIA_DADOS|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~623_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~235_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~227_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~107_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~99_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~107_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~227_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~235_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~623_combout\);

\MEMORIA_DADOS|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~807_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~807_combout\);

\MEMORIA_DADOS|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~808_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~807_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~807_combout\,
	combout => \MEMORIA_DADOS|ram~808_combout\);

\MEMORIA_DADOS|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~131_q\);

\MEMORIA_DADOS|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~815_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~815_combout\);

\MEMORIA_DADOS|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~816_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~815_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~815_combout\,
	combout => \MEMORIA_DADOS|ram~816_combout\);

\MEMORIA_DADOS|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~139_q\);

\MEMORIA_DADOS|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~811_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~811_combout\);

\MEMORIA_DADOS|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~812_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~811_combout\,
	combout => \MEMORIA_DADOS|ram~812_combout\);

\MEMORIA_DADOS|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~259_q\);

\MEMORIA_DADOS|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~819_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~819_combout\);

\MEMORIA_DADOS|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~820_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~819_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~819_combout\,
	combout => \MEMORIA_DADOS|ram~820_combout\);

\MEMORIA_DADOS|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~267_q\);

\MEMORIA_DADOS|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~624_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~267_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~259_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~139_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~131_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~139_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~259_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~267_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~624_combout\);

\MEMORIA_DADOS|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~625_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~624_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~623_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~622_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~621_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~622_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~623_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~624_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~625_combout\);

\MEMORIA_DADOS|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~761_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~761_combout\);

\MEMORIA_DADOS|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~762_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~761_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~761_combout\,
	combout => \MEMORIA_DADOS|ram~762_combout\);

\MEMORIA_DADOS|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~291_q\);

\MEMORIA_DADOS|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~765_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~765_combout\);

\MEMORIA_DADOS|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~766_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~765_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~765_combout\,
	combout => \MEMORIA_DADOS|ram~766_combout\);

\MEMORIA_DADOS|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~299_q\);

\MEMORIA_DADOS|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~793_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~793_combout\);

\MEMORIA_DADOS|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~794_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~793_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~793_combout\,
	combout => \MEMORIA_DADOS|ram~794_combout\);

\MEMORIA_DADOS|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~323_q\);

\MEMORIA_DADOS|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~801_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~801_combout\);

\MEMORIA_DADOS|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~802_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~801_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~801_combout\,
	combout => \MEMORIA_DADOS|ram~802_combout\);

\MEMORIA_DADOS|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~331_q\);

\MEMORIA_DADOS|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~626_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~331_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~323_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~299_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~291_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~291_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~299_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~323_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~331_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~626_combout\);

\MEMORIA_DADOS|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~769_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~769_combout\);

\MEMORIA_DADOS|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~770_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~769_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~769_combout\,
	combout => \MEMORIA_DADOS|ram~770_combout\);

\MEMORIA_DADOS|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~419_q\);

\MEMORIA_DADOS|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~773_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~773_combout\);

\MEMORIA_DADOS|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~774_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~773_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~773_combout\,
	combout => \MEMORIA_DADOS|ram~774_combout\);

\MEMORIA_DADOS|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~427_q\);

\MEMORIA_DADOS|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~797_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~797_combout\);

\MEMORIA_DADOS|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~798_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~797_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~797_combout\,
	combout => \MEMORIA_DADOS|ram~798_combout\);

\MEMORIA_DADOS|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~451_q\);

\MEMORIA_DADOS|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~805_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~805_combout\);

\MEMORIA_DADOS|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~806_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~805_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~805_combout\,
	combout => \MEMORIA_DADOS|ram~806_combout\);

\MEMORIA_DADOS|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~459_q\);

\MEMORIA_DADOS|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~627_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~459_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~451_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~427_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~419_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~419_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~427_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~451_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~459_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~627_combout\);

\MEMORIA_DADOS|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~777_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~777_combout\);

\MEMORIA_DADOS|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~778_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~777_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~777_combout\,
	combout => \MEMORIA_DADOS|ram~778_combout\);

\MEMORIA_DADOS|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~355_q\);

\MEMORIA_DADOS|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~781_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~781_combout\);

\MEMORIA_DADOS|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~782_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~781_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~781_combout\,
	combout => \MEMORIA_DADOS|ram~782_combout\);

\MEMORIA_DADOS|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~363_q\);

\MEMORIA_DADOS|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~809_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~809_combout\);

\MEMORIA_DADOS|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~810_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~809_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~809_combout\,
	combout => \MEMORIA_DADOS|ram~810_combout\);

\MEMORIA_DADOS|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~387_q\);

\MEMORIA_DADOS|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~817_combout\ = ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~817_combout\);

\MEMORIA_DADOS|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~818_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~817_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~817_combout\,
	combout => \MEMORIA_DADOS|ram~818_combout\);

\MEMORIA_DADOS|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~395_q\);

\MEMORIA_DADOS|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~628_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~395_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~387_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~363_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~355_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~355_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~363_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~387_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~395_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~628_combout\);

\MEMORIA_DADOS|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~785_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~785_combout\);

\MEMORIA_DADOS|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~786_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~785_combout\,
	combout => \MEMORIA_DADOS|ram~786_combout\);

\MEMORIA_DADOS|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~483_q\);

\MEMORIA_DADOS|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~789_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~789_combout\);

\MEMORIA_DADOS|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~790_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~789_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~789_combout\,
	combout => \MEMORIA_DADOS|ram~790_combout\);

\MEMORIA_DADOS|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~491_q\);

\MEMORIA_DADOS|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~813_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~813_combout\);

\MEMORIA_DADOS|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~814_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~813_combout\,
	combout => \MEMORIA_DADOS|ram~814_combout\);

\MEMORIA_DADOS|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~515_q\);

\MEMORIA_DADOS|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~821_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~65_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~821_combout\);

\MEMORIA_DADOS|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~822_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~821_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~821_combout\,
	combout => \MEMORIA_DADOS|ram~822_combout\);

\MEMORIA_DADOS|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~523_q\);

\MEMORIA_DADOS|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~629_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~523_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~515_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~491_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~483_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~483_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~491_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~515_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~523_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~629_combout\);

\MEMORIA_DADOS|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~630_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~629_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~628_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~627_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~626_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~626_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~627_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~628_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~629_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~630_combout\);

\MEMORIA_DADOS|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~631_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~630_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~625_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~620_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~615_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~615_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~620_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~625_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~630_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~631_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\CPU|MUX1|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~2_combout\ = (!\MEMORIA_DADOS|dado_out~0_combout\ & ((\SW[4]~input_o\))) # (\MEMORIA_DADOS|dado_out~0_combout\ & (\MEMORIA_DADOS|ram~631_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~631_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	combout => \CPU|MUX1|saida_MUX[4]~2_combout\);

\MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~18_q\);

\MEMORIA_DADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~26_q\);

\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

\MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~42_q\);

\MEMORIA_DADOS|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~590_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~42_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~34_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~26_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~18_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~26_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~42_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~590_combout\);

\MEMORIA_DADOS|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~146_q\);

\MEMORIA_DADOS|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~154_q\);

\MEMORIA_DADOS|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~162_q\);

\MEMORIA_DADOS|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~170_q\);

\MEMORIA_DADOS|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~591_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~170_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~162_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~154_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~146_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~154_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~162_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~170_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~591_combout\);

\MEMORIA_DADOS|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~82_q\);

\MEMORIA_DADOS|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~90_q\);

\MEMORIA_DADOS|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~98_q\);

\MEMORIA_DADOS|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~106_q\);

\MEMORIA_DADOS|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~592_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~106_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~98_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~90_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~82_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~90_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~98_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~106_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~592_combout\);

\MEMORIA_DADOS|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~210_q\);

\MEMORIA_DADOS|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~218_q\);

\MEMORIA_DADOS|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~226_q\);

\MEMORIA_DADOS|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~234_q\);

\MEMORIA_DADOS|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~593_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~234_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~226_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~218_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~210_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~218_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~226_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~234_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~593_combout\);

\MEMORIA_DADOS|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~594_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~593_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~592_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~591_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~590_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~590_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~591_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~592_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~593_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~594_combout\);

\MEMORIA_DADOS|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~274_q\);

\MEMORIA_DADOS|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~402_q\);

\MEMORIA_DADOS|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~290_q\);

\MEMORIA_DADOS|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~418_q\);

\MEMORIA_DADOS|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~595_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~418_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~290_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~402_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~274_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~402_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~290_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~418_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~595_combout\);

\MEMORIA_DADOS|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~282_q\);

\MEMORIA_DADOS|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~410_q\);

\MEMORIA_DADOS|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~298_q\);

\MEMORIA_DADOS|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~426_q\);

\MEMORIA_DADOS|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~596_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~426_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~298_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~410_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~282_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~282_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~410_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~298_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~426_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~596_combout\);

\MEMORIA_DADOS|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~338_q\);

\MEMORIA_DADOS|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~466_q\);

\MEMORIA_DADOS|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~354_q\);

\MEMORIA_DADOS|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~482_q\);

\MEMORIA_DADOS|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~597_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~482_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~354_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~466_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~338_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~466_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~354_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~482_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~597_combout\);

\MEMORIA_DADOS|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~346_q\);

\MEMORIA_DADOS|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~474_q\);

\MEMORIA_DADOS|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~362_q\);

\MEMORIA_DADOS|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~490_q\);

\MEMORIA_DADOS|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~598_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~490_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~362_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~474_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~346_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~346_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~474_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~362_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~490_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~598_combout\);

\MEMORIA_DADOS|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~599_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~598_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~597_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~596_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~595_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~596_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~597_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~598_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~599_combout\);

\MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~50_q\);

\MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~66_q\);

\MEMORIA_DADOS|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~114_q\);

\MEMORIA_DADOS|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~130_q\);

\MEMORIA_DADOS|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~600_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~130_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~114_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~66_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~50_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~114_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~130_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~600_combout\);

\MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~58_q\);

\MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~74_q\);

\MEMORIA_DADOS|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~122_q\);

\MEMORIA_DADOS|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~138_q\);

\MEMORIA_DADOS|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~601_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~138_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~122_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~74_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~58_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~122_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~138_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~601_combout\);

\MEMORIA_DADOS|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~178_q\);

\MEMORIA_DADOS|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~194_q\);

\MEMORIA_DADOS|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~242_q\);

\MEMORIA_DADOS|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~258_q\);

\MEMORIA_DADOS|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~602_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~258_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~242_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~194_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~178_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~178_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~194_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~242_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~258_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~602_combout\);

\MEMORIA_DADOS|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~186_q\);

\MEMORIA_DADOS|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~202_q\);

\MEMORIA_DADOS|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~250_q\);

\MEMORIA_DADOS|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~266_q\);

\MEMORIA_DADOS|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~603_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~266_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~250_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~202_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~186_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~186_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~202_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~250_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~266_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~603_combout\);

\MEMORIA_DADOS|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~604_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~603_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~602_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~601_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~600_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~601_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~602_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~603_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~604_combout\);

\MEMORIA_DADOS|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~306_q\);

\MEMORIA_DADOS|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~314_q\);

\MEMORIA_DADOS|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~322_q\);

\MEMORIA_DADOS|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~330_q\);

\MEMORIA_DADOS|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~605_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~330_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~322_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~314_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~306_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~314_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~322_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~330_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~605_combout\);

\MEMORIA_DADOS|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~434_q\);

\MEMORIA_DADOS|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~442_q\);

\MEMORIA_DADOS|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~450_q\);

\MEMORIA_DADOS|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~458_q\);

\MEMORIA_DADOS|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~606_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~458_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~450_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~442_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~434_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~434_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~442_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~450_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~458_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~606_combout\);

\MEMORIA_DADOS|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~370_q\);

\MEMORIA_DADOS|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~378_q\);

\MEMORIA_DADOS|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~386_q\);

\MEMORIA_DADOS|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~394_q\);

\MEMORIA_DADOS|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~607_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~394_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~386_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~378_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~370_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~370_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~378_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~386_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~394_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~607_combout\);

\MEMORIA_DADOS|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~498_q\);

\MEMORIA_DADOS|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~506_q\);

\MEMORIA_DADOS|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~514_q\);

\MEMORIA_DADOS|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~522_q\);

\MEMORIA_DADOS|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~608_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~522_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~514_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~506_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~498_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~498_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~506_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~514_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~522_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~608_combout\);

\MEMORIA_DADOS|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~609_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~608_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~607_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~606_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~605_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~606_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~607_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~608_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~609_combout\);

\MEMORIA_DADOS|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~610_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~609_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~604_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~599_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~594_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~599_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~604_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~609_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~610_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\CPU|MUX1|saida_MUX[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~6_combout\ = (!\MEMORIA_DADOS|dado_out~0_combout\ & ((\SW[3]~input_o\))) # (\MEMORIA_DADOS|dado_out~0_combout\ & (\MEMORIA_DADOS|ram~610_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~610_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	combout => \CPU|MUX1|saida_MUX[3]~6_combout\);

\MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~17_q\);

\MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~49_q\);

\MEMORIA_DADOS|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~81_q\);

\MEMORIA_DADOS|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~113_q\);

\MEMORIA_DADOS|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~569_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~113_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~81_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~49_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~17_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~49_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~81_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~113_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~569_combout\);

\MEMORIA_DADOS|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~145_q\);

\MEMORIA_DADOS|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~177_q\);

\MEMORIA_DADOS|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~209_q\);

\MEMORIA_DADOS|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~241_q\);

\MEMORIA_DADOS|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~570_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~241_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~209_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~177_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~145_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~145_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~177_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~209_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~241_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~570_combout\);

\MEMORIA_DADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~33_q\);

\MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~65_q\);

\MEMORIA_DADOS|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~97_q\);

\MEMORIA_DADOS|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~129_q\);

\MEMORIA_DADOS|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~571_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~129_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~97_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~65_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~33_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~65_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~97_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~129_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~571_combout\);

\MEMORIA_DADOS|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~161_q\);

\MEMORIA_DADOS|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~193_q\);

\MEMORIA_DADOS|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~225_q\);

\MEMORIA_DADOS|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~257_q\);

\MEMORIA_DADOS|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~572_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~257_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~225_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~193_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~161_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~193_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~225_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~257_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~572_combout\);

\MEMORIA_DADOS|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~573_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~572_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~571_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~570_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~569_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~570_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~571_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~572_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~573_combout\);

\MEMORIA_DADOS|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~273_q\);

\MEMORIA_DADOS|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~305_q\);

\MEMORIA_DADOS|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~401_q\);

\MEMORIA_DADOS|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~433_q\);

\MEMORIA_DADOS|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~574_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~433_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~401_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~305_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~273_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~305_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~401_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~433_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~574_combout\);

\MEMORIA_DADOS|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~289_q\);

\MEMORIA_DADOS|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~321_q\);

\MEMORIA_DADOS|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~417_q\);

\MEMORIA_DADOS|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~449_q\);

\MEMORIA_DADOS|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~575_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~449_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~417_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~321_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~289_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~289_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~321_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~417_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~449_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~575_combout\);

\MEMORIA_DADOS|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~337_q\);

\MEMORIA_DADOS|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~369_q\);

\MEMORIA_DADOS|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~465_q\);

\MEMORIA_DADOS|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~497_q\);

\MEMORIA_DADOS|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~576_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~497_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~465_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~369_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~337_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~337_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~369_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~465_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~497_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~576_combout\);

\MEMORIA_DADOS|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~353_q\);

\MEMORIA_DADOS|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~385_q\);

\MEMORIA_DADOS|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~481_q\);

\MEMORIA_DADOS|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~513_q\);

\MEMORIA_DADOS|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~577_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~513_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~481_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~385_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~353_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~353_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~385_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~481_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~513_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~577_combout\);

\MEMORIA_DADOS|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~578_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~577_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~576_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~575_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~574_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~575_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~576_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~577_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~578_combout\);

\MEMORIA_DADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~25_q\);

\MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~57_q\);

\MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~41_q\);

\MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~73_q\);

\MEMORIA_DADOS|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~579_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~73_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~41_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~57_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~25_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~57_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~41_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~579_combout\);

\MEMORIA_DADOS|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~153_q\);

\MEMORIA_DADOS|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~185_q\);

\MEMORIA_DADOS|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~169_q\);

\MEMORIA_DADOS|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~201_q\);

\MEMORIA_DADOS|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~580_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~201_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~169_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~185_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~153_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~185_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~169_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~201_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~580_combout\);

\MEMORIA_DADOS|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~89_q\);

\MEMORIA_DADOS|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~121_q\);

\MEMORIA_DADOS|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~105_q\);

\MEMORIA_DADOS|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~137_q\);

\MEMORIA_DADOS|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~581_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~137_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~105_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~121_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~89_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~121_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~105_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~137_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~581_combout\);

\MEMORIA_DADOS|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~217_q\);

\MEMORIA_DADOS|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~249_q\);

\MEMORIA_DADOS|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~233_q\);

\MEMORIA_DADOS|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~265_q\);

\MEMORIA_DADOS|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~582_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~265_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~233_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~249_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~217_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~249_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~233_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~265_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~582_combout\);

\MEMORIA_DADOS|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~583_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~582_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~581_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~580_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~579_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~580_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~581_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~582_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~583_combout\);

\MEMORIA_DADOS|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~281_q\);

\MEMORIA_DADOS|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~409_q\);

\MEMORIA_DADOS|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~345_q\);

\MEMORIA_DADOS|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~473_q\);

\MEMORIA_DADOS|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~584_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~473_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~345_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~409_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~281_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~281_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~409_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~345_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~473_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~584_combout\);

\MEMORIA_DADOS|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~313_q\);

\MEMORIA_DADOS|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~441_q\);

\MEMORIA_DADOS|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~377_q\);

\MEMORIA_DADOS|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~505_q\);

\MEMORIA_DADOS|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~585_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~505_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~377_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~441_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~313_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~441_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~377_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~505_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~585_combout\);

\MEMORIA_DADOS|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~297_q\);

\MEMORIA_DADOS|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~425_q\);

\MEMORIA_DADOS|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~361_q\);

\MEMORIA_DADOS|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~489_q\);

\MEMORIA_DADOS|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~586_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~489_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~361_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~425_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~297_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~425_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~361_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~489_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~586_combout\);

\MEMORIA_DADOS|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~329_q\);

\MEMORIA_DADOS|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~457_q\);

\MEMORIA_DADOS|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~393_q\);

\MEMORIA_DADOS|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~521_q\);

\MEMORIA_DADOS|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~587_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~521_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~393_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~457_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~329_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~329_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~457_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~393_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~521_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~587_combout\);

\MEMORIA_DADOS|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~588_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~587_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~586_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~585_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~584_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~585_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~586_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~587_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~588_combout\);

\MEMORIA_DADOS|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~589_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~588_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~583_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~578_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~573_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~578_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~583_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~588_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~589_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\CPU|MUX1|saida_MUX[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~5_combout\ = (!\MEMORIA_DADOS|dado_out~0_combout\ & ((\SW[2]~input_o\))) # (\MEMORIA_DADOS|dado_out~0_combout\ & (\MEMORIA_DADOS|ram~589_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~589_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	combout => \CPU|MUX1|saida_MUX[2]~5_combout\);

\MEMORIA_DADOS|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~16_q\);

\MEMORIA_DADOS|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~272_q\);

\MEMORIA_DADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~32_q\);

\MEMORIA_DADOS|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~288_q\);

\MEMORIA_DADOS|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~548_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~288_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~32_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~272_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~16_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~272_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~32_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~288_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~548_combout\);

\MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~48_q\);

\MEMORIA_DADOS|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~304_q\);

\MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~64_q\);

\MEMORIA_DADOS|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~320_q\);

\MEMORIA_DADOS|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~549_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~320_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~64_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~304_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~48_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~304_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~64_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~320_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~549_combout\);

\MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~80_q\);

\MEMORIA_DADOS|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~336_q\);

\MEMORIA_DADOS|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~96_q\);

\MEMORIA_DADOS|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~352_q\);

\MEMORIA_DADOS|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~550_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~352_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~96_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~336_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~80_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~336_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~96_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~352_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~550_combout\);

\MEMORIA_DADOS|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~112_q\);

\MEMORIA_DADOS|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~368_q\);

\MEMORIA_DADOS|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~128_q\);

\MEMORIA_DADOS|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~384_q\);

\MEMORIA_DADOS|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~551_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~384_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~128_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~368_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~112_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~112_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~368_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~128_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~384_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~551_combout\);

\MEMORIA_DADOS|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~552_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~551_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~550_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~549_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~549_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~550_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~551_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~552_combout\);

\MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~24_q\);

\MEMORIA_DADOS|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~280_q\);

\MEMORIA_DADOS|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~88_q\);

\MEMORIA_DADOS|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~344_q\);

\MEMORIA_DADOS|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~553_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~344_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~88_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~280_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~24_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~280_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~88_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~344_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~553_combout\);

\MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~56_q\);

\MEMORIA_DADOS|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~312_q\);

\MEMORIA_DADOS|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~120_q\);

\MEMORIA_DADOS|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~376_q\);

\MEMORIA_DADOS|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~554_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~376_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~120_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~312_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~56_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~312_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~120_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~376_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~554_combout\);

\MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~40_q\);

\MEMORIA_DADOS|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~296_q\);

\MEMORIA_DADOS|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~104_q\);

\MEMORIA_DADOS|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~360_q\);

\MEMORIA_DADOS|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~555_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~360_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~104_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~296_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~40_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~296_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~104_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~360_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~555_combout\);

\MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~72_q\);

\MEMORIA_DADOS|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~328_q\);

\MEMORIA_DADOS|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~136_q\);

\MEMORIA_DADOS|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~392_q\);

\MEMORIA_DADOS|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~556_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~392_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~136_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~328_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~328_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~136_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~392_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~556_combout\);

\MEMORIA_DADOS|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~557_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~556_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~555_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~554_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~554_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~555_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~556_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~557_combout\);

\MEMORIA_DADOS|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~144_q\);

\MEMORIA_DADOS|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~400_q\);

\MEMORIA_DADOS|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~176_q\);

\MEMORIA_DADOS|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~432_q\);

\MEMORIA_DADOS|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~558_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~432_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~176_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~400_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~144_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~400_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~176_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~432_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~558_combout\);

\MEMORIA_DADOS|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~160_q\);

\MEMORIA_DADOS|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~416_q\);

\MEMORIA_DADOS|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~192_q\);

\MEMORIA_DADOS|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~448_q\);

\MEMORIA_DADOS|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~559_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~448_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~192_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~416_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~160_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~160_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~416_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~192_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~448_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~559_combout\);

\MEMORIA_DADOS|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~208_q\);

\MEMORIA_DADOS|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~464_q\);

\MEMORIA_DADOS|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~240_q\);

\MEMORIA_DADOS|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~496_q\);

\MEMORIA_DADOS|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~560_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~496_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~240_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~464_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~208_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~464_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~240_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~496_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~560_combout\);

\MEMORIA_DADOS|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~224_q\);

\MEMORIA_DADOS|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~480_q\);

\MEMORIA_DADOS|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~256_q\);

\MEMORIA_DADOS|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~512_q\);

\MEMORIA_DADOS|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~561_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~512_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~256_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~480_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~224_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~480_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~256_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~512_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~561_combout\);

\MEMORIA_DADOS|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~562_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~561_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~560_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~559_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~560_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~561_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~562_combout\);

\MEMORIA_DADOS|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~152_q\);

\MEMORIA_DADOS|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~408_q\);

\MEMORIA_DADOS|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~168_q\);

\MEMORIA_DADOS|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~424_q\);

\MEMORIA_DADOS|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~563_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~424_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~168_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~408_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~152_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~152_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~408_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~168_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~424_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~563_combout\);

\MEMORIA_DADOS|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~184_q\);

\MEMORIA_DADOS|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~440_q\);

\MEMORIA_DADOS|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~200_q\);

\MEMORIA_DADOS|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~456_q\);

\MEMORIA_DADOS|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~564_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~456_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~200_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~440_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~184_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~184_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~440_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~200_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~456_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~564_combout\);

\MEMORIA_DADOS|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~216_q\);

\MEMORIA_DADOS|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~472_q\);

\MEMORIA_DADOS|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~232_q\);

\MEMORIA_DADOS|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~488_q\);

\MEMORIA_DADOS|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~565_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~488_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~232_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~472_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~216_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~472_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~232_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~488_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~565_combout\);

\MEMORIA_DADOS|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~248_q\);

\MEMORIA_DADOS|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~504_q\);

\MEMORIA_DADOS|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~264_q\);

\MEMORIA_DADOS|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~520_q\);

\MEMORIA_DADOS|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~566_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~520_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~264_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~504_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~248_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~248_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~504_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~264_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~520_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~566_combout\);

\MEMORIA_DADOS|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~567_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~566_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~565_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~564_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~563_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~564_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~565_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~566_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~567_combout\);

\MEMORIA_DADOS|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~568_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~567_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~562_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~557_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~552_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~557_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~562_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~567_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~568_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU|MUX1|saida_MUX[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~4_combout\ = (!\MEMORIA_DADOS|dado_out~0_combout\ & ((\SW[1]~input_o\))) # (\MEMORIA_DADOS|dado_out~0_combout\ & (\MEMORIA_DADOS|ram~568_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[1]~4_combout\);

\MEMORIA_DADOS|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~15_q\);

\MEMORIA_DADOS|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~271_q\);

\MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~23_q\);

\MEMORIA_DADOS|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~279_q\);

\MEMORIA_DADOS|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~527_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~279_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~23_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~271_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~15_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~271_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~23_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~279_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~527_combout\);

\MEMORIA_DADOS|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~143_q\);

\MEMORIA_DADOS|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~399_q\);

\MEMORIA_DADOS|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~151_q\);

\MEMORIA_DADOS|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~407_q\);

\MEMORIA_DADOS|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~528_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~407_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~151_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~399_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~143_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~143_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~399_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~151_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~407_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~528_combout\);

\MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~79_q\);

\MEMORIA_DADOS|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~335_q\);

\MEMORIA_DADOS|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~87_q\);

\MEMORIA_DADOS|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~343_q\);

\MEMORIA_DADOS|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~529_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~343_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~87_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~335_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~79_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~335_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~87_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~343_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~529_combout\);

\MEMORIA_DADOS|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~207_q\);

\MEMORIA_DADOS|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~463_q\);

\MEMORIA_DADOS|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~215_q\);

\MEMORIA_DADOS|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~471_q\);

\MEMORIA_DADOS|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~530_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~471_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~215_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~463_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~207_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~207_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~463_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~215_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~471_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~530_combout\);

\MEMORIA_DADOS|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~531_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~530_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~529_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~528_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~527_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~528_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~530_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~531_combout\);

\MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~47_q\);

\MEMORIA_DADOS|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~303_q\);

\MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~55_q\);

\MEMORIA_DADOS|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~311_q\);

\MEMORIA_DADOS|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~532_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~311_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~55_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~303_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~47_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~303_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~55_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~311_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~532_combout\);

\MEMORIA_DADOS|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~175_q\);

\MEMORIA_DADOS|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~431_q\);

\MEMORIA_DADOS|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~183_q\);

\MEMORIA_DADOS|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~439_q\);

\MEMORIA_DADOS|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~533_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~439_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~183_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~431_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~175_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~431_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~183_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~439_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~533_combout\);

\MEMORIA_DADOS|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~111_q\);

\MEMORIA_DADOS|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~367_q\);

\MEMORIA_DADOS|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~119_q\);

\MEMORIA_DADOS|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~375_q\);

\MEMORIA_DADOS|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~534_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~375_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~119_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~367_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~111_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~367_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~119_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~375_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~534_combout\);

\MEMORIA_DADOS|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~239_q\);

\MEMORIA_DADOS|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~495_q\);

\MEMORIA_DADOS|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~247_q\);

\MEMORIA_DADOS|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~503_q\);

\MEMORIA_DADOS|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~535_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~503_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~247_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~495_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~239_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~239_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~495_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~247_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~503_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~535_combout\);

\MEMORIA_DADOS|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~536_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~535_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~534_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~533_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~532_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~535_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~536_combout\);

\MEMORIA_DADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~31_q\);

\MEMORIA_DADOS|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~287_q\);

\MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~39_q\);

\MEMORIA_DADOS|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~295_q\);

\MEMORIA_DADOS|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~537_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~295_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~39_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~287_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~31_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~287_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~39_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~295_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~537_combout\);

\MEMORIA_DADOS|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~159_q\);

\MEMORIA_DADOS|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~415_q\);

\MEMORIA_DADOS|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~167_q\);

\MEMORIA_DADOS|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~423_q\);

\MEMORIA_DADOS|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~538_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~423_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~167_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~415_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~159_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~415_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~167_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~423_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~538_combout\);

\MEMORIA_DADOS|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~95_q\);

\MEMORIA_DADOS|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~351_q\);

\MEMORIA_DADOS|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~103_q\);

\MEMORIA_DADOS|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~359_q\);

\MEMORIA_DADOS|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~539_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~359_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~103_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~351_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~95_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~351_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~103_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~359_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~539_combout\);

\MEMORIA_DADOS|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~223_q\);

\MEMORIA_DADOS|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~479_q\);

\MEMORIA_DADOS|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~231_q\);

\MEMORIA_DADOS|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~487_q\);

\MEMORIA_DADOS|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~540_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~487_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~231_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~479_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~223_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~479_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~231_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~487_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~540_combout\);

\MEMORIA_DADOS|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~541_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~540_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~539_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~538_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~539_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~540_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~541_combout\);

\MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~63_q\);

\MEMORIA_DADOS|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~319_q\);

\MEMORIA_DADOS|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~191_q\);

\MEMORIA_DADOS|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~447_q\);

\MEMORIA_DADOS|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~542_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~447_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~191_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~319_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~63_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~319_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~191_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~447_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~542_combout\);

\MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~71_q\);

\MEMORIA_DADOS|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~327_q\);

\MEMORIA_DADOS|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~199_q\);

\MEMORIA_DADOS|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~455_q\);

\MEMORIA_DADOS|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~543_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~455_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~199_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~327_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~71_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~327_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~199_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~455_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~543_combout\);

\MEMORIA_DADOS|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~127_q\);

\MEMORIA_DADOS|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~383_q\);

\MEMORIA_DADOS|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~255_q\);

\MEMORIA_DADOS|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~511_q\);

\MEMORIA_DADOS|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~544_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~511_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~255_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~383_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~127_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~383_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~255_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~511_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~544_combout\);

\MEMORIA_DADOS|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~135_q\);

\MEMORIA_DADOS|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~391_q\);

\MEMORIA_DADOS|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~263_q\);

\MEMORIA_DADOS|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~519_q\);

\MEMORIA_DADOS|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~545_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~519_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~263_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~391_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~135_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~135_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~391_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~263_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~519_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~545_combout\);

\MEMORIA_DADOS|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~546_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~545_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~544_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~543_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~544_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~546_combout\);

\MEMORIA_DADOS|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~547_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~546_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~541_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~536_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~531_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~536_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~541_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~546_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~547_combout\);

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

\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( \MEMORIA_INTRUCAO|memROM~30_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( (\MEMORIA_INTRUCAO|memROM~40_combout\ & \MEMORIA_INTRUCAO|memROM~42_combout\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~30_combout\ & ( 
-- \MEMORIA_INTRUCAO|memROM~65_combout\ & ( (\MEMORIA_INTRUCAO|memROM~40_combout\ & (\MEMORIA_INTRUCAO|memROM~42_combout\ & ((\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_INTRUCAO|memROM~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \comb~9_combout\);

\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \comb~9_combout\ & ( (\MEMORIA_INTRUCAO|memROM~67_combout\ & (\MEMORIA_INTRUCAO|memROM~46_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & \MEMORIA_INTRUCAO|memROM~61_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \ALT_INV_comb~9_combout\,
	combout => \comb~10_combout\);

\FLIP_FLOP_DM|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_DM|DOUT~q\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\Saida_Dados[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~0_combout\ = ( \SW[9]~input_o\ & ( \KEY[2]~input_o\ & ( ((!\MEMORIA_INTRUCAO|memROM~46_combout\ & (\SW[0]~input_o\)) # (\MEMORIA_INTRUCAO|memROM~46_combout\ & ((\FLIP_FLOP_DM|DOUT~q\)))) # (\MEMORIA_INTRUCAO|memROM~55_combout\) ) ) ) # ( 
-- !\SW[9]~input_o\ & ( \KEY[2]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~46_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\SW[0]~input_o\))) # (\MEMORIA_INTRUCAO|memROM~46_combout\ & (((\FLIP_FLOP_DM|DOUT~q\)) # (\MEMORIA_INTRUCAO|memROM~55_combout\))) 
-- ) ) ) # ( \SW[9]~input_o\ & ( !\KEY[2]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~46_combout\ & (((\SW[0]~input_o\)) # (\MEMORIA_INTRUCAO|memROM~55_combout\))) # (\MEMORIA_INTRUCAO|memROM~46_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\ & 
-- ((\FLIP_FLOP_DM|DOUT~q\)))) ) ) ) # ( !\SW[9]~input_o\ & ( !\KEY[2]~input_o\ & ( (!\MEMORIA_INTRUCAO|memROM~55_combout\ & ((!\MEMORIA_INTRUCAO|memROM~46_combout\ & (\SW[0]~input_o\)) # (\MEMORIA_INTRUCAO|memROM~46_combout\ & ((\FLIP_FLOP_DM|DOUT~q\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \FLIP_FLOP_DM|ALT_INV_DOUT~q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \Saida_Dados[0]~0_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\detectorSub1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saidaQ~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	combout => \detectorSub1|saidaQ~0_combout\);

\detectorSub1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub1|saidaQ~q\);

\detectorSub1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saida~combout\ = LCELL((!\KEY[1]~input_o\ & !\detectorSub1|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \detectorSub1|ALT_INV_saidaQ~q\,
	combout => \detectorSub1|saida~combout\);

\comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \comb~9_combout\ & ( (\MEMORIA_INTRUCAO|memROM~67_combout\ & (\MEMORIA_INTRUCAO|memROM~46_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & !\MEMORIA_INTRUCAO|memROM~61_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \ALT_INV_comb~9_combout\,
	combout => \comb~11_combout\);

\FLIP_FLOP_KEY1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub1|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_KEY1|DOUT~q\);

\Saida_Dados[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~1_combout\ = ( \SW[8]~input_o\ & ( \FLIP_FLOP_KEY1|DOUT~q\ & ( (\MEMORIA_INTRUCAO|memROM~61_combout\ & ((!\MEMORIA_INTRUCAO|memROM~55_combout\) # ((\MEMORIA_INTRUCAO|memROM~46_combout\ & \KEY[3]~input_o\)))) ) ) ) # ( !\SW[8]~input_o\ & ( 
-- \FLIP_FLOP_KEY1|DOUT~q\ & ( (\MEMORIA_INTRUCAO|memROM~46_combout\ & (\MEMORIA_INTRUCAO|memROM~61_combout\ & ((!\MEMORIA_INTRUCAO|memROM~55_combout\) # (\KEY[3]~input_o\)))) ) ) ) # ( \SW[8]~input_o\ & ( !\FLIP_FLOP_KEY1|DOUT~q\ & ( 
-- (\MEMORIA_INTRUCAO|memROM~61_combout\ & ((!\MEMORIA_INTRUCAO|memROM~46_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\)) # (\MEMORIA_INTRUCAO|memROM~46_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & \KEY[3]~input_o\)))) ) ) ) # ( !\SW[8]~input_o\ & 
-- ( !\FLIP_FLOP_KEY1|DOUT~q\ & ( (\MEMORIA_INTRUCAO|memROM~46_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~61_combout\ & \KEY[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000010000000100100000100000001010000110000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \FLIP_FLOP_KEY1|ALT_INV_DOUT~q\,
	combout => \Saida_Dados[0]~1_combout\);

\Saida_Dados[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~4_combout\ = ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( ((((\Saida_Dados[0]~0_combout\ & !\MEMORIA_INTRUCAO|memROM~61_combout\)) # (\Saida_Dados[0]~1_combout\))) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~55_combout\ & (\MEMORIA_INTRUCAO|memROM~46_combout\ & (\FPGA_RESET_N~input_o\ & ((!\MEMORIA_INTRUCAO|memROM~61_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111111111000000100000001000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datac => \ALT_INV_FPGA_RESET_N~input_o\,
	datad => \ALT_INV_Saida_Dados[0]~0_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datag => \ALT_INV_Saida_Dados[0]~1_combout\,
	combout => \Saida_Dados[0]~4_combout\);

\Saida_Dados[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~2_combout\ = (\MEMORIA_INTRUCAO|memROM~67_combout\ & (\MEMORIA_INTRUCAO|memROM~40_combout\ & (!\MEMORIA_INTRUCAO|memROM~42_combout\ & \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\,
	combout => \Saida_Dados[0]~2_combout\);

\Saida_Dados[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~3_combout\ = (!\MEMORIA_DADOS|ram~547_combout\ & (((\Saida_Dados[0]~4_combout\ & \Saida_Dados[0]~2_combout\)))) # (\MEMORIA_DADOS|ram~547_combout\ & (((\Saida_Dados[0]~4_combout\ & \Saida_Dados[0]~2_combout\)) # 
-- (\MEMORIA_DADOS|dado_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~547_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_Saida_Dados[0]~4_combout\,
	datad => \ALT_INV_Saida_Dados[0]~2_combout\,
	combout => \Saida_Dados[0]~3_combout\);

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
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( \CPU|BANCO_REG|Mux7~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\Saida_Dados[0]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~61_combout\)) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( \CPU|BANCO_REG|Mux7~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\Saida_Dados[0]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~61_combout\)) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Saida_Dados[0]~3_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( \CPU|BANCO_REG|Mux6~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[1]~4_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\)) ) + 
-- ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( \CPU|BANCO_REG|Mux6~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[1]~4_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~55_combout\)) ) + ( 
-- \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux6~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~4_combout\,
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|BANCO_REG|Mux7~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\Saida_Dados[0]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~61_combout\)) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|BANCO_REG|Mux7~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\Saida_Dados[0]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~61_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Saida_Dados[0]~3_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|BANCO_REG|Mux6~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[1]~4_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\)) ) + ( 
-- \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|BANCO_REG|Mux6~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[1]~4_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~55_combout\)) ) + ( 
-- \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux6~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~4_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \SW[1]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~568_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~55_combout\)) ) ) # ( !\SW[1]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~568_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~55_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

\CPU|ULA1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~3_combout\ = ( \CPU|ULA1|saida[1]~2_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\) # ((\CPU|ULA1|Add1~21_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~5_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[1]~2_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & (\CPU|ULA1|Equal0~0_combout\ & (\CPU|ULA1|Add1~21_sumout\))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111101100001011111100010000000111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[1]~2_combout\,
	combout => \CPU|ULA1|saida[1]~3_combout\);

\MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~1_combout\ = (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100000000000101110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~1_combout\);

\MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~0_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000010000000000100000000000000000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~0_combout\);

\MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~2_combout\ = (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~2_combout\);

\MEMORIA_INTRUCAO|memROM~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~78_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & ((((!\CPU|PC|DOUT\(6))) # (\MEMORIA_INTRUCAO|memROM~0_combout\)))) # (\CPU|PC|DOUT\(7) & (!\MEMORIA_INTRUCAO|memROM~1_combout\ & (((!\CPU|PC|DOUT\(4) & 
-- !\CPU|PC|DOUT\(6)))))) ) ) # ( \CPU|PC|DOUT\(5) & ( ((!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(6) & ((!\MEMORIA_INTRUCAO|memROM~2_combout\))) # (\CPU|PC|DOUT\(6) & (\MEMORIA_INTRUCAO|memROM~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111110100000111100000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	datag => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~78_combout\);

\MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~3_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2)) # ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(3)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2)) # (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111101111111111001010000000000000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~3_combout\);

\MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~4_combout\ = (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111101000000000011110100000000001111010000000000111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~4_combout\);

\MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~5_combout\ = (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000000000001111100000000000111110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~5_combout\);

\MEMORIA_INTRUCAO|memROM~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~74_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (((\MEMORIA_INTRUCAO|memROM~3_combout\ & ((\CPU|PC|DOUT\(6))))))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(4) & (((!\MEMORIA_INTRUCAO|memROM~5_combout\ & 
-- !\CPU|PC|DOUT\(6)))))) ) ) # ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(4) & ((\MEMORIA_INTRUCAO|memROM~4_combout\)))) # (\CPU|PC|DOUT\(6) & (((\MEMORIA_INTRUCAO|memROM~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000010100000000001010000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	datag => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~74_combout\);

\CPU|BANCO_REG|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Equal1~0_combout\ = (\MEMORIA_INTRUCAO|memROM~74_combout\) # (\MEMORIA_INTRUCAO|memROM~78_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Equal1~0_combout\);

\CPU|BANCO_REG|Entrada_reg0[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(1) = ( \CPU|BANCO_REG|Entrada_reg0\(1) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(1) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(1) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[1]~3_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(1),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(1));

\CPU|DECODIFICADOR_INSTRUCAO|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~23_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ $ (((!\MEMORIA_INTRUCAO|memROM~10_combout\ & \MEMORIA_INTRUCAO|memROM~68_combout\))))) # (\MEMORIA_INTRUCAO|memROM~23_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~10_combout\ & (\MEMORIA_INTRUCAO|memROM~68_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000100000110100100010000011010010001000001101001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\);

\CPU|BANCO_REG|Habilita_reg0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Habilita_reg0~combout\ = ( \CPU|BANCO_REG|Habilita_reg0~combout\ & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Habilita_reg0~combout\ & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) 
-- # ( !\CPU|BANCO_REG|Habilita_reg0~combout\ & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Habilita_reg0~combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
	combout => \CPU|BANCO_REG|Habilita_reg0~combout\);

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

\CPU|BANCO_REG|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Equal0~0_combout\ = (\MEMORIA_INTRUCAO|memROM~78_combout\ & !\MEMORIA_INTRUCAO|memROM~74_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Equal0~0_combout\);

\CPU|BANCO_REG|Entrada_reg1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(1) = ( \CPU|BANCO_REG|Entrada_reg1\(1) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(1) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(1) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[1]~3_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(1),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(1));

\CPU|BANCO_REG|Habilita_reg1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Habilita_reg1~combout\ = ( \CPU|BANCO_REG|Habilita_reg1~combout\ & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( !\CPU|BANCO_REG|Habilita_reg1~combout\ & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( 
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( \CPU|BANCO_REG|Habilita_reg1~combout\ & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Habilita_reg1~combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
	combout => \CPU|BANCO_REG|Habilita_reg1~combout\);

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

\CPU|BANCO_REG|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Equal0~1_combout\ = (!\MEMORIA_INTRUCAO|memROM~78_combout\ & \MEMORIA_INTRUCAO|memROM~74_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Equal0~1_combout\);

\CPU|BANCO_REG|Entrada_reg2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(1) = ( \CPU|BANCO_REG|Entrada_reg2\(1) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(1) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(1) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[1]~3_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(1),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(1));

\CPU|BANCO_REG|Habilita_reg2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Habilita_reg2~combout\ = ( \CPU|BANCO_REG|Habilita_reg2~combout\ & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( !\CPU|BANCO_REG|Habilita_reg2~combout\ & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( 
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( \CPU|BANCO_REG|Habilita_reg2~combout\ & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Habilita_reg2~combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Habilita_reg2~combout\);

\CPU|BANCO_REG|REG_2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(1),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(1));

\CPU|BANCO_REG|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Equal0~2_combout\ = (\MEMORIA_INTRUCAO|memROM~78_combout\ & \MEMORIA_INTRUCAO|memROM~74_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Equal0~2_combout\);

\CPU|BANCO_REG|Entrada_reg3[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(1) = ( \CPU|BANCO_REG|Entrada_reg3\(1) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(1) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(1) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[1]~3_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(1),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(1));

\CPU|BANCO_REG|Habilita_reg3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Habilita_reg3~combout\ = ( \CPU|BANCO_REG|Habilita_reg3~combout\ & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( !\CPU|BANCO_REG|Habilita_reg3~combout\ & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( 
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ ) ) ) # ( \CPU|BANCO_REG|Habilita_reg3~combout\ & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Habilita_reg3~combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Habilita_reg3~combout\);

\CPU|BANCO_REG|REG_3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(1),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(1));

\CPU|BANCO_REG|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux6~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(1) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(1) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(1) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(1),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(1),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(1),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(1),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Mux6~0_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( \CPU|BANCO_REG|Mux5~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[2]~5_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\)) ) + 
-- ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( \CPU|BANCO_REG|Mux5~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[2]~5_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\)) ) + ( 
-- \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux5~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[2]~5_combout\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|BANCO_REG|Mux5~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[2]~5_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\)) ) + ( 
-- \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|BANCO_REG|Mux5~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[2]~5_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\)) ) + ( 
-- \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux5~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[2]~5_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~4_combout\ = ( \SW[2]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~589_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~31_combout\)) ) ) # ( !\SW[2]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~589_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~31_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~589_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \CPU|ULA1|saida[2]~4_combout\);

\CPU|ULA1|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~5_combout\ = ( \CPU|ULA1|saida[2]~4_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\) # ((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~9_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[2]~4_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & (\CPU|ULA1|Equal0~0_combout\ & (\CPU|ULA1|Add1~25_sumout\))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111101100001011111100010000000111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[2]~4_combout\,
	combout => \CPU|ULA1|saida[2]~5_combout\);

\CPU|BANCO_REG|Entrada_reg0[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(2) = ( \CPU|BANCO_REG|Entrada_reg0\(2) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(2) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(2) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[2]~5_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(2),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(2) = ( \CPU|BANCO_REG|Entrada_reg1\(2) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(2) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(2) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[2]~5_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(2),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg2[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(2) = ( \CPU|BANCO_REG|Entrada_reg2\(2) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(2) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(2) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[2]~5_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(2),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(2));

\CPU|BANCO_REG|REG_2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(2),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(2));

\CPU|BANCO_REG|Entrada_reg3[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(2) = ( \CPU|BANCO_REG|Entrada_reg3\(2) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(2) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(2) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[2]~5_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(2),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(2));

\CPU|BANCO_REG|REG_3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(2),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(2));

\CPU|BANCO_REG|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux5~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(2) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(2) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(2) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(2),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(2),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(2),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(2),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Mux5~0_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( \CPU|BANCO_REG|Mux4~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[3]~6_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~65_combout\)) ) + 
-- ( \CPU|ULA1|Add1~26\ ))
-- \CPU|ULA1|Add1~30\ = CARRY(( \CPU|BANCO_REG|Mux4~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[3]~6_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~65_combout\)) ) + ( 
-- \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux4~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[3]~6_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\,
	cout => \CPU|ULA1|Add1~30\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|BANCO_REG|Mux4~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[3]~6_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~65_combout\)) ) + ( 
-- \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|BANCO_REG|Mux4~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[3]~6_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~65_combout\)) ) + ( 
-- \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux4~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[3]~6_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~6_combout\ = ( \SW[3]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~610_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~65_combout\)) ) ) # ( !\SW[3]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~610_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~65_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~610_combout\,
	datae => \ALT_INV_SW[3]~input_o\,
	combout => \CPU|ULA1|saida[3]~6_combout\);

\CPU|ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~7_combout\ = ( \CPU|ULA1|saida[3]~6_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\) # ((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~13_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[3]~6_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & (\CPU|ULA1|Equal0~0_combout\ & (\CPU|ULA1|Add1~29_sumout\))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111101100001011111100010000000111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[3]~6_combout\,
	combout => \CPU|ULA1|saida[3]~7_combout\);

\CPU|BANCO_REG|Entrada_reg0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(3) = ( \CPU|BANCO_REG|Entrada_reg0\(3) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(3) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(3) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[3]~7_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(3),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(3) = ( \CPU|BANCO_REG|Entrada_reg1\(3) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(3) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(3) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[3]~7_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(3),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg2[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(3) = ( \CPU|BANCO_REG|Entrada_reg2\(3) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(3) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(3) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[3]~7_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(3),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(3));

\CPU|BANCO_REG|REG_2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(3),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(3));

\CPU|BANCO_REG|Entrada_reg3[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(3) = ( \CPU|BANCO_REG|Entrada_reg3\(3) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(3) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(3) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[3]~7_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(3),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(3));

\CPU|BANCO_REG|REG_3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(3),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(3));

\CPU|BANCO_REG|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux4~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(3) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(3) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(3) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(3),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(3),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(3),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(3),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Mux4~0_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|BANCO_REG|Mux3~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[4]~2_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~66_combout\)) ) + ( 
-- \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|BANCO_REG|Mux3~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[4]~2_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~66_combout\)) ) + ( 
-- \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux3~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~8_combout\ = ( \SW[4]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~631_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~66_combout\)) ) ) # ( !\SW[4]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~631_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~66_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~631_combout\,
	datae => \ALT_INV_SW[4]~input_o\,
	combout => \CPU|ULA1|saida[4]~8_combout\);

\CPU|ULA1|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~9_combout\ = ( \CPU|ULA1|saida[4]~8_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\) # ((\CPU|ULA1|Add1~1_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~17_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[4]~8_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & (\CPU|ULA1|Equal0~0_combout\ & (\CPU|ULA1|Add1~1_sumout\))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111101100001011111100010000000111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[4]~8_combout\,
	combout => \CPU|ULA1|saida[4]~9_combout\);

\CPU|BANCO_REG|Entrada_reg0[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(4) = ( \CPU|BANCO_REG|Entrada_reg0\(4) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(4) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(4) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[4]~9_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(4),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg0\(4));

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

\CPU|BANCO_REG|Entrada_reg1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(4) = ( \CPU|BANCO_REG|Entrada_reg1\(4) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(4) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(4) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[4]~9_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(4),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg2[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(4) = ( \CPU|BANCO_REG|Entrada_reg2\(4) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(4) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(4) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[4]~9_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(4),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(4));

\CPU|BANCO_REG|REG_2|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(4),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(4));

\CPU|BANCO_REG|Entrada_reg3[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(4) = ( \CPU|BANCO_REG|Entrada_reg3\(4) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(4) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(4) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[4]~9_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(4),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(4));

\CPU|BANCO_REG|REG_3|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(4),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(4));

\CPU|BANCO_REG|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux3~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(4) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(4) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(4) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(4),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(4),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(4),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(4),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Mux3~0_combout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|BANCO_REG|Mux3~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[4]~2_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~66_combout\)) ) + ( 
-- \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( \CPU|BANCO_REG|Mux3~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[4]~2_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~66_combout\)) ) + ( 
-- \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux3~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\MEMORIA_DADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~20_q\);

\MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~52_q\);

\MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~36_q\);

\MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~68_q\);

\MEMORIA_DADOS|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~632_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~68_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~36_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~52_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~20_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~52_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~632_combout\);

\MEMORIA_DADOS|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~148_q\);

\MEMORIA_DADOS|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~180_q\);

\MEMORIA_DADOS|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~164_q\);

\MEMORIA_DADOS|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~196_q\);

\MEMORIA_DADOS|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~633_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~196_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~164_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~180_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~148_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~180_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~164_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~196_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~633_combout\);

\MEMORIA_DADOS|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~84_q\);

\MEMORIA_DADOS|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~116_q\);

\MEMORIA_DADOS|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~100_q\);

\MEMORIA_DADOS|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~132_q\);

\MEMORIA_DADOS|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~634_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~132_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~100_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~116_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~84_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~116_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~100_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~132_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~634_combout\);

\MEMORIA_DADOS|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~212_q\);

\MEMORIA_DADOS|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~244_q\);

\MEMORIA_DADOS|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~228_q\);

\MEMORIA_DADOS|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~260_q\);

\MEMORIA_DADOS|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~635_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~260_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~228_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~244_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~212_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~244_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~228_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~260_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~635_combout\);

\MEMORIA_DADOS|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~636_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~635_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~634_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~633_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~632_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~632_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~633_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~634_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~635_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~636_combout\);

\MEMORIA_DADOS|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~276_q\);

\MEMORIA_DADOS|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~308_q\);

\MEMORIA_DADOS|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~404_q\);

\MEMORIA_DADOS|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~436_q\);

\MEMORIA_DADOS|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~637_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~436_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~404_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~308_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~276_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~308_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~404_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~436_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~637_combout\);

\MEMORIA_DADOS|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~292_q\);

\MEMORIA_DADOS|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~324_q\);

\MEMORIA_DADOS|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~420_q\);

\MEMORIA_DADOS|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~452_q\);

\MEMORIA_DADOS|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~638_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~452_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~420_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~324_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~292_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~324_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~420_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~452_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~638_combout\);

\MEMORIA_DADOS|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~340_q\);

\MEMORIA_DADOS|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~372_q\);

\MEMORIA_DADOS|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~468_q\);

\MEMORIA_DADOS|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~500_q\);

\MEMORIA_DADOS|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~639_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~500_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~468_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~372_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~340_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~372_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~468_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~500_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~639_combout\);

\MEMORIA_DADOS|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~356_q\);

\MEMORIA_DADOS|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~388_q\);

\MEMORIA_DADOS|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~484_q\);

\MEMORIA_DADOS|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~516_q\);

\MEMORIA_DADOS|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~640_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~516_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~484_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~388_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~356_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~356_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~388_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~484_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~516_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~640_combout\);

\MEMORIA_DADOS|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~641_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~640_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~639_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~638_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~637_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~637_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~638_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~639_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~640_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~641_combout\);

\MEMORIA_DADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~28_q\);

\MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~60_q\);

\MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~44_q\);

\MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~76_q\);

\MEMORIA_DADOS|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~642_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~76_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~44_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~60_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~28_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~60_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~44_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~76_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~642_combout\);

\MEMORIA_DADOS|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~156_q\);

\MEMORIA_DADOS|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~188_q\);

\MEMORIA_DADOS|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~172_q\);

\MEMORIA_DADOS|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~204_q\);

\MEMORIA_DADOS|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~643_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~204_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~172_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~188_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~156_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~156_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~188_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~172_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~204_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~643_combout\);

\MEMORIA_DADOS|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~92_q\);

\MEMORIA_DADOS|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~124_q\);

\MEMORIA_DADOS|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~108_q\);

\MEMORIA_DADOS|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~140_q\);

\MEMORIA_DADOS|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~644_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~140_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~108_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~124_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~92_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~124_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~108_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~140_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~644_combout\);

\MEMORIA_DADOS|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~220_q\);

\MEMORIA_DADOS|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~252_q\);

\MEMORIA_DADOS|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~236_q\);

\MEMORIA_DADOS|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~268_q\);

\MEMORIA_DADOS|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~645_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~268_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~236_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~252_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~220_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~252_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~236_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~268_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~645_combout\);

\MEMORIA_DADOS|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~646_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~645_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~644_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~643_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~642_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~642_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~643_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~644_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~645_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~646_combout\);

\MEMORIA_DADOS|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~284_q\);

\MEMORIA_DADOS|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~316_q\);

\MEMORIA_DADOS|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~348_q\);

\MEMORIA_DADOS|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~380_q\);

\MEMORIA_DADOS|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~647_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~380_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~348_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~316_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~284_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~284_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~316_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~348_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~380_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~647_combout\);

\MEMORIA_DADOS|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~412_q\);

\MEMORIA_DADOS|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~444_q\);

\MEMORIA_DADOS|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~476_q\);

\MEMORIA_DADOS|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~508_q\);

\MEMORIA_DADOS|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~648_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~508_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~476_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~444_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~412_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~412_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~444_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~476_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~508_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~648_combout\);

\MEMORIA_DADOS|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~300_q\);

\MEMORIA_DADOS|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~332_q\);

\MEMORIA_DADOS|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~364_q\);

\MEMORIA_DADOS|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~396_q\);

\MEMORIA_DADOS|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~649_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~396_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~364_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~332_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~300_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~332_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~364_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~396_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~649_combout\);

\MEMORIA_DADOS|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~428_q\);

\MEMORIA_DADOS|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~460_q\);

\MEMORIA_DADOS|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~492_q\);

\MEMORIA_DADOS|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~524_q\);

\MEMORIA_DADOS|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~650_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~524_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~492_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~460_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~428_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~428_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~460_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~492_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~524_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~650_combout\);

\MEMORIA_DADOS|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~651_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~650_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~649_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~648_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~647_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~647_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~648_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~649_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~650_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~651_combout\);

\MEMORIA_DADOS|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~652_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~651_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~646_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_DADOS|ram~641_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( 
-- \MEMORIA_DADOS|ram~636_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~636_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~641_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~646_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~651_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \MEMORIA_DADOS|ram~652_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU|MUX1|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~3_combout\ = (!\MEMORIA_DADOS|dado_out~0_combout\ & ((\SW[5]~input_o\))) # (\MEMORIA_DADOS|dado_out~0_combout\ & (\MEMORIA_DADOS|ram~652_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~652_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	combout => \CPU|MUX1|saida_MUX[5]~3_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|BANCO_REG|Mux2~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[5]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~46_combout\)) ) + ( 
-- \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|BANCO_REG|Mux2~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[5]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~46_combout\)) ) + ( 
-- \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~10_combout\ = ( \SW[5]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~652_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~46_combout\)) ) ) # ( !\SW[5]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~652_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~46_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~652_combout\,
	datae => \ALT_INV_SW[5]~input_o\,
	combout => \CPU|ULA1|saida[5]~10_combout\);

\CPU|ULA1|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~11_combout\ = ( \CPU|ULA1|saida[5]~10_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\) # ((\CPU|ULA1|Add1~5_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~21_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[5]~10_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & (\CPU|ULA1|Equal0~0_combout\ & (\CPU|ULA1|Add1~5_sumout\))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111101100001011111100010000000111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[5]~10_combout\,
	combout => \CPU|ULA1|saida[5]~11_combout\);

\CPU|BANCO_REG|Entrada_reg0[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(5) = ( \CPU|BANCO_REG|Entrada_reg0\(5) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(5) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(5) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[5]~11_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(5),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(5) = ( \CPU|BANCO_REG|Entrada_reg1\(5) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(5) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(5) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[5]~11_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(5),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg2[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(5) = ( \CPU|BANCO_REG|Entrada_reg2\(5) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(5) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(5) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[5]~11_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(5),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(5));

\CPU|BANCO_REG|REG_2|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(5),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(5));

\CPU|BANCO_REG|Entrada_reg3[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(5) = ( \CPU|BANCO_REG|Entrada_reg3\(5) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(5) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(5) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[5]~11_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(5),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(5));

\CPU|BANCO_REG|REG_3|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(5),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(5));

\CPU|BANCO_REG|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux2~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(5) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(5) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(5) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(5),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(5),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(5),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(5),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Mux2~0_combout\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( \CPU|BANCO_REG|Mux2~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[5]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~46_combout\)) ) + ( 
-- \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( \CPU|BANCO_REG|Mux2~0_combout\ ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\CPU|MUX1|saida_MUX[5]~3_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~46_combout\)) ) + ( 
-- \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|MUX1|saida_MUX[6]~0_combout\ ) + ( \CPU|BANCO_REG|Mux1~0_combout\ ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|MUX1|saida_MUX[6]~0_combout\ ) + ( \CPU|BANCO_REG|Mux1~0_combout\ ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Mux1~0_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~12_combout\ = ( \CPU|ULA1|Add0~25_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[6]~0_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~25_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[6]~0_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|saida[6]~12_combout\);

\CPU|BANCO_REG|Entrada_reg0[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(6) = ( \CPU|BANCO_REG|Entrada_reg0\(6) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(6) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(6) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[6]~12_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(6),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(6) = ( \CPU|BANCO_REG|Entrada_reg1\(6) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(6) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(6) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[6]~12_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(6),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg2[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(6) = ( \CPU|BANCO_REG|Entrada_reg2\(6) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(6) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(6) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[6]~12_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(6),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(6));

\CPU|BANCO_REG|REG_2|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(6),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(6));

\CPU|BANCO_REG|Entrada_reg3[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(6) = ( \CPU|BANCO_REG|Entrada_reg3\(6) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(6) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[6]~12_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(6) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[6]~12_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(6),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(6));

\CPU|BANCO_REG|REG_3|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(6),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(6));

\CPU|BANCO_REG|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux1~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(6) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(6) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(6) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(6),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(6),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(6),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(6),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
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
	ena => \MEMORIA_DADOS|ram~696_combout\,
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
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

\MEMORIA_DADOS|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~85_q\);

\MEMORIA_DADOS|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~101_q\);

\MEMORIA_DADOS|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~653_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~101_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~85_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~37_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~21_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~85_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~101_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~653_combout\);

\MEMORIA_DADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~29_q\);

\MEMORIA_DADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~45_q\);

\MEMORIA_DADOS|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~93_q\);

\MEMORIA_DADOS|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~109_q\);

\MEMORIA_DADOS|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~654_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~109_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~93_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~45_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~29_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~45_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~93_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~109_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~654_combout\);

\MEMORIA_DADOS|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~149_q\);

\MEMORIA_DADOS|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~165_q\);

\MEMORIA_DADOS|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~213_q\);

\MEMORIA_DADOS|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~229_q\);

\MEMORIA_DADOS|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~655_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~229_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~213_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~165_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~149_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~165_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~213_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~229_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~655_combout\);

\MEMORIA_DADOS|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~157_q\);

\MEMORIA_DADOS|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~173_q\);

\MEMORIA_DADOS|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~221_q\);

\MEMORIA_DADOS|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~237_q\);

\MEMORIA_DADOS|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~656_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~237_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~221_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~173_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~157_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~173_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~221_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~237_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~656_combout\);

\MEMORIA_DADOS|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~657_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~656_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~655_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~654_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~653_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~653_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~654_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~655_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~656_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~657_combout\);

\MEMORIA_DADOS|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~277_q\);

\MEMORIA_DADOS|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~405_q\);

\MEMORIA_DADOS|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~293_q\);

\MEMORIA_DADOS|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~421_q\);

\MEMORIA_DADOS|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~658_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~421_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~293_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~405_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~277_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~405_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~293_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~421_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~658_combout\);

\MEMORIA_DADOS|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~285_q\);

\MEMORIA_DADOS|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~413_q\);

\MEMORIA_DADOS|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~301_q\);

\MEMORIA_DADOS|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~429_q\);

\MEMORIA_DADOS|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~659_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~429_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~301_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~413_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~285_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~413_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~301_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~429_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~659_combout\);

\MEMORIA_DADOS|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~341_q\);

\MEMORIA_DADOS|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~469_q\);

\MEMORIA_DADOS|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~357_q\);

\MEMORIA_DADOS|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~485_q\);

\MEMORIA_DADOS|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~660_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~485_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~357_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~469_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~341_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~341_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~469_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~357_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~485_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~660_combout\);

\MEMORIA_DADOS|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~349_q\);

\MEMORIA_DADOS|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~477_q\);

\MEMORIA_DADOS|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~365_q\);

\MEMORIA_DADOS|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~493_q\);

\MEMORIA_DADOS|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~661_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~493_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~365_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~477_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~349_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~349_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~477_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~365_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~493_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~661_combout\);

\MEMORIA_DADOS|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~662_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~661_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~660_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~659_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~658_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~658_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~659_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~660_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~661_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~662_combout\);

\MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~53_q\);

\MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~61_q\);

\MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~69_q\);

\MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~77_q\);

\MEMORIA_DADOS|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~663_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~77_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~69_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~61_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~53_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~61_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~663_combout\);

\MEMORIA_DADOS|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~181_q\);

\MEMORIA_DADOS|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~189_q\);

\MEMORIA_DADOS|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~197_q\);

\MEMORIA_DADOS|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~205_q\);

\MEMORIA_DADOS|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~664_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~205_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~197_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~189_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~181_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~181_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~189_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~197_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~205_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~664_combout\);

\MEMORIA_DADOS|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~117_q\);

\MEMORIA_DADOS|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~125_q\);

\MEMORIA_DADOS|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~133_q\);

\MEMORIA_DADOS|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~141_q\);

\MEMORIA_DADOS|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~665_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~141_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~133_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~125_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~117_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~125_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~133_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~141_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~665_combout\);

\MEMORIA_DADOS|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~245_q\);

\MEMORIA_DADOS|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~253_q\);

\MEMORIA_DADOS|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~261_q\);

\MEMORIA_DADOS|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~269_q\);

\MEMORIA_DADOS|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~666_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~269_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~261_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_DADOS|ram~253_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- \MEMORIA_DADOS|ram~245_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~245_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~253_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~261_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~269_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	combout => \MEMORIA_DADOS|ram~666_combout\);

\MEMORIA_DADOS|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~667_combout\ = ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~666_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~665_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~664_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~663_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~663_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~664_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~665_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~666_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~667_combout\);

\MEMORIA_DADOS|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~309_q\);

\MEMORIA_DADOS|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~325_q\);

\MEMORIA_DADOS|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~373_q\);

\MEMORIA_DADOS|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~389_q\);

\MEMORIA_DADOS|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~668_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~389_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~373_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~325_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~309_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~325_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~373_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~389_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~668_combout\);

\MEMORIA_DADOS|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~317_q\);

\MEMORIA_DADOS|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~333_q\);

\MEMORIA_DADOS|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~381_q\);

\MEMORIA_DADOS|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~397_q\);

\MEMORIA_DADOS|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~669_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~397_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~381_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~333_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~317_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~317_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~333_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~381_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~397_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~669_combout\);

\MEMORIA_DADOS|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~437_q\);

\MEMORIA_DADOS|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~453_q\);

\MEMORIA_DADOS|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~501_q\);

\MEMORIA_DADOS|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~517_q\);

\MEMORIA_DADOS|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~670_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~517_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~501_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~453_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~437_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~437_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~453_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~501_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~517_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~670_combout\);

\MEMORIA_DADOS|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~445_q\);

\MEMORIA_DADOS|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~461_q\);

\MEMORIA_DADOS|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~509_q\);

\MEMORIA_DADOS|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~525_q\);

\MEMORIA_DADOS|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~671_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~525_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~509_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~461_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~445_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~445_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~461_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~509_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~525_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~671_combout\);

\MEMORIA_DADOS|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~672_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~671_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~670_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~669_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~668_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~668_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~669_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~670_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~671_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~672_combout\);

\MEMORIA_DADOS|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~673_combout\ = ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~672_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~667_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_DADOS|ram~662_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( 
-- \MEMORIA_DADOS|ram~657_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~657_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~662_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~667_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~672_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	combout => \MEMORIA_DADOS|ram~673_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU|MUX1|saida_MUX[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~0_combout\ = ( \SW[6]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~673_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~67_combout\)) ) ) # ( !\SW[6]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~673_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~67_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~673_combout\,
	datae => \ALT_INV_SW[6]~input_o\,
	combout => \CPU|MUX1|saida_MUX[6]~0_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~0_combout\ ) + ( \CPU|BANCO_REG|Mux1~0_combout\ ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~0_combout\ ) + ( \CPU|BANCO_REG|Mux1~0_combout\ ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Mux1~0_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|MUX1|saida_MUX[7]~1_combout\ ) + ( \CPU|BANCO_REG|Mux0~0_combout\ ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Mux0~0_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~13_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[7]~1_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX1|saida_MUX[7]~1_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111111111100100111000000000010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[7]~13_combout\);

\CPU|BANCO_REG|Entrada_reg0[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(7) = ( \CPU|BANCO_REG|Entrada_reg0\(7) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(7) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(7) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[7]~13_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(7),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg1[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(7) = ( \CPU|BANCO_REG|Entrada_reg1\(7) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(7) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(7) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[7]~13_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(7),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg2[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(7) = ( \CPU|BANCO_REG|Entrada_reg2\(7) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(7) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(7) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[7]~13_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(7),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(7));

\CPU|BANCO_REG|REG_2|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(7),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(7));

\CPU|BANCO_REG|Entrada_reg3[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(7) = ( \CPU|BANCO_REG|Entrada_reg3\(7) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(7) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[7]~13_combout\ 
-- ) ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(7) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[7]~13_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(7),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(7));

\CPU|BANCO_REG|REG_3|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(7),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(7));

\CPU|BANCO_REG|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux0~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(7) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(7) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(7) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(7),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(7),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(7),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(7),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Mux0~0_combout\);

\MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~22_q\);

\MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~54_q\);

\MEMORIA_DADOS|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~150_q\);

\MEMORIA_DADOS|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~182_q\);

\MEMORIA_DADOS|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~674_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~182_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~150_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~54_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~22_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~54_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~150_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~182_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~674_combout\);

\MEMORIA_DADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~30_q\);

\MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~62_q\);

\MEMORIA_DADOS|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~158_q\);

\MEMORIA_DADOS|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~190_q\);

\MEMORIA_DADOS|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~675_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~190_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~158_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~62_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~30_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~62_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~158_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~190_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~675_combout\);

\MEMORIA_DADOS|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~86_q\);

\MEMORIA_DADOS|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~118_q\);

\MEMORIA_DADOS|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~214_q\);

\MEMORIA_DADOS|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~246_q\);

\MEMORIA_DADOS|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~676_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~246_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~214_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~118_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~86_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~118_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~214_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~246_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~676_combout\);

\MEMORIA_DADOS|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~94_q\);

\MEMORIA_DADOS|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~126_q\);

\MEMORIA_DADOS|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~222_q\);

\MEMORIA_DADOS|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~254_q\);

\MEMORIA_DADOS|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~677_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~254_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~222_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~126_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~94_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~94_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~126_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~222_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~254_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~677_combout\);

\MEMORIA_DADOS|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~678_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~677_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~676_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~675_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~674_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~674_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~675_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~676_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~677_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~678_combout\);

\MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

\MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~46_q\);

\MEMORIA_DADOS|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~166_q\);

\MEMORIA_DADOS|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~174_q\);

\MEMORIA_DADOS|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~679_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~174_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~166_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~46_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~46_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~166_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~174_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~679_combout\);

\MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~70_q\);

\MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~78_q\);

\MEMORIA_DADOS|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~198_q\);

\MEMORIA_DADOS|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~206_q\);

\MEMORIA_DADOS|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~680_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~206_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~198_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~78_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~78_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~198_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~206_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~680_combout\);

\MEMORIA_DADOS|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~102_q\);

\MEMORIA_DADOS|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~110_q\);

\MEMORIA_DADOS|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~230_q\);

\MEMORIA_DADOS|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~238_q\);

\MEMORIA_DADOS|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~681_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~238_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~230_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~110_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~102_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~102_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~110_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~230_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~238_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~681_combout\);

\MEMORIA_DADOS|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~134_q\);

\MEMORIA_DADOS|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~142_q\);

\MEMORIA_DADOS|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~262_q\);

\MEMORIA_DADOS|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~270_q\);

\MEMORIA_DADOS|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~682_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~270_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~262_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~142_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~134_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~134_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~142_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~262_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~270_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~682_combout\);

\MEMORIA_DADOS|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~683_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~682_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~681_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~680_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~679_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~679_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~680_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~681_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~682_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~683_combout\);

\MEMORIA_DADOS|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~278_q\);

\MEMORIA_DADOS|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~310_q\);

\MEMORIA_DADOS|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~342_q\);

\MEMORIA_DADOS|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~374_q\);

\MEMORIA_DADOS|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~684_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~374_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~342_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~310_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~278_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~310_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~342_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~374_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~684_combout\);

\MEMORIA_DADOS|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~286_q\);

\MEMORIA_DADOS|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~318_q\);

\MEMORIA_DADOS|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~350_q\);

\MEMORIA_DADOS|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~382_q\);

\MEMORIA_DADOS|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~685_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~382_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~350_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~318_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~286_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~286_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~318_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~350_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~382_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~685_combout\);

\MEMORIA_DADOS|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~406_q\);

\MEMORIA_DADOS|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~438_q\);

\MEMORIA_DADOS|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~470_q\);

\MEMORIA_DADOS|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~502_q\);

\MEMORIA_DADOS|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~686_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~502_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~470_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~438_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~406_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~406_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~438_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~470_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~502_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~686_combout\);

\MEMORIA_DADOS|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~414_q\);

\MEMORIA_DADOS|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~446_q\);

\MEMORIA_DADOS|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~478_q\);

\MEMORIA_DADOS|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~510_q\);

\MEMORIA_DADOS|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~687_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~510_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~478_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~446_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~414_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~414_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~446_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~478_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~510_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~687_combout\);

\MEMORIA_DADOS|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~688_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~687_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~686_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~685_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~684_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~684_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~685_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~686_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~687_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~688_combout\);

\MEMORIA_DADOS|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~294_q\);

\MEMORIA_DADOS|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~302_q\);

\MEMORIA_DADOS|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~422_q\);

\MEMORIA_DADOS|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~430_q\);

\MEMORIA_DADOS|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~689_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~430_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~422_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~302_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~294_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~302_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~422_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~430_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~689_combout\);

\MEMORIA_DADOS|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~326_q\);

\MEMORIA_DADOS|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~334_q\);

\MEMORIA_DADOS|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~454_q\);

\MEMORIA_DADOS|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~462_q\);

\MEMORIA_DADOS|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~690_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~462_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~454_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~334_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~326_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~326_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~334_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~454_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~462_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~690_combout\);

\MEMORIA_DADOS|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~358_q\);

\MEMORIA_DADOS|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~366_q\);

\MEMORIA_DADOS|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~486_q\);

\MEMORIA_DADOS|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~494_q\);

\MEMORIA_DADOS|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~691_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~494_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~486_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~366_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~358_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~358_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~366_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~486_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~494_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~691_combout\);

\MEMORIA_DADOS|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~390_q\);

\MEMORIA_DADOS|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~398_q\);

\MEMORIA_DADOS|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~518_q\);

\MEMORIA_DADOS|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~526_q\);

\MEMORIA_DADOS|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~692_combout\ = ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~526_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~518_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( \MEMORIA_DADOS|ram~398_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( !\MEMORIA_INTRUCAO|memROM~66_combout\ & ( 
-- \MEMORIA_DADOS|ram~390_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~390_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~398_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~518_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~526_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	combout => \MEMORIA_DADOS|ram~692_combout\);

\MEMORIA_DADOS|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~693_combout\ = ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~692_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( \MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~691_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( \MEMORIA_DADOS|ram~690_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~31_combout\ & ( !\MEMORIA_INTRUCAO|memROM~65_combout\ & ( 
-- \MEMORIA_DADOS|ram~689_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~689_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~690_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~691_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~692_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
	combout => \MEMORIA_DADOS|ram~693_combout\);

\MEMORIA_DADOS|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~694_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_DADOS|ram~693_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~46_combout\ & ( 
-- \MEMORIA_DADOS|ram~688_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( \MEMORIA_DADOS|ram~683_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~46_combout\ & ( 
-- \MEMORIA_DADOS|ram~678_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~678_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~683_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~688_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~693_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	combout => \MEMORIA_DADOS|ram~694_combout\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU|MUX1|saida_MUX[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~1_combout\ = ( \SW[7]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_DADOS|dado_out~0_combout\) # (\MEMORIA_DADOS|ram~694_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~42_combout\)) ) ) # ( !\SW[7]~input_o\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|dado_out~0_combout\ & \MEMORIA_DADOS|ram~694_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~42_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~694_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	combout => \CPU|MUX1|saida_MUX[7]~1_combout\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[7]~1_combout\ ) + ( \CPU|BANCO_REG|Mux0~0_combout\ ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_Mux0~0_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( ((!\MEMORIA_INTRUCAO|memROM~68_combout\) # ((!\MEMORIA_INTRUCAO|memROM~19_combout\) # (\MEMORIA_INTRUCAO|memROM~23_combout\))) # (\MEMORIA_INTRUCAO|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111111100000000000000001111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~10_combout\ & (\MEMORIA_INTRUCAO|memROM~68_combout\ & (\MEMORIA_INTRUCAO|memROM~19_combout\ & !\MEMORIA_INTRUCAO|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
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

\CPU|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|Equal1~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~23_combout\ & ( \CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~19_combout\ & ((\MEMORIA_INTRUCAO|memROM~15_combout\) # (\MEMORIA_INTRUCAO|memROM~13_combout\))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~23_combout\ & ( \CPU|FLAG|DOUT~q\ & ( (\MEMORIA_INTRUCAO|memROM~10_combout\ & (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~19_combout\))) ) ) ) # ( 
-- \MEMORIA_INTRUCAO|memROM~23_combout\ & ( !\CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~10_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & ((\MEMORIA_INTRUCAO|memROM~15_combout\) # (\MEMORIA_INTRUCAO|memROM~13_combout\)))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~23_combout\ & ( !\CPU|FLAG|DOUT~q\ & ( (\MEMORIA_INTRUCAO|memROM~10_combout\ & (!\MEMORIA_INTRUCAO|memROM~13_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000001010100000000000000000010000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX2|Equal1~0_combout\);

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
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = ( \CPU|REG_END_RET|DOUT\(3) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~13_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & ((!\CPU|MUX2|Equal1~0_combout\) # ((\MEMORIA_INTRUCAO|memROM~65_combout\)))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(3) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~13_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\CPU|MUX2|Equal1~0_combout\ & ((\MEMORIA_INTRUCAO|memROM~65_combout\)))) ) )

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
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~65_combout\,
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

\MEMORIA_INTRUCAO|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~32_combout\ = ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(4))))) ) ) # ( !\CPU|PC|DOUT\(6) & ( 
-- (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000101000000010000000000000110000001010000000100000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~32_combout\);

\MEMORIA_INTRUCAO|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~33_combout\ = (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & \MEMORIA_INTRUCAO|memROM~32_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~32_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~33_combout\);

\MEMORIA_INTRUCAO|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~34_combout\ = (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000010000100000000001000010000000000100001000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~34_combout\);

\MEMORIA_INTRUCAO|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~35_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~35_combout\);

\MEMORIA_INTRUCAO|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~36_combout\ = ( \MEMORIA_INTRUCAO|memROM~35_combout\ & ( \CPU|PC|DOUT\(4) ) ) # ( !\MEMORIA_INTRUCAO|memROM~35_combout\ & ( (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & \MEMORIA_INTRUCAO|memROM~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000010101010101010100000000000100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~34_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~35_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~36_combout\);

\MEMORIA_INTRUCAO|memROM~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~67_combout\ = (!\CPU|PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~36_combout\) # (\MEMORIA_INTRUCAO|memROM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~33_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~36_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~67_combout\);

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
-- \CPU|MUX2|saida_MUX[6]~6_combout\ = ( \CPU|REG_END_RET|DOUT\(6) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~25_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~67_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(6) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~25_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~67_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~67_combout\,
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

\MEMORIA_INTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~11_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ ((\CPU|PC|DOUT\(0))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000110000100100000011000000100100100100101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~11_combout\);

\MEMORIA_INTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~12_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011010010000001001101001000000100110100100000010011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~12_combout\);

\MEMORIA_INTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~13_combout\ = ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # ((\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(6))))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~11_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000010000000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~13_combout\);

\CPU|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|Equal2~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~23_combout\ & ( \CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~19_combout\ & ((\MEMORIA_INTRUCAO|memROM~15_combout\) # (\MEMORIA_INTRUCAO|memROM~13_combout\))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~23_combout\ & ( \CPU|FLAG|DOUT~q\ & ( (\MEMORIA_INTRUCAO|memROM~19_combout\ & (!\MEMORIA_INTRUCAO|memROM~10_combout\ $ (((!\MEMORIA_INTRUCAO|memROM~13_combout\ & !\MEMORIA_INTRUCAO|memROM~15_combout\))))) ) ) ) # ( 
-- \MEMORIA_INTRUCAO|memROM~23_combout\ & ( !\CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~10_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ & ((\MEMORIA_INTRUCAO|memROM~15_combout\) # (\MEMORIA_INTRUCAO|memROM~13_combout\)))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~23_combout\ & ( !\CPU|FLAG|DOUT~q\ & ( (\MEMORIA_INTRUCAO|memROM~19_combout\ & (!\MEMORIA_INTRUCAO|memROM~10_combout\ $ (((!\MEMORIA_INTRUCAO|memROM~13_combout\ & !\MEMORIA_INTRUCAO|memROM~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101010001010100000000000000000011010100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX2|Equal2~0_combout\);

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
-- \CPU|MUX2|saida_MUX[4]~4_combout\ = ( \CPU|REG_END_RET|DOUT\(4) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~17_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & ((!\CPU|MUX2|Equal1~0_combout\) # ((\MEMORIA_INTRUCAO|memROM~66_combout\)))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(4) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~17_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\CPU|MUX2|Equal1~0_combout\ & ((\MEMORIA_INTRUCAO|memROM~66_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~17_sumout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~66_combout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(4),
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

\MEMORIA_INTRUCAO|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~41_combout\ = ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))) 
-- # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000000100000000000000000001000010000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~41_combout\);

\MEMORIA_INTRUCAO|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~42_combout\ = (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~41_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~42_combout\);

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
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = ( \CPU|REG_END_RET|DOUT\(7) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~29_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~42_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(7) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~29_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~42_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMADOR|ALT_INV_Add0~29_sumout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(7),
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

\MEMORIA_INTRUCAO|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~43_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(3)))) # 
-- (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & 
-- ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000101111110110101111011111100100010010001000100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~43_combout\);

\MEMORIA_INTRUCAO|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~44_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # 
-- (!\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # 
-- (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100001010110111001000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~44_combout\);

\MEMORIA_INTRUCAO|memROM~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~46_combout\ = ( \MEMORIA_INTRUCAO|memROM~44_combout\ & ( \MEMORIA_INTRUCAO|memROM~45_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\MEMORIA_INTRUCAO|memROM~43_combout\) # (\CPU|PC|DOUT\(5)))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~44_combout\ 
-- & ( \MEMORIA_INTRUCAO|memROM~45_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & !\MEMORIA_INTRUCAO|memROM~43_combout\)) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~44_combout\ & ( !\MEMORIA_INTRUCAO|memROM~45_combout\ & ( ((!\CPU|PC|DOUT\(7) & 
-- ((!\MEMORIA_INTRUCAO|memROM~43_combout\) # (\CPU|PC|DOUT\(5))))) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~44_combout\ & ( !\MEMORIA_INTRUCAO|memROM~45_combout\ & ( ((!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & 
-- !\MEMORIA_INTRUCAO|memROM~43_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100001111110011110100111110001000000000001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~43_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~44_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~45_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~46_combout\);

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
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = ( \CPU|REG_END_RET|DOUT\(5) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~21_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~46_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(5) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~21_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~46_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
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

\MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~7_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(3))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000000000000000101000110001101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~7_combout\);

\MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~8_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ ((\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011001010100101001010011101000010100010000101000100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INTRUCAO|memROM~8_combout\);

\MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~9_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000011111001000000001111100100000000111110010000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~9_combout\);

\MEMORIA_INTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~10_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~9_combout\ & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~7_combout\)) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~8_combout\ & ( 
-- \MEMORIA_INTRUCAO|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\MEMORIA_INTRUCAO|memROM~7_combout\))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( !\MEMORIA_INTRUCAO|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(5) & 
-- (((\MEMORIA_INTRUCAO|memROM~6_combout\)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~7_combout\)))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~8_combout\ & ( !\MEMORIA_INTRUCAO|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(5) & 
-- ((!\CPU|PC|DOUT\(7)) # ((\MEMORIA_INTRUCAO|memROM~6_combout\)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001110000010100100111010001000110011000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~10_combout\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (((\MEMORIA_INTRUCAO|memROM~23_combout\) # (\MEMORIA_INTRUCAO|memROM~19_combout\)) # (\MEMORIA_INTRUCAO|memROM~68_combout\)) # (\MEMORIA_INTRUCAO|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000000000000000001111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~68_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \Saida_Dados[0]~4_combout\ & ( \Saida_Dados[0]~2_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (\MEMORIA_INTRUCAO|memROM~61_combout\) ) ) ) # ( !\Saida_Dados[0]~4_combout\ & ( \Saida_Dados[0]~2_combout\ & 
-- ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~547_combout\ & \MEMORIA_DADOS|dado_out~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~61_combout\)) ) ) ) # ( \Saida_Dados[0]~4_combout\ & 
-- ( !\Saida_Dados[0]~2_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~547_combout\ & \MEMORIA_DADOS|dado_out~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~61_combout\)) ) ) ) 
-- # ( !\Saida_Dados[0]~4_combout\ & ( !\Saida_Dados[0]~2_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\MEMORIA_DADOS|ram~547_combout\ & \MEMORIA_DADOS|dado_out~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~61_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~547_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datae => \ALT_INV_Saida_Dados[0]~4_combout\,
	dataf => \ALT_INV_Saida_Dados[0]~2_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~1_combout\ = ( \CPU|ULA1|saida[0]~0_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & ((!\CPU|ULA1|Equal0~0_combout\) # ((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~1_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[0]~0_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & (\CPU|ULA1|Equal0~0_combout\ & (\CPU|ULA1|Add1~17_sumout\))) # (\CPU|ULA1|Equal1~0_combout\ & (((\CPU|ULA1|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111101110110000111100010001000011111011101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datae => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \CPU|ULA1|saida[0]~1_combout\);

\CPU|BANCO_REG|Entrada_reg0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg0\(0) = ( \CPU|BANCO_REG|Entrada_reg0\(0) & ( \CPU|BANCO_REG|Equal1~0_combout\ ) ) # ( \CPU|BANCO_REG|Entrada_reg0\(0) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) ) ) # ( 
-- !\CPU|BANCO_REG|Entrada_reg0\(0) & ( !\CPU|BANCO_REG|Equal1~0_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[0]~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg0\(0),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal1~0_combout\,
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

\CPU|BANCO_REG|Entrada_reg1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg1\(0) = ( \CPU|BANCO_REG|Entrada_reg1\(0) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg1\(0) & ( \CPU|BANCO_REG|Equal0~0_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg1\(0) & ( !\CPU|BANCO_REG|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[0]~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg1\(0),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~0_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg1\(0));

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

\CPU|BANCO_REG|Entrada_reg2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg2\(0) = ( \CPU|BANCO_REG|Entrada_reg2\(0) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg2\(0) & ( \CPU|BANCO_REG|Equal0~1_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg2\(0) & ( !\CPU|BANCO_REG|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[0]~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg2\(0),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~1_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg2\(0));

\CPU|BANCO_REG|REG_2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg2\(0),
	ena => \CPU|BANCO_REG|Habilita_reg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_2|DOUT\(0));

\CPU|BANCO_REG|Entrada_reg3[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Entrada_reg3\(0) = ( \CPU|BANCO_REG|Entrada_reg3\(0) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) ) ) # ( !\CPU|BANCO_REG|Entrada_reg3\(0) & ( \CPU|BANCO_REG|Equal0~2_combout\ & ( \CPU|ULA1|saida[0]~1_combout\ ) 
-- ) ) # ( \CPU|BANCO_REG|Entrada_reg3\(0) & ( !\CPU|BANCO_REG|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[0]~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_Entrada_reg3\(0),
	dataf => \CPU|BANCO_REG|ALT_INV_Equal0~2_combout\,
	combout => \CPU|BANCO_REG|Entrada_reg3\(0));

\CPU|BANCO_REG|REG_3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Entrada_reg3\(0),
	ena => \CPU|BANCO_REG|Habilita_reg3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|REG_3|DOUT\(0));

\CPU|BANCO_REG|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|Mux7~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_3|DOUT\(0) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( \MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_2|DOUT\(0) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( \CPU|BANCO_REG|REG_1|DOUT\(0) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~78_combout\ & ( !\MEMORIA_INTRUCAO|memROM~74_combout\ & ( 
-- \CPU|BANCO_REG|REG_0|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|REG_0|ALT_INV_DOUT\(0),
	datab => \CPU|BANCO_REG|REG_1|ALT_INV_DOUT\(0),
	datac => \CPU|BANCO_REG|REG_2|ALT_INV_DOUT\(0),
	datad => \CPU|BANCO_REG|REG_3|ALT_INV_DOUT\(0),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~78_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~74_combout\,
	combout => \CPU|BANCO_REG|Mux7~0_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~42_combout\ & ( (\MEMORIA_INTRUCAO|memROM~40_combout\ & (((!\MEMORIA_INTRUCAO|memROM~33_combout\ & !\MEMORIA_INTRUCAO|memROM~36_combout\)) # (\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010101000000000000000000000000110101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~33_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~36_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~42_combout\,
	combout => \comb~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & (\comb~0_combout\ & \MEMORIA_INTRUCAO|memROM~46_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \comb~1_combout\);

\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \comb~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \comb~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \comb~1_combout\,
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

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & (\comb~0_combout\ & \MEMORIA_INTRUCAO|memROM~46_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \comb~2_combout\);

\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \comb~2_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \comb~2_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \comb~2_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \comb~2_combout\,
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

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & (\comb~0_combout\ & \MEMORIA_INTRUCAO|memROM~46_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \comb~3_combout\);

\REG_HEX2|DOUT[0]\ : dffeas
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
	q => \REG_HEX2|DOUT\(0));

\REG_HEX2|DOUT[3]\ : dffeas
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
	q => \REG_HEX2|DOUT\(3));

\REG_HEX2|DOUT[1]\ : dffeas
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
	q => \REG_HEX2|DOUT\(1));

\REG_HEX2|DOUT[2]\ : dffeas
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

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & (\comb~0_combout\ & \MEMORIA_INTRUCAO|memROM~46_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \comb~4_combout\);

\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \comb~4_combout\,
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
	ena => \comb~4_combout\,
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
	ena => \comb~4_combout\,
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
	ena => \comb~4_combout\,
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

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & (\comb~0_combout\ & \MEMORIA_INTRUCAO|memROM~46_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \comb~5_combout\);

\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \comb~5_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \comb~5_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \comb~5_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \comb~5_combout\,
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

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (\MEMORIA_INTRUCAO|memROM~31_combout\ & (\comb~0_combout\ & \MEMORIA_INTRUCAO|memROM~46_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \comb~6_combout\);

\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \comb~6_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \comb~6_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \comb~6_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \comb~6_combout\,
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
-- \CPU|MUX2|saida_MUX[8]~8_combout\ = ( \CPU|REG_END_RET|DOUT\(8) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~33_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~40_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(8) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~33_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~40_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~40_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMADOR|ALT_INV_Add0~33_sumout\,
	datae => \CPU|REG_END_RET|ALT_INV_DOUT\(8),
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

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & (\comb~0_combout\ & !\MEMORIA_INTRUCAO|memROM~46_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
	combout => \comb~7_combout\);

\REG_LEDR0a7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux7~0_combout\,
	ena => \comb~7_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux6~0_combout\,
	ena => \comb~7_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux5~0_combout\,
	ena => \comb~7_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux4~0_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(3));

\REG_LEDR0a7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux3~0_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(4));

\REG_LEDR0a7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux2~0_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(5));

\REG_LEDR0a7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux1~0_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(6));

\REG_LEDR0a7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|Mux0~0_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(7));

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~31_combout\ & \comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datac => \ALT_INV_comb~0_combout\,
	combout => \comb~8_combout\);

\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( (!\comb~8_combout\ & 
-- (((\FF_LEDR8|DOUT~q\)))) # (\comb~8_combout\ & ((!\MEMORIA_INTRUCAO|memROM~46_combout\ & (\CPU|BANCO_REG|Mux7~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~46_combout\ & ((\FF_LEDR8|DOUT~q\))))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \FF_LEDR8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110101001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\,
	datab => \FF_LEDR8|ALT_INV_DOUT~q\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
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

\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \FF_LEDR9|DOUT~q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( \MEMORIA_INTRUCAO|memROM~61_combout\ & ( \FF_LEDR9|DOUT~q\ ) ) ) # ( 
-- \MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( (!\comb~8_combout\ & (((\FF_LEDR9|DOUT~q\)))) # (\comb~8_combout\ & ((!\MEMORIA_INTRUCAO|memROM~46_combout\ & (\CPU|BANCO_REG|Mux7~0_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~46_combout\ & ((\FF_LEDR9|DOUT~q\))))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~55_combout\ & ( !\MEMORIA_INTRUCAO|memROM~61_combout\ & ( \FF_LEDR9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101010011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_Mux7~0_combout\,
	datab => \FF_LEDR9|ALT_INV_DOUT~q\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~46_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~55_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~61_combout\,
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


