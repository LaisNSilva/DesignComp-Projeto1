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

-- DATE "09/29/2021 17:04:52"

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
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	REG_A : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Aula7;

-- Design Ports Information
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
-- PC_OUT[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~6\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~10\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~22\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~25_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~26\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~23_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~24_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~14\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~18\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~33_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~2\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~17_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~18_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~27_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~26_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~22_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~19_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~785_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|process_0~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~786_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~390_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~761_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~762_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~294_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~769_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~770_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~326_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~777_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~778_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~358_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~689_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~765_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~766_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~422_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~773_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~774_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~454_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~781_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~782_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~486_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~789_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~790_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~518_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~691_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~797_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~798_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~366_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~801_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~802_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~334_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~793_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~794_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~302_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~805_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~806_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~398_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~690_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~813_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~814_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~494_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~809_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~810_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~430_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~462feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~817_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~818_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~462_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~821_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~822_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~526_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~692_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~693_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~767_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~768_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~759_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~760_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~775_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~776_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~102_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~783_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~784_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~134_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~679_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~198feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~771_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~772_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~198_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~779_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~780_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~230_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~166feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~763_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~764_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~166_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~787_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~788_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~262_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~681_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~791_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~792_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~795_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~796_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~110_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~799_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~800_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~803_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~804_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~142_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~680_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~807_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~808_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~174_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~819_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~820_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~270_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~815_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~816_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~206_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~811_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~812_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~238_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~682_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~683_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~126feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~751_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~752_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~126_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~723_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~724_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~246_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~118feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~719_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~720_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~118_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~755_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~756_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~254_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~677_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~743_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~744_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~711_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~712_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~715_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~716_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~214_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~747_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~748_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~222_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~676_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~735_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~736_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~703_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~704_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~707_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~708_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~182_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~739_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~740_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~190_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~675_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~22feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~695_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~696_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~699_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~700_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~150_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~30feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~727_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~728_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~731_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~732_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~158_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~674_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~678_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~749_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~750_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~478_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~717_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~718_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~470_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~713_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~714_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~342_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~745_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~746_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~350_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~686_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~705_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~706_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~310_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~318feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~737_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~738_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~318_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~709_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~710_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~438_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~741_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~742_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~446_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~685_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~697_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~698_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~278_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~701_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~702_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~406_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~733_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~734_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~414_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~729_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~730_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~286_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~684_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~725_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~726_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~502_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~721_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~722_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~374_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~753_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~754_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~382_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~757_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~758_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~510_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~687_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~688_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~694_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~32_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~108_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~124_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~140_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~644_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~156_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~172_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~188_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~204_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~643_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~236_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~220_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~252_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~268_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~645_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~28feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~642_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~646_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~412_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~444_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~476_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~508_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~649_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~348_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~316_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~380_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~284_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~647_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~492_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~460_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~428_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~524_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~650_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~300_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~332_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~364feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~364_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~396_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~648_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~651_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~116_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~132_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~634_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~196_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~180feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~180_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~148_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~164_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~633_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~244_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~212_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~228_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~260_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~635_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~20feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~632_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~636_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~484_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~356_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~388_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~516_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~640_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~276_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~436feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~436_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~308_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~404_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~637_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~292_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~420_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~452_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~324_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~638_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~340feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~340_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~500_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~372_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~468_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~639_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~641_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~652_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~31_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~210_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~18feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~146_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~590_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~26feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~218feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~218_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~154_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~591_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~114_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~178_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~242_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~592_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~122_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~250_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~186_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~593_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~594_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~330_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~394_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~458_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~522_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~608_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~482_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~290_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~418feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~418_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~354_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~605_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~362_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~298_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~490_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~426_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~606_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~450_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~386_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~322_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~514_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~607_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~609_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~202feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~202_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~170feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~170_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~601_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~162_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~194_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~600_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~106_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~234_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~266_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~138_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~603_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~226_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~130_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~98_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~258_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~602_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~604_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~282_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~274feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~274_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~410_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~402_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~595_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~506_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~370_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~378_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~498_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~598_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~346_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~474_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~338_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~466_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~597_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~306_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~442_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~434_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~314_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~596_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~599_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~610_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~30_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~441_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~185_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~201_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~457_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~586_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~313feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~313_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~329_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~584_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~137_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~393_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~377_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~121_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~585_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~521_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~505_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~249_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~265_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~587_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~588_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~273_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~289_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~569_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~225_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~465_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~209_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~481_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~572_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~417_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~145feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~145_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~161_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~401_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~570_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~337_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~353_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~571_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~573_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~425_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~169_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~297_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~580_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~217_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~345_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~473_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~581_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~25feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~281feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~281_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~153feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~153_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~409_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~579_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~489_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~233_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~361feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~361_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~582_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~583_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~385_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~369_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~113_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~129_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~576_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~257_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~497_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~513_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~241_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~577_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~177_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~193_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~433_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~449_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~575_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~305_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~321_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~574_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~578_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~589_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~29_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~520_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~512_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~488_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~480_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~566_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~496_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~472_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~464feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~464_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~504_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~565_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~416_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~448feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~448_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~424_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~456_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~564_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~408feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~408_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~440_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~432_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~400_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~563_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~567_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~352_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~272_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~336feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~336_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~288_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~553_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~280_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~360feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~360_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~296_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~344_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~554_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~312_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~392_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~376_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~328_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~556_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~304feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~304_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~368_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~384_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~320_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~555_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~136feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~136_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~104_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~128feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~128_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~120_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~112_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~80feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~550_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~16_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~160_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~168_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~192_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~200_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~559_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~264_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~224_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~232feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~232_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~256feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~256_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~561_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~208_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~216_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~248_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~240_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~560_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~144_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~184_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~152_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~176_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~558_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~562_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~568_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~28_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \FLIP_FLOP_DM|DOUT~feeder_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \FLIP_FLOP_DM|DOUT~q\ : std_logic;
SIGNAL \Saida_Dados[0]~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Saida_Dados[0]~2_combout\ : std_logic;
SIGNAL \Saida_Dados[0]~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~239_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~495_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~367feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~367_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~111_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~530_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~207_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~463_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~335_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~143_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~15_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~271_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~399_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~303_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~431feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~431_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~175feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~175_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~531_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~199_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~455_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~263_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~519_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~487_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~423_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~231_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~167_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~359_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~295feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~295_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~103_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~327feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~327_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~135feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~135_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~391feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~391_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~287_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~159_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~415_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~351_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~223_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~479_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~127feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~127_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~255feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~255_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~383_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~511_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~319_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~191_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~447_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~279_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~407_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~151_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~532_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~471_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~343feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~343_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~215feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~215_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~534_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~247feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~247_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~503_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~375_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~119_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~439_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~183_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~311_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~536_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~547_combout\ : std_logic;
SIGNAL \Saida_Dados[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~163_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~235_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~171_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~227_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~622_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~243_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~187_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~179feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~179_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~251_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~623_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~211_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~219_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~147_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~155_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~621_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~259_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~195feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~195_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~203_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~267_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~624_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~625_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~427_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~411_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~403_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~419_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~626_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~499_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~515feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~515_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~507feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~507_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~523_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~629_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~443feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~443_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~435_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~451feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~451_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~459_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~627_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~467_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~475_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~483_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~491_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~628_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~630_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~371feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~371_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~339_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~347_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~379_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~618_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~275_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~307_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~283_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~315_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~616_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~387_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~363_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~355_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~395_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~619_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~323_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~291_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~299_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~331_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~617_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~620_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~611_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~612_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~99_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~107_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~613_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~115feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~115_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~123_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~131_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~139_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~614_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~615_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~631_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~445feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~445_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~437feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~437_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~453_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~461_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~669_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~381_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~389feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~389_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~373_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~397_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~670_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~501_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~509_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~517_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~525_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~671_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~325_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~333_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~317_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~309feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~309_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~668_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~672_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~405_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~469_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~485_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~421feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~421_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~660_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~349_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~301_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~285_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~365_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~659_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~341_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~293_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~277feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~277_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~357_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~658_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~477_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~429_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~413_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~493_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~661_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~662_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~197_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~181_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~663_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~253_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~141_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~125_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~269_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~666_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~133_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~245_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~117feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~117_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~261_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~665_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~189_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~205_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~664_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~667_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~165_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~149_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~157_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~173_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~654_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~101_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~109_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~655_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~229feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~229_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~221feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~221_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~213_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~237_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~656_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~29feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~21feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~653_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~657_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~673_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~20_combout\ : std_logic;
SIGNAL \CPU|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~21_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
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
SIGNAL \REG_HEX2|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT[2]~DUPLICATE_q\ : std_logic;
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
SIGNAL \REG_HEX5|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \REG_HEX5|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \REG_HEX5|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~30\ : std_logic;
SIGNAL \CPU|SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0a7|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~q\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_LEDR0a7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REG_END_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~1_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~29_combout\ : std_logic;
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
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~44_q\ : std_logic;
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
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Saida_Dados[0]~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_DM|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \CPU|REG_END_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
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
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Saida_Dados[0]~3_combout\ : std_logic;
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
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
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
\REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_HEX5|DOUT[0]~DUPLICATE_q\;
\REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REG_HEX2|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~33_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~33_combout\;
\ALT_INV_Saida_Dados[0]~2_combout\ <= NOT \Saida_Dados[0]~2_combout\;
\ALT_INV_Saida_Dados[0]~1_combout\ <= NOT \Saida_Dados[0]~1_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~32_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~32_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~31_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~30_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~29_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~29_combout\;
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
\MEMORIA_INTRUCAO|ALT_INV_memROM~28_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~28_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG|DOUT~0_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~6_combout\;
\MEMORIA_DADOS|ALT_INV_ram~694_combout\ <= NOT \MEMORIA_DADOS|ram~694_combout\;
\MEMORIA_DADOS|ALT_INV_ram~693_combout\ <= NOT \MEMORIA_DADOS|ram~693_combout\;
\MEMORIA_DADOS|ALT_INV_ram~692_combout\ <= NOT \MEMORIA_DADOS|ram~692_combout\;
\MEMORIA_DADOS|ALT_INV_ram~526_q\ <= NOT \MEMORIA_DADOS|ram~526_q\;
\MEMORIA_DADOS|ALT_INV_ram~494_q\ <= NOT \MEMORIA_DADOS|ram~494_q\;
\MEMORIA_DADOS|ALT_INV_ram~462_q\ <= NOT \MEMORIA_DADOS|ram~462_q\;
\MEMORIA_DADOS|ALT_INV_ram~430_q\ <= NOT \MEMORIA_DADOS|ram~430_q\;
\MEMORIA_DADOS|ALT_INV_ram~691_combout\ <= NOT \MEMORIA_DADOS|ram~691_combout\;
\MEMORIA_DADOS|ALT_INV_ram~518_q\ <= NOT \MEMORIA_DADOS|ram~518_q\;
\MEMORIA_DADOS|ALT_INV_ram~486_q\ <= NOT \MEMORIA_DADOS|ram~486_q\;
\MEMORIA_DADOS|ALT_INV_ram~454_q\ <= NOT \MEMORIA_DADOS|ram~454_q\;
\MEMORIA_DADOS|ALT_INV_ram~422_q\ <= NOT \MEMORIA_DADOS|ram~422_q\;
\MEMORIA_DADOS|ALT_INV_ram~690_combout\ <= NOT \MEMORIA_DADOS|ram~690_combout\;
\MEMORIA_DADOS|ALT_INV_ram~398_q\ <= NOT \MEMORIA_DADOS|ram~398_q\;
\MEMORIA_DADOS|ALT_INV_ram~366_q\ <= NOT \MEMORIA_DADOS|ram~366_q\;
\MEMORIA_DADOS|ALT_INV_ram~334_q\ <= NOT \MEMORIA_DADOS|ram~334_q\;
\MEMORIA_DADOS|ALT_INV_ram~302_q\ <= NOT \MEMORIA_DADOS|ram~302_q\;
\MEMORIA_DADOS|ALT_INV_ram~689_combout\ <= NOT \MEMORIA_DADOS|ram~689_combout\;
\MEMORIA_DADOS|ALT_INV_ram~390_q\ <= NOT \MEMORIA_DADOS|ram~390_q\;
\MEMORIA_DADOS|ALT_INV_ram~358_q\ <= NOT \MEMORIA_DADOS|ram~358_q\;
\MEMORIA_DADOS|ALT_INV_ram~326_q\ <= NOT \MEMORIA_DADOS|ram~326_q\;
\MEMORIA_DADOS|ALT_INV_ram~294_q\ <= NOT \MEMORIA_DADOS|ram~294_q\;
\MEMORIA_DADOS|ALT_INV_ram~688_combout\ <= NOT \MEMORIA_DADOS|ram~688_combout\;
\MEMORIA_DADOS|ALT_INV_ram~687_combout\ <= NOT \MEMORIA_DADOS|ram~687_combout\;
\MEMORIA_DADOS|ALT_INV_ram~510_q\ <= NOT \MEMORIA_DADOS|ram~510_q\;
\MEMORIA_DADOS|ALT_INV_ram~502_q\ <= NOT \MEMORIA_DADOS|ram~502_q\;
\MEMORIA_DADOS|ALT_INV_ram~382_q\ <= NOT \MEMORIA_DADOS|ram~382_q\;
\MEMORIA_DADOS|ALT_INV_ram~374_q\ <= NOT \MEMORIA_DADOS|ram~374_q\;
\MEMORIA_DADOS|ALT_INV_ram~686_combout\ <= NOT \MEMORIA_DADOS|ram~686_combout\;
\MEMORIA_DADOS|ALT_INV_ram~478_q\ <= NOT \MEMORIA_DADOS|ram~478_q\;
\MEMORIA_DADOS|ALT_INV_ram~470_q\ <= NOT \MEMORIA_DADOS|ram~470_q\;
\MEMORIA_DADOS|ALT_INV_ram~350_q\ <= NOT \MEMORIA_DADOS|ram~350_q\;
\MEMORIA_DADOS|ALT_INV_ram~342_q\ <= NOT \MEMORIA_DADOS|ram~342_q\;
\MEMORIA_DADOS|ALT_INV_ram~685_combout\ <= NOT \MEMORIA_DADOS|ram~685_combout\;
\MEMORIA_DADOS|ALT_INV_ram~446_q\ <= NOT \MEMORIA_DADOS|ram~446_q\;
\MEMORIA_DADOS|ALT_INV_ram~438_q\ <= NOT \MEMORIA_DADOS|ram~438_q\;
\MEMORIA_DADOS|ALT_INV_ram~318_q\ <= NOT \MEMORIA_DADOS|ram~318_q\;
\MEMORIA_DADOS|ALT_INV_ram~310_q\ <= NOT \MEMORIA_DADOS|ram~310_q\;
\MEMORIA_DADOS|ALT_INV_ram~684_combout\ <= NOT \MEMORIA_DADOS|ram~684_combout\;
\MEMORIA_DADOS|ALT_INV_ram~414_q\ <= NOT \MEMORIA_DADOS|ram~414_q\;
\MEMORIA_DADOS|ALT_INV_ram~406_q\ <= NOT \MEMORIA_DADOS|ram~406_q\;
\MEMORIA_DADOS|ALT_INV_ram~286_q\ <= NOT \MEMORIA_DADOS|ram~286_q\;
\MEMORIA_DADOS|ALT_INV_ram~278_q\ <= NOT \MEMORIA_DADOS|ram~278_q\;
\MEMORIA_DADOS|ALT_INV_ram~683_combout\ <= NOT \MEMORIA_DADOS|ram~683_combout\;
\MEMORIA_DADOS|ALT_INV_ram~682_combout\ <= NOT \MEMORIA_DADOS|ram~682_combout\;
\MEMORIA_DADOS|ALT_INV_ram~270_q\ <= NOT \MEMORIA_DADOS|ram~270_q\;
\MEMORIA_DADOS|ALT_INV_ram~238_q\ <= NOT \MEMORIA_DADOS|ram~238_q\;
\MEMORIA_DADOS|ALT_INV_ram~206_q\ <= NOT \MEMORIA_DADOS|ram~206_q\;
\MEMORIA_DADOS|ALT_INV_ram~174_q\ <= NOT \MEMORIA_DADOS|ram~174_q\;
\MEMORIA_DADOS|ALT_INV_ram~681_combout\ <= NOT \MEMORIA_DADOS|ram~681_combout\;
\MEMORIA_DADOS|ALT_INV_ram~262_q\ <= NOT \MEMORIA_DADOS|ram~262_q\;
\MEMORIA_DADOS|ALT_INV_ram~230_q\ <= NOT \MEMORIA_DADOS|ram~230_q\;
\MEMORIA_DADOS|ALT_INV_ram~198_q\ <= NOT \MEMORIA_DADOS|ram~198_q\;
\MEMORIA_DADOS|ALT_INV_ram~166_q\ <= NOT \MEMORIA_DADOS|ram~166_q\;
\MEMORIA_DADOS|ALT_INV_ram~680_combout\ <= NOT \MEMORIA_DADOS|ram~680_combout\;
\MEMORIA_DADOS|ALT_INV_ram~142_q\ <= NOT \MEMORIA_DADOS|ram~142_q\;
\MEMORIA_DADOS|ALT_INV_ram~110_q\ <= NOT \MEMORIA_DADOS|ram~110_q\;
\MEMORIA_DADOS|ALT_INV_ram~78_q\ <= NOT \MEMORIA_DADOS|ram~78_q\;
\MEMORIA_DADOS|ALT_INV_ram~46_q\ <= NOT \MEMORIA_DADOS|ram~46_q\;
\MEMORIA_DADOS|ALT_INV_ram~679_combout\ <= NOT \MEMORIA_DADOS|ram~679_combout\;
\MEMORIA_DADOS|ALT_INV_ram~134_q\ <= NOT \MEMORIA_DADOS|ram~134_q\;
\MEMORIA_DADOS|ALT_INV_ram~102_q\ <= NOT \MEMORIA_DADOS|ram~102_q\;
\MEMORIA_DADOS|ALT_INV_ram~70_q\ <= NOT \MEMORIA_DADOS|ram~70_q\;
\MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \MEMORIA_DADOS|ram~38_q\;
\MEMORIA_DADOS|ALT_INV_ram~678_combout\ <= NOT \MEMORIA_DADOS|ram~678_combout\;
\MEMORIA_DADOS|ALT_INV_ram~677_combout\ <= NOT \MEMORIA_DADOS|ram~677_combout\;
\MEMORIA_DADOS|ALT_INV_ram~254_q\ <= NOT \MEMORIA_DADOS|ram~254_q\;
\MEMORIA_DADOS|ALT_INV_ram~246_q\ <= NOT \MEMORIA_DADOS|ram~246_q\;
\MEMORIA_DADOS|ALT_INV_ram~126_q\ <= NOT \MEMORIA_DADOS|ram~126_q\;
\MEMORIA_DADOS|ALT_INV_ram~118_q\ <= NOT \MEMORIA_DADOS|ram~118_q\;
\MEMORIA_DADOS|ALT_INV_ram~676_combout\ <= NOT \MEMORIA_DADOS|ram~676_combout\;
\MEMORIA_DADOS|ALT_INV_ram~222_q\ <= NOT \MEMORIA_DADOS|ram~222_q\;
\MEMORIA_DADOS|ALT_INV_ram~214_q\ <= NOT \MEMORIA_DADOS|ram~214_q\;
\MEMORIA_DADOS|ALT_INV_ram~94_q\ <= NOT \MEMORIA_DADOS|ram~94_q\;
\MEMORIA_DADOS|ALT_INV_ram~86_q\ <= NOT \MEMORIA_DADOS|ram~86_q\;
\MEMORIA_DADOS|ALT_INV_ram~675_combout\ <= NOT \MEMORIA_DADOS|ram~675_combout\;
\MEMORIA_DADOS|ALT_INV_ram~190_q\ <= NOT \MEMORIA_DADOS|ram~190_q\;
\MEMORIA_DADOS|ALT_INV_ram~182_q\ <= NOT \MEMORIA_DADOS|ram~182_q\;
\MEMORIA_DADOS|ALT_INV_ram~62_q\ <= NOT \MEMORIA_DADOS|ram~62_q\;
\MEMORIA_DADOS|ALT_INV_ram~54_q\ <= NOT \MEMORIA_DADOS|ram~54_q\;
\MEMORIA_DADOS|ALT_INV_ram~674_combout\ <= NOT \MEMORIA_DADOS|ram~674_combout\;
\MEMORIA_DADOS|ALT_INV_ram~158_q\ <= NOT \MEMORIA_DADOS|ram~158_q\;
\MEMORIA_DADOS|ALT_INV_ram~150_q\ <= NOT \MEMORIA_DADOS|ram~150_q\;
\MEMORIA_DADOS|ALT_INV_ram~30_q\ <= NOT \MEMORIA_DADOS|ram~30_q\;
\MEMORIA_DADOS|ALT_INV_ram~22_q\ <= NOT \MEMORIA_DADOS|ram~22_q\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~5_combout\;
\MEMORIA_DADOS|ALT_INV_ram~673_combout\ <= NOT \MEMORIA_DADOS|ram~673_combout\;
\MEMORIA_DADOS|ALT_INV_ram~672_combout\ <= NOT \MEMORIA_DADOS|ram~672_combout\;
\MEMORIA_DADOS|ALT_INV_ram~671_combout\ <= NOT \MEMORIA_DADOS|ram~671_combout\;
\MEMORIA_DADOS|ALT_INV_ram~525_q\ <= NOT \MEMORIA_DADOS|ram~525_q\;
\MEMORIA_DADOS|ALT_INV_ram~509_q\ <= NOT \MEMORIA_DADOS|ram~509_q\;
\MEMORIA_DADOS|ALT_INV_ram~517_q\ <= NOT \MEMORIA_DADOS|ram~517_q\;
\MEMORIA_DADOS|ALT_INV_ram~501_q\ <= NOT \MEMORIA_DADOS|ram~501_q\;
\MEMORIA_DADOS|ALT_INV_ram~670_combout\ <= NOT \MEMORIA_DADOS|ram~670_combout\;
\MEMORIA_DADOS|ALT_INV_ram~397_q\ <= NOT \MEMORIA_DADOS|ram~397_q\;
\MEMORIA_DADOS|ALT_INV_ram~381_q\ <= NOT \MEMORIA_DADOS|ram~381_q\;
\MEMORIA_DADOS|ALT_INV_ram~389_q\ <= NOT \MEMORIA_DADOS|ram~389_q\;
\MEMORIA_DADOS|ALT_INV_ram~373_q\ <= NOT \MEMORIA_DADOS|ram~373_q\;
\MEMORIA_DADOS|ALT_INV_ram~669_combout\ <= NOT \MEMORIA_DADOS|ram~669_combout\;
\MEMORIA_DADOS|ALT_INV_ram~461_q\ <= NOT \MEMORIA_DADOS|ram~461_q\;
\MEMORIA_DADOS|ALT_INV_ram~445_q\ <= NOT \MEMORIA_DADOS|ram~445_q\;
\MEMORIA_DADOS|ALT_INV_ram~453_q\ <= NOT \MEMORIA_DADOS|ram~453_q\;
\MEMORIA_DADOS|ALT_INV_ram~437_q\ <= NOT \MEMORIA_DADOS|ram~437_q\;
\MEMORIA_DADOS|ALT_INV_ram~668_combout\ <= NOT \MEMORIA_DADOS|ram~668_combout\;
\MEMORIA_DADOS|ALT_INV_ram~333_q\ <= NOT \MEMORIA_DADOS|ram~333_q\;
\MEMORIA_DADOS|ALT_INV_ram~317_q\ <= NOT \MEMORIA_DADOS|ram~317_q\;
\MEMORIA_DADOS|ALT_INV_ram~325_q\ <= NOT \MEMORIA_DADOS|ram~325_q\;
\MEMORIA_DADOS|ALT_INV_ram~309_q\ <= NOT \MEMORIA_DADOS|ram~309_q\;
\MEMORIA_DADOS|ALT_INV_ram~667_combout\ <= NOT \MEMORIA_DADOS|ram~667_combout\;
\MEMORIA_DADOS|ALT_INV_ram~666_combout\ <= NOT \MEMORIA_DADOS|ram~666_combout\;
\MEMORIA_DADOS|ALT_INV_ram~269_q\ <= NOT \MEMORIA_DADOS|ram~269_q\;
\MEMORIA_DADOS|ALT_INV_ram~253_q\ <= NOT \MEMORIA_DADOS|ram~253_q\;
\MEMORIA_DADOS|ALT_INV_ram~141_q\ <= NOT \MEMORIA_DADOS|ram~141_q\;
\MEMORIA_DADOS|ALT_INV_ram~125_q\ <= NOT \MEMORIA_DADOS|ram~125_q\;
\MEMORIA_DADOS|ALT_INV_ram~665_combout\ <= NOT \MEMORIA_DADOS|ram~665_combout\;
\MEMORIA_DADOS|ALT_INV_ram~261_q\ <= NOT \MEMORIA_DADOS|ram~261_q\;
\MEMORIA_DADOS|ALT_INV_ram~245_q\ <= NOT \MEMORIA_DADOS|ram~245_q\;
\MEMORIA_DADOS|ALT_INV_ram~133_q\ <= NOT \MEMORIA_DADOS|ram~133_q\;
\MEMORIA_DADOS|ALT_INV_ram~117_q\ <= NOT \MEMORIA_DADOS|ram~117_q\;
\MEMORIA_DADOS|ALT_INV_ram~664_combout\ <= NOT \MEMORIA_DADOS|ram~664_combout\;
\MEMORIA_DADOS|ALT_INV_ram~205_q\ <= NOT \MEMORIA_DADOS|ram~205_q\;
\MEMORIA_DADOS|ALT_INV_ram~189_q\ <= NOT \MEMORIA_DADOS|ram~189_q\;
\MEMORIA_DADOS|ALT_INV_ram~77_q\ <= NOT \MEMORIA_DADOS|ram~77_q\;
\MEMORIA_DADOS|ALT_INV_ram~61_q\ <= NOT \MEMORIA_DADOS|ram~61_q\;
\MEMORIA_DADOS|ALT_INV_ram~663_combout\ <= NOT \MEMORIA_DADOS|ram~663_combout\;
\MEMORIA_DADOS|ALT_INV_ram~197_q\ <= NOT \MEMORIA_DADOS|ram~197_q\;
\MEMORIA_DADOS|ALT_INV_ram~181_q\ <= NOT \MEMORIA_DADOS|ram~181_q\;
\MEMORIA_DADOS|ALT_INV_ram~69_q\ <= NOT \MEMORIA_DADOS|ram~69_q\;
\MEMORIA_DADOS|ALT_INV_ram~53_q\ <= NOT \MEMORIA_DADOS|ram~53_q\;
\MEMORIA_DADOS|ALT_INV_ram~662_combout\ <= NOT \MEMORIA_DADOS|ram~662_combout\;
\MEMORIA_DADOS|ALT_INV_ram~661_combout\ <= NOT \MEMORIA_DADOS|ram~661_combout\;
\MEMORIA_DADOS|ALT_INV_ram~493_q\ <= NOT \MEMORIA_DADOS|ram~493_q\;
\MEMORIA_DADOS|ALT_INV_ram~477_q\ <= NOT \MEMORIA_DADOS|ram~477_q\;
\MEMORIA_DADOS|ALT_INV_ram~429_q\ <= NOT \MEMORIA_DADOS|ram~429_q\;
\MEMORIA_DADOS|ALT_INV_ram~413_q\ <= NOT \MEMORIA_DADOS|ram~413_q\;
\MEMORIA_DADOS|ALT_INV_ram~660_combout\ <= NOT \MEMORIA_DADOS|ram~660_combout\;
\MEMORIA_DADOS|ALT_INV_ram~485_q\ <= NOT \MEMORIA_DADOS|ram~485_q\;
\MEMORIA_DADOS|ALT_INV_ram~469_q\ <= NOT \MEMORIA_DADOS|ram~469_q\;
\MEMORIA_DADOS|ALT_INV_ram~421_q\ <= NOT \MEMORIA_DADOS|ram~421_q\;
\MEMORIA_DADOS|ALT_INV_ram~405_q\ <= NOT \MEMORIA_DADOS|ram~405_q\;
\MEMORIA_DADOS|ALT_INV_ram~659_combout\ <= NOT \MEMORIA_DADOS|ram~659_combout\;
\MEMORIA_DADOS|ALT_INV_ram~365_q\ <= NOT \MEMORIA_DADOS|ram~365_q\;
\MEMORIA_DADOS|ALT_INV_ram~349_q\ <= NOT \MEMORIA_DADOS|ram~349_q\;
\MEMORIA_DADOS|ALT_INV_ram~301_q\ <= NOT \MEMORIA_DADOS|ram~301_q\;
\MEMORIA_DADOS|ALT_INV_ram~285_q\ <= NOT \MEMORIA_DADOS|ram~285_q\;
\MEMORIA_DADOS|ALT_INV_ram~658_combout\ <= NOT \MEMORIA_DADOS|ram~658_combout\;
\MEMORIA_DADOS|ALT_INV_ram~357_q\ <= NOT \MEMORIA_DADOS|ram~357_q\;
\MEMORIA_DADOS|ALT_INV_ram~341_q\ <= NOT \MEMORIA_DADOS|ram~341_q\;
\MEMORIA_DADOS|ALT_INV_ram~293_q\ <= NOT \MEMORIA_DADOS|ram~293_q\;
\MEMORIA_DADOS|ALT_INV_ram~277_q\ <= NOT \MEMORIA_DADOS|ram~277_q\;
\MEMORIA_DADOS|ALT_INV_ram~657_combout\ <= NOT \MEMORIA_DADOS|ram~657_combout\;
\MEMORIA_DADOS|ALT_INV_ram~656_combout\ <= NOT \MEMORIA_DADOS|ram~656_combout\;
\MEMORIA_DADOS|ALT_INV_ram~237_q\ <= NOT \MEMORIA_DADOS|ram~237_q\;
\MEMORIA_DADOS|ALT_INV_ram~221_q\ <= NOT \MEMORIA_DADOS|ram~221_q\;
\MEMORIA_DADOS|ALT_INV_ram~229_q\ <= NOT \MEMORIA_DADOS|ram~229_q\;
\MEMORIA_DADOS|ALT_INV_ram~213_q\ <= NOT \MEMORIA_DADOS|ram~213_q\;
\MEMORIA_DADOS|ALT_INV_ram~655_combout\ <= NOT \MEMORIA_DADOS|ram~655_combout\;
\MEMORIA_DADOS|ALT_INV_ram~109_q\ <= NOT \MEMORIA_DADOS|ram~109_q\;
\MEMORIA_DADOS|ALT_INV_ram~93_q\ <= NOT \MEMORIA_DADOS|ram~93_q\;
\MEMORIA_DADOS|ALT_INV_ram~101_q\ <= NOT \MEMORIA_DADOS|ram~101_q\;
\MEMORIA_DADOS|ALT_INV_ram~85_q\ <= NOT \MEMORIA_DADOS|ram~85_q\;
\MEMORIA_DADOS|ALT_INV_ram~654_combout\ <= NOT \MEMORIA_DADOS|ram~654_combout\;
\MEMORIA_DADOS|ALT_INV_ram~173_q\ <= NOT \MEMORIA_DADOS|ram~173_q\;
\MEMORIA_DADOS|ALT_INV_ram~157_q\ <= NOT \MEMORIA_DADOS|ram~157_q\;
\MEMORIA_DADOS|ALT_INV_ram~165_q\ <= NOT \MEMORIA_DADOS|ram~165_q\;
\MEMORIA_DADOS|ALT_INV_ram~149_q\ <= NOT \MEMORIA_DADOS|ram~149_q\;
\MEMORIA_DADOS|ALT_INV_ram~653_combout\ <= NOT \MEMORIA_DADOS|ram~653_combout\;
\MEMORIA_DADOS|ALT_INV_ram~45_q\ <= NOT \MEMORIA_DADOS|ram~45_q\;
\MEMORIA_DADOS|ALT_INV_ram~29_q\ <= NOT \MEMORIA_DADOS|ram~29_q\;
\MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \MEMORIA_DADOS|ram~37_q\;
\MEMORIA_DADOS|ALT_INV_ram~21_q\ <= NOT \MEMORIA_DADOS|ram~21_q\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~4_combout\;
\MEMORIA_DADOS|ALT_INV_ram~652_combout\ <= NOT \MEMORIA_DADOS|ram~652_combout\;
\MEMORIA_DADOS|ALT_INV_ram~651_combout\ <= NOT \MEMORIA_DADOS|ram~651_combout\;
\MEMORIA_DADOS|ALT_INV_ram~650_combout\ <= NOT \MEMORIA_DADOS|ram~650_combout\;
\MEMORIA_DADOS|ALT_INV_ram~524_q\ <= NOT \MEMORIA_DADOS|ram~524_q\;
\MEMORIA_DADOS|ALT_INV_ram~492_q\ <= NOT \MEMORIA_DADOS|ram~492_q\;
\MEMORIA_DADOS|ALT_INV_ram~460_q\ <= NOT \MEMORIA_DADOS|ram~460_q\;
\MEMORIA_DADOS|ALT_INV_ram~428_q\ <= NOT \MEMORIA_DADOS|ram~428_q\;
\MEMORIA_DADOS|ALT_INV_ram~649_combout\ <= NOT \MEMORIA_DADOS|ram~649_combout\;
\MEMORIA_DADOS|ALT_INV_ram~508_q\ <= NOT \MEMORIA_DADOS|ram~508_q\;
\MEMORIA_DADOS|ALT_INV_ram~476_q\ <= NOT \MEMORIA_DADOS|ram~476_q\;
\MEMORIA_DADOS|ALT_INV_ram~444_q\ <= NOT \MEMORIA_DADOS|ram~444_q\;
\MEMORIA_DADOS|ALT_INV_ram~412_q\ <= NOT \MEMORIA_DADOS|ram~412_q\;
\MEMORIA_DADOS|ALT_INV_ram~648_combout\ <= NOT \MEMORIA_DADOS|ram~648_combout\;
\MEMORIA_DADOS|ALT_INV_ram~396_q\ <= NOT \MEMORIA_DADOS|ram~396_q\;
\MEMORIA_DADOS|ALT_INV_ram~364_q\ <= NOT \MEMORIA_DADOS|ram~364_q\;
\MEMORIA_DADOS|ALT_INV_ram~332_q\ <= NOT \MEMORIA_DADOS|ram~332_q\;
\MEMORIA_DADOS|ALT_INV_ram~300_q\ <= NOT \MEMORIA_DADOS|ram~300_q\;
\MEMORIA_DADOS|ALT_INV_ram~647_combout\ <= NOT \MEMORIA_DADOS|ram~647_combout\;
\MEMORIA_DADOS|ALT_INV_ram~380_q\ <= NOT \MEMORIA_DADOS|ram~380_q\;
\MEMORIA_DADOS|ALT_INV_ram~348_q\ <= NOT \MEMORIA_DADOS|ram~348_q\;
\MEMORIA_DADOS|ALT_INV_ram~316_q\ <= NOT \MEMORIA_DADOS|ram~316_q\;
\MEMORIA_DADOS|ALT_INV_ram~284_q\ <= NOT \MEMORIA_DADOS|ram~284_q\;
\MEMORIA_DADOS|ALT_INV_ram~646_combout\ <= NOT \MEMORIA_DADOS|ram~646_combout\;
\MEMORIA_DADOS|ALT_INV_ram~645_combout\ <= NOT \MEMORIA_DADOS|ram~645_combout\;
\MEMORIA_DADOS|ALT_INV_ram~268_q\ <= NOT \MEMORIA_DADOS|ram~268_q\;
\MEMORIA_DADOS|ALT_INV_ram~252_q\ <= NOT \MEMORIA_DADOS|ram~252_q\;
\MEMORIA_DADOS|ALT_INV_ram~236_q\ <= NOT \MEMORIA_DADOS|ram~236_q\;
\MEMORIA_DADOS|ALT_INV_ram~220_q\ <= NOT \MEMORIA_DADOS|ram~220_q\;
\MEMORIA_DADOS|ALT_INV_ram~644_combout\ <= NOT \MEMORIA_DADOS|ram~644_combout\;
\MEMORIA_DADOS|ALT_INV_ram~140_q\ <= NOT \MEMORIA_DADOS|ram~140_q\;
\MEMORIA_DADOS|ALT_INV_ram~124_q\ <= NOT \MEMORIA_DADOS|ram~124_q\;
\MEMORIA_DADOS|ALT_INV_ram~108_q\ <= NOT \MEMORIA_DADOS|ram~108_q\;
\MEMORIA_DADOS|ALT_INV_ram~92_q\ <= NOT \MEMORIA_DADOS|ram~92_q\;
\MEMORIA_DADOS|ALT_INV_ram~643_combout\ <= NOT \MEMORIA_DADOS|ram~643_combout\;
\MEMORIA_DADOS|ALT_INV_ram~204_q\ <= NOT \MEMORIA_DADOS|ram~204_q\;
\MEMORIA_DADOS|ALT_INV_ram~188_q\ <= NOT \MEMORIA_DADOS|ram~188_q\;
\MEMORIA_DADOS|ALT_INV_ram~172_q\ <= NOT \MEMORIA_DADOS|ram~172_q\;
\MEMORIA_DADOS|ALT_INV_ram~156_q\ <= NOT \MEMORIA_DADOS|ram~156_q\;
\MEMORIA_DADOS|ALT_INV_ram~642_combout\ <= NOT \MEMORIA_DADOS|ram~642_combout\;
\MEMORIA_DADOS|ALT_INV_ram~76_q\ <= NOT \MEMORIA_DADOS|ram~76_q\;
\MEMORIA_DADOS|ALT_INV_ram~60_q\ <= NOT \MEMORIA_DADOS|ram~60_q\;
\MEMORIA_DADOS|ALT_INV_ram~44_q\ <= NOT \MEMORIA_DADOS|ram~44_q\;
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
\MEMORIA_DADOS|ALT_INV_ram~244_q\ <= NOT \MEMORIA_DADOS|ram~244_q\;
\MEMORIA_DADOS|ALT_INV_ram~228_q\ <= NOT \MEMORIA_DADOS|ram~228_q\;
\MEMORIA_DADOS|ALT_INV_ram~212_q\ <= NOT \MEMORIA_DADOS|ram~212_q\;
\MEMORIA_DADOS|ALT_INV_ram~634_combout\ <= NOT \MEMORIA_DADOS|ram~634_combout\;
\MEMORIA_DADOS|ALT_INV_ram~132_q\ <= NOT \MEMORIA_DADOS|ram~132_q\;
\MEMORIA_DADOS|ALT_INV_ram~116_q\ <= NOT \MEMORIA_DADOS|ram~116_q\;
\MEMORIA_DADOS|ALT_INV_ram~100_q\ <= NOT \MEMORIA_DADOS|ram~100_q\;
\MEMORIA_DADOS|ALT_INV_ram~84_q\ <= NOT \MEMORIA_DADOS|ram~84_q\;
\MEMORIA_DADOS|ALT_INV_ram~633_combout\ <= NOT \MEMORIA_DADOS|ram~633_combout\;
\MEMORIA_DADOS|ALT_INV_ram~196_q\ <= NOT \MEMORIA_DADOS|ram~196_q\;
\MEMORIA_DADOS|ALT_INV_ram~180_q\ <= NOT \MEMORIA_DADOS|ram~180_q\;
\MEMORIA_DADOS|ALT_INV_ram~164_q\ <= NOT \MEMORIA_DADOS|ram~164_q\;
\MEMORIA_DADOS|ALT_INV_ram~148_q\ <= NOT \MEMORIA_DADOS|ram~148_q\;
\MEMORIA_DADOS|ALT_INV_ram~632_combout\ <= NOT \MEMORIA_DADOS|ram~632_combout\;
\MEMORIA_DADOS|ALT_INV_ram~68_q\ <= NOT \MEMORIA_DADOS|ram~68_q\;
\MEMORIA_DADOS|ALT_INV_ram~52_q\ <= NOT \MEMORIA_DADOS|ram~52_q\;
\MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \MEMORIA_DADOS|ram~36_q\;
\MEMORIA_DADOS|ALT_INV_ram~20_q\ <= NOT \MEMORIA_DADOS|ram~20_q\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~3_combout\;
\MEMORIA_DADOS|ALT_INV_ram~631_combout\ <= NOT \MEMORIA_DADOS|ram~631_combout\;
\MEMORIA_DADOS|ALT_INV_ram~630_combout\ <= NOT \MEMORIA_DADOS|ram~630_combout\;
\MEMORIA_DADOS|ALT_INV_ram~629_combout\ <= NOT \MEMORIA_DADOS|ram~629_combout\;
\MEMORIA_DADOS|ALT_INV_ram~523_q\ <= NOT \MEMORIA_DADOS|ram~523_q\;
\MEMORIA_DADOS|ALT_INV_ram~507_q\ <= NOT \MEMORIA_DADOS|ram~507_q\;
\MEMORIA_DADOS|ALT_INV_ram~515_q\ <= NOT \MEMORIA_DADOS|ram~515_q\;
\MEMORIA_DADOS|ALT_INV_ram~499_q\ <= NOT \MEMORIA_DADOS|ram~499_q\;
\MEMORIA_DADOS|ALT_INV_ram~628_combout\ <= NOT \MEMORIA_DADOS|ram~628_combout\;
\MEMORIA_DADOS|ALT_INV_ram~491_q\ <= NOT \MEMORIA_DADOS|ram~491_q\;
\MEMORIA_DADOS|ALT_INV_ram~475_q\ <= NOT \MEMORIA_DADOS|ram~475_q\;
\MEMORIA_DADOS|ALT_INV_ram~483_q\ <= NOT \MEMORIA_DADOS|ram~483_q\;
\MEMORIA_DADOS|ALT_INV_ram~467_q\ <= NOT \MEMORIA_DADOS|ram~467_q\;
\MEMORIA_DADOS|ALT_INV_ram~627_combout\ <= NOT \MEMORIA_DADOS|ram~627_combout\;
\MEMORIA_DADOS|ALT_INV_ram~459_q\ <= NOT \MEMORIA_DADOS|ram~459_q\;
\MEMORIA_DADOS|ALT_INV_ram~443_q\ <= NOT \MEMORIA_DADOS|ram~443_q\;
\MEMORIA_DADOS|ALT_INV_ram~451_q\ <= NOT \MEMORIA_DADOS|ram~451_q\;
\MEMORIA_DADOS|ALT_INV_ram~435_q\ <= NOT \MEMORIA_DADOS|ram~435_q\;
\MEMORIA_DADOS|ALT_INV_ram~626_combout\ <= NOT \MEMORIA_DADOS|ram~626_combout\;
\MEMORIA_DADOS|ALT_INV_ram~427_q\ <= NOT \MEMORIA_DADOS|ram~427_q\;
\MEMORIA_DADOS|ALT_INV_ram~411_q\ <= NOT \MEMORIA_DADOS|ram~411_q\;
\MEMORIA_DADOS|ALT_INV_ram~419_q\ <= NOT \MEMORIA_DADOS|ram~419_q\;
\MEMORIA_DADOS|ALT_INV_ram~403_q\ <= NOT \MEMORIA_DADOS|ram~403_q\;
\MEMORIA_DADOS|ALT_INV_ram~625_combout\ <= NOT \MEMORIA_DADOS|ram~625_combout\;
\MEMORIA_DADOS|ALT_INV_ram~624_combout\ <= NOT \MEMORIA_DADOS|ram~624_combout\;
\MEMORIA_DADOS|ALT_INV_ram~267_q\ <= NOT \MEMORIA_DADOS|ram~267_q\;
\MEMORIA_DADOS|ALT_INV_ram~259_q\ <= NOT \MEMORIA_DADOS|ram~259_q\;
\MEMORIA_DADOS|ALT_INV_ram~203_q\ <= NOT \MEMORIA_DADOS|ram~203_q\;
\MEMORIA_DADOS|ALT_INV_ram~195_q\ <= NOT \MEMORIA_DADOS|ram~195_q\;
\MEMORIA_DADOS|ALT_INV_ram~623_combout\ <= NOT \MEMORIA_DADOS|ram~623_combout\;
\MEMORIA_DADOS|ALT_INV_ram~251_q\ <= NOT \MEMORIA_DADOS|ram~251_q\;
\MEMORIA_DADOS|ALT_INV_ram~243_q\ <= NOT \MEMORIA_DADOS|ram~243_q\;
\MEMORIA_DADOS|ALT_INV_ram~187_q\ <= NOT \MEMORIA_DADOS|ram~187_q\;
\MEMORIA_DADOS|ALT_INV_ram~179_q\ <= NOT \MEMORIA_DADOS|ram~179_q\;
\MEMORIA_DADOS|ALT_INV_ram~622_combout\ <= NOT \MEMORIA_DADOS|ram~622_combout\;
\MEMORIA_DADOS|ALT_INV_ram~235_q\ <= NOT \MEMORIA_DADOS|ram~235_q\;
\MEMORIA_DADOS|ALT_INV_ram~227_q\ <= NOT \MEMORIA_DADOS|ram~227_q\;
\MEMORIA_DADOS|ALT_INV_ram~171_q\ <= NOT \MEMORIA_DADOS|ram~171_q\;
\MEMORIA_DADOS|ALT_INV_ram~163_q\ <= NOT \MEMORIA_DADOS|ram~163_q\;
\MEMORIA_DADOS|ALT_INV_ram~621_combout\ <= NOT \MEMORIA_DADOS|ram~621_combout\;
\MEMORIA_DADOS|ALT_INV_ram~219_q\ <= NOT \MEMORIA_DADOS|ram~219_q\;
\MEMORIA_DADOS|ALT_INV_ram~211_q\ <= NOT \MEMORIA_DADOS|ram~211_q\;
\MEMORIA_DADOS|ALT_INV_ram~155_q\ <= NOT \MEMORIA_DADOS|ram~155_q\;
\MEMORIA_DADOS|ALT_INV_ram~147_q\ <= NOT \MEMORIA_DADOS|ram~147_q\;
\MEMORIA_DADOS|ALT_INV_ram~620_combout\ <= NOT \MEMORIA_DADOS|ram~620_combout\;
\MEMORIA_DADOS|ALT_INV_ram~619_combout\ <= NOT \MEMORIA_DADOS|ram~619_combout\;
\MEMORIA_DADOS|ALT_INV_ram~395_q\ <= NOT \MEMORIA_DADOS|ram~395_q\;
\MEMORIA_DADOS|ALT_INV_ram~387_q\ <= NOT \MEMORIA_DADOS|ram~387_q\;
\MEMORIA_DADOS|ALT_INV_ram~363_q\ <= NOT \MEMORIA_DADOS|ram~363_q\;
\MEMORIA_DADOS|ALT_INV_ram~355_q\ <= NOT \MEMORIA_DADOS|ram~355_q\;
\MEMORIA_DADOS|ALT_INV_ram~618_combout\ <= NOT \MEMORIA_DADOS|ram~618_combout\;
\MEMORIA_DADOS|ALT_INV_ram~379_q\ <= NOT \MEMORIA_DADOS|ram~379_q\;
\MEMORIA_DADOS|ALT_INV_ram~371_q\ <= NOT \MEMORIA_DADOS|ram~371_q\;
\MEMORIA_DADOS|ALT_INV_ram~347_q\ <= NOT \MEMORIA_DADOS|ram~347_q\;
\MEMORIA_DADOS|ALT_INV_ram~339_q\ <= NOT \MEMORIA_DADOS|ram~339_q\;
\MEMORIA_DADOS|ALT_INV_ram~617_combout\ <= NOT \MEMORIA_DADOS|ram~617_combout\;
\MEMORIA_DADOS|ALT_INV_ram~331_q\ <= NOT \MEMORIA_DADOS|ram~331_q\;
\MEMORIA_DADOS|ALT_INV_ram~323_q\ <= NOT \MEMORIA_DADOS|ram~323_q\;
\MEMORIA_DADOS|ALT_INV_ram~299_q\ <= NOT \MEMORIA_DADOS|ram~299_q\;
\MEMORIA_DADOS|ALT_INV_ram~291_q\ <= NOT \MEMORIA_DADOS|ram~291_q\;
\MEMORIA_DADOS|ALT_INV_ram~616_combout\ <= NOT \MEMORIA_DADOS|ram~616_combout\;
\MEMORIA_DADOS|ALT_INV_ram~315_q\ <= NOT \MEMORIA_DADOS|ram~315_q\;
\MEMORIA_DADOS|ALT_INV_ram~307_q\ <= NOT \MEMORIA_DADOS|ram~307_q\;
\MEMORIA_DADOS|ALT_INV_ram~283_q\ <= NOT \MEMORIA_DADOS|ram~283_q\;
\MEMORIA_DADOS|ALT_INV_ram~275_q\ <= NOT \MEMORIA_DADOS|ram~275_q\;
\MEMORIA_DADOS|ALT_INV_ram~615_combout\ <= NOT \MEMORIA_DADOS|ram~615_combout\;
\MEMORIA_DADOS|ALT_INV_ram~614_combout\ <= NOT \MEMORIA_DADOS|ram~614_combout\;
\MEMORIA_DADOS|ALT_INV_ram~139_q\ <= NOT \MEMORIA_DADOS|ram~139_q\;
\MEMORIA_DADOS|ALT_INV_ram~131_q\ <= NOT \MEMORIA_DADOS|ram~131_q\;
\MEMORIA_DADOS|ALT_INV_ram~123_q\ <= NOT \MEMORIA_DADOS|ram~123_q\;
\MEMORIA_DADOS|ALT_INV_ram~115_q\ <= NOT \MEMORIA_DADOS|ram~115_q\;
\MEMORIA_DADOS|ALT_INV_ram~613_combout\ <= NOT \MEMORIA_DADOS|ram~613_combout\;
\MEMORIA_DADOS|ALT_INV_ram~107_q\ <= NOT \MEMORIA_DADOS|ram~107_q\;
\MEMORIA_DADOS|ALT_INV_ram~99_q\ <= NOT \MEMORIA_DADOS|ram~99_q\;
\MEMORIA_DADOS|ALT_INV_ram~91_q\ <= NOT \MEMORIA_DADOS|ram~91_q\;
\MEMORIA_DADOS|ALT_INV_ram~83_q\ <= NOT \MEMORIA_DADOS|ram~83_q\;
\MEMORIA_DADOS|ALT_INV_ram~612_combout\ <= NOT \MEMORIA_DADOS|ram~612_combout\;
\MEMORIA_DADOS|ALT_INV_ram~75_q\ <= NOT \MEMORIA_DADOS|ram~75_q\;
\MEMORIA_DADOS|ALT_INV_ram~67_q\ <= NOT \MEMORIA_DADOS|ram~67_q\;
\MEMORIA_DADOS|ALT_INV_ram~59_q\ <= NOT \MEMORIA_DADOS|ram~59_q\;
\MEMORIA_DADOS|ALT_INV_ram~51_q\ <= NOT \MEMORIA_DADOS|ram~51_q\;
\MEMORIA_DADOS|ALT_INV_ram~611_combout\ <= NOT \MEMORIA_DADOS|ram~611_combout\;
\MEMORIA_DADOS|ALT_INV_ram~43_q\ <= NOT \MEMORIA_DADOS|ram~43_q\;
\MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \MEMORIA_DADOS|ram~35_q\;
\MEMORIA_DADOS|ALT_INV_ram~27_q\ <= NOT \MEMORIA_DADOS|ram~27_q\;
\MEMORIA_DADOS|ALT_INV_ram~19_q\ <= NOT \MEMORIA_DADOS|ram~19_q\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~2_combout\;
\MEMORIA_DADOS|ALT_INV_ram~610_combout\ <= NOT \MEMORIA_DADOS|ram~610_combout\;
\MEMORIA_DADOS|ALT_INV_ram~609_combout\ <= NOT \MEMORIA_DADOS|ram~609_combout\;
\MEMORIA_DADOS|ALT_INV_ram~608_combout\ <= NOT \MEMORIA_DADOS|ram~608_combout\;
\MEMORIA_DADOS|ALT_INV_ram~522_q\ <= NOT \MEMORIA_DADOS|ram~522_q\;
\MEMORIA_DADOS|ALT_INV_ram~394_q\ <= NOT \MEMORIA_DADOS|ram~394_q\;
\MEMORIA_DADOS|ALT_INV_ram~458_q\ <= NOT \MEMORIA_DADOS|ram~458_q\;
\MEMORIA_DADOS|ALT_INV_ram~330_q\ <= NOT \MEMORIA_DADOS|ram~330_q\;
\MEMORIA_DADOS|ALT_INV_ram~607_combout\ <= NOT \MEMORIA_DADOS|ram~607_combout\;
\MEMORIA_DADOS|ALT_INV_ram~514_q\ <= NOT \MEMORIA_DADOS|ram~514_q\;
\MEMORIA_DADOS|ALT_INV_ram~386_q\ <= NOT \MEMORIA_DADOS|ram~386_q\;
\MEMORIA_DADOS|ALT_INV_ram~450_q\ <= NOT \MEMORIA_DADOS|ram~450_q\;
\MEMORIA_DADOS|ALT_INV_ram~322_q\ <= NOT \MEMORIA_DADOS|ram~322_q\;
\MEMORIA_DADOS|ALT_INV_ram~606_combout\ <= NOT \MEMORIA_DADOS|ram~606_combout\;
\MEMORIA_DADOS|ALT_INV_ram~490_q\ <= NOT \MEMORIA_DADOS|ram~490_q\;
\MEMORIA_DADOS|ALT_INV_ram~362_q\ <= NOT \MEMORIA_DADOS|ram~362_q\;
\MEMORIA_DADOS|ALT_INV_ram~426_q\ <= NOT \MEMORIA_DADOS|ram~426_q\;
\MEMORIA_DADOS|ALT_INV_ram~298_q\ <= NOT \MEMORIA_DADOS|ram~298_q\;
\MEMORIA_DADOS|ALT_INV_ram~605_combout\ <= NOT \MEMORIA_DADOS|ram~605_combout\;
\MEMORIA_DADOS|ALT_INV_ram~482_q\ <= NOT \MEMORIA_DADOS|ram~482_q\;
\MEMORIA_DADOS|ALT_INV_ram~354_q\ <= NOT \MEMORIA_DADOS|ram~354_q\;
\MEMORIA_DADOS|ALT_INV_ram~418_q\ <= NOT \MEMORIA_DADOS|ram~418_q\;
\MEMORIA_DADOS|ALT_INV_ram~290_q\ <= NOT \MEMORIA_DADOS|ram~290_q\;
\MEMORIA_DADOS|ALT_INV_ram~604_combout\ <= NOT \MEMORIA_DADOS|ram~604_combout\;
\MEMORIA_DADOS|ALT_INV_ram~603_combout\ <= NOT \MEMORIA_DADOS|ram~603_combout\;
\MEMORIA_DADOS|ALT_INV_ram~266_q\ <= NOT \MEMORIA_DADOS|ram~266_q\;
\MEMORIA_DADOS|ALT_INV_ram~234_q\ <= NOT \MEMORIA_DADOS|ram~234_q\;
\MEMORIA_DADOS|ALT_INV_ram~138_q\ <= NOT \MEMORIA_DADOS|ram~138_q\;
\MEMORIA_DADOS|ALT_INV_ram~106_q\ <= NOT \MEMORIA_DADOS|ram~106_q\;
\MEMORIA_DADOS|ALT_INV_ram~602_combout\ <= NOT \MEMORIA_DADOS|ram~602_combout\;
\MEMORIA_DADOS|ALT_INV_ram~258_q\ <= NOT \MEMORIA_DADOS|ram~258_q\;
\MEMORIA_DADOS|ALT_INV_ram~226_q\ <= NOT \MEMORIA_DADOS|ram~226_q\;
\MEMORIA_DADOS|ALT_INV_ram~130_q\ <= NOT \MEMORIA_DADOS|ram~130_q\;
\MEMORIA_DADOS|ALT_INV_ram~98_q\ <= NOT \MEMORIA_DADOS|ram~98_q\;
\MEMORIA_DADOS|ALT_INV_ram~601_combout\ <= NOT \MEMORIA_DADOS|ram~601_combout\;
\MEMORIA_DADOS|ALT_INV_ram~202_q\ <= NOT \MEMORIA_DADOS|ram~202_q\;
\MEMORIA_DADOS|ALT_INV_ram~170_q\ <= NOT \MEMORIA_DADOS|ram~170_q\;
\MEMORIA_DADOS|ALT_INV_ram~74_q\ <= NOT \MEMORIA_DADOS|ram~74_q\;
\MEMORIA_DADOS|ALT_INV_ram~42_q\ <= NOT \MEMORIA_DADOS|ram~42_q\;
\MEMORIA_DADOS|ALT_INV_ram~600_combout\ <= NOT \MEMORIA_DADOS|ram~600_combout\;
\MEMORIA_DADOS|ALT_INV_ram~194_q\ <= NOT \MEMORIA_DADOS|ram~194_q\;
\MEMORIA_DADOS|ALT_INV_ram~162_q\ <= NOT \MEMORIA_DADOS|ram~162_q\;
\MEMORIA_DADOS|ALT_INV_ram~66_q\ <= NOT \MEMORIA_DADOS|ram~66_q\;
\MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \MEMORIA_DADOS|ram~34_q\;
\MEMORIA_DADOS|ALT_INV_ram~599_combout\ <= NOT \MEMORIA_DADOS|ram~599_combout\;
\MEMORIA_DADOS|ALT_INV_ram~598_combout\ <= NOT \MEMORIA_DADOS|ram~598_combout\;
\MEMORIA_DADOS|ALT_INV_ram~506_q\ <= NOT \MEMORIA_DADOS|ram~506_q\;
\MEMORIA_DADOS|ALT_INV_ram~498_q\ <= NOT \MEMORIA_DADOS|ram~498_q\;
\MEMORIA_DADOS|ALT_INV_ram~378_q\ <= NOT \MEMORIA_DADOS|ram~378_q\;
\MEMORIA_DADOS|ALT_INV_ram~370_q\ <= NOT \MEMORIA_DADOS|ram~370_q\;
\MEMORIA_DADOS|ALT_INV_ram~597_combout\ <= NOT \MEMORIA_DADOS|ram~597_combout\;
\MEMORIA_DADOS|ALT_INV_ram~474_q\ <= NOT \MEMORIA_DADOS|ram~474_q\;
\MEMORIA_DADOS|ALT_INV_ram~466_q\ <= NOT \MEMORIA_DADOS|ram~466_q\;
\MEMORIA_DADOS|ALT_INV_ram~346_q\ <= NOT \MEMORIA_DADOS|ram~346_q\;
\MEMORIA_DADOS|ALT_INV_ram~338_q\ <= NOT \MEMORIA_DADOS|ram~338_q\;
\MEMORIA_DADOS|ALT_INV_ram~596_combout\ <= NOT \MEMORIA_DADOS|ram~596_combout\;
\MEMORIA_DADOS|ALT_INV_ram~442_q\ <= NOT \MEMORIA_DADOS|ram~442_q\;
\MEMORIA_DADOS|ALT_INV_ram~434_q\ <= NOT \MEMORIA_DADOS|ram~434_q\;
\MEMORIA_DADOS|ALT_INV_ram~314_q\ <= NOT \MEMORIA_DADOS|ram~314_q\;
\MEMORIA_DADOS|ALT_INV_ram~306_q\ <= NOT \MEMORIA_DADOS|ram~306_q\;
\MEMORIA_DADOS|ALT_INV_ram~595_combout\ <= NOT \MEMORIA_DADOS|ram~595_combout\;
\MEMORIA_DADOS|ALT_INV_ram~410_q\ <= NOT \MEMORIA_DADOS|ram~410_q\;
\MEMORIA_DADOS|ALT_INV_ram~402_q\ <= NOT \MEMORIA_DADOS|ram~402_q\;
\MEMORIA_DADOS|ALT_INV_ram~282_q\ <= NOT \MEMORIA_DADOS|ram~282_q\;
\MEMORIA_DADOS|ALT_INV_ram~274_q\ <= NOT \MEMORIA_DADOS|ram~274_q\;
\MEMORIA_DADOS|ALT_INV_ram~594_combout\ <= NOT \MEMORIA_DADOS|ram~594_combout\;
\MEMORIA_DADOS|ALT_INV_ram~593_combout\ <= NOT \MEMORIA_DADOS|ram~593_combout\;
\MEMORIA_DADOS|ALT_INV_ram~250_q\ <= NOT \MEMORIA_DADOS|ram~250_q\;
\MEMORIA_DADOS|ALT_INV_ram~122_q\ <= NOT \MEMORIA_DADOS|ram~122_q\;
\MEMORIA_DADOS|ALT_INV_ram~186_q\ <= NOT \MEMORIA_DADOS|ram~186_q\;
\MEMORIA_DADOS|ALT_INV_ram~58_q\ <= NOT \MEMORIA_DADOS|ram~58_q\;
\MEMORIA_DADOS|ALT_INV_ram~592_combout\ <= NOT \MEMORIA_DADOS|ram~592_combout\;
\MEMORIA_DADOS|ALT_INV_ram~242_q\ <= NOT \MEMORIA_DADOS|ram~242_q\;
\MEMORIA_DADOS|ALT_INV_ram~114_q\ <= NOT \MEMORIA_DADOS|ram~114_q\;
\MEMORIA_DADOS|ALT_INV_ram~178_q\ <= NOT \MEMORIA_DADOS|ram~178_q\;
\MEMORIA_DADOS|ALT_INV_ram~50_q\ <= NOT \MEMORIA_DADOS|ram~50_q\;
\MEMORIA_DADOS|ALT_INV_ram~591_combout\ <= NOT \MEMORIA_DADOS|ram~591_combout\;
\MEMORIA_DADOS|ALT_INV_ram~218_q\ <= NOT \MEMORIA_DADOS|ram~218_q\;
\MEMORIA_DADOS|ALT_INV_ram~90_q\ <= NOT \MEMORIA_DADOS|ram~90_q\;
\MEMORIA_DADOS|ALT_INV_ram~154_q\ <= NOT \MEMORIA_DADOS|ram~154_q\;
\MEMORIA_DADOS|ALT_INV_ram~26_q\ <= NOT \MEMORIA_DADOS|ram~26_q\;
\MEMORIA_DADOS|ALT_INV_ram~590_combout\ <= NOT \MEMORIA_DADOS|ram~590_combout\;
\MEMORIA_DADOS|ALT_INV_ram~210_q\ <= NOT \MEMORIA_DADOS|ram~210_q\;
\MEMORIA_DADOS|ALT_INV_ram~82_q\ <= NOT \MEMORIA_DADOS|ram~82_q\;
\MEMORIA_DADOS|ALT_INV_ram~146_q\ <= NOT \MEMORIA_DADOS|ram~146_q\;
\MEMORIA_DADOS|ALT_INV_ram~18_q\ <= NOT \MEMORIA_DADOS|ram~18_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~1_combout\;
\MEMORIA_DADOS|ALT_INV_ram~589_combout\ <= NOT \MEMORIA_DADOS|ram~589_combout\;
\MEMORIA_DADOS|ALT_INV_ram~588_combout\ <= NOT \MEMORIA_DADOS|ram~588_combout\;
\MEMORIA_DADOS|ALT_INV_ram~587_combout\ <= NOT \MEMORIA_DADOS|ram~587_combout\;
\MEMORIA_DADOS|ALT_INV_ram~521_q\ <= NOT \MEMORIA_DADOS|ram~521_q\;
\MEMORIA_DADOS|ALT_INV_ram~265_q\ <= NOT \MEMORIA_DADOS|ram~265_q\;
\MEMORIA_DADOS|ALT_INV_ram~505_q\ <= NOT \MEMORIA_DADOS|ram~505_q\;
\MEMORIA_DADOS|ALT_INV_ram~249_q\ <= NOT \MEMORIA_DADOS|ram~249_q\;
\MEMORIA_DADOS|ALT_INV_ram~586_combout\ <= NOT \MEMORIA_DADOS|ram~586_combout\;
\MEMORIA_DADOS|ALT_INV_ram~457_q\ <= NOT \MEMORIA_DADOS|ram~457_q\;
\MEMORIA_DADOS|ALT_INV_ram~201_q\ <= NOT \MEMORIA_DADOS|ram~201_q\;
\MEMORIA_DADOS|ALT_INV_ram~441_q\ <= NOT \MEMORIA_DADOS|ram~441_q\;
\MEMORIA_DADOS|ALT_INV_ram~185_q\ <= NOT \MEMORIA_DADOS|ram~185_q\;
\MEMORIA_DADOS|ALT_INV_ram~585_combout\ <= NOT \MEMORIA_DADOS|ram~585_combout\;
\MEMORIA_DADOS|ALT_INV_ram~393_q\ <= NOT \MEMORIA_DADOS|ram~393_q\;
\MEMORIA_DADOS|ALT_INV_ram~137_q\ <= NOT \MEMORIA_DADOS|ram~137_q\;
\MEMORIA_DADOS|ALT_INV_ram~377_q\ <= NOT \MEMORIA_DADOS|ram~377_q\;
\MEMORIA_DADOS|ALT_INV_ram~121_q\ <= NOT \MEMORIA_DADOS|ram~121_q\;
\MEMORIA_DADOS|ALT_INV_ram~584_combout\ <= NOT \MEMORIA_DADOS|ram~584_combout\;
\MEMORIA_DADOS|ALT_INV_ram~329_q\ <= NOT \MEMORIA_DADOS|ram~329_q\;
\MEMORIA_DADOS|ALT_INV_ram~73_q\ <= NOT \MEMORIA_DADOS|ram~73_q\;
\MEMORIA_DADOS|ALT_INV_ram~313_q\ <= NOT \MEMORIA_DADOS|ram~313_q\;
\MEMORIA_DADOS|ALT_INV_ram~57_q\ <= NOT \MEMORIA_DADOS|ram~57_q\;
\MEMORIA_DADOS|ALT_INV_ram~583_combout\ <= NOT \MEMORIA_DADOS|ram~583_combout\;
\MEMORIA_DADOS|ALT_INV_ram~582_combout\ <= NOT \MEMORIA_DADOS|ram~582_combout\;
\MEMORIA_DADOS|ALT_INV_ram~489_q\ <= NOT \MEMORIA_DADOS|ram~489_q\;
\MEMORIA_DADOS|ALT_INV_ram~233_q\ <= NOT \MEMORIA_DADOS|ram~233_q\;
\MEMORIA_DADOS|ALT_INV_ram~361_q\ <= NOT \MEMORIA_DADOS|ram~361_q\;
\MEMORIA_DADOS|ALT_INV_ram~105_q\ <= NOT \MEMORIA_DADOS|ram~105_q\;
\MEMORIA_DADOS|ALT_INV_ram~581_combout\ <= NOT \MEMORIA_DADOS|ram~581_combout\;
\MEMORIA_DADOS|ALT_INV_ram~473_q\ <= NOT \MEMORIA_DADOS|ram~473_q\;
\MEMORIA_DADOS|ALT_INV_ram~217_q\ <= NOT \MEMORIA_DADOS|ram~217_q\;
\MEMORIA_DADOS|ALT_INV_ram~345_q\ <= NOT \MEMORIA_DADOS|ram~345_q\;
\MEMORIA_DADOS|ALT_INV_ram~89_q\ <= NOT \MEMORIA_DADOS|ram~89_q\;
\MEMORIA_DADOS|ALT_INV_ram~580_combout\ <= NOT \MEMORIA_DADOS|ram~580_combout\;
\MEMORIA_DADOS|ALT_INV_ram~425_q\ <= NOT \MEMORIA_DADOS|ram~425_q\;
\MEMORIA_DADOS|ALT_INV_ram~169_q\ <= NOT \MEMORIA_DADOS|ram~169_q\;
\MEMORIA_DADOS|ALT_INV_ram~297_q\ <= NOT \MEMORIA_DADOS|ram~297_q\;
\MEMORIA_DADOS|ALT_INV_ram~41_q\ <= NOT \MEMORIA_DADOS|ram~41_q\;
\MEMORIA_DADOS|ALT_INV_ram~579_combout\ <= NOT \MEMORIA_DADOS|ram~579_combout\;
\MEMORIA_DADOS|ALT_INV_ram~409_q\ <= NOT \MEMORIA_DADOS|ram~409_q\;
\MEMORIA_DADOS|ALT_INV_ram~153_q\ <= NOT \MEMORIA_DADOS|ram~153_q\;
\MEMORIA_DADOS|ALT_INV_ram~281_q\ <= NOT \MEMORIA_DADOS|ram~281_q\;
\MEMORIA_DADOS|ALT_INV_ram~25_q\ <= NOT \MEMORIA_DADOS|ram~25_q\;
\MEMORIA_DADOS|ALT_INV_ram~578_combout\ <= NOT \MEMORIA_DADOS|ram~578_combout\;
\MEMORIA_DADOS|ALT_INV_ram~577_combout\ <= NOT \MEMORIA_DADOS|ram~577_combout\;
\MEMORIA_DADOS|ALT_INV_ram~513_q\ <= NOT \MEMORIA_DADOS|ram~513_q\;
\MEMORIA_DADOS|ALT_INV_ram~257_q\ <= NOT \MEMORIA_DADOS|ram~257_q\;
\MEMORIA_DADOS|ALT_INV_ram~497_q\ <= NOT \MEMORIA_DADOS|ram~497_q\;
\MEMORIA_DADOS|ALT_INV_ram~241_q\ <= NOT \MEMORIA_DADOS|ram~241_q\;
\MEMORIA_DADOS|ALT_INV_ram~576_combout\ <= NOT \MEMORIA_DADOS|ram~576_combout\;
\MEMORIA_DADOS|ALT_INV_ram~385_q\ <= NOT \MEMORIA_DADOS|ram~385_q\;
\MEMORIA_DADOS|ALT_INV_ram~129_q\ <= NOT \MEMORIA_DADOS|ram~129_q\;
\MEMORIA_DADOS|ALT_INV_ram~369_q\ <= NOT \MEMORIA_DADOS|ram~369_q\;
\MEMORIA_DADOS|ALT_INV_ram~113_q\ <= NOT \MEMORIA_DADOS|ram~113_q\;
\MEMORIA_DADOS|ALT_INV_ram~575_combout\ <= NOT \MEMORIA_DADOS|ram~575_combout\;
\MEMORIA_DADOS|ALT_INV_ram~449_q\ <= NOT \MEMORIA_DADOS|ram~449_q\;
\MEMORIA_DADOS|ALT_INV_ram~193_q\ <= NOT \MEMORIA_DADOS|ram~193_q\;
\MEMORIA_DADOS|ALT_INV_ram~433_q\ <= NOT \MEMORIA_DADOS|ram~433_q\;
\MEMORIA_DADOS|ALT_INV_ram~177_q\ <= NOT \MEMORIA_DADOS|ram~177_q\;
\MEMORIA_DADOS|ALT_INV_ram~574_combout\ <= NOT \MEMORIA_DADOS|ram~574_combout\;
\MEMORIA_DADOS|ALT_INV_ram~321_q\ <= NOT \MEMORIA_DADOS|ram~321_q\;
\MEMORIA_DADOS|ALT_INV_ram~65_q\ <= NOT \MEMORIA_DADOS|ram~65_q\;
\MEMORIA_DADOS|ALT_INV_ram~305_q\ <= NOT \MEMORIA_DADOS|ram~305_q\;
\MEMORIA_DADOS|ALT_INV_ram~49_q\ <= NOT \MEMORIA_DADOS|ram~49_q\;
\MEMORIA_DADOS|ALT_INV_ram~573_combout\ <= NOT \MEMORIA_DADOS|ram~573_combout\;
\MEMORIA_DADOS|ALT_INV_ram~572_combout\ <= NOT \MEMORIA_DADOS|ram~572_combout\;
\MEMORIA_DADOS|ALT_INV_ram~481_q\ <= NOT \MEMORIA_DADOS|ram~481_q\;
\MEMORIA_DADOS|ALT_INV_ram~225_q\ <= NOT \MEMORIA_DADOS|ram~225_q\;
\MEMORIA_DADOS|ALT_INV_ram~465_q\ <= NOT \MEMORIA_DADOS|ram~465_q\;
\MEMORIA_DADOS|ALT_INV_ram~209_q\ <= NOT \MEMORIA_DADOS|ram~209_q\;
\MEMORIA_DADOS|ALT_INV_ram~571_combout\ <= NOT \MEMORIA_DADOS|ram~571_combout\;
\MEMORIA_DADOS|ALT_INV_ram~353_q\ <= NOT \MEMORIA_DADOS|ram~353_q\;
\MEMORIA_DADOS|ALT_INV_ram~97_q\ <= NOT \MEMORIA_DADOS|ram~97_q\;
\MEMORIA_DADOS|ALT_INV_ram~337_q\ <= NOT \MEMORIA_DADOS|ram~337_q\;
\MEMORIA_DADOS|ALT_INV_ram~81_q\ <= NOT \MEMORIA_DADOS|ram~81_q\;
\MEMORIA_DADOS|ALT_INV_ram~570_combout\ <= NOT \MEMORIA_DADOS|ram~570_combout\;
\MEMORIA_DADOS|ALT_INV_ram~417_q\ <= NOT \MEMORIA_DADOS|ram~417_q\;
\MEMORIA_DADOS|ALT_INV_ram~161_q\ <= NOT \MEMORIA_DADOS|ram~161_q\;
\MEMORIA_DADOS|ALT_INV_ram~401_q\ <= NOT \MEMORIA_DADOS|ram~401_q\;
\MEMORIA_DADOS|ALT_INV_ram~145_q\ <= NOT \MEMORIA_DADOS|ram~145_q\;
\MEMORIA_DADOS|ALT_INV_ram~569_combout\ <= NOT \MEMORIA_DADOS|ram~569_combout\;
\MEMORIA_DADOS|ALT_INV_ram~289_q\ <= NOT \MEMORIA_DADOS|ram~289_q\;
\MEMORIA_DADOS|ALT_INV_ram~33_q\ <= NOT \MEMORIA_DADOS|ram~33_q\;
\MEMORIA_DADOS|ALT_INV_ram~273_q\ <= NOT \MEMORIA_DADOS|ram~273_q\;
\MEMORIA_DADOS|ALT_INV_ram~17_q\ <= NOT \MEMORIA_DADOS|ram~17_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~568_combout\ <= NOT \MEMORIA_DADOS|ram~568_combout\;
\MEMORIA_DADOS|ALT_INV_ram~567_combout\ <= NOT \MEMORIA_DADOS|ram~567_combout\;
\MEMORIA_DADOS|ALT_INV_ram~566_combout\ <= NOT \MEMORIA_DADOS|ram~566_combout\;
\MEMORIA_DADOS|ALT_INV_ram~520_q\ <= NOT \MEMORIA_DADOS|ram~520_q\;
\MEMORIA_DADOS|ALT_INV_ram~512_q\ <= NOT \MEMORIA_DADOS|ram~512_q\;
\MEMORIA_DADOS|ALT_INV_ram~488_q\ <= NOT \MEMORIA_DADOS|ram~488_q\;
\MEMORIA_DADOS|ALT_INV_ram~480_q\ <= NOT \MEMORIA_DADOS|ram~480_q\;
\MEMORIA_DADOS|ALT_INV_ram~565_combout\ <= NOT \MEMORIA_DADOS|ram~565_combout\;
\MEMORIA_DADOS|ALT_INV_ram~504_q\ <= NOT \MEMORIA_DADOS|ram~504_q\;
\MEMORIA_DADOS|ALT_INV_ram~496_q\ <= NOT \MEMORIA_DADOS|ram~496_q\;
\MEMORIA_DADOS|ALT_INV_ram~472_q\ <= NOT \MEMORIA_DADOS|ram~472_q\;
\MEMORIA_DADOS|ALT_INV_ram~464_q\ <= NOT \MEMORIA_DADOS|ram~464_q\;
\MEMORIA_DADOS|ALT_INV_ram~564_combout\ <= NOT \MEMORIA_DADOS|ram~564_combout\;
\MEMORIA_DADOS|ALT_INV_ram~456_q\ <= NOT \MEMORIA_DADOS|ram~456_q\;
\MEMORIA_DADOS|ALT_INV_ram~448_q\ <= NOT \MEMORIA_DADOS|ram~448_q\;
\MEMORIA_DADOS|ALT_INV_ram~424_q\ <= NOT \MEMORIA_DADOS|ram~424_q\;
\MEMORIA_DADOS|ALT_INV_ram~416_q\ <= NOT \MEMORIA_DADOS|ram~416_q\;
\MEMORIA_DADOS|ALT_INV_ram~563_combout\ <= NOT \MEMORIA_DADOS|ram~563_combout\;
\MEMORIA_DADOS|ALT_INV_ram~440_q\ <= NOT \MEMORIA_DADOS|ram~440_q\;
\MEMORIA_DADOS|ALT_INV_ram~432_q\ <= NOT \MEMORIA_DADOS|ram~432_q\;
\MEMORIA_DADOS|ALT_INV_ram~408_q\ <= NOT \MEMORIA_DADOS|ram~408_q\;
\MEMORIA_DADOS|ALT_INV_ram~400_q\ <= NOT \MEMORIA_DADOS|ram~400_q\;
\MEMORIA_DADOS|ALT_INV_ram~562_combout\ <= NOT \MEMORIA_DADOS|ram~562_combout\;
\MEMORIA_DADOS|ALT_INV_ram~561_combout\ <= NOT \MEMORIA_DADOS|ram~561_combout\;
\MEMORIA_DADOS|ALT_INV_ram~264_q\ <= NOT \MEMORIA_DADOS|ram~264_q\;
\MEMORIA_DADOS|ALT_INV_ram~256_q\ <= NOT \MEMORIA_DADOS|ram~256_q\;
\MEMORIA_DADOS|ALT_INV_ram~232_q\ <= NOT \MEMORIA_DADOS|ram~232_q\;
\MEMORIA_DADOS|ALT_INV_ram~224_q\ <= NOT \MEMORIA_DADOS|ram~224_q\;
\MEMORIA_DADOS|ALT_INV_ram~560_combout\ <= NOT \MEMORIA_DADOS|ram~560_combout\;
\MEMORIA_DADOS|ALT_INV_ram~248_q\ <= NOT \MEMORIA_DADOS|ram~248_q\;
\MEMORIA_DADOS|ALT_INV_ram~240_q\ <= NOT \MEMORIA_DADOS|ram~240_q\;
\MEMORIA_DADOS|ALT_INV_ram~216_q\ <= NOT \MEMORIA_DADOS|ram~216_q\;
\MEMORIA_DADOS|ALT_INV_ram~208_q\ <= NOT \MEMORIA_DADOS|ram~208_q\;
\MEMORIA_DADOS|ALT_INV_ram~559_combout\ <= NOT \MEMORIA_DADOS|ram~559_combout\;
\MEMORIA_DADOS|ALT_INV_ram~200_q\ <= NOT \MEMORIA_DADOS|ram~200_q\;
\MEMORIA_DADOS|ALT_INV_ram~192_q\ <= NOT \MEMORIA_DADOS|ram~192_q\;
\MEMORIA_DADOS|ALT_INV_ram~168_q\ <= NOT \MEMORIA_DADOS|ram~168_q\;
\MEMORIA_DADOS|ALT_INV_ram~160_q\ <= NOT \MEMORIA_DADOS|ram~160_q\;
\MEMORIA_DADOS|ALT_INV_ram~558_combout\ <= NOT \MEMORIA_DADOS|ram~558_combout\;
\MEMORIA_DADOS|ALT_INV_ram~184_q\ <= NOT \MEMORIA_DADOS|ram~184_q\;
\MEMORIA_DADOS|ALT_INV_ram~176_q\ <= NOT \MEMORIA_DADOS|ram~176_q\;
\MEMORIA_DADOS|ALT_INV_ram~152_q\ <= NOT \MEMORIA_DADOS|ram~152_q\;
\MEMORIA_DADOS|ALT_INV_ram~144_q\ <= NOT \MEMORIA_DADOS|ram~144_q\;
\MEMORIA_DADOS|ALT_INV_ram~557_combout\ <= NOT \MEMORIA_DADOS|ram~557_combout\;
\MEMORIA_DADOS|ALT_INV_ram~556_combout\ <= NOT \MEMORIA_DADOS|ram~556_combout\;
\MEMORIA_DADOS|ALT_INV_ram~392_q\ <= NOT \MEMORIA_DADOS|ram~392_q\;
\MEMORIA_DADOS|ALT_INV_ram~376_q\ <= NOT \MEMORIA_DADOS|ram~376_q\;
\MEMORIA_DADOS|ALT_INV_ram~328_q\ <= NOT \MEMORIA_DADOS|ram~328_q\;
\MEMORIA_DADOS|ALT_INV_ram~312_q\ <= NOT \MEMORIA_DADOS|ram~312_q\;
\MEMORIA_DADOS|ALT_INV_ram~555_combout\ <= NOT \MEMORIA_DADOS|ram~555_combout\;
\MEMORIA_DADOS|ALT_INV_ram~384_q\ <= NOT \MEMORIA_DADOS|ram~384_q\;
\MEMORIA_DADOS|ALT_INV_ram~368_q\ <= NOT \MEMORIA_DADOS|ram~368_q\;
\MEMORIA_DADOS|ALT_INV_ram~320_q\ <= NOT \MEMORIA_DADOS|ram~320_q\;
\MEMORIA_DADOS|ALT_INV_ram~304_q\ <= NOT \MEMORIA_DADOS|ram~304_q\;
\MEMORIA_DADOS|ALT_INV_ram~554_combout\ <= NOT \MEMORIA_DADOS|ram~554_combout\;
\MEMORIA_DADOS|ALT_INV_ram~360_q\ <= NOT \MEMORIA_DADOS|ram~360_q\;
\MEMORIA_DADOS|ALT_INV_ram~344_q\ <= NOT \MEMORIA_DADOS|ram~344_q\;
\MEMORIA_DADOS|ALT_INV_ram~296_q\ <= NOT \MEMORIA_DADOS|ram~296_q\;
\MEMORIA_DADOS|ALT_INV_ram~280_q\ <= NOT \MEMORIA_DADOS|ram~280_q\;
\MEMORIA_DADOS|ALT_INV_ram~553_combout\ <= NOT \MEMORIA_DADOS|ram~553_combout\;
\MEMORIA_DADOS|ALT_INV_ram~352_q\ <= NOT \MEMORIA_DADOS|ram~352_q\;
\MEMORIA_DADOS|ALT_INV_ram~336_q\ <= NOT \MEMORIA_DADOS|ram~336_q\;
\MEMORIA_DADOS|ALT_INV_ram~288_q\ <= NOT \MEMORIA_DADOS|ram~288_q\;
\MEMORIA_DADOS|ALT_INV_ram~272_q\ <= NOT \MEMORIA_DADOS|ram~272_q\;
\MEMORIA_DADOS|ALT_INV_ram~552_combout\ <= NOT \MEMORIA_DADOS|ram~552_combout\;
\MEMORIA_DADOS|ALT_INV_ram~551_combout\ <= NOT \MEMORIA_DADOS|ram~551_combout\;
\MEMORIA_DADOS|ALT_INV_ram~136_q\ <= NOT \MEMORIA_DADOS|ram~136_q\;
\MEMORIA_DADOS|ALT_INV_ram~128_q\ <= NOT \MEMORIA_DADOS|ram~128_q\;
\MEMORIA_DADOS|ALT_INV_ram~104_q\ <= NOT \MEMORIA_DADOS|ram~104_q\;
\MEMORIA_DADOS|ALT_INV_ram~96_q\ <= NOT \MEMORIA_DADOS|ram~96_q\;
\MEMORIA_DADOS|ALT_INV_ram~550_combout\ <= NOT \MEMORIA_DADOS|ram~550_combout\;
\MEMORIA_DADOS|ALT_INV_ram~120_q\ <= NOT \MEMORIA_DADOS|ram~120_q\;
\MEMORIA_DADOS|ALT_INV_ram~112_q\ <= NOT \MEMORIA_DADOS|ram~112_q\;
\MEMORIA_DADOS|ALT_INV_ram~88_q\ <= NOT \MEMORIA_DADOS|ram~88_q\;
\MEMORIA_DADOS|ALT_INV_ram~80_q\ <= NOT \MEMORIA_DADOS|ram~80_q\;
\MEMORIA_DADOS|ALT_INV_ram~549_combout\ <= NOT \MEMORIA_DADOS|ram~549_combout\;
\MEMORIA_DADOS|ALT_INV_ram~72_q\ <= NOT \MEMORIA_DADOS|ram~72_q\;
\MEMORIA_DADOS|ALT_INV_ram~64_q\ <= NOT \MEMORIA_DADOS|ram~64_q\;
\MEMORIA_DADOS|ALT_INV_ram~40_q\ <= NOT \MEMORIA_DADOS|ram~40_q\;
\MEMORIA_DADOS|ALT_INV_ram~32_q\ <= NOT \MEMORIA_DADOS|ram~32_q\;
\MEMORIA_DADOS|ALT_INV_ram~548_combout\ <= NOT \MEMORIA_DADOS|ram~548_combout\;
\MEMORIA_DADOS|ALT_INV_ram~56_q\ <= NOT \MEMORIA_DADOS|ram~56_q\;
\MEMORIA_DADOS|ALT_INV_ram~48_q\ <= NOT \MEMORIA_DADOS|ram~48_q\;
\MEMORIA_DADOS|ALT_INV_ram~24_q\ <= NOT \MEMORIA_DADOS|ram~24_q\;
\MEMORIA_DADOS|ALT_INV_ram~16_q\ <= NOT \MEMORIA_DADOS|ram~16_q\;
\MEMORIA_DADOS|ALT_INV_dado_out~0_combout\ <= NOT \MEMORIA_DADOS|dado_out~0_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\;
\ALT_INV_Saida_Dados[0]~0_combout\ <= NOT \Saida_Dados[0]~0_combout\;
\FLIP_FLOP_DM|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_DM|DOUT~q\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~547_combout\ <= NOT \MEMORIA_DADOS|ram~547_combout\;
\MEMORIA_DADOS|ALT_INV_ram~546_combout\ <= NOT \MEMORIA_DADOS|ram~546_combout\;
\MEMORIA_DADOS|ALT_INV_ram~545_combout\ <= NOT \MEMORIA_DADOS|ram~545_combout\;
\MEMORIA_DADOS|ALT_INV_ram~519_q\ <= NOT \MEMORIA_DADOS|ram~519_q\;
\MEMORIA_DADOS|ALT_INV_ram~263_q\ <= NOT \MEMORIA_DADOS|ram~263_q\;
\MEMORIA_DADOS|ALT_INV_ram~455_q\ <= NOT \MEMORIA_DADOS|ram~455_q\;
\MEMORIA_DADOS|ALT_INV_ram~199_q\ <= NOT \MEMORIA_DADOS|ram~199_q\;
\MEMORIA_DADOS|ALT_INV_ram~544_combout\ <= NOT \MEMORIA_DADOS|ram~544_combout\;
\MEMORIA_DADOS|ALT_INV_ram~487_q\ <= NOT \MEMORIA_DADOS|ram~487_q\;
\MEMORIA_DADOS|ALT_INV_ram~231_q\ <= NOT \MEMORIA_DADOS|ram~231_q\;
\MEMORIA_DADOS|ALT_INV_ram~423_q\ <= NOT \MEMORIA_DADOS|ram~423_q\;
\MEMORIA_DADOS|ALT_INV_ram~167_q\ <= NOT \MEMORIA_DADOS|ram~167_q\;
\MEMORIA_DADOS|ALT_INV_ram~543_combout\ <= NOT \MEMORIA_DADOS|ram~543_combout\;
\MEMORIA_DADOS|ALT_INV_ram~391_q\ <= NOT \MEMORIA_DADOS|ram~391_q\;
\MEMORIA_DADOS|ALT_INV_ram~135_q\ <= NOT \MEMORIA_DADOS|ram~135_q\;
\MEMORIA_DADOS|ALT_INV_ram~327_q\ <= NOT \MEMORIA_DADOS|ram~327_q\;
\MEMORIA_DADOS|ALT_INV_ram~71_q\ <= NOT \MEMORIA_DADOS|ram~71_q\;
\MEMORIA_DADOS|ALT_INV_ram~542_combout\ <= NOT \MEMORIA_DADOS|ram~542_combout\;
\MEMORIA_DADOS|ALT_INV_ram~359_q\ <= NOT \MEMORIA_DADOS|ram~359_q\;
\MEMORIA_DADOS|ALT_INV_ram~103_q\ <= NOT \MEMORIA_DADOS|ram~103_q\;
\MEMORIA_DADOS|ALT_INV_ram~295_q\ <= NOT \MEMORIA_DADOS|ram~295_q\;
\MEMORIA_DADOS|ALT_INV_ram~39_q\ <= NOT \MEMORIA_DADOS|ram~39_q\;
\MEMORIA_DADOS|ALT_INV_ram~541_combout\ <= NOT \MEMORIA_DADOS|ram~541_combout\;
\MEMORIA_DADOS|ALT_INV_ram~540_combout\ <= NOT \MEMORIA_DADOS|ram~540_combout\;
\MEMORIA_DADOS|ALT_INV_ram~511_q\ <= NOT \MEMORIA_DADOS|ram~511_q\;
\MEMORIA_DADOS|ALT_INV_ram~255_q\ <= NOT \MEMORIA_DADOS|ram~255_q\;
\MEMORIA_DADOS|ALT_INV_ram~383_q\ <= NOT \MEMORIA_DADOS|ram~383_q\;
\MEMORIA_DADOS|ALT_INV_ram~127_q\ <= NOT \MEMORIA_DADOS|ram~127_q\;
\MEMORIA_DADOS|ALT_INV_ram~539_combout\ <= NOT \MEMORIA_DADOS|ram~539_combout\;
\MEMORIA_DADOS|ALT_INV_ram~479_q\ <= NOT \MEMORIA_DADOS|ram~479_q\;
\MEMORIA_DADOS|ALT_INV_ram~223_q\ <= NOT \MEMORIA_DADOS|ram~223_q\;
\MEMORIA_DADOS|ALT_INV_ram~351_q\ <= NOT \MEMORIA_DADOS|ram~351_q\;
\MEMORIA_DADOS|ALT_INV_ram~95_q\ <= NOT \MEMORIA_DADOS|ram~95_q\;
\MEMORIA_DADOS|ALT_INV_ram~538_combout\ <= NOT \MEMORIA_DADOS|ram~538_combout\;
\MEMORIA_DADOS|ALT_INV_ram~447_q\ <= NOT \MEMORIA_DADOS|ram~447_q\;
\MEMORIA_DADOS|ALT_INV_ram~191_q\ <= NOT \MEMORIA_DADOS|ram~191_q\;
\MEMORIA_DADOS|ALT_INV_ram~319_q\ <= NOT \MEMORIA_DADOS|ram~319_q\;
\MEMORIA_DADOS|ALT_INV_ram~63_q\ <= NOT \MEMORIA_DADOS|ram~63_q\;
\MEMORIA_DADOS|ALT_INV_ram~537_combout\ <= NOT \MEMORIA_DADOS|ram~537_combout\;
\MEMORIA_DADOS|ALT_INV_ram~415_q\ <= NOT \MEMORIA_DADOS|ram~415_q\;
\MEMORIA_DADOS|ALT_INV_ram~159_q\ <= NOT \MEMORIA_DADOS|ram~159_q\;
\MEMORIA_DADOS|ALT_INV_ram~287_q\ <= NOT \MEMORIA_DADOS|ram~287_q\;
\MEMORIA_DADOS|ALT_INV_ram~31_q\ <= NOT \MEMORIA_DADOS|ram~31_q\;
\MEMORIA_DADOS|ALT_INV_ram~536_combout\ <= NOT \MEMORIA_DADOS|ram~536_combout\;
\MEMORIA_DADOS|ALT_INV_ram~535_combout\ <= NOT \MEMORIA_DADOS|ram~535_combout\;
\MEMORIA_DADOS|ALT_INV_ram~503_q\ <= NOT \MEMORIA_DADOS|ram~503_q\;
\MEMORIA_DADOS|ALT_INV_ram~247_q\ <= NOT \MEMORIA_DADOS|ram~247_q\;
\MEMORIA_DADOS|ALT_INV_ram~375_q\ <= NOT \MEMORIA_DADOS|ram~375_q\;
\MEMORIA_DADOS|ALT_INV_ram~119_q\ <= NOT \MEMORIA_DADOS|ram~119_q\;
\MEMORIA_DADOS|ALT_INV_ram~534_combout\ <= NOT \MEMORIA_DADOS|ram~534_combout\;
\MEMORIA_DADOS|ALT_INV_ram~471_q\ <= NOT \MEMORIA_DADOS|ram~471_q\;
\MEMORIA_DADOS|ALT_INV_ram~215_q\ <= NOT \MEMORIA_DADOS|ram~215_q\;
\MEMORIA_DADOS|ALT_INV_ram~343_q\ <= NOT \MEMORIA_DADOS|ram~343_q\;
\MEMORIA_DADOS|ALT_INV_ram~87_q\ <= NOT \MEMORIA_DADOS|ram~87_q\;
\MEMORIA_DADOS|ALT_INV_ram~533_combout\ <= NOT \MEMORIA_DADOS|ram~533_combout\;
\MEMORIA_DADOS|ALT_INV_ram~439_q\ <= NOT \MEMORIA_DADOS|ram~439_q\;
\MEMORIA_DADOS|ALT_INV_ram~183_q\ <= NOT \MEMORIA_DADOS|ram~183_q\;
\MEMORIA_DADOS|ALT_INV_ram~311_q\ <= NOT \MEMORIA_DADOS|ram~311_q\;
\MEMORIA_DADOS|ALT_INV_ram~55_q\ <= NOT \MEMORIA_DADOS|ram~55_q\;
\MEMORIA_DADOS|ALT_INV_ram~532_combout\ <= NOT \MEMORIA_DADOS|ram~532_combout\;
\MEMORIA_DADOS|ALT_INV_ram~407_q\ <= NOT \MEMORIA_DADOS|ram~407_q\;
\MEMORIA_DADOS|ALT_INV_ram~151_q\ <= NOT \MEMORIA_DADOS|ram~151_q\;
\MEMORIA_DADOS|ALT_INV_ram~279_q\ <= NOT \MEMORIA_DADOS|ram~279_q\;
\MEMORIA_DADOS|ALT_INV_ram~23_q\ <= NOT \MEMORIA_DADOS|ram~23_q\;
\MEMORIA_DADOS|ALT_INV_ram~531_combout\ <= NOT \MEMORIA_DADOS|ram~531_combout\;
\MEMORIA_DADOS|ALT_INV_ram~530_combout\ <= NOT \MEMORIA_DADOS|ram~530_combout\;
\MEMORIA_DADOS|ALT_INV_ram~495_q\ <= NOT \MEMORIA_DADOS|ram~495_q\;
\MEMORIA_DADOS|ALT_INV_ram~239_q\ <= NOT \MEMORIA_DADOS|ram~239_q\;
\MEMORIA_DADOS|ALT_INV_ram~367_q\ <= NOT \MEMORIA_DADOS|ram~367_q\;
\MEMORIA_DADOS|ALT_INV_ram~111_q\ <= NOT \MEMORIA_DADOS|ram~111_q\;
\MEMORIA_DADOS|ALT_INV_ram~529_combout\ <= NOT \MEMORIA_DADOS|ram~529_combout\;
\MEMORIA_DADOS|ALT_INV_ram~463_q\ <= NOT \MEMORIA_DADOS|ram~463_q\;
\MEMORIA_DADOS|ALT_INV_ram~207_q\ <= NOT \MEMORIA_DADOS|ram~207_q\;
\MEMORIA_DADOS|ALT_INV_ram~335_q\ <= NOT \MEMORIA_DADOS|ram~335_q\;
\MEMORIA_DADOS|ALT_INV_ram~79_q\ <= NOT \MEMORIA_DADOS|ram~79_q\;
\MEMORIA_DADOS|ALT_INV_ram~528_combout\ <= NOT \MEMORIA_DADOS|ram~528_combout\;
\MEMORIA_DADOS|ALT_INV_ram~431_q\ <= NOT \MEMORIA_DADOS|ram~431_q\;
\MEMORIA_DADOS|ALT_INV_ram~175_q\ <= NOT \MEMORIA_DADOS|ram~175_q\;
\MEMORIA_DADOS|ALT_INV_ram~303_q\ <= NOT \MEMORIA_DADOS|ram~303_q\;
\MEMORIA_DADOS|ALT_INV_ram~47_q\ <= NOT \MEMORIA_DADOS|ram~47_q\;
\MEMORIA_DADOS|ALT_INV_ram~527_combout\ <= NOT \MEMORIA_DADOS|ram~527_combout\;
\MEMORIA_DADOS|ALT_INV_ram~399_q\ <= NOT \MEMORIA_DADOS|ram~399_q\;
\MEMORIA_DADOS|ALT_INV_ram~143_q\ <= NOT \MEMORIA_DADOS|ram~143_q\;
\MEMORIA_DADOS|ALT_INV_ram~271_q\ <= NOT \MEMORIA_DADOS|ram~271_q\;
\MEMORIA_DADOS|ALT_INV_ram~15_q\ <= NOT \MEMORIA_DADOS|ram~15_q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~27_combout\;
\CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\ <= NOT \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(8) <= NOT \CPU|REG_END_RET|DOUT\(8);
\MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~26_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(7) <= NOT \CPU|REG_END_RET|DOUT\(7);
\CPU|REG_END_RET|ALT_INV_DOUT\(6) <= NOT \CPU|REG_END_RET|DOUT\(6);
\MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~25_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(5) <= NOT \CPU|REG_END_RET|DOUT\(5);
\CPU|REG_END_RET|ALT_INV_DOUT\(4) <= NOT \CPU|REG_END_RET|DOUT\(4);
\CPU|REG_END_RET|ALT_INV_DOUT\(3) <= NOT \CPU|REG_END_RET|DOUT\(3);
\MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~24_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~23_combout\;
\CPU|REG_END_RET|ALT_INV_DOUT\(2) <= NOT \CPU|REG_END_RET|DOUT\(2);
\CPU|REG_END_RET|ALT_INV_DOUT\(1) <= NOT \CPU|REG_END_RET|DOUT\(1);
\CPU|REG_END_RET|ALT_INV_DOUT\(0) <= NOT \CPU|REG_END_RET|DOUT\(0);
\CPU|MUX2|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUX2|Equal1~0_combout\;
\CPU|MUX2|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX2|Equal2~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
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
\MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~0_combout\;
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
\ALT_INV_Saida_Dados[0]~3_combout\ <= NOT \Saida_Dados[0]~3_combout\;
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

-- Location: IOOBUF_X32_Y45_N93
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X34_Y45_N19
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X34_Y45_N53
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X54_Y15_N39
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

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: IOOBUF_X32_Y45_N59
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

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X22_Y45_N53
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

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X32_Y45_N42
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
	i => \CPU|REG1|DOUT\(6),
	devoe => ww_devoe,
	o => ww_REG_A(6));

-- Location: IOOBUF_X32_Y45_N76
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
	i => \REG_LEDR0a7|DOUT\(0),
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
	i => \REG_LEDR0a7|DOUT\(1),
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
	i => \REG_LEDR0a7|DOUT\(2),
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
	i => \REG_LEDR0a7|DOUT\(3),
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
	i => \REG_LEDR0a7|DOUT\(4),
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
	i => \REG_LEDR0a7|DOUT\(5),
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
	i => \REG_LEDR0a7|DOUT\(6),
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
	i => \REG_LEDR0a7|DOUT\(7),
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
	i => \FF_LEDR8|DOUT~q\,
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
	i => \FF_LEDR9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X28_Y7_N37
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X29_Y7_N25
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y7_N33
\CPU|SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~2\ ))
-- \CPU|SOMADOR|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|SOMADOR|Add0~2\,
	sumout => \CPU|SOMADOR|Add0~5_sumout\,
	cout => \CPU|SOMADOR|Add0~6\);

-- Location: MLABCELL_X34_Y7_N36
\CPU|SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~6\ ))
-- \CPU|SOMADOR|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|SOMADOR|Add0~6\,
	sumout => \CPU|SOMADOR|Add0~9_sumout\,
	cout => \CPU|SOMADOR|Add0~10\);

-- Location: MLABCELL_X34_Y7_N39
\CPU|SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOMADOR|Add0~10\ ))
-- \CPU|SOMADOR|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|SOMADOR|Add0~10\,
	sumout => \CPU|SOMADOR|Add0~13_sumout\,
	cout => \CPU|SOMADOR|Add0~14\);

-- Location: FF_X29_Y7_N28
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y8_N24
\MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~3_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\))))) # (\CPU|PC|DOUT\(2) & (((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010001000011110001000100011000000101000001100000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~3_combout\);

-- Location: LABCELL_X31_Y8_N51
\MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~6_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\)) ) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\CPU|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000101010100000101011110000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~6_combout\);

-- Location: LABCELL_X31_Y8_N9
\MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~7_combout\ = ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2)) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT\(2)) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~7_combout\);

-- Location: LABCELL_X31_Y8_N0
\CPU|DECODIFICADOR_INSTRUCAO|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\MEMORIA_INTRUCAO|memROM~3_combout\ & (!\MEMORIA_INTRUCAO|memROM~5_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & 
-- \CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\);

-- Location: FF_X34_Y7_N40
\CPU|REG_END_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~13_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(3));

-- Location: MLABCELL_X34_Y7_N45
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

-- Location: MLABCELL_X34_Y7_N48
\CPU|SOMADOR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|SOMADOR|Add0~22\ ))
-- \CPU|SOMADOR|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|SOMADOR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|SOMADOR|Add0~22\,
	sumout => \CPU|SOMADOR|Add0~25_sumout\,
	cout => \CPU|SOMADOR|Add0~26\);

-- Location: FF_X34_Y7_N49
\CPU|REG_END_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~25_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(6));

-- Location: FF_X28_Y7_N59
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X28_Y7_N17
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: MLABCELL_X28_Y7_N51
\MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~9_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\CPU|PC|DOUT[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_INTRUCAO|memROM~9_combout\);

-- Location: MLABCELL_X28_Y7_N9
\MEMORIA_INTRUCAO|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~25_combout\ = ( \MEMORIA_INTRUCAO|memROM~9_combout\ & ( (\MEMORIA_INTRUCAO|memROM~4_combout\ & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~25_combout\);

-- Location: MLABCELL_X28_Y7_N3
\CPU|MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~25_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (\CPU|SOMADOR|Add0~25_sumout\)) # (\CPU|MUX2|Equal2~0_combout\ & (((\CPU|REG_END_RET|DOUT\(6)) # (\CPU|MUX2|Equal1~0_combout\)))) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~25_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (\CPU|SOMADOR|Add0~25_sumout\)) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\ & \CPU|REG_END_RET|DOUT\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101001111110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SOMADOR|ALT_INV_Add0~25_sumout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|REG_END_RET|ALT_INV_DOUT\(6),
	datad => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\,
	combout => \CPU|MUX2|saida_MUX[6]~6_combout\);

-- Location: FF_X28_Y7_N4
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: MLABCELL_X34_Y7_N51
\CPU|SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~26\ ))
-- \CPU|SOMADOR|Add0~30\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|SOMADOR|Add0~26\,
	sumout => \CPU|SOMADOR|Add0~29_sumout\,
	cout => \CPU|SOMADOR|Add0~30\);

-- Location: FF_X34_Y7_N52
\CPU|REG_END_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~29_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(7));

-- Location: LABCELL_X29_Y7_N3
\CPU|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = ( \CPU|REG_END_RET|DOUT\(7) & ( (!\CPU|MUX2|Equal2~0_combout\ & ((\CPU|SOMADOR|Add0~29_sumout\))) # (\CPU|MUX2|Equal2~0_combout\ & (!\CPU|MUX2|Equal1~0_combout\)) ) ) # ( !\CPU|REG_END_RET|DOUT\(7) & ( 
-- (!\CPU|MUX2|Equal2~0_combout\ & \CPU|SOMADOR|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|REG_END_RET|ALT_INV_DOUT\(7),
	combout => \CPU|MUX2|saida_MUX[7]~7_combout\);

-- Location: FF_X29_Y7_N4
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N21
\MEMORIA_INTRUCAO|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~23_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~23_combout\);

-- Location: FF_X28_Y7_N5
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y7_N48
\MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~1_combout\ = ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[6]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~1_combout\);

-- Location: MLABCELL_X28_Y5_N18
\MEMORIA_INTRUCAO|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~24_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (\MEMORIA_INTRUCAO|memROM~23_combout\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~24_combout\);

-- Location: LABCELL_X29_Y7_N27
\CPU|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~13_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((\CPU|REG_END_RET|DOUT\(3))) # (\CPU|MUX2|Equal1~0_combout\))) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~13_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (!\CPU|MUX2|Equal1~0_combout\ & (\CPU|REG_END_RET|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|REG_END_RET|ALT_INV_DOUT\(3),
	datad => \CPU|SOMADOR|ALT_INV_Add0~13_sumout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \CPU|MUX2|saida_MUX[3]~3_combout\);

-- Location: FF_X29_Y7_N29
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: MLABCELL_X34_Y7_N42
\CPU|SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~14\ ))
-- \CPU|SOMADOR|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|SOMADOR|Add0~14\,
	sumout => \CPU|SOMADOR|Add0~17_sumout\,
	cout => \CPU|SOMADOR|Add0~18\);

-- Location: FF_X34_Y7_N46
\CPU|REG_END_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~21_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(5));

-- Location: FF_X28_Y7_N40
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X29_Y7_N42
\MEMORIA_INTRUCAO|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~33_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~33_combout\);

-- Location: LABCELL_X29_Y7_N30
\MEMORIA_INTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~15_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(4) & (\MEMORIA_INTRUCAO|memROM~33_combout\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(4) & (\MEMORIA_INTRUCAO|memROM~33_combout\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~33_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~15_combout\);

-- Location: LABCELL_X29_Y7_N0
\CPU|MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~21_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((\CPU|REG_END_RET|DOUT\(5))) # (\CPU|MUX2|Equal1~0_combout\))) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~21_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (!\CPU|MUX2|Equal1~0_combout\ & (\CPU|REG_END_RET|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|REG_END_RET|ALT_INV_DOUT\(5),
	datad => \CPU|SOMADOR|ALT_INV_Add0~21_sumout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \CPU|MUX2|saida_MUX[5]~5_combout\);

-- Location: FF_X28_Y7_N58
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: MLABCELL_X28_Y7_N45
\MEMORIA_INTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~11_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100000000000010110000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_INTRUCAO|memROM~11_combout\);

-- Location: LABCELL_X29_Y5_N3
\MEMORIA_INTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~12_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~12_combout\);

-- Location: MLABCELL_X34_Y7_N30
\CPU|SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|SOMADOR|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|SOMADOR|Add0~1_sumout\,
	cout => \CPU|SOMADOR|Add0~2\);

-- Location: FF_X34_Y7_N31
\CPU|REG_END_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~1_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(0));

-- Location: LABCELL_X29_Y7_N21
\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|REG_END_RET|DOUT\(0) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~1_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((!\CPU|MUX2|Equal1~0_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) # ( 
-- !\CPU|REG_END_RET|DOUT\(0) & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~1_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\CPU|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111110111010000111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~1_sumout\,
	datad => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|REG_END_RET|ALT_INV_DOUT\(0),
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

-- Location: FF_X28_Y7_N16
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X34_Y7_N34
\CPU|REG_END_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~5_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(1));

-- Location: LABCELL_X29_Y7_N48
\MEMORIA_INTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~16_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (\CPU|PC|DOUT[0]~DUPLICATE_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010000010000010101000001000001010100000100000101010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~16_combout\);

-- Location: LABCELL_X29_Y7_N18
\MEMORIA_INTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~13_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~13_combout\);

-- Location: LABCELL_X29_Y7_N57
\MEMORIA_INTRUCAO|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~17_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000000000110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~17_combout\);

-- Location: LABCELL_X29_Y7_N6
\MEMORIA_INTRUCAO|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~18_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\MEMORIA_INTRUCAO|memROM~16_combout\ & (\MEMORIA_INTRUCAO|memROM~13_combout\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\)) ) ) ) # ( 
-- !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\MEMORIA_INTRUCAO|memROM~16_combout\ & (\MEMORIA_INTRUCAO|memROM~13_combout\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\)) ) ) ) # ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (\MEMORIA_INTRUCAO|memROM~16_combout\ & (\MEMORIA_INTRUCAO|memROM~13_combout\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\)) ) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (((\MEMORIA_INTRUCAO|memROM~16_combout\ & \MEMORIA_INTRUCAO|memROM~13_combout\)) # (\MEMORIA_INTRUCAO|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011110000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~18_combout\);

-- Location: MLABCELL_X28_Y7_N36
\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|SOMADOR|Add0~5_sumout\ & ( (!\CPU|MUX2|Equal2~0_combout\) # ((!\CPU|MUX2|Equal1~0_combout\ & (\CPU|REG_END_RET|DOUT\(1))) # (\CPU|MUX2|Equal1~0_combout\ & ((\MEMORIA_INTRUCAO|memROM~18_combout\)))) ) ) # ( 
-- !\CPU|SOMADOR|Add0~5_sumout\ & ( (\CPU|MUX2|Equal2~0_combout\ & ((!\CPU|MUX2|Equal1~0_combout\ & (\CPU|REG_END_RET|DOUT\(1))) # (\CPU|MUX2|Equal1~0_combout\ & ((\MEMORIA_INTRUCAO|memROM~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011111111111010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_END_RET|ALT_INV_DOUT\(1),
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|SOMADOR|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

-- Location: FF_X28_Y7_N38
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: MLABCELL_X28_Y7_N30
\MEMORIA_INTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~10_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_INTRUCAO|memROM~10_combout\);

-- Location: MLABCELL_X28_Y7_N42
\MEMORIA_INTRUCAO|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~27_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(1) & \MEMORIA_INTRUCAO|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~27_combout\);

-- Location: MLABCELL_X28_Y7_N6
\MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~8_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \MEMORIA_INTRUCAO|memROM~8_combout\);

-- Location: MLABCELL_X28_Y7_N33
\MEMORIA_INTRUCAO|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~26_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(3) & \MEMORIA_INTRUCAO|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~26_combout\);

-- Location: LABCELL_X31_Y8_N54
\MEMORIA_INTRUCAO|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~22_combout\ = ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~22_combout\);

-- Location: LABCELL_X31_Y8_N15
\MEMORIA_INTRUCAO|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~19_combout\ = ( \MEMORIA_INTRUCAO|memROM~3_combout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~19_combout\);

-- Location: LABCELL_X31_Y8_N18
\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~19_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~22_combout\ & !\MEMORIA_INTRUCAO|memROM~21_combout\) ) ) # ( !\MEMORIA_INTRUCAO|memROM~19_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~21_combout\ & (!\MEMORIA_INTRUCAO|memROM~20_combout\ $ (!\MEMORIA_INTRUCAO|memROM~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\);

-- Location: LABCELL_X31_Y8_N33
\MEMORIA_DADOS|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~25_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & !\MEMORIA_INTRUCAO|memROM~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\,
	dataf => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\,
	combout => \MEMORIA_DADOS|dado_out~0_combout\);

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

-- Location: MLABCELL_X28_Y5_N42
\MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~0_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~0_combout\);

-- Location: MLABCELL_X28_Y5_N45
\MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~2_combout\ = ( \MEMORIA_INTRUCAO|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\MEMORIA_INTRUCAO|memROM~1_combout\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~2_combout\);

-- Location: LABCELL_X32_Y6_N12
\MEMORIA_DADOS|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~785_combout\ = ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~785_combout\);

-- Location: LABCELL_X31_Y8_N39
\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( \MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~5_combout\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- \MEMORIA_INTRUCAO|memROM~3_combout\))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~7_combout\ & ( (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~5_combout\ & \MEMORIA_INTRUCAO|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\);

-- Location: MLABCELL_X28_Y7_N24
\MEMORIA_DADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|process_0~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~25_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~26_combout\ & \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\,
	combout => \MEMORIA_DADOS|process_0~0_combout\);

-- Location: LABCELL_X32_Y6_N54
\MEMORIA_DADOS|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~786_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~785_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~785_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~786_combout\);

-- Location: FF_X25_Y3_N56
\MEMORIA_DADOS|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~390_q\);

-- Location: LABCELL_X25_Y7_N9
\MEMORIA_DADOS|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~761_combout\ = ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~761_combout\);

-- Location: LABCELL_X26_Y7_N48
\MEMORIA_DADOS|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~762_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~761_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~761_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~762_combout\);

-- Location: FF_X32_Y5_N11
\MEMORIA_DADOS|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~294_q\);

-- Location: LABCELL_X32_Y6_N0
\MEMORIA_DADOS|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~769_combout\ = ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~769_combout\);

-- Location: LABCELL_X32_Y6_N6
\MEMORIA_DADOS|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~770_combout\ = ( \MEMORIA_DADOS|ram~769_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_ram~769_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~770_combout\);

-- Location: FF_X26_Y4_N4
\MEMORIA_DADOS|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~326_q\);

-- Location: LABCELL_X32_Y8_N15
\MEMORIA_DADOS|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~777_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~777_combout\);

-- Location: LABCELL_X32_Y8_N36
\MEMORIA_DADOS|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~778_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~777_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~777_combout\,
	combout => \MEMORIA_DADOS|ram~778_combout\);

-- Location: FF_X32_Y8_N10
\MEMORIA_DADOS|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~358_q\);

-- Location: LABCELL_X25_Y3_N21
\MEMORIA_DADOS|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~689_combout\ = ( \MEMORIA_DADOS|ram~358_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~390_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~358_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~390_q\ & \MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~358_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~294_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~326_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~358_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~294_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~326_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~390_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~294_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~326_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~358_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~689_combout\);

-- Location: LABCELL_X25_Y7_N21
\MEMORIA_DADOS|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~765_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~765_combout\);

-- Location: LABCELL_X26_Y7_N45
\MEMORIA_DADOS|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~766_combout\ = (\MEMORIA_DADOS|ram~765_combout\ & \MEMORIA_DADOS|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~765_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~766_combout\);

-- Location: FF_X26_Y7_N34
\MEMORIA_DADOS|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~422_q\);

-- Location: LABCELL_X24_Y7_N57
\MEMORIA_DADOS|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~773_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~773_combout\);

-- Location: LABCELL_X24_Y7_N24
\MEMORIA_DADOS|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~774_combout\ = ( \MEMORIA_DADOS|ram~773_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_ram~773_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~774_combout\);

-- Location: FF_X24_Y7_N37
\MEMORIA_DADOS|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~454_q\);

-- Location: LABCELL_X26_Y7_N39
\MEMORIA_DADOS|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~781_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~781_combout\);

-- Location: LABCELL_X26_Y7_N6
\MEMORIA_DADOS|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~782_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~781_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~781_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~782_combout\);

-- Location: FF_X28_Y6_N41
\MEMORIA_DADOS|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~486_q\);

-- Location: MLABCELL_X28_Y6_N42
\MEMORIA_DADOS|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~789_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~789_combout\);

-- Location: LABCELL_X26_Y6_N0
\MEMORIA_DADOS|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~790_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~789_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~789_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~790_combout\);

-- Location: FF_X24_Y5_N5
\MEMORIA_DADOS|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~518_q\);

-- Location: LABCELL_X24_Y5_N3
\MEMORIA_DADOS|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~691_combout\ = ( \MEMORIA_DADOS|ram~518_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~454_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~518_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (\MEMORIA_DADOS|ram~454_q\ & !\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~518_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~422_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~486_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~518_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~422_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~486_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~422_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~454_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~486_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~518_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~691_combout\);

-- Location: MLABCELL_X34_Y5_N12
\MEMORIA_DADOS|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~797_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~797_combout\);

-- Location: MLABCELL_X34_Y5_N54
\MEMORIA_DADOS|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~798_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~797_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~797_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~798_combout\);

-- Location: FF_X29_Y4_N13
\MEMORIA_DADOS|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~366_q\);

-- Location: LABCELL_X32_Y5_N36
\MEMORIA_DADOS|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~801_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~801_combout\);

-- Location: LABCELL_X32_Y5_N30
\MEMORIA_DADOS|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~802_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~801_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~801_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~802_combout\);

-- Location: FF_X32_Y5_N29
\MEMORIA_DADOS|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~334_q\);

-- Location: LABCELL_X29_Y9_N45
\MEMORIA_DADOS|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~793_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~793_combout\);

-- Location: LABCELL_X29_Y8_N18
\MEMORIA_DADOS|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~794_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~793_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~793_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~794_combout\);

-- Location: FF_X29_Y8_N40
\MEMORIA_DADOS|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~302_q\);

-- Location: MLABCELL_X34_Y6_N24
\MEMORIA_DADOS|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~805_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~805_combout\);

-- Location: MLABCELL_X34_Y6_N18
\MEMORIA_DADOS|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~806_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~805_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~805_combout\,
	combout => \MEMORIA_DADOS|ram~806_combout\);

-- Location: FF_X26_Y2_N11
\MEMORIA_DADOS|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~398_q\);

-- Location: LABCELL_X26_Y2_N9
\MEMORIA_DADOS|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~690_combout\ = ( \MEMORIA_DADOS|ram~398_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~334_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~398_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (\MEMORIA_DADOS|ram~334_q\ & !\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~398_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~302_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~366_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~398_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~302_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~366_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~366_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~334_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~302_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~398_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~690_combout\);

-- Location: LABCELL_X32_Y8_N30
\MEMORIA_DADOS|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~813_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~813_combout\);

-- Location: LABCELL_X31_Y8_N12
\MEMORIA_DADOS|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~814_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~813_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~813_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~814_combout\);

-- Location: FF_X26_Y6_N47
\MEMORIA_DADOS|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~494_q\);

-- Location: LABCELL_X26_Y8_N24
\MEMORIA_DADOS|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~809_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~809_combout\);

-- Location: LABCELL_X26_Y8_N15
\MEMORIA_DADOS|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~810_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~809_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~809_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~810_combout\);

-- Location: FF_X25_Y3_N49
\MEMORIA_DADOS|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~430_q\);

-- Location: LABCELL_X26_Y2_N51
\MEMORIA_DADOS|ram~462feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~462feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~462feeder_combout\);

-- Location: LABCELL_X32_Y4_N57
\MEMORIA_DADOS|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~817_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~817_combout\);

-- Location: LABCELL_X32_Y4_N6
\MEMORIA_DADOS|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~818_combout\ = ( \MEMORIA_DADOS|ram~817_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_ram~817_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~818_combout\);

-- Location: FF_X26_Y2_N53
\MEMORIA_DADOS|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~462feeder_combout\,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~462_q\);

-- Location: LABCELL_X29_Y8_N51
\MEMORIA_DADOS|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~821_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~821_combout\);

-- Location: LABCELL_X29_Y8_N0
\MEMORIA_DADOS|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~822_combout\ = (\MEMORIA_DADOS|ram~821_combout\ & \MEMORIA_DADOS|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~821_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~822_combout\);

-- Location: FF_X26_Y2_N26
\MEMORIA_DADOS|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~526_q\);

-- Location: LABCELL_X26_Y2_N24
\MEMORIA_DADOS|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~692_combout\ = ( \MEMORIA_DADOS|ram~526_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~494_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~526_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~494_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~526_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~430_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~462_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~526_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~430_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~462_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~494_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~430_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~462_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~526_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~692_combout\);

-- Location: LABCELL_X25_Y4_N18
\MEMORIA_DADOS|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~693_combout\ = ( \MEMORIA_DADOS|ram~690_combout\ & ( \MEMORIA_DADOS|ram~692_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~689_combout\)) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((\MEMORIA_DADOS|ram~691_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~690_combout\ & ( \MEMORIA_DADOS|ram~692_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (\MEMORIA_DADOS|ram~689_combout\)) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~691_combout\))))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\)) ) ) ) # ( \MEMORIA_DADOS|ram~690_combout\ & ( 
-- !\MEMORIA_DADOS|ram~692_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~689_combout\)) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~691_combout\))))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\)) ) ) ) # ( !\MEMORIA_DADOS|ram~690_combout\ & ( !\MEMORIA_DADOS|ram~692_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (\MEMORIA_DADOS|ram~689_combout\)) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~691_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~689_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~691_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~690_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~692_combout\,
	combout => \MEMORIA_DADOS|ram~693_combout\);

-- Location: LABCELL_X24_Y8_N24
\MEMORIA_DADOS|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~767_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~767_combout\);

-- Location: LABCELL_X24_Y8_N42
\MEMORIA_DADOS|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~768_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~767_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~767_combout\,
	combout => \MEMORIA_DADOS|ram~768_combout\);

-- Location: FF_X24_Y8_N56
\MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~70_q\);

-- Location: LABCELL_X26_Y8_N39
\MEMORIA_DADOS|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~759_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~759_combout\);

-- Location: LABCELL_X26_Y8_N9
\MEMORIA_DADOS|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~760_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~759_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~759_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~760_combout\);

-- Location: FF_X24_Y8_N49
\MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

-- Location: MLABCELL_X28_Y2_N9
\MEMORIA_DADOS|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~775_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~775_combout\);

-- Location: MLABCELL_X28_Y2_N36
\MEMORIA_DADOS|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~776_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~775_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~775_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~776_combout\);

-- Location: FF_X28_Y2_N7
\MEMORIA_DADOS|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~102_q\);

-- Location: LABCELL_X24_Y5_N6
\MEMORIA_DADOS|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~783_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~783_combout\);

-- Location: MLABCELL_X34_Y5_N18
\MEMORIA_DADOS|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~784_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~783_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~783_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~784_combout\);

-- Location: FF_X25_Y4_N53
\MEMORIA_DADOS|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~134_q\);

-- Location: LABCELL_X25_Y4_N51
\MEMORIA_DADOS|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~679_combout\ = ( \MEMORIA_DADOS|ram~134_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~102_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~134_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~102_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~134_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~38_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~70_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~134_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~38_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~70_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~102_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~134_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~679_combout\);

-- Location: LABCELL_X26_Y8_N21
\MEMORIA_DADOS|ram~198feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~198feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~198feeder_combout\);

-- Location: MLABCELL_X28_Y8_N15
\MEMORIA_DADOS|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~771_combout\ = ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~771_combout\);

-- Location: LABCELL_X26_Y8_N3
\MEMORIA_DADOS|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~772_combout\ = (\MEMORIA_DADOS|ram~771_combout\ & \MEMORIA_DADOS|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~771_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~772_combout\);

-- Location: FF_X26_Y8_N22
\MEMORIA_DADOS|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~198feeder_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~198_q\);

-- Location: LABCELL_X24_Y5_N21
\MEMORIA_DADOS|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~779_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~779_combout\);

-- Location: LABCELL_X24_Y5_N24
\MEMORIA_DADOS|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~780_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~779_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~779_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~780_combout\);

-- Location: FF_X25_Y4_N11
\MEMORIA_DADOS|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~230_q\);

-- Location: LABCELL_X25_Y2_N51
\MEMORIA_DADOS|ram~166feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~166feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~166feeder_combout\);

-- Location: LABCELL_X25_Y7_N45
\MEMORIA_DADOS|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~763_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~763_combout\);

-- Location: LABCELL_X25_Y7_N27
\MEMORIA_DADOS|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~764_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~763_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~763_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~764_combout\);

-- Location: FF_X25_Y2_N52
\MEMORIA_DADOS|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~166feeder_combout\,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~166_q\);

-- Location: LABCELL_X26_Y6_N45
\MEMORIA_DADOS|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~787_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~787_combout\);

-- Location: LABCELL_X24_Y6_N3
\MEMORIA_DADOS|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~788_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~787_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~787_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~788_combout\);

-- Location: FF_X25_Y4_N47
\MEMORIA_DADOS|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~262_q\);

-- Location: LABCELL_X25_Y4_N45
\MEMORIA_DADOS|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~681_combout\ = ( \MEMORIA_DADOS|ram~262_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~230_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~262_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~230_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~262_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~166_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~198_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~262_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~166_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~198_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~198_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~230_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~166_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~262_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~681_combout\);

-- Location: LABCELL_X32_Y5_N48
\MEMORIA_DADOS|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~791_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~791_combout\);

-- Location: LABCELL_X31_Y5_N36
\MEMORIA_DADOS|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~792_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~791_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~791_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~792_combout\);

-- Location: FF_X29_Y4_N28
\MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~46_q\);

-- Location: LABCELL_X32_Y6_N24
\MEMORIA_DADOS|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~795_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~795_combout\);

-- Location: LABCELL_X32_Y6_N21
\MEMORIA_DADOS|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~796_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~795_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~795_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~796_combout\);

-- Location: FF_X28_Y2_N22
\MEMORIA_DADOS|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~110_q\);

-- Location: MLABCELL_X28_Y6_N33
\MEMORIA_DADOS|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~799_combout\ = ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~799_combout\);

-- Location: LABCELL_X24_Y6_N57
\MEMORIA_DADOS|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~800_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~799_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~799_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~800_combout\);

-- Location: FF_X25_Y6_N47
\MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~78_q\);

-- Location: MLABCELL_X23_Y7_N18
\MEMORIA_DADOS|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~803_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~803_combout\);

-- Location: LABCELL_X31_Y7_N6
\MEMORIA_DADOS|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~804_combout\ = ( \MEMORIA_DADOS|ram~803_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_ram~803_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~804_combout\);

-- Location: FF_X31_Y4_N2
\MEMORIA_DADOS|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~142_q\);

-- Location: LABCELL_X31_Y4_N0
\MEMORIA_DADOS|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~680_combout\ = ( \MEMORIA_DADOS|ram~142_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~110_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~142_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~110_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~142_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~46_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~78_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~142_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~46_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~78_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~46_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~110_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~78_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~142_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~680_combout\);

-- Location: LABCELL_X26_Y8_N33
\MEMORIA_DADOS|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~807_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~807_combout\);

-- Location: LABCELL_X26_Y8_N45
\MEMORIA_DADOS|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~808_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~807_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~807_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~808_combout\);

-- Location: FF_X25_Y5_N26
\MEMORIA_DADOS|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~174_q\);

-- Location: LABCELL_X32_Y4_N30
\MEMORIA_DADOS|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~819_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~819_combout\);

-- Location: LABCELL_X31_Y4_N24
\MEMORIA_DADOS|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~820_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~819_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~819_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~820_combout\);

-- Location: FF_X25_Y5_N44
\MEMORIA_DADOS|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~270_q\);

-- Location: LABCELL_X25_Y5_N30
\MEMORIA_DADOS|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~815_combout\ = ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~815_combout\);

-- Location: LABCELL_X25_Y5_N57
\MEMORIA_DADOS|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~816_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~815_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~815_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~816_combout\);

-- Location: FF_X25_Y5_N59
\MEMORIA_DADOS|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~206_q\);

-- Location: LABCELL_X32_Y5_N12
\MEMORIA_DADOS|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~811_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~811_combout\);

-- Location: LABCELL_X32_Y5_N21
\MEMORIA_DADOS|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~812_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~811_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~811_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~812_combout\);

-- Location: FF_X31_Y4_N59
\MEMORIA_DADOS|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~238_q\);

-- Location: LABCELL_X25_Y5_N27
\MEMORIA_DADOS|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~682_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~270_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~206_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~238_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~174_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~174_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~270_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~206_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~238_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~682_combout\);

-- Location: LABCELL_X25_Y4_N39
\MEMORIA_DADOS|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~683_combout\ = ( \MEMORIA_DADOS|ram~680_combout\ & ( \MEMORIA_DADOS|ram~682_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~679_combout\)) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((\MEMORIA_DADOS|ram~681_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~680_combout\ & ( \MEMORIA_DADOS|ram~682_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~679_combout\ & 
-- ((!\MEMORIA_INTRUCAO|memROM~12_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~681_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~680_combout\ & ( !\MEMORIA_DADOS|ram~682_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~12_combout\)) # (\MEMORIA_DADOS|ram~679_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_DADOS|ram~681_combout\ & !\MEMORIA_INTRUCAO|memROM~12_combout\)))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~680_combout\ & ( !\MEMORIA_DADOS|ram~682_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~679_combout\)) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((\MEMORIA_DADOS|ram~681_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~679_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~681_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~680_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~682_combout\,
	combout => \MEMORIA_DADOS|ram~683_combout\);

-- Location: LABCELL_X24_Y4_N0
\MEMORIA_DADOS|ram~126feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~126feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~126feeder_combout\);

-- Location: LABCELL_X24_Y4_N27
\MEMORIA_DADOS|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~751_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~751_combout\);

-- Location: LABCELL_X24_Y4_N18
\MEMORIA_DADOS|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~752_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~751_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~751_combout\,
	combout => \MEMORIA_DADOS|ram~752_combout\);

-- Location: FF_X24_Y4_N2
\MEMORIA_DADOS|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~126feeder_combout\,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~126_q\);

-- Location: LABCELL_X25_Y7_N48
\MEMORIA_DADOS|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~723_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~723_combout\);

-- Location: LABCELL_X25_Y7_N15
\MEMORIA_DADOS|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~724_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~723_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~723_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~724_combout\);

-- Location: FF_X24_Y4_N32
\MEMORIA_DADOS|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~246_q\);

-- Location: MLABCELL_X23_Y4_N54
\MEMORIA_DADOS|ram~118feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~118feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~118feeder_combout\);

-- Location: LABCELL_X31_Y6_N39
\MEMORIA_DADOS|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~719_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~719_combout\);

-- Location: LABCELL_X31_Y6_N30
\MEMORIA_DADOS|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~720_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~719_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~719_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~720_combout\);

-- Location: FF_X23_Y4_N55
\MEMORIA_DADOS|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~118feeder_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~118_q\);

-- Location: LABCELL_X31_Y6_N42
\MEMORIA_DADOS|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~755_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~755_combout\);

-- Location: LABCELL_X31_Y6_N0
\MEMORIA_DADOS|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~756_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~755_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~755_combout\,
	combout => \MEMORIA_DADOS|ram~756_combout\);

-- Location: FF_X24_Y4_N44
\MEMORIA_DADOS|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~254_q\);

-- Location: LABCELL_X24_Y4_N42
\MEMORIA_DADOS|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~677_combout\ = ( \MEMORIA_DADOS|ram~254_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~246_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~254_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ( (\MEMORIA_DADOS|ram~246_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~254_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~118_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~126_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~254_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~118_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~126_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~126_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~246_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~118_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~254_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~677_combout\);

-- Location: MLABCELL_X28_Y2_N24
\MEMORIA_DADOS|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~743_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~743_combout\);

-- Location: MLABCELL_X28_Y2_N42
\MEMORIA_DADOS|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~744_combout\ = (\MEMORIA_DADOS|ram~743_combout\ & \MEMORIA_DADOS|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~743_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~744_combout\);

-- Location: FF_X28_Y2_N31
\MEMORIA_DADOS|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~94_q\);

-- Location: MLABCELL_X23_Y4_N12
\MEMORIA_DADOS|ram~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~86feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~86feeder_combout\);

-- Location: LABCELL_X26_Y7_N27
\MEMORIA_DADOS|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~711_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~711_combout\);

-- Location: LABCELL_X25_Y7_N24
\MEMORIA_DADOS|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~712_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~711_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~711_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~712_combout\);

-- Location: FF_X23_Y4_N13
\MEMORIA_DADOS|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~86feeder_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~86_q\);

-- Location: LABCELL_X25_Y7_N33
\MEMORIA_DADOS|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~715_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~715_combout\);

-- Location: LABCELL_X26_Y7_N21
\MEMORIA_DADOS|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~716_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~715_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~715_combout\,
	combout => \MEMORIA_DADOS|ram~716_combout\);

-- Location: FF_X25_Y7_N43
\MEMORIA_DADOS|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~214_q\);

-- Location: LABCELL_X32_Y6_N30
\MEMORIA_DADOS|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~747_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~747_combout\);

-- Location: LABCELL_X32_Y6_N51
\MEMORIA_DADOS|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~748_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~747_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~747_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~748_combout\);

-- Location: FF_X23_Y3_N50
\MEMORIA_DADOS|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~222_q\);

-- Location: MLABCELL_X23_Y3_N48
\MEMORIA_DADOS|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~676_combout\ = ( \MEMORIA_DADOS|ram~222_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~94_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~222_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~94_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~222_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~86_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~214_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~222_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~86_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~214_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~94_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~86_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~214_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~222_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~676_combout\);

-- Location: MLABCELL_X23_Y4_N30
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

-- Location: LABCELL_X31_Y6_N18
\MEMORIA_DADOS|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~735_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~735_combout\);

-- Location: LABCELL_X31_Y6_N24
\MEMORIA_DADOS|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~736_combout\ = ( \MEMORIA_DADOS|ram~735_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~735_combout\,
	combout => \MEMORIA_DADOS|ram~736_combout\);

-- Location: FF_X23_Y4_N31
\MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~62feeder_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~62_q\);

-- Location: LABCELL_X24_Y8_N9
\MEMORIA_DADOS|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~703_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~703_combout\);

-- Location: LABCELL_X24_Y8_N51
\MEMORIA_DADOS|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~704_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~703_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~703_combout\,
	combout => \MEMORIA_DADOS|ram~704_combout\);

-- Location: FF_X23_Y7_N22
\MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~54_q\);

-- Location: MLABCELL_X23_Y7_N33
\MEMORIA_DADOS|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~707_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~707_combout\);

-- Location: MLABCELL_X23_Y7_N54
\MEMORIA_DADOS|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~708_combout\ = ( \MEMORIA_DADOS|ram~707_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~707_combout\,
	combout => \MEMORIA_DADOS|ram~708_combout\);

-- Location: FF_X23_Y7_N17
\MEMORIA_DADOS|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~182_q\);

-- Location: LABCELL_X24_Y3_N24
\MEMORIA_DADOS|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~739_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~739_combout\);

-- Location: LABCELL_X24_Y3_N54
\MEMORIA_DADOS|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~740_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~739_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~739_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~740_combout\);

-- Location: FF_X24_Y3_N41
\MEMORIA_DADOS|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~190_q\);

-- Location: LABCELL_X24_Y3_N39
\MEMORIA_DADOS|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~675_combout\ = ( \MEMORIA_DADOS|ram~190_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~62_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~190_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~62_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~190_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~54_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~182_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~190_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~54_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~182_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~62_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~54_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~182_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~190_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~675_combout\);

-- Location: MLABCELL_X23_Y5_N9
\MEMORIA_DADOS|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~22feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~22feeder_combout\);

-- Location: LABCELL_X24_Y5_N45
\MEMORIA_DADOS|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~695_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~695_combout\);

-- Location: LABCELL_X24_Y5_N54
\MEMORIA_DADOS|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~696_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~695_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ALT_INV_ram~695_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~696_combout\);

-- Location: FF_X23_Y5_N10
\MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~22feeder_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~22_q\);

-- Location: LABCELL_X32_Y5_N3
\MEMORIA_DADOS|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~699_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~699_combout\);

-- Location: LABCELL_X32_Y4_N51
\MEMORIA_DADOS|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~700_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~699_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~699_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~700_combout\);

-- Location: FF_X24_Y3_N47
\MEMORIA_DADOS|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~150_q\);

-- Location: MLABCELL_X23_Y5_N3
\MEMORIA_DADOS|ram~30feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~30feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~30feeder_combout\);

-- Location: MLABCELL_X23_Y6_N30
\MEMORIA_DADOS|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~727_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~727_combout\);

-- Location: MLABCELL_X23_Y6_N0
\MEMORIA_DADOS|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~728_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~727_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~727_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~728_combout\);

-- Location: FF_X23_Y5_N4
\MEMORIA_DADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~30feeder_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~30_q\);

-- Location: LABCELL_X24_Y3_N21
\MEMORIA_DADOS|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~731_combout\ = ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~731_combout\);

-- Location: LABCELL_X24_Y3_N45
\MEMORIA_DADOS|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~732_combout\ = ( \MEMORIA_DADOS|ram~731_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_ram~731_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~732_combout\);

-- Location: FF_X24_Y3_N32
\MEMORIA_DADOS|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~158_q\);

-- Location: LABCELL_X24_Y3_N30
\MEMORIA_DADOS|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~674_combout\ = ( \MEMORIA_DADOS|ram~158_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_DADOS|ram~30_q\) # (\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~158_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & \MEMORIA_DADOS|ram~30_q\) ) ) ) # ( \MEMORIA_DADOS|ram~158_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~22_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~150_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~158_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~22_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~150_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~22_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~150_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~30_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~158_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~674_combout\);

-- Location: LABCELL_X24_Y4_N33
\MEMORIA_DADOS|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~678_combout\ = ( \MEMORIA_DADOS|ram~675_combout\ & ( \MEMORIA_DADOS|ram~674_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~676_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~677_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~675_combout\ & ( \MEMORIA_DADOS|ram~674_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\) # 
-- (\MEMORIA_DADOS|ram~676_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~677_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~675_combout\ & ( !\MEMORIA_DADOS|ram~674_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~676_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\)) # (\MEMORIA_DADOS|ram~677_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~675_combout\ & ( !\MEMORIA_DADOS|ram~674_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~676_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\MEMORIA_DADOS|ram~677_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~677_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~676_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~675_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~674_combout\,
	combout => \MEMORIA_DADOS|ram~678_combout\);

-- Location: LABCELL_X32_Y7_N54
\MEMORIA_DADOS|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~749_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~749_combout\);

-- Location: LABCELL_X31_Y7_N18
\MEMORIA_DADOS|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~750_combout\ = ( \MEMORIA_DADOS|ram~749_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~749_combout\,
	combout => \MEMORIA_DADOS|ram~750_combout\);

-- Location: FF_X31_Y7_N16
\MEMORIA_DADOS|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~478_q\);

-- Location: LABCELL_X24_Y5_N36
\MEMORIA_DADOS|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~717_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~717_combout\);

-- Location: LABCELL_X24_Y7_N33
\MEMORIA_DADOS|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~718_combout\ = (\MEMORIA_DADOS|process_0~0_combout\ & \MEMORIA_DADOS|ram~717_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~717_combout\,
	combout => \MEMORIA_DADOS|ram~718_combout\);

-- Location: FF_X25_Y7_N5
\MEMORIA_DADOS|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~470_q\);

-- Location: LABCELL_X32_Y8_N6
\MEMORIA_DADOS|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~713_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~713_combout\);

-- Location: LABCELL_X32_Y8_N0
\MEMORIA_DADOS|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~714_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~713_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~713_combout\,
	combout => \MEMORIA_DADOS|ram~714_combout\);

-- Location: FF_X32_Y8_N5
\MEMORIA_DADOS|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~342_q\);

-- Location: LABCELL_X32_Y7_N30
\MEMORIA_DADOS|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~745_combout\ = ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~745_combout\);

-- Location: LABCELL_X32_Y7_N0
\MEMORIA_DADOS|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~746_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~745_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~745_combout\,
	combout => \MEMORIA_DADOS|ram~746_combout\);

-- Location: FF_X31_Y7_N58
\MEMORIA_DADOS|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~350_q\);

-- Location: LABCELL_X26_Y7_N33
\MEMORIA_DADOS|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~686_combout\ = ( \MEMORIA_DADOS|ram~350_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~478_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~350_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ 
-- & ( (\MEMORIA_DADOS|ram~478_q\ & \MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~350_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~342_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~470_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~350_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~342_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~470_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~478_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~470_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~342_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~350_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~686_combout\);

-- Location: LABCELL_X24_Y5_N12
\MEMORIA_DADOS|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~705_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~705_combout\);

-- Location: LABCELL_X24_Y5_N57
\MEMORIA_DADOS|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~706_combout\ = ( \MEMORIA_DADOS|ram~705_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~705_combout\,
	combout => \MEMORIA_DADOS|ram~706_combout\);

-- Location: FF_X26_Y5_N38
\MEMORIA_DADOS|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~310_q\);

-- Location: LABCELL_X26_Y5_N15
\MEMORIA_DADOS|ram~318feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~318feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \MEMORIA_DADOS|ram~318feeder_combout\);

-- Location: LABCELL_X26_Y6_N9
\MEMORIA_DADOS|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~737_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~737_combout\);

-- Location: LABCELL_X26_Y5_N0
\MEMORIA_DADOS|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~738_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~737_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~737_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~738_combout\);

-- Location: FF_X26_Y5_N17
\MEMORIA_DADOS|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~318feeder_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~318_q\);

-- Location: LABCELL_X29_Y9_N48
\MEMORIA_DADOS|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~709_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~709_combout\);

-- Location: MLABCELL_X23_Y7_N3
\MEMORIA_DADOS|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~710_combout\ = ( \MEMORIA_DADOS|ram~709_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_ram~709_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~710_combout\);

-- Location: FF_X23_Y7_N47
\MEMORIA_DADOS|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~438_q\);

-- Location: LABCELL_X31_Y6_N12
\MEMORIA_DADOS|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~741_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~741_combout\);

-- Location: LABCELL_X31_Y6_N27
\MEMORIA_DADOS|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~742_combout\ = ( \MEMORIA_DADOS|ram~741_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~741_combout\,
	combout => \MEMORIA_DADOS|ram~742_combout\);

-- Location: FF_X26_Y5_N32
\MEMORIA_DADOS|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~446_q\);

-- Location: LABCELL_X26_Y5_N30
\MEMORIA_DADOS|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~685_combout\ = ( \MEMORIA_DADOS|ram~446_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_DADOS|ram~438_q\) # (\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~446_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~438_q\) ) ) ) # ( \MEMORIA_DADOS|ram~446_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~310_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~318_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~446_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~310_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~318_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~310_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~318_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~438_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~446_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~685_combout\);

-- Location: LABCELL_X29_Y6_N30
\MEMORIA_DADOS|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~697_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~697_combout\);

-- Location: LABCELL_X29_Y6_N12
\MEMORIA_DADOS|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~698_combout\ = ( \MEMORIA_DADOS|ram~697_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~697_combout\,
	combout => \MEMORIA_DADOS|ram~698_combout\);

-- Location: FF_X29_Y6_N59
\MEMORIA_DADOS|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~278_q\);

-- Location: LABCELL_X26_Y6_N36
\MEMORIA_DADOS|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~701_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~701_combout\);

-- Location: LABCELL_X29_Y6_N6
\MEMORIA_DADOS|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~702_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~701_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~701_combout\,
	combout => \MEMORIA_DADOS|ram~702_combout\);

-- Location: FF_X29_Y6_N4
\MEMORIA_DADOS|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~406_q\);

-- Location: MLABCELL_X28_Y8_N48
\MEMORIA_DADOS|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~733_combout\ = ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~733_combout\);

-- Location: MLABCELL_X28_Y8_N36
\MEMORIA_DADOS|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~734_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~733_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~733_combout\,
	combout => \MEMORIA_DADOS|ram~734_combout\);

-- Location: FF_X28_Y8_N49
\MEMORIA_DADOS|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~414_q\);

-- Location: LABCELL_X29_Y8_N42
\MEMORIA_DADOS|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~729_combout\ = ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~729_combout\);

-- Location: LABCELL_X31_Y8_N27
\MEMORIA_DADOS|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~730_combout\ = ( \MEMORIA_DADOS|ram~729_combout\ & ( \MEMORIA_DADOS|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~729_combout\,
	combout => \MEMORIA_DADOS|ram~730_combout\);

-- Location: FF_X28_Y8_N41
\MEMORIA_DADOS|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~286_q\);

-- Location: LABCELL_X26_Y6_N24
\MEMORIA_DADOS|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~684_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~414_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~286_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~406_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~278_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~406_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~414_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~286_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~684_combout\);

-- Location: LABCELL_X32_Y7_N39
\MEMORIA_DADOS|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~725_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~725_combout\);

-- Location: LABCELL_X32_Y7_N21
\MEMORIA_DADOS|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~726_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~725_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~725_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~726_combout\);

-- Location: FF_X32_Y7_N58
\MEMORIA_DADOS|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~502_q\);

-- Location: LABCELL_X32_Y3_N6
\MEMORIA_DADOS|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~721_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~721_combout\);

-- Location: LABCELL_X32_Y3_N36
\MEMORIA_DADOS|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~722_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~721_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_ram~721_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~722_combout\);

-- Location: FF_X32_Y3_N41
\MEMORIA_DADOS|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~374_q\);

-- Location: LABCELL_X24_Y7_N21
\MEMORIA_DADOS|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~753_combout\ = ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~753_combout\);

-- Location: LABCELL_X24_Y7_N51
\MEMORIA_DADOS|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~754_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~753_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~753_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~754_combout\);

-- Location: FF_X32_Y3_N26
\MEMORIA_DADOS|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~382_q\);

-- Location: LABCELL_X32_Y7_N12
\MEMORIA_DADOS|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~757_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~757_combout\);

-- Location: LABCELL_X32_Y7_N51
\MEMORIA_DADOS|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~758_combout\ = ( \MEMORIA_DADOS|process_0~0_combout\ & ( \MEMORIA_DADOS|ram~757_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ALT_INV_ram~757_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_process_0~0_combout\,
	combout => \MEMORIA_DADOS|ram~758_combout\);

-- Location: FF_X32_Y3_N20
\MEMORIA_DADOS|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~510_q\);

-- Location: LABCELL_X32_Y3_N18
\MEMORIA_DADOS|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~687_combout\ = ( \MEMORIA_DADOS|ram~510_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~502_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~510_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ( (\MEMORIA_DADOS|ram~502_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~510_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~374_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~382_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~510_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~374_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~382_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~502_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~374_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~382_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~510_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~687_combout\);

-- Location: LABCELL_X26_Y5_N36
\MEMORIA_DADOS|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~688_combout\ = ( \MEMORIA_DADOS|ram~684_combout\ & ( \MEMORIA_DADOS|ram~687_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\) # ((\MEMORIA_DADOS|ram~685_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_DADOS|ram~686_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~684_combout\ & ( \MEMORIA_DADOS|ram~687_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~685_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_DADOS|ram~686_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~684_combout\ & ( 
-- !\MEMORIA_DADOS|ram~687_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\) # ((\MEMORIA_DADOS|ram~685_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\MEMORIA_DADOS|ram~686_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~684_combout\ & ( !\MEMORIA_DADOS|ram~687_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~685_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~686_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~686_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~685_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~684_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~687_combout\,
	combout => \MEMORIA_DADOS|ram~688_combout\);

-- Location: LABCELL_X25_Y4_N6
\MEMORIA_DADOS|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~694_combout\ = ( \MEMORIA_DADOS|ram~678_combout\ & ( \MEMORIA_DADOS|ram~688_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\) # ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~683_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~693_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~678_combout\ & ( \MEMORIA_DADOS|ram~688_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~683_combout\))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~693_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~678_combout\ & ( 
-- !\MEMORIA_DADOS|ram~688_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\)) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~683_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~693_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~678_combout\ & ( !\MEMORIA_DADOS|ram~688_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ((\MEMORIA_DADOS|ram~683_combout\))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~693_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~693_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~683_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~678_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~688_combout\,
	combout => \MEMORIA_DADOS|ram~694_combout\);

-- Location: LABCELL_X26_Y3_N12
\CPU|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~6_combout\ = ( \MEMORIA_DADOS|ram~694_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\SW[7]~input_o\) # (\MEMORIA_DADOS|dado_out~0_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~694_combout\ & ( 
-- (!\MEMORIA_DADOS|dado_out~0_combout\ & (\SW[7]~input_o\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~694_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~6_combout\);

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

-- Location: LABCELL_X31_Y8_N57
\MEMORIA_INTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~14_combout\ = (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[6]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \MEMORIA_INTRUCAO|memROM~14_combout\);

-- Location: LABCELL_X31_Y7_N15
\MEMORIA_INTRUCAO|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~32_combout\ = ( \MEMORIA_INTRUCAO|memROM~13_combout\ & ( \MEMORIA_INTRUCAO|memROM~14_combout\ & ( ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(5)))) # (\MEMORIA_INTRUCAO|memROM~9_combout\) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~13_combout\ & ( \MEMORIA_INTRUCAO|memROM~14_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(5))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~13_combout\ & ( !\MEMORIA_INTRUCAO|memROM~14_combout\ & ( 
-- \MEMORIA_INTRUCAO|memROM~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001100000000000101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~32_combout\);

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

-- Location: FF_X32_Y4_N49
\MEMORIA_DADOS|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~108_q\);

-- Location: LABCELL_X32_Y4_N36
\MEMORIA_DADOS|ram~92feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~92feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~92feeder_combout\);

-- Location: FF_X32_Y4_N38
\MEMORIA_DADOS|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~92feeder_combout\,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~92_q\);

-- Location: FF_X24_Y4_N50
\MEMORIA_DADOS|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~124_q\);

-- Location: FF_X31_Y4_N47
\MEMORIA_DADOS|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~140_q\);

-- Location: LABCELL_X31_Y4_N42
\MEMORIA_DADOS|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~644_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~140_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~108_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~124_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~108_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~92_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~124_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~140_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~644_combout\);

-- Location: FF_X28_Y4_N29
\MEMORIA_DADOS|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~156_q\);

-- Location: FF_X25_Y5_N14
\MEMORIA_DADOS|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~172_q\);

-- Location: FF_X24_Y3_N28
\MEMORIA_DADOS|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~188_q\);

-- Location: FF_X24_Y6_N28
\MEMORIA_DADOS|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~204_q\);

-- Location: LABCELL_X25_Y5_N15
\MEMORIA_DADOS|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~643_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~204_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~188_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~172_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~156_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~156_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~172_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~188_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~204_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~643_combout\);

-- Location: FF_X31_Y4_N29
\MEMORIA_DADOS|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~236_q\);

-- Location: FF_X32_Y6_N49
\MEMORIA_DADOS|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~220_q\);

-- Location: FF_X24_Y4_N58
\MEMORIA_DADOS|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~252_q\);

-- Location: FF_X31_Y4_N8
\MEMORIA_DADOS|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~268_q\);

-- Location: LABCELL_X31_Y4_N6
\MEMORIA_DADOS|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~645_combout\ = ( \MEMORIA_DADOS|ram~268_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~252_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~268_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (\MEMORIA_DADOS|ram~252_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~268_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~220_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~236_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~268_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~220_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~236_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~236_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~220_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~252_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~268_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~645_combout\);

-- Location: FF_X26_Y6_N5
\MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~44_q\);

-- Location: FF_X25_Y6_N22
\MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~76_q\);

-- Location: FF_X29_Y7_N34
\MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~60_q\);

-- Location: MLABCELL_X23_Y6_N36
\MEMORIA_DADOS|ram~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~28feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~28feeder_combout\);

-- Location: FF_X23_Y6_N38
\MEMORIA_DADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~28feeder_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~28_q\);

-- Location: LABCELL_X25_Y6_N18
\MEMORIA_DADOS|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~642_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~76_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~44_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~60_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~44_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~76_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~60_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~28_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~642_combout\);

-- Location: LABCELL_X26_Y4_N54
\MEMORIA_DADOS|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~646_combout\ = ( \MEMORIA_DADOS|ram~645_combout\ & ( \MEMORIA_DADOS|ram~642_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~643_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\)) # (\MEMORIA_DADOS|ram~644_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~645_combout\ & ( \MEMORIA_DADOS|ram~642_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (((!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~643_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~644_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~645_combout\ & ( 
-- !\MEMORIA_DADOS|ram~642_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\ & \MEMORIA_DADOS|ram~643_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\)) # 
-- (\MEMORIA_DADOS|ram~644_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~645_combout\ & ( !\MEMORIA_DADOS|ram~642_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\ & \MEMORIA_DADOS|ram~643_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~644_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~644_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~643_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~645_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~642_combout\,
	combout => \MEMORIA_DADOS|ram~646_combout\);

-- Location: FF_X28_Y8_N47
\MEMORIA_DADOS|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~412_q\);

-- Location: FF_X26_Y5_N7
\MEMORIA_DADOS|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~444_q\);

-- Location: FF_X31_Y7_N5
\MEMORIA_DADOS|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~476_q\);

-- Location: FF_X31_Y5_N8
\MEMORIA_DADOS|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~508_q\);

-- Location: LABCELL_X31_Y5_N6
\MEMORIA_DADOS|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~649_combout\ = ( \MEMORIA_DADOS|ram~508_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_DADOS|ram~476_q\) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~508_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~476_q\) ) ) ) # ( \MEMORIA_DADOS|ram~508_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~412_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~444_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~508_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~412_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~444_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~412_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~444_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~476_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~508_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~649_combout\);

-- Location: FF_X31_Y7_N41
\MEMORIA_DADOS|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~348_q\);

-- Location: FF_X26_Y5_N46
\MEMORIA_DADOS|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~316_q\);

-- Location: FF_X31_Y5_N53
\MEMORIA_DADOS|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~380_q\);

-- Location: FF_X28_Y8_N28
\MEMORIA_DADOS|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~284_q\);

-- Location: LABCELL_X31_Y5_N48
\MEMORIA_DADOS|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~647_combout\ = ( \MEMORIA_DADOS|ram~284_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~348_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~380_q\))) ) ) ) # 
-- ( !\MEMORIA_DADOS|ram~284_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~348_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~380_q\))) ) ) ) # ( \MEMORIA_DADOS|ram~284_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~316_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~284_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_DADOS|ram~316_q\ & 
-- \MEMORIA_INTRUCAO|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~348_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~316_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~380_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~284_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~647_combout\);

-- Location: FF_X28_Y5_N2
\MEMORIA_DADOS|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~492_q\);

-- Location: FF_X26_Y2_N44
\MEMORIA_DADOS|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~460_q\);

-- Location: FF_X29_Y8_N4
\MEMORIA_DADOS|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~428_q\);

-- Location: FF_X26_Y2_N14
\MEMORIA_DADOS|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~524_q\);

-- Location: LABCELL_X26_Y2_N12
\MEMORIA_DADOS|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~650_combout\ = ( \MEMORIA_DADOS|ram~524_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~492_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~524_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~492_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~524_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~428_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~460_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~524_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~428_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~460_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~492_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~460_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~428_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~524_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~650_combout\);

-- Location: FF_X29_Y8_N19
\MEMORIA_DADOS|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~300_q\);

-- Location: FF_X32_Y5_N53
\MEMORIA_DADOS|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~332_q\);

-- Location: LABCELL_X25_Y8_N3
\MEMORIA_DADOS|ram~364feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~364feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~364feeder_combout\);

-- Location: FF_X25_Y8_N4
\MEMORIA_DADOS|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~364feeder_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~364_q\);

-- Location: FF_X26_Y2_N20
\MEMORIA_DADOS|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~396_q\);

-- Location: LABCELL_X26_Y2_N18
\MEMORIA_DADOS|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~648_combout\ = ( \MEMORIA_DADOS|ram~396_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_DADOS|ram~364_q\) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~396_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~364_q\) ) ) ) # ( \MEMORIA_DADOS|ram~396_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~300_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~332_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~396_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~300_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~332_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~300_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~332_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~364_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~396_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~648_combout\);

-- Location: LABCELL_X26_Y4_N24
\MEMORIA_DADOS|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~651_combout\ = ( \MEMORIA_DADOS|ram~650_combout\ & ( \MEMORIA_DADOS|ram~648_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~647_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (\MEMORIA_DADOS|ram~649_combout\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~650_combout\ & ( \MEMORIA_DADOS|ram~648_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((\MEMORIA_DADOS|ram~647_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~649_combout\)))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (((!\MEMORIA_INTRUCAO|memROM~27_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~650_combout\ & ( 
-- !\MEMORIA_DADOS|ram~648_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~647_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~649_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~650_combout\ & ( !\MEMORIA_DADOS|ram~648_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((\MEMORIA_DADOS|ram~647_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~649_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~649_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~647_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~650_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~648_combout\,
	combout => \MEMORIA_DADOS|ram~651_combout\);

-- Location: FF_X31_Y6_N35
\MEMORIA_DADOS|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~116_q\);

-- Location: MLABCELL_X23_Y4_N18
\MEMORIA_DADOS|ram~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~84feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~84feeder_combout\);

-- Location: FF_X23_Y4_N19
\MEMORIA_DADOS|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~84feeder_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~84_q\);

-- Location: MLABCELL_X28_Y2_N57
\MEMORIA_DADOS|ram~100feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~100feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~100feeder_combout\);

-- Location: FF_X28_Y2_N58
\MEMORIA_DADOS|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~100feeder_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~100_q\);

-- Location: FF_X25_Y4_N35
\MEMORIA_DADOS|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~132_q\);

-- Location: LABCELL_X25_Y4_N33
\MEMORIA_DADOS|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~634_combout\ = ( \MEMORIA_DADOS|ram~132_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~100_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~132_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (\MEMORIA_DADOS|ram~100_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~132_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~84_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~116_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~132_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~84_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~116_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~116_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~84_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~100_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~132_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~634_combout\);

-- Location: FF_X26_Y8_N1
\MEMORIA_DADOS|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~196_q\);

-- Location: MLABCELL_X23_Y7_N27
\MEMORIA_DADOS|ram~180feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~180feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~180feeder_combout\);

-- Location: FF_X23_Y7_N28
\MEMORIA_DADOS|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~180feeder_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~180_q\);

-- Location: FF_X28_Y4_N58
\MEMORIA_DADOS|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~148_q\);

-- Location: FF_X26_Y7_N56
\MEMORIA_DADOS|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~164_q\);

-- Location: LABCELL_X26_Y7_N54
\MEMORIA_DADOS|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~633_combout\ = ( \MEMORIA_DADOS|ram~164_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~180_q\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~196_q\)) ) ) ) 
-- # ( !\MEMORIA_DADOS|ram~164_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~180_q\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~196_q\)) ) ) ) # ( \MEMORIA_DADOS|ram~164_q\ & 
-- ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~148_q\) # (\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~164_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- \MEMORIA_DADOS|ram~148_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~196_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~180_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~148_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~164_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~633_combout\);

-- Location: FF_X31_Y6_N16
\MEMORIA_DADOS|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~244_q\);

-- Location: FF_X25_Y7_N56
\MEMORIA_DADOS|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~212_q\);

-- Location: FF_X25_Y4_N4
\MEMORIA_DADOS|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~228_q\);

-- Location: FF_X25_Y4_N14
\MEMORIA_DADOS|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~260_q\);

-- Location: LABCELL_X25_Y4_N12
\MEMORIA_DADOS|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~635_combout\ = ( \MEMORIA_DADOS|ram~260_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_DADOS|ram~228_q\) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~260_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~228_q\) ) ) ) # ( \MEMORIA_DADOS|ram~260_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~212_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~244_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~260_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~212_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~244_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~244_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~212_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~228_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~260_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~635_combout\);

-- Location: LABCELL_X24_Y8_N36
\MEMORIA_DADOS|ram~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~52feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~52feeder_combout\);

-- Location: FF_X24_Y8_N38
\MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~52feeder_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~52_q\);

-- Location: MLABCELL_X23_Y6_N24
\MEMORIA_DADOS|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~20feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~20feeder_combout\);

-- Location: FF_X23_Y6_N25
\MEMORIA_DADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~20feeder_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~20_q\);

-- Location: FF_X26_Y8_N11
\MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~68_q\);

-- Location: FF_X26_Y8_N59
\MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~36_q\);

-- Location: LABCELL_X26_Y8_N57
\MEMORIA_DADOS|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~632_combout\ = ( \MEMORIA_DADOS|ram~36_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~52_q\)) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~68_q\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~36_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~52_q\)) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~68_q\))) ) ) ) # ( \MEMORIA_DADOS|ram~36_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~20_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~36_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~20_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~52_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~20_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~632_combout\);

-- Location: LABCELL_X26_Y4_N36
\MEMORIA_DADOS|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~636_combout\ = ( \MEMORIA_DADOS|ram~635_combout\ & ( \MEMORIA_DADOS|ram~632_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~633_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\)) # (\MEMORIA_DADOS|ram~634_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~635_combout\ & ( \MEMORIA_DADOS|ram~632_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (((!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~633_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~634_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~635_combout\ & ( 
-- !\MEMORIA_DADOS|ram~632_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\ & \MEMORIA_DADOS|ram~633_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\)) # 
-- (\MEMORIA_DADOS|ram~634_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~635_combout\ & ( !\MEMORIA_DADOS|ram~632_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\ & \MEMORIA_DADOS|ram~633_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~634_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~634_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~633_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~635_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~632_combout\,
	combout => \MEMORIA_DADOS|ram~636_combout\);

-- Location: FF_X28_Y6_N38
\MEMORIA_DADOS|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~484_q\);

-- Location: FF_X28_Y6_N34
\MEMORIA_DADOS|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~356_q\);

-- Location: FF_X26_Y4_N29
\MEMORIA_DADOS|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~388_q\);

-- Location: FF_X26_Y4_N44
\MEMORIA_DADOS|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~516_q\);

-- Location: LABCELL_X26_Y4_N42
\MEMORIA_DADOS|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~640_combout\ = ( \MEMORIA_DADOS|ram~516_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~484_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~516_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ( (\MEMORIA_DADOS|ram~484_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~516_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~356_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~388_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~516_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~356_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~388_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~484_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~356_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~388_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~516_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~640_combout\);

-- Location: FF_X29_Y6_N55
\MEMORIA_DADOS|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~276_q\);

-- Location: MLABCELL_X23_Y6_N18
\MEMORIA_DADOS|ram~436feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~436feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~436feeder_combout\);

-- Location: FF_X23_Y6_N19
\MEMORIA_DADOS|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~436feeder_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~436_q\);

-- Location: FF_X25_Y6_N32
\MEMORIA_DADOS|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~308_q\);

-- Location: FF_X29_Y6_N28
\MEMORIA_DADOS|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~404_q\);

-- Location: LABCELL_X25_Y6_N33
\MEMORIA_DADOS|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~637_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~436_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~404_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~308_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~276_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~436_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~308_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~404_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~637_combout\);

-- Location: FF_X32_Y5_N16
\MEMORIA_DADOS|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~292_q\);

-- Location: FF_X26_Y7_N28
\MEMORIA_DADOS|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~420_q\);

-- Location: FF_X24_Y7_N41
\MEMORIA_DADOS|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~452_q\);

-- Location: FF_X26_Y4_N2
\MEMORIA_DADOS|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~324_q\);

-- Location: LABCELL_X26_Y4_N0
\MEMORIA_DADOS|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~638_combout\ = ( \MEMORIA_DADOS|ram~324_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~420_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~452_q\))) ) ) ) # 
-- ( !\MEMORIA_DADOS|ram~324_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~420_q\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~452_q\))) ) ) ) # ( \MEMORIA_DADOS|ram~324_q\ & ( 
-- !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~292_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~324_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_DADOS|ram~292_q\ & 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~292_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~420_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~452_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~324_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~638_combout\);

-- Location: LABCELL_X32_Y8_N18
\MEMORIA_DADOS|ram~340feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~340feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \MEMORIA_DADOS|ram~340feeder_combout\);

-- Location: FF_X32_Y8_N19
\MEMORIA_DADOS|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~340feeder_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~340_q\);

-- Location: FF_X32_Y7_N11
\MEMORIA_DADOS|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~500_q\);

-- Location: FF_X32_Y3_N31
\MEMORIA_DADOS|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~372_q\);

-- Location: FF_X25_Y7_N16
\MEMORIA_DADOS|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~468_q\);

-- Location: LABCELL_X32_Y7_N24
\MEMORIA_DADOS|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~639_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~500_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~372_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~468_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~340_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~500_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~372_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~468_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~639_combout\);

-- Location: LABCELL_X26_Y4_N9
\MEMORIA_DADOS|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~641_combout\ = ( \MEMORIA_DADOS|ram~638_combout\ & ( \MEMORIA_DADOS|ram~639_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_DADOS|ram~637_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~640_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~638_combout\ & ( \MEMORIA_DADOS|ram~639_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- (((\MEMORIA_DADOS|ram~637_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~640_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~638_combout\ & ( 
-- !\MEMORIA_DADOS|ram~639_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~637_combout\)))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # 
-- ((\MEMORIA_DADOS|ram~640_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~638_combout\ & ( !\MEMORIA_DADOS|ram~639_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~637_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~640_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~640_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~637_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~638_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~639_combout\,
	combout => \MEMORIA_DADOS|ram~641_combout\);

-- Location: LABCELL_X26_Y4_N33
\MEMORIA_DADOS|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~652_combout\ = ( \MEMORIA_DADOS|ram~636_combout\ & ( \MEMORIA_DADOS|ram~641_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\) # ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~646_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~651_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~636_combout\ & ( \MEMORIA_DADOS|ram~641_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~646_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & (((!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~651_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~636_combout\ & ( !\MEMORIA_DADOS|ram~641_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (((!\MEMORIA_INTRUCAO|memROM~12_combout\)) # (\MEMORIA_DADOS|ram~646_combout\))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & (((\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~651_combout\)))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~636_combout\ & ( !\MEMORIA_DADOS|ram~641_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~646_combout\)) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ((\MEMORIA_DADOS|ram~651_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~646_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~651_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~636_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~641_combout\,
	combout => \MEMORIA_DADOS|ram~652_combout\);

-- Location: LABCELL_X26_Y3_N27
\CPU|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~4_combout\ = ( \MEMORIA_DADOS|dado_out~0_combout\ & ( \MEMORIA_DADOS|ram~652_combout\ ) ) # ( !\MEMORIA_DADOS|dado_out~0_combout\ & ( \MEMORIA_DADOS|ram~652_combout\ & ( \SW[5]~input_o\ ) ) ) # ( !\MEMORIA_DADOS|dado_out~0_combout\ 
-- & ( !\MEMORIA_DADOS|ram~652_combout\ & ( \SW[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datae => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~652_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~4_combout\);

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

-- Location: LABCELL_X25_Y5_N54
\MEMORIA_INTRUCAO|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~31_combout\ = ( \MEMORIA_INTRUCAO|memROM~23_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~23_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~31_combout\);

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

-- Location: FF_X25_Y7_N28
\MEMORIA_DADOS|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~82_q\);

-- Location: FF_X25_Y7_N22
\MEMORIA_DADOS|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~210_q\);

-- Location: MLABCELL_X23_Y5_N45
\MEMORIA_DADOS|ram~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~18feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~18feeder_combout\);

-- Location: FF_X23_Y5_N46
\MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~18feeder_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~18_q\);

-- Location: FF_X28_Y4_N2
\MEMORIA_DADOS|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~146_q\);

-- Location: MLABCELL_X28_Y4_N0
\MEMORIA_DADOS|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~590_combout\ = ( \MEMORIA_DADOS|ram~146_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~210_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~146_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ 
-- & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~210_q\) ) ) ) # ( \MEMORIA_DADOS|ram~146_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~18_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~82_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~146_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~18_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~82_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~82_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~210_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~18_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~146_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~590_combout\);

-- Location: FF_X32_Y4_N23
\MEMORIA_DADOS|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~90_q\);

-- Location: MLABCELL_X23_Y5_N12
\MEMORIA_DADOS|ram~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~26feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~26feeder_combout\);

-- Location: FF_X23_Y5_N13
\MEMORIA_DADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~26feeder_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~26_q\);

-- Location: LABCELL_X31_Y7_N51
\MEMORIA_DADOS|ram~218feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~218feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~218feeder_combout\);

-- Location: FF_X31_Y7_N52
\MEMORIA_DADOS|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~218feeder_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~218_q\);

-- Location: FF_X28_Y4_N32
\MEMORIA_DADOS|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~154_q\);

-- Location: MLABCELL_X28_Y4_N30
\MEMORIA_DADOS|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~591_combout\ = ( \MEMORIA_DADOS|ram~154_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~218_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~154_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ 
-- & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~218_q\) ) ) ) # ( \MEMORIA_DADOS|ram~154_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~26_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~90_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~154_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~26_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~90_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~90_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~26_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~218_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~154_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~591_combout\);

-- Location: FF_X31_Y6_N23
\MEMORIA_DADOS|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~114_q\);

-- Location: FF_X23_Y7_N13
\MEMORIA_DADOS|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~178_q\);

-- Location: FF_X23_Y7_N31
\MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~50_q\);

-- Location: FF_X31_Y6_N59
\MEMORIA_DADOS|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~242_q\);

-- Location: LABCELL_X31_Y6_N57
\MEMORIA_DADOS|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~592_combout\ = ( \MEMORIA_DADOS|ram~242_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~114_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~242_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~114_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~242_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~50_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~178_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~242_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~50_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~178_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~114_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~178_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~50_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~242_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~592_combout\);

-- Location: FF_X24_Y4_N23
\MEMORIA_DADOS|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~122_q\);

-- Location: FF_X24_Y4_N14
\MEMORIA_DADOS|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~250_q\);

-- Location: FF_X24_Y3_N26
\MEMORIA_DADOS|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~186_q\);

-- Location: FF_X23_Y4_N40
\MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~58_q\);

-- Location: LABCELL_X24_Y4_N15
\MEMORIA_DADOS|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~593_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~250_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~186_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~122_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~122_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~250_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~186_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~58_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~593_combout\);

-- Location: MLABCELL_X28_Y4_N54
\MEMORIA_DADOS|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~594_combout\ = ( \MEMORIA_DADOS|ram~592_combout\ & ( \MEMORIA_DADOS|ram~593_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~590_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ((\MEMORIA_DADOS|ram~591_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~592_combout\ & ( \MEMORIA_DADOS|ram~593_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~590_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~2_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~591_combout\) # (\MEMORIA_INTRUCAO|memROM~2_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~592_combout\ & ( !\MEMORIA_DADOS|ram~593_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_INTRUCAO|memROM~2_combout\)) # (\MEMORIA_DADOS|ram~590_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~591_combout\)))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~592_combout\ & ( !\MEMORIA_DADOS|ram~593_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~590_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ((\MEMORIA_DADOS|ram~591_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~590_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~591_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~592_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~593_combout\,
	combout => \MEMORIA_DADOS|ram~594_combout\);

-- Location: FF_X32_Y5_N40
\MEMORIA_DADOS|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~330_q\);

-- Location: FF_X29_Y2_N55
\MEMORIA_DADOS|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~394_q\);

-- Location: FF_X32_Y4_N43
\MEMORIA_DADOS|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~458_q\);

-- Location: FF_X28_Y4_N20
\MEMORIA_DADOS|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~522_q\);

-- Location: MLABCELL_X28_Y4_N18
\MEMORIA_DADOS|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~608_combout\ = ( \MEMORIA_DADOS|ram~522_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (\MEMORIA_DADOS|ram~458_q\) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~522_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~458_q\) ) ) ) # ( \MEMORIA_DADOS|ram~522_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~330_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~394_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~522_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~330_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~394_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~330_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~394_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~458_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~522_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~608_combout\);

-- Location: FF_X28_Y6_N22
\MEMORIA_DADOS|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~482_q\);

-- Location: FF_X26_Y7_N52
\MEMORIA_DADOS|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~290_q\);

-- Location: LABCELL_X26_Y7_N0
\MEMORIA_DADOS|ram~418feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~418feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~418feeder_combout\);

-- Location: FF_X26_Y7_N1
\MEMORIA_DADOS|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~418feeder_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~418_q\);

-- Location: FF_X28_Y6_N7
\MEMORIA_DADOS|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~354_q\);

-- Location: LABCELL_X29_Y6_N39
\MEMORIA_DADOS|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~605_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~482_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~354_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~418_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~290_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~482_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~290_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~418_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~354_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~605_combout\);

-- Location: FF_X25_Y8_N44
\MEMORIA_DADOS|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~362_q\);

-- Location: FF_X29_Y8_N55
\MEMORIA_DADOS|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~298_q\);

-- Location: FF_X29_Y8_N14
\MEMORIA_DADOS|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~490_q\);

-- Location: FF_X29_Y8_N2
\MEMORIA_DADOS|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~426_q\);

-- Location: LABCELL_X29_Y8_N15
\MEMORIA_DADOS|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~606_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~490_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~362_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~426_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~362_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~298_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~490_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~426_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~606_combout\);

-- Location: FF_X24_Y7_N26
\MEMORIA_DADOS|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~450_q\);

-- Location: FF_X26_Y4_N8
\MEMORIA_DADOS|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~386_q\);

-- Location: FF_X26_Y4_N32
\MEMORIA_DADOS|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~322_q\);

-- Location: FF_X26_Y4_N20
\MEMORIA_DADOS|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~514_q\);

-- Location: LABCELL_X26_Y4_N18
\MEMORIA_DADOS|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~607_combout\ = ( \MEMORIA_DADOS|ram~514_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~386_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~514_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~386_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~514_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~322_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~450_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~514_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~322_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~450_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~450_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~386_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~322_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~514_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~607_combout\);

-- Location: MLABCELL_X28_Y4_N6
\MEMORIA_DADOS|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~609_combout\ = ( \MEMORIA_DADOS|ram~606_combout\ & ( \MEMORIA_DADOS|ram~607_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~605_combout\) # (\MEMORIA_INTRUCAO|memROM~2_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\)) # (\MEMORIA_DADOS|ram~608_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~606_combout\ & ( \MEMORIA_DADOS|ram~607_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (((\MEMORIA_DADOS|ram~605_combout\) # (\MEMORIA_INTRUCAO|memROM~2_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~608_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~606_combout\ & ( 
-- !\MEMORIA_DADOS|ram~607_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~605_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\)) # 
-- (\MEMORIA_DADOS|ram~608_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~606_combout\ & ( !\MEMORIA_DADOS|ram~607_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~605_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~608_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~608_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~605_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~606_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~607_combout\,
	combout => \MEMORIA_DADOS|ram~609_combout\);

-- Location: LABCELL_X25_Y6_N6
\MEMORIA_DADOS|ram~74feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~74feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~74feeder_combout\);

-- Location: FF_X25_Y6_N7
\MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~74feeder_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~74_q\);

-- Location: LABCELL_X24_Y6_N6
\MEMORIA_DADOS|ram~202feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~202feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~202feeder_combout\);

-- Location: FF_X24_Y6_N7
\MEMORIA_DADOS|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~202feeder_combout\,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~202_q\);

-- Location: LABCELL_X25_Y6_N15
\MEMORIA_DADOS|ram~170feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~170feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~170feeder_combout\);

-- Location: FF_X25_Y6_N17
\MEMORIA_DADOS|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~170feeder_combout\,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~170_q\);

-- Location: FF_X25_Y8_N40
\MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~42_q\);

-- Location: MLABCELL_X28_Y6_N3
\MEMORIA_DADOS|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~601_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~202_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~74_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~170_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~202_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~170_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~42_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~601_combout\);

-- Location: FF_X26_Y8_N7
\MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~66_q\);

-- Location: FF_X26_Y7_N58
\MEMORIA_DADOS|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~162_q\);

-- Location: FF_X26_Y8_N50
\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

-- Location: FF_X26_Y8_N19
\MEMORIA_DADOS|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~194_q\);

-- Location: LABCELL_X29_Y6_N42
\MEMORIA_DADOS|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~600_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~194_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~162_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~66_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~162_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~194_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~600_combout\);

-- Location: FF_X32_Y4_N35
\MEMORIA_DADOS|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~106_q\);

-- Location: FF_X31_Y4_N25
\MEMORIA_DADOS|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~234_q\);

-- Location: FF_X31_Y4_N32
\MEMORIA_DADOS|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~266_q\);

-- Location: FF_X31_Y4_N38
\MEMORIA_DADOS|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~138_q\);

-- Location: LABCELL_X31_Y4_N39
\MEMORIA_DADOS|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~603_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~266_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~138_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~234_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~106_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~106_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~234_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~266_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~138_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~603_combout\);

-- Location: FF_X25_Y4_N2
\MEMORIA_DADOS|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~226_q\);

-- Location: FF_X25_Y4_N32
\MEMORIA_DADOS|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~130_q\);

-- Location: FF_X28_Y2_N41
\MEMORIA_DADOS|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~98_q\);

-- Location: FF_X25_Y4_N26
\MEMORIA_DADOS|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~258_q\);

-- Location: LABCELL_X25_Y4_N24
\MEMORIA_DADOS|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~602_combout\ = ( \MEMORIA_DADOS|ram~258_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~130_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~258_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (\MEMORIA_DADOS|ram~130_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~258_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~98_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~226_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~258_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~98_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~226_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~226_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~130_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~98_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~258_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~602_combout\);

-- Location: MLABCELL_X28_Y4_N36
\MEMORIA_DADOS|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~604_combout\ = ( \MEMORIA_DADOS|ram~603_combout\ & ( \MEMORIA_DADOS|ram~602_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~600_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (\MEMORIA_DADOS|ram~601_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~603_combout\ & ( \MEMORIA_DADOS|ram~602_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~600_combout\) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~601_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~603_combout\ & ( !\MEMORIA_DADOS|ram~602_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~600_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\)) # (\MEMORIA_DADOS|ram~601_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~603_combout\ & ( !\MEMORIA_DADOS|ram~602_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~600_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (\MEMORIA_DADOS|ram~601_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~601_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~600_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~603_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~602_combout\,
	combout => \MEMORIA_DADOS|ram~604_combout\);

-- Location: FF_X28_Y8_N2
\MEMORIA_DADOS|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~282_q\);

-- Location: LABCELL_X29_Y6_N21
\MEMORIA_DADOS|ram~274feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~274feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \MEMORIA_DADOS|ram~274feeder_combout\);

-- Location: FF_X29_Y6_N23
\MEMORIA_DADOS|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~274feeder_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~274_q\);

-- Location: FF_X28_Y8_N55
\MEMORIA_DADOS|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~410_q\);

-- Location: FF_X29_Y6_N31
\MEMORIA_DADOS|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~402_q\);

-- Location: MLABCELL_X28_Y8_N3
\MEMORIA_DADOS|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~595_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~410_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~282_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~402_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~282_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~274_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~410_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~402_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~595_combout\);

-- Location: FF_X31_Y5_N56
\MEMORIA_DADOS|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~506_q\);

-- Location: FF_X34_Y5_N5
\MEMORIA_DADOS|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~370_q\);

-- Location: FF_X31_Y5_N32
\MEMORIA_DADOS|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~378_q\);

-- Location: FF_X32_Y7_N37
\MEMORIA_DADOS|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~498_q\);

-- Location: LABCELL_X31_Y5_N57
\MEMORIA_DADOS|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~598_combout\ = ( \MEMORIA_DADOS|ram~498_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~506_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~498_q\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ 
-- & ( (\MEMORIA_DADOS|ram~506_q\ & \MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~498_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~370_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~378_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~498_q\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~370_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~378_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~506_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~370_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~378_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~498_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~598_combout\);

-- Location: FF_X31_Y7_N35
\MEMORIA_DADOS|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~346_q\);

-- Location: FF_X31_Y7_N8
\MEMORIA_DADOS|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~474_q\);

-- Location: FF_X31_Y8_N31
\MEMORIA_DADOS|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~338_q\);

-- Location: FF_X25_Y7_N13
\MEMORIA_DADOS|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~466_q\);

-- Location: LABCELL_X31_Y7_N54
\MEMORIA_DADOS|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~597_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~474_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~346_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~466_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~346_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~474_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~338_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~466_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~597_combout\);

-- Location: FF_X26_Y5_N56
\MEMORIA_DADOS|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~306_q\);

-- Location: FF_X26_Y5_N34
\MEMORIA_DADOS|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~442_q\);

-- Location: FF_X23_Y7_N43
\MEMORIA_DADOS|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~434_q\);

-- Location: FF_X26_Y5_N44
\MEMORIA_DADOS|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~314_q\);

-- Location: LABCELL_X26_Y5_N42
\MEMORIA_DADOS|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~596_combout\ = ( \MEMORIA_DADOS|ram~314_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~442_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~314_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ 
-- & ( (\MEMORIA_DADOS|ram~442_q\ & \MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~314_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~306_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~434_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~314_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~306_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~434_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~306_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~442_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~434_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~314_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~596_combout\);

-- Location: MLABCELL_X28_Y4_N24
\MEMORIA_DADOS|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~599_combout\ = ( \MEMORIA_DADOS|ram~597_combout\ & ( \MEMORIA_DADOS|ram~596_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~595_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~598_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~597_combout\ & ( \MEMORIA_DADOS|ram~596_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~595_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~598_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~597_combout\ & ( 
-- !\MEMORIA_DADOS|ram~596_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~595_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~598_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~597_combout\ & ( !\MEMORIA_DADOS|ram~596_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~595_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~598_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~595_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~598_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~597_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~596_combout\,
	combout => \MEMORIA_DADOS|ram~599_combout\);

-- Location: MLABCELL_X28_Y4_N12
\MEMORIA_DADOS|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~610_combout\ = ( \MEMORIA_DADOS|ram~604_combout\ & ( \MEMORIA_DADOS|ram~599_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_DADOS|ram~594_combout\)) # (\MEMORIA_INTRUCAO|memROM~15_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\) # ((\MEMORIA_DADOS|ram~609_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~604_combout\ & ( \MEMORIA_DADOS|ram~599_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- (((\MEMORIA_DADOS|ram~594_combout\)) # (\MEMORIA_INTRUCAO|memROM~15_combout\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~609_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~604_combout\ & ( 
-- !\MEMORIA_DADOS|ram~599_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~594_combout\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\) # 
-- ((\MEMORIA_DADOS|ram~609_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~604_combout\ & ( !\MEMORIA_DADOS|ram~599_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~594_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~609_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~594_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~609_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~604_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~599_combout\,
	combout => \MEMORIA_DADOS|ram~610_combout\);

-- Location: MLABCELL_X28_Y4_N45
\CPU|MUX1|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~2_combout\ = ( \MEMORIA_DADOS|dado_out~0_combout\ & ( \MEMORIA_DADOS|ram~610_combout\ ) ) # ( !\MEMORIA_DADOS|dado_out~0_combout\ & ( \MEMORIA_DADOS|ram~610_combout\ & ( \SW[3]~input_o\ ) ) ) # ( !\MEMORIA_DADOS|dado_out~0_combout\ 
-- & ( !\MEMORIA_DADOS|ram~610_combout\ & ( \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datae => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~610_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~2_combout\);

-- Location: LABCELL_X29_Y7_N54
\MEMORIA_INTRUCAO|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~30_combout\ = ( \MEMORIA_INTRUCAO|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & \MEMORIA_INTRUCAO|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~30_combout\);

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

-- Location: FF_X34_Y3_N5
\MEMORIA_DADOS|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~441_q\);

-- Location: FF_X24_Y3_N55
\MEMORIA_DADOS|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~185_q\);

-- Location: FF_X24_Y6_N49
\MEMORIA_DADOS|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~201_q\);

-- Location: FF_X31_Y3_N14
\MEMORIA_DADOS|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~457_q\);

-- Location: LABCELL_X31_Y3_N12
\MEMORIA_DADOS|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~586_combout\ = ( \MEMORIA_DADOS|ram~457_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_DADOS|ram~201_q\) # (\MEMORIA_INTRUCAO|memROM~15_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~457_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_DADOS|ram~201_q\) ) ) ) # ( \MEMORIA_DADOS|ram~457_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~185_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~441_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~457_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~185_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~441_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~441_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~185_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~201_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~457_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~586_combout\);

-- Location: LABCELL_X26_Y5_N12
\MEMORIA_DADOS|ram~313feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~313feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~313feeder_combout\);

-- Location: FF_X26_Y5_N13
\MEMORIA_DADOS|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~313feeder_combout\,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~313_q\);

-- Location: FF_X24_Y6_N31
\MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~73_q\);

-- Location: FF_X29_Y9_N23
\MEMORIA_DADOS|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~329_q\);

-- Location: FF_X29_Y7_N40
\MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~57_q\);

-- Location: LABCELL_X29_Y9_N18
\MEMORIA_DADOS|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~584_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~329_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~313_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~73_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~313_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~329_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~57_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~584_combout\);

-- Location: FF_X31_Y4_N49
\MEMORIA_DADOS|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~137_q\);

-- Location: FF_X31_Y3_N44
\MEMORIA_DADOS|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~393_q\);

-- Location: FF_X32_Y3_N59
\MEMORIA_DADOS|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~377_q\);

-- Location: FF_X28_Y3_N28
\MEMORIA_DADOS|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~121_q\);

-- Location: LABCELL_X31_Y3_N45
\MEMORIA_DADOS|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~585_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~393_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~377_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~137_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~121_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~137_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~393_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~377_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~121_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~585_combout\);

-- Location: FF_X31_Y3_N38
\MEMORIA_DADOS|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~521_q\);

-- Location: FF_X32_Y3_N50
\MEMORIA_DADOS|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~505_q\);

-- Location: FF_X28_Y3_N50
\MEMORIA_DADOS|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~249_q\);

-- Location: FF_X31_Y4_N35
\MEMORIA_DADOS|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~265_q\);

-- Location: LABCELL_X31_Y3_N39
\MEMORIA_DADOS|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~587_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~521_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~265_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~505_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~249_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~521_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~505_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~249_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~265_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~587_combout\);

-- Location: LABCELL_X29_Y3_N54
\MEMORIA_DADOS|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~588_combout\ = ( \MEMORIA_DADOS|ram~585_combout\ & ( \MEMORIA_DADOS|ram~587_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~584_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (\MEMORIA_DADOS|ram~586_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~585_combout\ & ( \MEMORIA_DADOS|ram~587_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~584_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_DADOS|ram~586_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~585_combout\ & ( !\MEMORIA_DADOS|ram~587_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_DADOS|ram~584_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~586_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~585_combout\ & ( !\MEMORIA_DADOS|ram~587_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~584_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (\MEMORIA_DADOS|ram~586_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~586_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~584_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~585_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~587_combout\,
	combout => \MEMORIA_DADOS|ram~588_combout\);

-- Location: FF_X28_Y7_N50
\MEMORIA_DADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~33_q\);

-- Location: FF_X29_Y6_N50
\MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~17_q\);

-- Location: FF_X29_Y6_N14
\MEMORIA_DADOS|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~273_q\);

-- Location: FF_X26_Y7_N19
\MEMORIA_DADOS|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~289_q\);

-- Location: MLABCELL_X28_Y6_N39
\MEMORIA_DADOS|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~569_combout\ = ( \MEMORIA_DADOS|ram~289_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~273_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~289_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ( (\MEMORIA_DADOS|ram~273_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~289_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~17_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~33_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~289_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~17_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~33_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~33_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~17_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~273_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~289_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~569_combout\);

-- Location: FF_X28_Y6_N2
\MEMORIA_DADOS|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~225_q\);

-- Location: FF_X24_Y7_N35
\MEMORIA_DADOS|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~465_q\);

-- Location: FF_X25_Y7_N19
\MEMORIA_DADOS|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~209_q\);

-- Location: FF_X28_Y6_N26
\MEMORIA_DADOS|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~481_q\);

-- Location: MLABCELL_X28_Y6_N24
\MEMORIA_DADOS|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~572_combout\ = ( \MEMORIA_DADOS|ram~481_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~465_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~481_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ( (\MEMORIA_DADOS|ram~465_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~481_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~209_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~225_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~481_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~209_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~225_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~225_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~465_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~209_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~481_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~572_combout\);

-- Location: FF_X26_Y7_N43
\MEMORIA_DADOS|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~417_q\);

-- Location: LABCELL_X24_Y3_N9
\MEMORIA_DADOS|ram~145feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~145feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~145feeder_combout\);

-- Location: FF_X24_Y3_N10
\MEMORIA_DADOS|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~145feeder_combout\,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~145_q\);

-- Location: FF_X26_Y7_N16
\MEMORIA_DADOS|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~161_q\);

-- Location: FF_X29_Y6_N2
\MEMORIA_DADOS|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~401_q\);

-- Location: LABCELL_X29_Y6_N0
\MEMORIA_DADOS|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~570_combout\ = ( \MEMORIA_DADOS|ram~401_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~417_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~401_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ 
-- & ( (\MEMORIA_DADOS|ram~417_q\ & \MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~401_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~145_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~161_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~401_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~145_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~161_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~417_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~145_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~161_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~401_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~570_combout\);

-- Location: FF_X25_Y7_N7
\MEMORIA_DADOS|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~81_q\);

-- Location: FF_X28_Y2_N10
\MEMORIA_DADOS|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~97_q\);

-- Location: FF_X31_Y8_N7
\MEMORIA_DADOS|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~337_q\);

-- Location: FF_X28_Y6_N11
\MEMORIA_DADOS|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~353_q\);

-- Location: MLABCELL_X28_Y6_N9
\MEMORIA_DADOS|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~571_combout\ = ( \MEMORIA_DADOS|ram~353_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~337_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~353_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ( (\MEMORIA_DADOS|ram~337_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~353_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~81_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~97_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~353_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~81_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~97_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~81_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~97_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~337_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~353_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~571_combout\);

-- Location: MLABCELL_X28_Y6_N57
\MEMORIA_DADOS|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~573_combout\ = ( \MEMORIA_DADOS|ram~570_combout\ & ( \MEMORIA_DADOS|ram~571_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_DADOS|ram~569_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~572_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~570_combout\ & ( \MEMORIA_DADOS|ram~571_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (((\MEMORIA_DADOS|ram~569_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~572_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~570_combout\ & ( 
-- !\MEMORIA_DADOS|ram~571_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~569_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # 
-- ((\MEMORIA_DADOS|ram~572_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~570_combout\ & ( !\MEMORIA_DADOS|ram~571_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~569_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~572_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~569_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~572_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~570_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~571_combout\,
	combout => \MEMORIA_DADOS|ram~573_combout\);

-- Location: LABCELL_X25_Y8_N6
\MEMORIA_DADOS|ram~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~41feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~41feeder_combout\);

-- Location: FF_X25_Y8_N7
\MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~41feeder_combout\,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~41_q\);

-- Location: FF_X29_Y8_N43
\MEMORIA_DADOS|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~425_q\);

-- Location: FF_X25_Y5_N49
\MEMORIA_DADOS|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~169_q\);

-- Location: FF_X29_Y8_N23
\MEMORIA_DADOS|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~297_q\);

-- Location: LABCELL_X29_Y6_N51
\MEMORIA_DADOS|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~580_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~425_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~169_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~297_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~41_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~425_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~169_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~297_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~580_combout\);

-- Location: FF_X31_Y7_N29
\MEMORIA_DADOS|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~217_q\);

-- Location: FF_X31_Y7_N32
\MEMORIA_DADOS|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~345_q\);

-- Location: FF_X32_Y4_N41
\MEMORIA_DADOS|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~89_q\);

-- Location: FF_X31_Y7_N2
\MEMORIA_DADOS|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~473_q\);

-- Location: LABCELL_X31_Y7_N0
\MEMORIA_DADOS|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~581_combout\ = ( \MEMORIA_DADOS|ram~473_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~345_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~473_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ( (\MEMORIA_DADOS|ram~345_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~473_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~89_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~217_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~473_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~89_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~217_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~217_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~345_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~89_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~473_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~581_combout\);

-- Location: MLABCELL_X28_Y8_N33
\MEMORIA_DADOS|ram~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~25feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~25feeder_combout\);

-- Location: FF_X28_Y8_N35
\MEMORIA_DADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~25feeder_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~25_q\);

-- Location: MLABCELL_X28_Y8_N21
\MEMORIA_DADOS|ram~281feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~281feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~281feeder_combout\);

-- Location: FF_X28_Y8_N23
\MEMORIA_DADOS|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~281feeder_combout\,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~281_q\);

-- Location: LABCELL_X24_Y3_N15
\MEMORIA_DADOS|ram~153feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~153feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~153feeder_combout\);

-- Location: FF_X24_Y3_N17
\MEMORIA_DADOS|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~153feeder_combout\,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~153_q\);

-- Location: FF_X28_Y8_N44
\MEMORIA_DADOS|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~409_q\);

-- Location: MLABCELL_X28_Y8_N42
\MEMORIA_DADOS|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~579_combout\ = ( \MEMORIA_DADOS|ram~409_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_DADOS|ram~281_q\) # (\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~409_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & \MEMORIA_DADOS|ram~281_q\) ) ) ) # ( \MEMORIA_DADOS|ram~409_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~25_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~153_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~409_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~25_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~153_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~25_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~281_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~153_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~409_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~579_combout\);

-- Location: FF_X29_Y8_N29
\MEMORIA_DADOS|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~489_q\);

-- Location: FF_X31_Y4_N16
\MEMORIA_DADOS|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~233_q\);

-- Location: LABCELL_X25_Y8_N24
\MEMORIA_DADOS|ram~105feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~105feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~105feeder_combout\);

-- Location: FF_X25_Y8_N25
\MEMORIA_DADOS|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~105feeder_combout\,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~105_q\);

-- Location: LABCELL_X25_Y8_N18
\MEMORIA_DADOS|ram~361feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~361feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~361feeder_combout\);

-- Location: FF_X25_Y8_N19
\MEMORIA_DADOS|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~361feeder_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~361_q\);

-- Location: LABCELL_X29_Y8_N30
\MEMORIA_DADOS|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~582_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~489_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~361_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~233_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~105_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~489_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~233_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~105_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~361_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~582_combout\);

-- Location: LABCELL_X29_Y6_N24
\MEMORIA_DADOS|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~583_combout\ = ( \MEMORIA_DADOS|ram~579_combout\ & ( \MEMORIA_DADOS|ram~582_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~581_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\)) # (\MEMORIA_DADOS|ram~580_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~579_combout\ & ( \MEMORIA_DADOS|ram~582_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~581_combout\)))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\)) # (\MEMORIA_DADOS|ram~580_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~579_combout\ & ( 
-- !\MEMORIA_DADOS|ram~582_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~581_combout\)))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~580_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~579_combout\ & ( !\MEMORIA_DADOS|ram~582_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~581_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~580_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~580_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~581_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~579_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~582_combout\,
	combout => \MEMORIA_DADOS|ram~583_combout\);

-- Location: FF_X32_Y6_N38
\MEMORIA_DADOS|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~385_q\);

-- Location: FF_X32_Y3_N10
\MEMORIA_DADOS|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~369_q\);

-- Location: FF_X31_Y6_N49
\MEMORIA_DADOS|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~113_q\);

-- Location: FF_X34_Y6_N46
\MEMORIA_DADOS|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~129_q\);

-- Location: LABCELL_X32_Y6_N39
\MEMORIA_DADOS|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~576_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~385_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~129_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~369_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~385_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~369_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~113_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~129_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~576_combout\);

-- Location: FF_X25_Y4_N55
\MEMORIA_DADOS|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~257_q\);

-- Location: FF_X32_Y7_N34
\MEMORIA_DADOS|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~497_q\);

-- Location: FF_X32_Y6_N44
\MEMORIA_DADOS|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~513_q\);

-- Location: FF_X31_Y6_N55
\MEMORIA_DADOS|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~241_q\);

-- Location: LABCELL_X32_Y6_N45
\MEMORIA_DADOS|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~577_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~513_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~257_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~497_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~241_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~257_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~497_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~513_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~241_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~577_combout\);

-- Location: FF_X23_Y7_N58
\MEMORIA_DADOS|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~177_q\);

-- Location: FF_X24_Y7_N5
\MEMORIA_DADOS|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~193_q\);

-- Location: FF_X23_Y7_N1
\MEMORIA_DADOS|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~433_q\);

-- Location: FF_X24_Y7_N55
\MEMORIA_DADOS|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~449_q\);

-- Location: LABCELL_X25_Y7_N39
\MEMORIA_DADOS|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~575_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~449_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~193_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~433_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~177_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~177_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~193_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~433_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~449_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~575_combout\);

-- Location: FF_X24_Y6_N37
\MEMORIA_DADOS|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~305_q\);

-- Location: FF_X26_Y4_N40
\MEMORIA_DADOS|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~321_q\);

-- Location: FF_X24_Y8_N43
\MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~65_q\);

-- Location: LABCELL_X24_Y8_N0
\MEMORIA_DADOS|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~49feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \MEMORIA_DADOS|ram~49feeder_combout\);

-- Location: FF_X24_Y8_N1
\MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~49feeder_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~49_q\);

-- Location: LABCELL_X25_Y6_N54
\MEMORIA_DADOS|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~574_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~321_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~65_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~305_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~305_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~321_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~65_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~49_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~574_combout\);

-- Location: MLABCELL_X28_Y6_N51
\MEMORIA_DADOS|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~578_combout\ = ( \MEMORIA_DADOS|ram~575_combout\ & ( \MEMORIA_DADOS|ram~574_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~576_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~577_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~575_combout\ & ( \MEMORIA_DADOS|ram~574_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\)) # 
-- (\MEMORIA_DADOS|ram~576_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~577_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~575_combout\ & ( !\MEMORIA_DADOS|ram~574_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~576_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~577_combout\)))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~575_combout\ & ( !\MEMORIA_DADOS|ram~574_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~576_combout\)) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((\MEMORIA_DADOS|ram~577_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~576_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~577_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~575_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~574_combout\,
	combout => \MEMORIA_DADOS|ram~578_combout\);

-- Location: LABCELL_X29_Y3_N24
\MEMORIA_DADOS|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~589_combout\ = ( \MEMORIA_DADOS|ram~583_combout\ & ( \MEMORIA_DADOS|ram~578_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~573_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\) # ((\MEMORIA_DADOS|ram~588_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~583_combout\ & ( \MEMORIA_DADOS|ram~578_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (((\MEMORIA_DADOS|ram~573_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~588_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~583_combout\ & ( 
-- !\MEMORIA_DADOS|ram~578_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~573_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\) # 
-- ((\MEMORIA_DADOS|ram~588_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~583_combout\ & ( !\MEMORIA_DADOS|ram~578_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~573_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~588_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~588_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~573_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~583_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~578_combout\,
	combout => \MEMORIA_DADOS|ram~589_combout\);

-- Location: LABCELL_X29_Y3_N9
\CPU|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~1_combout\ = ( \MEMORIA_DADOS|ram~589_combout\ & ( (\MEMORIA_DADOS|dado_out~0_combout\) # (\SW[2]~input_o\) ) ) # ( !\MEMORIA_DADOS|ram~589_combout\ & ( (\SW[2]~input_o\ & !\MEMORIA_DADOS|dado_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~589_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~1_combout\);

-- Location: LABCELL_X29_Y7_N45
\MEMORIA_INTRUCAO|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~29_combout\ = ( \MEMORIA_INTRUCAO|memROM~13_combout\ & ( ((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~17_combout\))) # (\MEMORIA_INTRUCAO|memROM~16_combout\) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~13_combout\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \MEMORIA_INTRUCAO|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001010101110101010101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~13_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~29_combout\);

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

-- Location: FF_X29_Y5_N19
\MEMORIA_DADOS|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~520_q\);

-- Location: FF_X29_Y2_N38
\MEMORIA_DADOS|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~512_q\);

-- Location: FF_X29_Y8_N25
\MEMORIA_DADOS|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~488_q\);

-- Location: FF_X28_Y6_N17
\MEMORIA_DADOS|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~480_q\);

-- Location: LABCELL_X29_Y5_N21
\MEMORIA_DADOS|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~566_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~480_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~512_q\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~520_q\)) ) ) ) 
-- # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~480_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~488_q\) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_DADOS|ram~480_q\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~512_q\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~520_q\)) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_DADOS|ram~480_q\ & ( (\MEMORIA_DADOS|ram~488_q\ & 
-- \MEMORIA_INTRUCAO|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~520_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~512_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~488_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~480_q\,
	combout => \MEMORIA_DADOS|ram~566_combout\);

-- Location: FF_X32_Y7_N16
\MEMORIA_DADOS|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~496_q\);

-- Location: FF_X31_Y7_N11
\MEMORIA_DADOS|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~472_q\);

-- Location: LABCELL_X24_Y7_N12
\MEMORIA_DADOS|ram~464feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~464feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~464feeder_combout\);

-- Location: FF_X24_Y7_N13
\MEMORIA_DADOS|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~464feeder_combout\,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~464_q\);

-- Location: FF_X31_Y5_N26
\MEMORIA_DADOS|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~504_q\);

-- Location: LABCELL_X31_Y5_N27
\MEMORIA_DADOS|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~565_combout\ = ( \MEMORIA_DADOS|ram~504_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~496_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~504_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (\MEMORIA_DADOS|ram~496_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~504_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~464_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~472_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~504_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~464_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~472_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~496_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~472_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~464_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~504_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~565_combout\);

-- Location: FF_X26_Y7_N46
\MEMORIA_DADOS|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~416_q\);

-- Location: LABCELL_X24_Y7_N9
\MEMORIA_DADOS|ram~448feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~448feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~448feeder_combout\);

-- Location: FF_X24_Y7_N10
\MEMORIA_DADOS|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~448feeder_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~448_q\);

-- Location: FF_X29_Y8_N46
\MEMORIA_DADOS|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~424_q\);

-- Location: FF_X32_Y4_N46
\MEMORIA_DADOS|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~456_q\);

-- Location: LABCELL_X31_Y5_N42
\MEMORIA_DADOS|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~564_combout\ = ( \MEMORIA_DADOS|ram~456_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_DADOS|ram~448_q\) # (\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~456_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~448_q\) ) ) ) # ( \MEMORIA_DADOS|ram~456_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~416_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~424_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~456_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~416_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~424_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~416_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~448_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~424_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~456_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~564_combout\);

-- Location: MLABCELL_X28_Y8_N57
\MEMORIA_DADOS|ram~408feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~408feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~408feeder_combout\);

-- Location: FF_X28_Y8_N58
\MEMORIA_DADOS|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~408feeder_combout\,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~408_q\);

-- Location: FF_X26_Y5_N49
\MEMORIA_DADOS|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~440_q\);

-- Location: FF_X23_Y7_N11
\MEMORIA_DADOS|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~432_q\);

-- Location: FF_X29_Y6_N35
\MEMORIA_DADOS|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~400_q\);

-- Location: LABCELL_X26_Y5_N9
\MEMORIA_DADOS|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~563_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~440_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~408_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~432_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~400_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~408_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~440_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~432_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~400_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~563_combout\);

-- Location: LABCELL_X29_Y5_N45
\MEMORIA_DADOS|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~567_combout\ = ( \MEMORIA_DADOS|ram~564_combout\ & ( \MEMORIA_DADOS|ram~563_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~565_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~566_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~564_combout\ & ( \MEMORIA_DADOS|ram~563_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~565_combout\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~566_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~564_combout\ & ( 
-- !\MEMORIA_DADOS|ram~563_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~18_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~565_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~566_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~564_combout\ & ( !\MEMORIA_DADOS|ram~563_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ((\MEMORIA_DADOS|ram~565_combout\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~566_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~566_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~565_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~564_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~563_combout\,
	combout => \MEMORIA_DADOS|ram~567_combout\);

-- Location: FF_X28_Y6_N32
\MEMORIA_DADOS|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~352_q\);

-- Location: FF_X29_Y6_N16
\MEMORIA_DADOS|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~272_q\);

-- Location: LABCELL_X32_Y8_N51
\MEMORIA_DADOS|ram~336feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~336feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~336feeder_combout\);

-- Location: FF_X32_Y8_N53
\MEMORIA_DADOS|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~336feeder_combout\,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~336_q\);

-- Location: FF_X32_Y5_N56
\MEMORIA_DADOS|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~288_q\);

-- Location: LABCELL_X32_Y5_N57
\MEMORIA_DADOS|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~553_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~352_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~288_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~336_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~272_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~352_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~272_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~336_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~288_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~553_combout\);

-- Location: FF_X28_Y8_N37
\MEMORIA_DADOS|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~280_q\);

-- Location: LABCELL_X25_Y8_N48
\MEMORIA_DADOS|ram~360feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~360feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~360feeder_combout\);

-- Location: FF_X25_Y8_N49
\MEMORIA_DADOS|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~360feeder_combout\,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~360_q\);

-- Location: FF_X29_Y8_N11
\MEMORIA_DADOS|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~296_q\);

-- Location: FF_X31_Y7_N37
\MEMORIA_DADOS|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~344_q\);

-- Location: MLABCELL_X28_Y7_N18
\MEMORIA_DADOS|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~554_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~360_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~344_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~296_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~280_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~360_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~296_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~344_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~554_combout\);

-- Location: FF_X26_Y5_N4
\MEMORIA_DADOS|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~312_q\);

-- Location: FF_X29_Y2_N44
\MEMORIA_DADOS|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~392_q\);

-- Location: FF_X31_Y5_N34
\MEMORIA_DADOS|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~376_q\);

-- Location: FF_X32_Y5_N34
\MEMORIA_DADOS|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~328_q\);

-- Location: LABCELL_X29_Y2_N45
\MEMORIA_DADOS|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~556_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~392_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~328_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~376_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~312_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~392_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~376_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~328_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~556_combout\);

-- Location: LABCELL_X25_Y6_N36
\MEMORIA_DADOS|ram~304feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~304feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~304feeder_combout\);

-- Location: FF_X25_Y6_N37
\MEMORIA_DADOS|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~304feeder_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~304_q\);

-- Location: FF_X34_Y4_N17
\MEMORIA_DADOS|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~368_q\);

-- Location: FF_X26_Y4_N53
\MEMORIA_DADOS|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~384_q\);

-- Location: FF_X26_Y4_N59
\MEMORIA_DADOS|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~320_q\);

-- Location: LABCELL_X26_Y4_N48
\MEMORIA_DADOS|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~555_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~384_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~368_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~320_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~304_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~368_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~384_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~320_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~555_combout\);

-- Location: LABCELL_X29_Y5_N30
\MEMORIA_DADOS|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~557_combout\ = ( \MEMORIA_DADOS|ram~556_combout\ & ( \MEMORIA_DADOS|ram~555_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~553_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ((\MEMORIA_DADOS|ram~554_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~556_combout\ & ( \MEMORIA_DADOS|ram~555_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~553_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~554_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~556_combout\ & ( !\MEMORIA_DADOS|ram~555_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~553_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~554_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~556_combout\ & ( !\MEMORIA_DADOS|ram~555_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~553_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ((\MEMORIA_DADOS|ram~554_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~553_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~554_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~556_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~555_combout\,
	combout => \MEMORIA_DADOS|ram~557_combout\);

-- Location: MLABCELL_X34_Y5_N45
\MEMORIA_DADOS|ram~136feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~136feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~136feeder_combout\);

-- Location: FF_X34_Y5_N46
\MEMORIA_DADOS|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~136feeder_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~136_q\);

-- Location: FF_X32_Y4_N25
\MEMORIA_DADOS|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~104_q\);

-- Location: MLABCELL_X34_Y5_N48
\MEMORIA_DADOS|ram~128feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~128feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~128feeder_combout\);

-- Location: FF_X34_Y5_N49
\MEMORIA_DADOS|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~128feeder_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~128_q\);

-- Location: MLABCELL_X28_Y2_N12
\MEMORIA_DADOS|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~96feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~96feeder_combout\);

-- Location: FF_X28_Y2_N13
\MEMORIA_DADOS|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~96feeder_combout\,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~96_q\);

-- Location: LABCELL_X32_Y5_N6
\MEMORIA_DADOS|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~551_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~136_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~104_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~128_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~136_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~104_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~128_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~96_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~551_combout\);

-- Location: FF_X28_Y7_N25
\MEMORIA_DADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~32_q\);

-- Location: FF_X31_Y5_N14
\MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~40_q\);

-- Location: LABCELL_X25_Y6_N0
\MEMORIA_DADOS|ram~72feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~72feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~72feeder_combout\);

-- Location: FF_X25_Y6_N1
\MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~72feeder_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~72_q\);

-- Location: FF_X26_Y8_N43
\MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~64_q\);

-- Location: LABCELL_X31_Y5_N15
\MEMORIA_DADOS|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~549_combout\ = ( \MEMORIA_DADOS|ram~64_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~72_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~64_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~72_q\) ) ) ) # ( \MEMORIA_DADOS|ram~64_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~32_q\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ 
-- & ((\MEMORIA_DADOS|ram~40_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~64_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~32_q\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~40_q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~32_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~40_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~64_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~549_combout\);

-- Location: FF_X32_Y4_N2
\MEMORIA_DADOS|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~88_q\);

-- Location: FF_X24_Y4_N19
\MEMORIA_DADOS|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~120_q\);

-- Location: FF_X31_Y6_N37
\MEMORIA_DADOS|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~112_q\);

-- Location: LABCELL_X21_Y4_N0
\MEMORIA_DADOS|ram~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~80feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~80feeder_combout\);

-- Location: FF_X21_Y4_N1
\MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~80feeder_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~80_q\);

-- Location: LABCELL_X25_Y5_N0
\MEMORIA_DADOS|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~550_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~120_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~88_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~112_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~88_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~120_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~112_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~80_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~550_combout\);

-- Location: FF_X23_Y5_N49
\MEMORIA_DADOS|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~16_q\);

-- Location: FF_X29_Y7_N16
\MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~56_q\);

-- Location: FF_X23_Y5_N55
\MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~24_q\);

-- Location: FF_X23_Y5_N25
\MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~48_q\);

-- Location: LABCELL_X26_Y5_N57
\MEMORIA_DADOS|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~548_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~56_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~48_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~24_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( 
-- \MEMORIA_DADOS|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~16_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~56_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~24_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~48_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~548_combout\);

-- Location: LABCELL_X29_Y5_N54
\MEMORIA_DADOS|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~552_combout\ = ( \MEMORIA_DADOS|ram~550_combout\ & ( \MEMORIA_DADOS|ram~548_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\) # ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~549_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~551_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~550_combout\ & ( \MEMORIA_DADOS|ram~548_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\) # 
-- (\MEMORIA_DADOS|ram~549_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~551_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~550_combout\ & ( !\MEMORIA_DADOS|ram~548_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~18_combout\ & \MEMORIA_DADOS|ram~549_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\)) # (\MEMORIA_DADOS|ram~551_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~550_combout\ & ( !\MEMORIA_DADOS|ram~548_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~549_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (\MEMORIA_DADOS|ram~551_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~551_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~549_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~550_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~548_combout\,
	combout => \MEMORIA_DADOS|ram~552_combout\);

-- Location: FF_X26_Y7_N10
\MEMORIA_DADOS|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~160_q\);

-- Location: FF_X25_Y5_N34
\MEMORIA_DADOS|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~168_q\);

-- Location: FF_X26_Y8_N28
\MEMORIA_DADOS|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~192_q\);

-- Location: FF_X29_Y5_N26
\MEMORIA_DADOS|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~200_q\);

-- Location: LABCELL_X29_Y5_N27
\MEMORIA_DADOS|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~559_combout\ = ( \MEMORIA_DADOS|ram~192_q\ & ( \MEMORIA_DADOS|ram~200_q\ & ( ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~160_q\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~168_q\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~192_q\ & ( \MEMORIA_DADOS|ram~200_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~160_q\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~168_q\) # (\MEMORIA_INTRUCAO|memROM~2_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~192_q\ & ( !\MEMORIA_DADOS|ram~200_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~2_combout\)) # (\MEMORIA_DADOS|ram~160_q\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~168_q\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~192_q\ & ( !\MEMORIA_DADOS|ram~200_q\ 
-- & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~160_q\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~168_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~160_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~168_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~192_q\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~200_q\,
	combout => \MEMORIA_DADOS|ram~559_combout\);

-- Location: FF_X29_Y5_N14
\MEMORIA_DADOS|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~264_q\);

-- Location: FF_X28_Y6_N46
\MEMORIA_DADOS|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~224_q\);

-- Location: LABCELL_X31_Y4_N54
\MEMORIA_DADOS|ram~232feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~232feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~232feeder_combout\);

-- Location: FF_X31_Y4_N55
\MEMORIA_DADOS|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~232feeder_combout\,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~232_q\);

-- Location: LABCELL_X24_Y5_N48
\MEMORIA_DADOS|ram~256feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~256feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \MEMORIA_DADOS|ram~256feeder_combout\);

-- Location: FF_X24_Y5_N49
\MEMORIA_DADOS|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~256feeder_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~256_q\);

-- Location: LABCELL_X29_Y5_N15
\MEMORIA_DADOS|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~561_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~256_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~264_q\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_DADOS|ram~256_q\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~224_q\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~232_q\))) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_DADOS|ram~256_q\ & ( 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~264_q\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_DADOS|ram~256_q\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~224_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~232_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~264_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~224_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~232_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~256_q\,
	combout => \MEMORIA_DADOS|ram~561_combout\);

-- Location: FF_X28_Y7_N23
\MEMORIA_DADOS|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~208_q\);

-- Location: FF_X31_Y7_N50
\MEMORIA_DADOS|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~216_q\);

-- Location: FF_X31_Y6_N8
\MEMORIA_DADOS|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~248_q\);

-- Location: FF_X31_Y6_N5
\MEMORIA_DADOS|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~240_q\);

-- Location: LABCELL_X31_Y5_N3
\MEMORIA_DADOS|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~560_combout\ = ( \MEMORIA_DADOS|ram~240_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~248_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~240_q\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- ( (\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~248_q\) ) ) ) # ( \MEMORIA_DADOS|ram~240_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~208_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~216_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~240_q\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~208_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~216_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~208_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~216_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~248_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~240_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \MEMORIA_DADOS|ram~560_combout\);

-- Location: FF_X24_Y3_N19
\MEMORIA_DADOS|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~144_q\);

-- Location: FF_X24_Y3_N49
\MEMORIA_DADOS|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~184_q\);

-- Location: FF_X24_Y3_N1
\MEMORIA_DADOS|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~152_q\);

-- Location: FF_X23_Y7_N25
\MEMORIA_DADOS|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~176_q\);

-- Location: LABCELL_X25_Y3_N51
\MEMORIA_DADOS|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~558_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~184_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~152_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~176_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~144_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~184_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~152_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~176_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~558_combout\);

-- Location: LABCELL_X29_Y5_N6
\MEMORIA_DADOS|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~562_combout\ = ( \MEMORIA_DADOS|ram~560_combout\ & ( \MEMORIA_DADOS|ram~558_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\) # ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~559_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~561_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~560_combout\ & ( \MEMORIA_DADOS|ram~558_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\)) # 
-- (\MEMORIA_DADOS|ram~559_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_DADOS|ram~561_combout\ & \MEMORIA_INTRUCAO|memROM~18_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~560_combout\ & ( !\MEMORIA_DADOS|ram~558_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~559_combout\ & ((\MEMORIA_INTRUCAO|memROM~18_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~561_combout\)))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~560_combout\ & ( !\MEMORIA_DADOS|ram~558_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~559_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~561_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~559_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~561_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~560_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~558_combout\,
	combout => \MEMORIA_DADOS|ram~562_combout\);

-- Location: LABCELL_X29_Y5_N51
\MEMORIA_DADOS|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~568_combout\ = ( \MEMORIA_DADOS|ram~552_combout\ & ( \MEMORIA_DADOS|ram~562_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\) # ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~557_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~567_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~552_combout\ & ( \MEMORIA_DADOS|ram~562_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~557_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~567_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~552_combout\ & ( 
-- !\MEMORIA_DADOS|ram~562_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (((!\MEMORIA_INTRUCAO|memROM~27_combout\)))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~557_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~567_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~552_combout\ & ( !\MEMORIA_DADOS|ram~562_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((\MEMORIA_DADOS|ram~557_combout\))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~567_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~567_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~557_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~552_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~562_combout\,
	combout => \MEMORIA_DADOS|ram~568_combout\);

-- Location: LABCELL_X29_Y5_N0
\CPU|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~0_combout\ = ( \MEMORIA_DADOS|ram~568_combout\ & ( (\MEMORIA_DADOS|dado_out~0_combout\) # (\SW[1]~input_o\) ) ) # ( !\MEMORIA_DADOS|ram~568_combout\ & ( (\SW[1]~input_o\ & !\MEMORIA_DADOS|dado_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~568_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~0_combout\);

-- Location: MLABCELL_X28_Y7_N0
\MEMORIA_INTRUCAO|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~28_combout\ = ( \MEMORIA_INTRUCAO|memROM~1_combout\ & ( \MEMORIA_INTRUCAO|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~28_combout\);

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

-- Location: LABCELL_X10_Y4_N42
\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y4_N44
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: LABCELL_X10_Y4_N9
\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

-- Location: LABCELL_X29_Y7_N51
\FLIP_FLOP_DM|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_DM|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FLIP_FLOP_DM|DOUT~feeder_combout\);

-- Location: MLABCELL_X28_Y7_N54
\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MEMORIA_INTRUCAO|memROM~9_combout\ & (\MEMORIA_INTRUCAO|memROM~4_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \comb~9_combout\);

-- Location: LABCELL_X29_Y7_N36
\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\comb~9_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_INTRUCAO|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \comb~10_combout\);

-- Location: FF_X29_Y7_N53
\FLIP_FLOP_DM|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \FLIP_FLOP_DM|DOUT~feeder_combout\,
	clrn => \ALT_INV_comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_DM|DOUT~q\);

-- Location: LABCELL_X29_Y7_N12
\Saida_Dados[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~1_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \FLIP_FLOP_DM|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\KEY[1]~input_o\)) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\KEY[3]~input_o\))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \FLIP_FLOP_DM|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\KEY[2]~input_o\) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\FLIP_FLOP_DM|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- (\KEY[1]~input_o\)) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\KEY[3]~input_o\))) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\FLIP_FLOP_DM|DOUT~q\ & ( (\KEY[2]~input_o\ & \MEMORIA_INTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \FLIP_FLOP_DM|ALT_INV_DOUT~q\,
	combout => \Saida_Dados[0]~1_combout\);

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

-- Location: LABCELL_X29_Y8_N6
\Saida_Dados[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~2_combout\ = ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \SW[8]~input_o\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \SW[9]~input_o\ ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \Saida_Dados[0]~2_combout\);

-- Location: MLABCELL_X28_Y5_N6
\Saida_Dados[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~3_combout\ = ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\Saida_Dados[0]~2_combout\))) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- ((((\Saida_Dados[0]~1_combout\))))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\FPGA_RESET_N~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000000010000000001100000011001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \ALT_INV_FPGA_RESET_N~input_o\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \ALT_INV_Saida_Dados[0]~1_combout\,
	datag => \ALT_INV_Saida_Dados[0]~2_combout\,
	combout => \Saida_Dados[0]~3_combout\);

-- Location: FF_X32_Y7_N20
\MEMORIA_DADOS|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~239_q\);

-- Location: FF_X32_Y7_N49
\MEMORIA_DADOS|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~495_q\);

-- Location: MLABCELL_X34_Y7_N21
\MEMORIA_DADOS|ram~367feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~367feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~367feeder_combout\);

-- Location: FF_X34_Y7_N22
\MEMORIA_DADOS|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~367feeder_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~367_q\);

-- Location: FF_X32_Y7_N44
\MEMORIA_DADOS|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~111_q\);

-- Location: LABCELL_X32_Y7_N6
\MEMORIA_DADOS|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~530_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~495_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~367_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~239_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~239_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~495_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~367_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~111_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~530_combout\);

-- Location: FF_X28_Y7_N34
\MEMORIA_DADOS|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~207_q\);

-- Location: FF_X25_Y7_N25
\MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~79_q\);

-- Location: FF_X25_Y7_N32
\MEMORIA_DADOS|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~463_q\);

-- Location: FF_X31_Y8_N4
\MEMORIA_DADOS|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~335_q\);

-- Location: MLABCELL_X28_Y7_N12
\MEMORIA_DADOS|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~529_combout\ = ( \MEMORIA_DADOS|ram~335_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~463_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~335_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ 
-- & ( (\MEMORIA_DADOS|ram~463_q\ & \MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~335_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~79_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~207_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~335_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~79_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~207_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~207_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~79_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~463_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~335_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~529_combout\);

-- Location: FF_X28_Y4_N52
\MEMORIA_DADOS|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~143_q\);

-- Location: FF_X29_Y6_N53
\MEMORIA_DADOS|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~15_q\);

-- Location: FF_X29_Y6_N47
\MEMORIA_DADOS|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~271_q\);

-- Location: FF_X29_Y6_N26
\MEMORIA_DADOS|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~399_q\);

-- Location: LABCELL_X29_Y6_N57
\MEMORIA_DADOS|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~527_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~399_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~143_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~271_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~143_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~15_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~271_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~399_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~527_combout\);

-- Location: FF_X25_Y6_N52
\MEMORIA_DADOS|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~303_q\);

-- Location: MLABCELL_X23_Y8_N0
\MEMORIA_DADOS|ram~47feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~47feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~47feeder_combout\);

-- Location: FF_X23_Y8_N1
\MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~47feeder_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~47_q\);

-- Location: MLABCELL_X23_Y7_N6
\MEMORIA_DADOS|ram~431feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~431feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~431feeder_combout\);

-- Location: FF_X23_Y7_N7
\MEMORIA_DADOS|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~431feeder_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~431_q\);

-- Location: MLABCELL_X23_Y7_N51
\MEMORIA_DADOS|ram~175feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~175feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~175feeder_combout\);

-- Location: FF_X23_Y7_N52
\MEMORIA_DADOS|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~175feeder_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~175_q\);

-- Location: LABCELL_X29_Y8_N36
\MEMORIA_DADOS|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~528_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~431_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~303_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~175_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~303_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~47_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~431_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~175_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~528_combout\);

-- Location: MLABCELL_X28_Y5_N3
\MEMORIA_DADOS|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~531_combout\ = ( \MEMORIA_DADOS|ram~527_combout\ & ( \MEMORIA_DADOS|ram~528_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~529_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~530_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~527_combout\ & ( \MEMORIA_DADOS|ram~528_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~529_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~530_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~527_combout\ & ( 
-- !\MEMORIA_DADOS|ram~528_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~529_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~530_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~527_combout\ & ( !\MEMORIA_DADOS|ram~528_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- ((\MEMORIA_DADOS|ram~529_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~530_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~530_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~527_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~528_combout\,
	combout => \MEMORIA_DADOS|ram~531_combout\);

-- Location: FF_X29_Y5_N50
\MEMORIA_DADOS|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~199_q\);

-- Location: FF_X32_Y4_N55
\MEMORIA_DADOS|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~455_q\);

-- Location: FF_X29_Y5_N43
\MEMORIA_DADOS|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~263_q\);

-- Location: FF_X29_Y5_N38
\MEMORIA_DADOS|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~519_q\);

-- Location: LABCELL_X29_Y5_N39
\MEMORIA_DADOS|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~545_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~519_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~455_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~263_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~199_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~199_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~455_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~263_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~519_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~545_combout\);

-- Location: FF_X28_Y5_N38
\MEMORIA_DADOS|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~487_q\);

-- Location: FF_X26_Y6_N22
\MEMORIA_DADOS|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~423_q\);

-- Location: FF_X28_Y5_N29
\MEMORIA_DADOS|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~231_q\);

-- Location: FF_X28_Y5_N53
\MEMORIA_DADOS|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~167_q\);

-- Location: MLABCELL_X28_Y5_N39
\MEMORIA_DADOS|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~544_combout\ = ( \MEMORIA_DADOS|ram~231_q\ & ( \MEMORIA_DADOS|ram~167_q\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\) # ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~423_q\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (\MEMORIA_DADOS|ram~487_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~231_q\ & ( \MEMORIA_DADOS|ram~167_q\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\)))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~423_q\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~487_q\)))) ) ) ) # ( \MEMORIA_DADOS|ram~231_q\ & ( !\MEMORIA_DADOS|ram~167_q\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ 
-- & (((\MEMORIA_INTRUCAO|memROM~24_combout\)))) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~423_q\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~487_q\)))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~231_q\ & ( !\MEMORIA_DADOS|ram~167_q\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~423_q\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~487_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~487_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~423_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~231_q\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~167_q\,
	combout => \MEMORIA_DADOS|ram~544_combout\);

-- Location: FF_X29_Y4_N2
\MEMORIA_DADOS|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~359_q\);

-- Location: FF_X29_Y4_N44
\MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~39_q\);

-- Location: LABCELL_X29_Y8_N57
\MEMORIA_DADOS|ram~295feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~295feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~295feeder_combout\);

-- Location: FF_X29_Y8_N58
\MEMORIA_DADOS|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~295feeder_combout\,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~295_q\);

-- Location: FF_X29_Y4_N50
\MEMORIA_DADOS|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~103_q\);

-- Location: LABCELL_X29_Y4_N3
\MEMORIA_DADOS|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~542_combout\ = ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~359_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~295_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~103_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~359_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~39_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~295_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~103_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~542_combout\);

-- Location: MLABCELL_X28_Y9_N21
\MEMORIA_DADOS|ram~71feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~71feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~71feeder_combout\);

-- Location: FF_X28_Y9_N22
\MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~71feeder_combout\,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~71_q\);

-- Location: LABCELL_X29_Y9_N36
\MEMORIA_DADOS|ram~327feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~327feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~327feeder_combout\);

-- Location: FF_X29_Y9_N37
\MEMORIA_DADOS|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~327feeder_combout\,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~327_q\);

-- Location: LABCELL_X29_Y9_N24
\MEMORIA_DADOS|ram~135feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~135feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~135feeder_combout\);

-- Location: FF_X29_Y9_N26
\MEMORIA_DADOS|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~135feeder_combout\,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~135_q\);

-- Location: LABCELL_X29_Y9_N30
\MEMORIA_DADOS|ram~391feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~391feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~391feeder_combout\);

-- Location: FF_X29_Y9_N32
\MEMORIA_DADOS|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~391feeder_combout\,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~391_q\);

-- Location: LABCELL_X29_Y9_N54
\MEMORIA_DADOS|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~543_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~391_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~135_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~327_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
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
	datac => \MEMORIA_DADOS|ALT_INV_ram~135_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~391_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~543_combout\);

-- Location: MLABCELL_X28_Y5_N24
\MEMORIA_DADOS|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~546_combout\ = ( \MEMORIA_DADOS|ram~542_combout\ & ( \MEMORIA_DADOS|ram~543_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\) # ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~544_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~545_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~542_combout\ & ( \MEMORIA_DADOS|ram~543_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- \MEMORIA_DADOS|ram~544_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~27_combout\)) # (\MEMORIA_DADOS|ram~545_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~542_combout\ & ( !\MEMORIA_DADOS|ram~543_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~544_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~545_combout\ & (\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~542_combout\ & ( !\MEMORIA_DADOS|ram~543_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~544_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\MEMORIA_DADOS|ram~545_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~545_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~544_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~542_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~543_combout\,
	combout => \MEMORIA_DADOS|ram~546_combout\);

-- Location: FF_X26_Y7_N23
\MEMORIA_DADOS|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~287_q\);

-- Location: FF_X26_Y7_N37
\MEMORIA_DADOS|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~159_q\);

-- Location: FF_X28_Y7_N8
\MEMORIA_DADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~31_q\);

-- Location: FF_X26_Y7_N32
\MEMORIA_DADOS|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~415_q\);

-- Location: LABCELL_X26_Y7_N12
\MEMORIA_DADOS|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~537_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~415_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~287_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~159_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~287_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~159_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~31_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~415_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~537_combout\);

-- Location: FF_X28_Y6_N50
\MEMORIA_DADOS|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~351_q\);

-- Location: FF_X28_Y6_N56
\MEMORIA_DADOS|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~223_q\);

-- Location: FF_X28_Y2_N37
\MEMORIA_DADOS|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~95_q\);

-- Location: FF_X28_Y6_N14
\MEMORIA_DADOS|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~479_q\);

-- Location: MLABCELL_X28_Y6_N12
\MEMORIA_DADOS|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~539_combout\ = ( \MEMORIA_DADOS|ram~479_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~351_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~479_q\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- ( (\MEMORIA_DADOS|ram~351_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~479_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~95_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~223_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~479_q\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~95_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~223_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~351_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~223_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~95_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~479_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~539_combout\);

-- Location: LABCELL_X21_Y5_N15
\MEMORIA_DADOS|ram~127feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~127feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~127feeder_combout\);

-- Location: FF_X21_Y5_N16
\MEMORIA_DADOS|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~127feeder_combout\,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~127_q\);

-- Location: LABCELL_X21_Y5_N33
\MEMORIA_DADOS|ram~255feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~255feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~255feeder_combout\);

-- Location: FF_X21_Y5_N34
\MEMORIA_DADOS|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~255feeder_combout\,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~255_q\);

-- Location: FF_X24_Y5_N17
\MEMORIA_DADOS|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~383_q\);

-- Location: FF_X24_Y5_N43
\MEMORIA_DADOS|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~511_q\);

-- Location: LABCELL_X26_Y5_N51
\MEMORIA_DADOS|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~540_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~511_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~383_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~255_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~127_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~255_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~383_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~511_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~540_combout\);

-- Location: FF_X26_Y4_N16
\MEMORIA_DADOS|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~319_q\);

-- Location: FF_X24_Y7_N49
\MEMORIA_DADOS|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~191_q\);

-- Location: FF_X26_Y8_N32
\MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~63_q\);

-- Location: FF_X24_Y7_N7
\MEMORIA_DADOS|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~447_q\);

-- Location: LABCELL_X25_Y7_N57
\MEMORIA_DADOS|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~538_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~447_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~319_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~191_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~319_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~191_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~63_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~447_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~538_combout\);

-- Location: MLABCELL_X28_Y5_N54
\MEMORIA_DADOS|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~541_combout\ = ( \MEMORIA_DADOS|ram~540_combout\ & ( \MEMORIA_DADOS|ram~538_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~537_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~539_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~540_combout\ & ( \MEMORIA_DADOS|ram~538_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_DADOS|ram~537_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~539_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~540_combout\ & ( !\MEMORIA_DADOS|ram~538_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~537_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_DADOS|ram~539_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~540_combout\ & ( !\MEMORIA_DADOS|ram~538_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~537_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~539_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~539_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~540_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~538_combout\,
	combout => \MEMORIA_DADOS|ram~541_combout\);

-- Location: FF_X28_Y8_N20
\MEMORIA_DADOS|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~279_q\);

-- Location: FF_X28_Y8_N8
\MEMORIA_DADOS|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~407_q\);

-- Location: FF_X28_Y8_N32
\MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~23_q\);

-- Location: FF_X28_Y4_N10
\MEMORIA_DADOS|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~151_q\);

-- Location: MLABCELL_X28_Y8_N9
\MEMORIA_DADOS|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~532_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~407_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~151_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~279_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~279_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~407_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~23_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~151_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~532_combout\);

-- Location: FF_X31_Y7_N20
\MEMORIA_DADOS|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~471_q\);

-- Location: FF_X32_Y4_N13
\MEMORIA_DADOS|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~87_q\);

-- Location: LABCELL_X31_Y7_N42
\MEMORIA_DADOS|ram~343feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~343feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~343feeder_combout\);

-- Location: FF_X31_Y7_N44
\MEMORIA_DADOS|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~343feeder_combout\,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~343_q\);

-- Location: LABCELL_X31_Y7_N24
\MEMORIA_DADOS|ram~215feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~215feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~215feeder_combout\);

-- Location: FF_X31_Y7_N26
\MEMORIA_DADOS|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~215feeder_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~215_q\);

-- Location: LABCELL_X31_Y7_N33
\MEMORIA_DADOS|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~534_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~471_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~343_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~215_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~471_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~87_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~343_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~215_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~534_combout\);

-- Location: LABCELL_X31_Y6_N9
\MEMORIA_DADOS|ram~247feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~247feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|ram~247feeder_combout\);

-- Location: FF_X31_Y6_N10
\MEMORIA_DADOS|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~247feeder_combout\,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~247_q\);

-- Location: FF_X31_Y5_N19
\MEMORIA_DADOS|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~503_q\);

-- Location: FF_X31_Y5_N41
\MEMORIA_DADOS|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~375_q\);

-- Location: FF_X28_Y3_N26
\MEMORIA_DADOS|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~119_q\);

-- Location: LABCELL_X31_Y5_N21
\MEMORIA_DADOS|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~535_combout\ = ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~503_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~247_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~375_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~247_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~503_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~375_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~119_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~535_combout\);

-- Location: FF_X26_Y5_N26
\MEMORIA_DADOS|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~439_q\);

-- Location: FF_X24_Y3_N52
\MEMORIA_DADOS|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~183_q\);

-- Location: FF_X29_Y7_N10
\MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~55_q\);

-- Location: FF_X26_Y5_N1
\MEMORIA_DADOS|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~311_q\);

-- Location: LABCELL_X26_Y5_N27
\MEMORIA_DADOS|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~533_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~439_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~311_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( \MEMORIA_DADOS|ram~183_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_INTRUCAO|memROM~15_combout\ & ( 
-- \MEMORIA_DADOS|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~439_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~183_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~55_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~311_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_DADOS|ram~533_combout\);

-- Location: MLABCELL_X28_Y5_N30
\MEMORIA_DADOS|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~536_combout\ = ( \MEMORIA_DADOS|ram~535_combout\ & ( \MEMORIA_DADOS|ram~533_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~532_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~534_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~535_combout\ & ( \MEMORIA_DADOS|ram~533_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (\MEMORIA_DADOS|ram~532_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~534_combout\))))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~535_combout\ & ( 
-- !\MEMORIA_DADOS|ram~533_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~532_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~534_combout\))))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~535_combout\ & ( !\MEMORIA_DADOS|ram~533_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (\MEMORIA_DADOS|ram~532_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~534_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~532_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~534_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~535_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	combout => \MEMORIA_DADOS|ram~536_combout\);

-- Location: MLABCELL_X28_Y5_N48
\MEMORIA_DADOS|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~547_combout\ = ( \MEMORIA_DADOS|ram~541_combout\ & ( \MEMORIA_DADOS|ram~536_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_INTRUCAO|memROM~18_combout\)) # (\MEMORIA_DADOS|ram~531_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~546_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~541_combout\ & ( \MEMORIA_DADOS|ram~536_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (\MEMORIA_DADOS|ram~531_combout\ & ((!\MEMORIA_INTRUCAO|memROM~18_combout\)))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~546_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~541_combout\ & ( 
-- !\MEMORIA_DADOS|ram~536_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_INTRUCAO|memROM~18_combout\)) # (\MEMORIA_DADOS|ram~531_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~546_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~541_combout\ & ( !\MEMORIA_DADOS|ram~536_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~531_combout\ & ((!\MEMORIA_INTRUCAO|memROM~18_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~546_combout\ & \MEMORIA_INTRUCAO|memROM~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~531_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~546_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~541_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~536_combout\,
	combout => \MEMORIA_DADOS|ram~547_combout\);

-- Location: MLABCELL_X28_Y5_N12
\Saida_Dados[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida_Dados[0]~0_combout\ = ( \Saida_Dados[0]~3_combout\ & ( \MEMORIA_DADOS|ram~547_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~25_combout\ $ 
-- (\MEMORIA_INTRUCAO|memROM~26_combout\)))) ) ) ) # ( !\Saida_Dados[0]~3_combout\ & ( \MEMORIA_DADOS|ram~547_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~25_combout\ & (\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~26_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) ) # ( \Saida_Dados[0]~3_combout\ & ( !\MEMORIA_DADOS|ram~547_combout\ & ( (\MEMORIA_INTRUCAO|memROM~25_combout\ & (\CPU|DECODIFICADOR_INSTRUCAO|Mux10~0_combout\ & (\MEMORIA_INTRUCAO|memROM~26_combout\ & 
-- !\MEMORIA_INTRUCAO|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000100000000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux10~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \ALT_INV_Saida_Dados[0]~3_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~547_combout\,
	combout => \Saida_Dados[0]~0_combout\);

-- Location: MLABCELL_X28_Y3_N0
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\Saida_Dados[0]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~28_combout\))) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\Saida_Dados[0]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~28_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~28_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	dataf => \ALT_INV_Saida_Dados[0]~0_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X29_Y3_N51
\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~22_combout\ & (!\MEMORIA_INTRUCAO|memROM~19_combout\ $ (!\MEMORIA_INTRUCAO|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\);

-- Location: LABCELL_X29_Y3_N0
\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~20_combout\) # (((\MEMORIA_INTRUCAO|memROM~21_combout\) # (\MEMORIA_INTRUCAO|memROM~19_combout\)) # (\MEMORIA_INTRUCAO|memROM~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	dataf => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

-- Location: MLABCELL_X28_Y3_N30
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

-- Location: MLABCELL_X28_Y3_N33
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\Saida_Dados[0]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~28_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\Saida_Dados[0]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~28_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~28_combout\,
	datad => \ALT_INV_Saida_Dados[0]~0_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X29_Y3_N39
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\Saida_Dados[0]~0_combout\)) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\MEMORIA_INTRUCAO|memROM~12_combout\)))) # 
-- (\CPU|ULA1|Equal0~0_combout\) ) ) # ( !\CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\Saida_Dados[0]~0_combout\)) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- ((\MEMORIA_INTRUCAO|memROM~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Saida_Dados[0]~0_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X29_Y3_N48
\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ ) # ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (((!\MEMORIA_INTRUCAO|memROM~20_combout\) # (\MEMORIA_INTRUCAO|memROM~21_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~22_combout\)) # (\MEMORIA_INTRUCAO|memROM~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	dataf => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

-- Location: LABCELL_X29_Y3_N30
\CPU|DECODIFICADOR_INSTRUCAO|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~20_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~21_combout\ & !\MEMORIA_INTRUCAO|memROM~22_combout\) ) ) # ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~19_combout\ & (!\MEMORIA_INTRUCAO|memROM~21_combout\ $ (!\MEMORIA_INTRUCAO|memROM~22_combout\))) # (\MEMORIA_INTRUCAO|memROM~19_combout\ & (!\MEMORIA_INTRUCAO|memROM~21_combout\ & !\MEMORIA_INTRUCAO|memROM~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010001000011001101000100011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\);

-- Location: FF_X28_Y3_N2
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: MLABCELL_X28_Y3_N3
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~29_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~29_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~29_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(1),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: MLABCELL_X28_Y3_N6
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~30_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~30_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(2),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: MLABCELL_X28_Y3_N36
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~29_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + 
-- ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~29_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~29_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: MLABCELL_X28_Y3_N39
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~30_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + 
-- ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~30_combout\)) # (\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( 
-- \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~30_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X29_Y3_N36
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[2]~1_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\))) # 
-- (\CPU|ULA1|Equal0~0_combout\) ) ) # ( !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[2]~1_combout\))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X28_Y3_N8
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: MLABCELL_X28_Y3_N9
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~31_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\MEMORIA_INTRUCAO|memROM~31_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(3),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: MLABCELL_X28_Y3_N42
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~31_combout\) # ((\CPU|PC|DOUT[7]~DUPLICATE_q\)))) ) 
-- + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~31_combout\) # ((\CPU|PC|DOUT[7]~DUPLICATE_q\)))) ) + ( 
-- \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~31_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: MLABCELL_X28_Y4_N48
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \CPU|ULA1|Add1~13_sumout\ ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[3]~2_combout\))) # 
-- (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\)) ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( !\CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\CPU|MUX1|saida_MUX[3]~2_combout\))) # 
-- (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000000000000000010001110111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datab => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X28_Y3_N11
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: MLABCELL_X28_Y3_N12
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( \CPU|MUX1|saida_MUX[4]~3_combout\ ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( \CPU|MUX1|saida_MUX[4]~3_combout\ ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: MLABCELL_X28_Y3_N45
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[4]~3_combout\ ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( !\CPU|MUX1|saida_MUX[4]~3_combout\ ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X26_Y3_N30
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \CPU|ULA1|Add1~17_sumout\ ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( \CPU|ULA1|Add1~17_sumout\ & ( \CPU|MUX1|saida_MUX[4]~3_combout\ ) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( 
-- !\CPU|ULA1|Add1~17_sumout\ & ( \CPU|MUX1|saida_MUX[4]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X28_Y3_N14
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: FF_X29_Y3_N28
\MEMORIA_DADOS|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~163_q\);

-- Location: FF_X26_Y3_N11
\MEMORIA_DADOS|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~235_q\);

-- Location: FF_X25_Y5_N40
\MEMORIA_DADOS|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~171_q\);

-- Location: FF_X23_Y3_N28
\MEMORIA_DADOS|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~227_q\);

-- Location: LABCELL_X26_Y3_N21
\MEMORIA_DADOS|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~622_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~235_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~227_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~171_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~163_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~235_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~171_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~227_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~622_combout\);

-- Location: FF_X24_Y4_N40
\MEMORIA_DADOS|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~243_q\);

-- Location: FF_X24_Y3_N59
\MEMORIA_DADOS|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~187_q\);

-- Location: MLABCELL_X23_Y7_N48
\MEMORIA_DADOS|ram~179feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~179feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~179feeder_combout\);

-- Location: FF_X23_Y7_N49
\MEMORIA_DADOS|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~179feeder_combout\,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~179_q\);

-- Location: FF_X26_Y3_N44
\MEMORIA_DADOS|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~251_q\);

-- Location: LABCELL_X26_Y3_N42
\MEMORIA_DADOS|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~623_combout\ = ( \MEMORIA_DADOS|ram~251_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~187_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~251_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~187_q\ & !\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~251_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~179_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~243_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~251_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~179_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~243_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~243_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~187_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~179_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~251_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~623_combout\);

-- Location: FF_X25_Y7_N37
\MEMORIA_DADOS|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~211_q\);

-- Location: FF_X26_Y3_N19
\MEMORIA_DADOS|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~219_q\);

-- Location: FF_X24_Y3_N43
\MEMORIA_DADOS|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~147_q\);

-- Location: FF_X24_Y3_N13
\MEMORIA_DADOS|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~155_q\);

-- Location: LABCELL_X25_Y3_N57
\MEMORIA_DADOS|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~621_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~219_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~211_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( \MEMORIA_DADOS|ram~155_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( 
-- \MEMORIA_DADOS|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~211_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~219_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~147_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~155_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~621_combout\);

-- Location: FF_X24_Y5_N31
\MEMORIA_DADOS|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~259_q\);

-- Location: LABCELL_X24_Y7_N0
\MEMORIA_DADOS|ram~195feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~195feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~195feeder_combout\);

-- Location: FF_X24_Y7_N2
\MEMORIA_DADOS|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~195feeder_combout\,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~195_q\);

-- Location: FF_X25_Y5_N5
\MEMORIA_DADOS|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~203_q\);

-- Location: FF_X25_Y5_N20
\MEMORIA_DADOS|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~267_q\);

-- Location: LABCELL_X25_Y5_N18
\MEMORIA_DADOS|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~624_combout\ = ( \MEMORIA_DADOS|ram~267_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~203_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~267_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~203_q\ & !\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~267_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~195_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~259_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~267_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~195_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~259_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~259_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~195_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~203_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~267_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~624_combout\);

-- Location: LABCELL_X26_Y3_N36
\MEMORIA_DADOS|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~625_combout\ = ( \MEMORIA_DADOS|ram~621_combout\ & ( \MEMORIA_DADOS|ram~624_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~623_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_INTRUCAO|memROM~2_combout\)) # (\MEMORIA_DADOS|ram~622_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~621_combout\ & ( \MEMORIA_DADOS|ram~624_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~623_combout\)))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_INTRUCAO|memROM~2_combout\)) # (\MEMORIA_DADOS|ram~622_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~621_combout\ & ( 
-- !\MEMORIA_DADOS|ram~624_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~623_combout\)))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~622_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~621_combout\ & ( !\MEMORIA_DADOS|ram~624_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (((\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~623_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~622_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~622_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~623_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~621_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~624_combout\,
	combout => \MEMORIA_DADOS|ram~625_combout\);

-- Location: FF_X26_Y6_N8
\MEMORIA_DADOS|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~427_q\);

-- Location: FF_X28_Y8_N52
\MEMORIA_DADOS|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~411_q\);

-- Location: FF_X29_Y6_N10
\MEMORIA_DADOS|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~403_q\);

-- Location: FF_X26_Y7_N25
\MEMORIA_DADOS|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~419_q\);

-- Location: LABCELL_X25_Y5_N36
\MEMORIA_DADOS|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~626_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~427_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~411_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~419_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~427_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~411_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~403_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~419_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~626_combout\);

-- Location: FF_X32_Y7_N4
\MEMORIA_DADOS|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~499_q\);

-- Location: LABCELL_X32_Y2_N21
\MEMORIA_DADOS|ram~515feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~515feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~515feeder_combout\);

-- Location: FF_X32_Y2_N22
\MEMORIA_DADOS|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~515feeder_combout\,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~515_q\);

-- Location: LABCELL_X32_Y3_N42
\MEMORIA_DADOS|ram~507feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~507feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~507feeder_combout\);

-- Location: FF_X32_Y3_N44
\MEMORIA_DADOS|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~507feeder_combout\,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~507_q\);

-- Location: FF_X31_Y3_N20
\MEMORIA_DADOS|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~523_q\);

-- Location: LABCELL_X31_Y3_N21
\MEMORIA_DADOS|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~629_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~523_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~515_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~507_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~499_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~499_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~515_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~507_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~523_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~629_combout\);

-- Location: LABCELL_X32_Y2_N15
\MEMORIA_DADOS|ram~443feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~443feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~443feeder_combout\);

-- Location: FF_X32_Y2_N16
\MEMORIA_DADOS|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~443feeder_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~443_q\);

-- Location: FF_X23_Y6_N58
\MEMORIA_DADOS|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~435_q\);

-- Location: LABCELL_X24_Y7_N42
\MEMORIA_DADOS|ram~451feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~451feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~451feeder_combout\);

-- Location: FF_X24_Y7_N43
\MEMORIA_DADOS|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~451feeder_combout\,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~451_q\);

-- Location: FF_X31_Y3_N32
\MEMORIA_DADOS|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~459_q\);

-- Location: LABCELL_X31_Y3_N30
\MEMORIA_DADOS|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~627_combout\ = ( \MEMORIA_DADOS|ram~459_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~443_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~459_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~443_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~459_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~435_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~451_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~459_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~435_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~451_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~443_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~435_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~451_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~459_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~627_combout\);

-- Location: FF_X25_Y7_N52
\MEMORIA_DADOS|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~467_q\);

-- Location: FF_X31_Y7_N22
\MEMORIA_DADOS|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~475_q\);

-- Location: FF_X28_Y6_N29
\MEMORIA_DADOS|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~483_q\);

-- Location: FF_X26_Y6_N56
\MEMORIA_DADOS|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~491_q\);

-- Location: LABCELL_X26_Y6_N57
\MEMORIA_DADOS|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~628_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~491_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~475_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~483_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~467_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~475_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~483_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~491_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~628_combout\);

-- Location: LABCELL_X26_Y3_N0
\MEMORIA_DADOS|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~630_combout\ = ( \MEMORIA_DADOS|ram~627_combout\ & ( \MEMORIA_DADOS|ram~628_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~626_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~629_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~627_combout\ & ( \MEMORIA_DADOS|ram~628_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_DADOS|ram~626_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~629_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~627_combout\ & ( 
-- !\MEMORIA_DADOS|ram~628_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~626_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # 
-- ((\MEMORIA_DADOS|ram~629_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~627_combout\ & ( !\MEMORIA_DADOS|ram~628_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~626_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~629_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~626_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~629_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~627_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~628_combout\,
	combout => \MEMORIA_DADOS|ram~630_combout\);

-- Location: LABCELL_X32_Y3_N33
\MEMORIA_DADOS|ram~371feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~371feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~371feeder_combout\);

-- Location: FF_X32_Y3_N35
\MEMORIA_DADOS|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~371feeder_combout\,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~371_q\);

-- Location: FF_X32_Y8_N58
\MEMORIA_DADOS|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~339_q\);

-- Location: FF_X31_Y7_N55
\MEMORIA_DADOS|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~347_q\);

-- Location: FF_X32_Y3_N29
\MEMORIA_DADOS|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~379_q\);

-- Location: LABCELL_X32_Y3_N27
\MEMORIA_DADOS|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~618_combout\ = ( \MEMORIA_DADOS|ram~379_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~347_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~379_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~347_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~379_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~339_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~371_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~379_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~339_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~371_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~371_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~339_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~347_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~379_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~618_combout\);

-- Location: FF_X29_Y6_N37
\MEMORIA_DADOS|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~275_q\);

-- Location: FF_X26_Y5_N41
\MEMORIA_DADOS|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~307_q\);

-- Location: FF_X28_Y8_N26
\MEMORIA_DADOS|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~283_q\);

-- Location: FF_X26_Y5_N20
\MEMORIA_DADOS|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~315_q\);

-- Location: LABCELL_X26_Y5_N18
\MEMORIA_DADOS|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~616_combout\ = ( \MEMORIA_DADOS|ram~315_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_DADOS|ram~283_q\) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~315_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~283_q\) ) ) ) # ( \MEMORIA_DADOS|ram~315_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~275_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~307_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~315_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~275_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~307_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~275_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~307_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~283_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~315_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~616_combout\);

-- Location: FF_X29_Y2_N35
\MEMORIA_DADOS|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~387_q\);

-- Location: FF_X29_Y4_N23
\MEMORIA_DADOS|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~363_q\);

-- Location: FF_X32_Y8_N25
\MEMORIA_DADOS|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~355_q\);

-- Location: FF_X26_Y2_N56
\MEMORIA_DADOS|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~395_q\);

-- Location: LABCELL_X26_Y2_N54
\MEMORIA_DADOS|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~619_combout\ = ( \MEMORIA_DADOS|ram~395_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\) # (\MEMORIA_DADOS|ram~363_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~395_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~363_q\ & !\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~395_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~355_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~387_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~395_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~355_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~387_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~387_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~363_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~355_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~395_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~619_combout\);

-- Location: FF_X32_Y5_N20
\MEMORIA_DADOS|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~323_q\);

-- Location: FF_X32_Y5_N47
\MEMORIA_DADOS|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~291_q\);

-- Location: FF_X29_Y8_N49
\MEMORIA_DADOS|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~299_q\);

-- Location: FF_X32_Y5_N26
\MEMORIA_DADOS|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~331_q\);

-- Location: LABCELL_X32_Y5_N24
\MEMORIA_DADOS|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~617_combout\ = ( \MEMORIA_DADOS|ram~331_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_DADOS|ram~299_q\) # (\MEMORIA_INTRUCAO|memROM~2_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~331_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & \MEMORIA_DADOS|ram~299_q\) ) ) ) # ( \MEMORIA_DADOS|ram~331_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~291_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~323_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~331_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~291_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~323_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~323_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~291_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~299_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~331_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~617_combout\);

-- Location: LABCELL_X26_Y3_N54
\MEMORIA_DADOS|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~620_combout\ = ( \MEMORIA_DADOS|ram~619_combout\ & ( \MEMORIA_DADOS|ram~617_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~616_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- (\MEMORIA_DADOS|ram~618_combout\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~619_combout\ & ( \MEMORIA_DADOS|ram~617_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~616_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~618_combout\)))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\)) ) ) ) # ( \MEMORIA_DADOS|ram~619_combout\ & ( 
-- !\MEMORIA_DADOS|ram~617_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~616_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~618_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\)) ) ) ) # ( !\MEMORIA_DADOS|ram~619_combout\ & ( !\MEMORIA_DADOS|ram~617_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~616_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~618_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~618_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~616_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~619_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~617_combout\,
	combout => \MEMORIA_DADOS|ram~620_combout\);

-- Location: FF_X23_Y6_N4
\MEMORIA_DADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~19_q\);

-- Location: FF_X28_Y8_N13
\MEMORIA_DADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~27_q\);

-- Location: LABCELL_X24_Y8_N15
\MEMORIA_DADOS|ram~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~35feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~35feeder_combout\);

-- Location: FF_X24_Y8_N16
\MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~35feeder_combout\,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

-- Location: FF_X26_Y6_N50
\MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~43_q\);

-- Location: LABCELL_X26_Y6_N48
\MEMORIA_DADOS|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~611_combout\ = ( \MEMORIA_DADOS|ram~43_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~27_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~43_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- (\MEMORIA_DADOS|ram~27_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~43_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~19_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~35_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~43_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~19_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~35_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~19_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~27_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~43_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~611_combout\);

-- Location: MLABCELL_X23_Y4_N45
\MEMORIA_DADOS|ram~59feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~59feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~59feeder_combout\);

-- Location: FF_X23_Y4_N46
\MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~59feeder_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~59_q\);

-- Location: LABCELL_X24_Y8_N57
\MEMORIA_DADOS|ram~67feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~67feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~67feeder_combout\);

-- Location: FF_X24_Y8_N59
\MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~67feeder_combout\,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~67_q\);

-- Location: MLABCELL_X23_Y7_N36
\MEMORIA_DADOS|ram~51feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~51feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~51feeder_combout\);

-- Location: FF_X23_Y7_N37
\MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~51feeder_combout\,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~51_q\);

-- Location: FF_X25_Y6_N26
\MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~75_q\);

-- Location: LABCELL_X25_Y7_N3
\MEMORIA_DADOS|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~612_combout\ = ( \MEMORIA_DADOS|ram~75_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~59_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~75_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- (\MEMORIA_DADOS|ram~59_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~75_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~51_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~67_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~75_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~51_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~67_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~59_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~51_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~75_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~612_combout\);

-- Location: FF_X28_Y2_N26
\MEMORIA_DADOS|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~99_q\);

-- Location: FF_X28_Y2_N44
\MEMORIA_DADOS|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~91_q\);

-- Location: MLABCELL_X23_Y4_N51
\MEMORIA_DADOS|ram~83feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~83feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~83feeder_combout\);

-- Location: FF_X23_Y4_N52
\MEMORIA_DADOS|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~83feeder_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~83_q\);

-- Location: FF_X28_Y2_N50
\MEMORIA_DADOS|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~107_q\);

-- Location: MLABCELL_X28_Y2_N48
\MEMORIA_DADOS|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~613_combout\ = ( \MEMORIA_DADOS|ram~107_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~99_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~107_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (\MEMORIA_DADOS|ram~99_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~107_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~83_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~91_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~107_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~83_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~91_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~99_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~91_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~83_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~107_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~613_combout\);

-- Location: LABCELL_X31_Y6_N51
\MEMORIA_DADOS|ram~115feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~115feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \MEMORIA_DADOS|ram~115feeder_combout\);

-- Location: FF_X31_Y6_N52
\MEMORIA_DADOS|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~115feeder_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~115_q\);

-- Location: FF_X24_Y4_N52
\MEMORIA_DADOS|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~123_q\);

-- Location: FF_X25_Y4_N22
\MEMORIA_DADOS|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~131_q\);

-- Location: FF_X31_Y4_N53
\MEMORIA_DADOS|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~139_q\);

-- Location: LABCELL_X31_Y4_N51
\MEMORIA_DADOS|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~614_combout\ = ( \MEMORIA_DADOS|ram~139_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~123_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~139_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~123_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~139_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~115_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~131_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~139_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~115_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~131_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~115_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~123_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~131_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~139_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~614_combout\);

-- Location: LABCELL_X26_Y3_N6
\MEMORIA_DADOS|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~615_combout\ = ( \MEMORIA_DADOS|ram~613_combout\ & ( \MEMORIA_DADOS|ram~614_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~611_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- ((\MEMORIA_DADOS|ram~612_combout\)))) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~613_combout\ & ( \MEMORIA_DADOS|ram~614_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\MEMORIA_DADOS|ram~611_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~612_combout\))))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~2_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~613_combout\ & ( 
-- !\MEMORIA_DADOS|ram~614_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~611_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~612_combout\))))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~2_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~613_combout\ & ( !\MEMORIA_DADOS|ram~614_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\MEMORIA_DADOS|ram~611_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~612_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~611_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~612_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~613_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~614_combout\,
	combout => \MEMORIA_DADOS|ram~615_combout\);

-- Location: LABCELL_X26_Y3_N48
\MEMORIA_DADOS|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~631_combout\ = ( \MEMORIA_DADOS|ram~620_combout\ & ( \MEMORIA_DADOS|ram~615_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\) # ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~625_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~630_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~620_combout\ & ( \MEMORIA_DADOS|ram~615_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((!\MEMORIA_INTRUCAO|memROM~15_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~625_combout\)) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~630_combout\))))) ) ) ) # ( \MEMORIA_DADOS|ram~620_combout\ & ( 
-- !\MEMORIA_DADOS|ram~615_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~15_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~625_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~630_combout\))))) ) ) ) # ( !\MEMORIA_DADOS|ram~620_combout\ & ( !\MEMORIA_DADOS|ram~615_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\ & 
-- (\MEMORIA_DADOS|ram~625_combout\)) # (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~630_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~625_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~630_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~620_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~615_combout\,
	combout => \MEMORIA_DADOS|ram~631_combout\);

-- Location: LABCELL_X26_Y3_N15
\CPU|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~3_combout\ = ( \MEMORIA_DADOS|ram~631_combout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((\SW[4]~input_o\) # (\MEMORIA_DADOS|dado_out~0_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~631_combout\ & ( 
-- (!\MEMORIA_DADOS|dado_out~0_combout\ & (\SW[4]~input_o\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~631_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~3_combout\);

-- Location: MLABCELL_X28_Y3_N15
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[5]~4_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~32_combout\ & 
-- (!\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((\CPU|MUX1|saida_MUX[5]~4_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (\MEMORIA_INTRUCAO|memROM~32_combout\ & 
-- (!\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~32_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|REG1|ALT_INV_DOUT\(5),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: MLABCELL_X28_Y3_N48
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[5]~4_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~32_combout\) # ((\CPU|PC|DOUT[7]~DUPLICATE_q\)))) ) 
-- + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & (((!\CPU|MUX1|saida_MUX[5]~4_combout\)))) # (\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ((!\MEMORIA_INTRUCAO|memROM~32_combout\) # ((\CPU|PC|DOUT[7]~DUPLICATE_q\)))) ) + ( 
-- \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~32_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: MLABCELL_X28_Y3_N24
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( ((\CPU|MUX1|saida_MUX[5]~4_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & 
-- (\CPU|MUX1|saida_MUX[5]~4_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X28_Y3_N17
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: MLABCELL_X28_Y3_N18
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( \CPU|MUX1|saida_MUX[6]~5_combout\ ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( \CPU|MUX1|saida_MUX[6]~5_combout\ ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: MLABCELL_X28_Y3_N51
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( !\CPU|MUX1|saida_MUX[6]~5_combout\ ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( !\CPU|MUX1|saida_MUX[6]~5_combout\ ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X29_Y3_N15
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (\CPU|ULA1|Equal0~0_combout\) # (\CPU|MUX1|saida_MUX[6]~5_combout\) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|MUX1|saida_MUX[6]~5_combout\ & !\CPU|ULA1|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X28_Y3_N20
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: MLABCELL_X34_Y3_N42
\MEMORIA_DADOS|ram~445feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~445feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~445feeder_combout\);

-- Location: FF_X34_Y3_N43
\MEMORIA_DADOS|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~445feeder_combout\,
	ena => \MEMORIA_DADOS|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~445_q\);

-- Location: MLABCELL_X23_Y6_N51
\MEMORIA_DADOS|ram~437feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~437feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~437feeder_combout\);

-- Location: FF_X23_Y6_N52
\MEMORIA_DADOS|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~437feeder_combout\,
	ena => \MEMORIA_DADOS|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~437_q\);

-- Location: FF_X24_Y7_N46
\MEMORIA_DADOS|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~453_q\);

-- Location: FF_X31_Y3_N8
\MEMORIA_DADOS|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~461_q\);

-- Location: LABCELL_X31_Y3_N6
\MEMORIA_DADOS|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~669_combout\ = ( \MEMORIA_DADOS|ram~461_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_DADOS|ram~453_q\) # (\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~461_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~453_q\) ) ) ) # ( \MEMORIA_DADOS|ram~461_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~437_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~445_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~461_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~437_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~445_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~445_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~437_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~453_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~461_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~669_combout\);

-- Location: FF_X32_Y3_N2
\MEMORIA_DADOS|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~381_q\);

-- Location: LABCELL_X31_Y2_N51
\MEMORIA_DADOS|ram~389feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~389feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~389feeder_combout\);

-- Location: FF_X31_Y2_N53
\MEMORIA_DADOS|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~389feeder_combout\,
	ena => \MEMORIA_DADOS|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~389_q\);

-- Location: FF_X32_Y3_N14
\MEMORIA_DADOS|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~373_q\);

-- Location: FF_X31_Y3_N26
\MEMORIA_DADOS|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~397_q\);

-- Location: LABCELL_X31_Y3_N24
\MEMORIA_DADOS|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~670_combout\ = ( \MEMORIA_DADOS|ram~397_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~389_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~397_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (\MEMORIA_DADOS|ram~389_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~397_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~373_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~381_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~397_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~373_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~381_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~381_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~389_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~373_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~397_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~670_combout\);

-- Location: FF_X32_Y7_N28
\MEMORIA_DADOS|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~501_q\);

-- Location: FF_X31_Y5_N2
\MEMORIA_DADOS|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~509_q\);

-- Location: FF_X29_Y3_N58
\MEMORIA_DADOS|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~517_q\);

-- Location: FF_X31_Y3_N56
\MEMORIA_DADOS|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~525_q\);

-- Location: LABCELL_X31_Y3_N54
\MEMORIA_DADOS|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~671_combout\ = ( \MEMORIA_DADOS|ram~525_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_DADOS|ram~517_q\) # (\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~525_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \MEMORIA_DADOS|ram~517_q\) ) ) ) # ( \MEMORIA_DADOS|ram~525_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~501_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~509_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~525_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~501_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~509_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~501_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~509_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~517_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~525_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~671_combout\);

-- Location: FF_X32_Y5_N23
\MEMORIA_DADOS|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~325_q\);

-- Location: FF_X32_Y5_N37
\MEMORIA_DADOS|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~333_q\);

-- Location: FF_X26_Y5_N22
\MEMORIA_DADOS|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~317_q\);

-- Location: LABCELL_X24_Y6_N42
\MEMORIA_DADOS|ram~309feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~309feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~309feeder_combout\);

-- Location: FF_X24_Y6_N43
\MEMORIA_DADOS|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~309feeder_combout\,
	ena => \MEMORIA_DADOS|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~309_q\);

-- Location: LABCELL_X32_Y5_N42
\MEMORIA_DADOS|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~668_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~333_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~325_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_DADOS|ram~317_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( 
-- \MEMORIA_DADOS|ram~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~325_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~333_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~317_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~309_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~668_combout\);

-- Location: LABCELL_X31_Y3_N51
\MEMORIA_DADOS|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~672_combout\ = ( \MEMORIA_DADOS|ram~671_combout\ & ( \MEMORIA_DADOS|ram~668_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~670_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_DADOS|ram~669_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~671_combout\ & ( \MEMORIA_DADOS|ram~668_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~670_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~669_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~671_combout\ & ( 
-- !\MEMORIA_DADOS|ram~668_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~670_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_DADOS|ram~669_combout\)) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~671_combout\ & ( !\MEMORIA_DADOS|ram~668_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~670_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~669_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~669_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~670_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~671_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~668_combout\,
	combout => \MEMORIA_DADOS|ram~672_combout\);

-- Location: FF_X29_Y6_N8
\MEMORIA_DADOS|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~405_q\);

-- Location: FF_X25_Y7_N1
\MEMORIA_DADOS|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~469_q\);

-- Location: FF_X28_Y6_N20
\MEMORIA_DADOS|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~485_q\);

-- Location: LABCELL_X26_Y7_N3
\MEMORIA_DADOS|ram~421feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~421feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~421feeder_combout\);

-- Location: FF_X26_Y7_N4
\MEMORIA_DADOS|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~421feeder_combout\,
	ena => \MEMORIA_DADOS|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~421_q\);

-- Location: MLABCELL_X28_Y6_N18
\MEMORIA_DADOS|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~660_combout\ = ( \MEMORIA_DADOS|ram~485_q\ & ( \MEMORIA_DADOS|ram~421_q\ & ( ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~405_q\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~469_q\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~485_q\ & ( \MEMORIA_DADOS|ram~421_q\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_INTRUCAO|memROM~18_combout\)) # (\MEMORIA_DADOS|ram~405_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\ & \MEMORIA_DADOS|ram~469_q\)))) ) ) ) # ( \MEMORIA_DADOS|ram~485_q\ & ( !\MEMORIA_DADOS|ram~421_q\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~405_q\ & 
-- (!\MEMORIA_INTRUCAO|memROM~18_combout\))) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & (((\MEMORIA_DADOS|ram~469_q\) # (\MEMORIA_INTRUCAO|memROM~18_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~485_q\ & ( !\MEMORIA_DADOS|ram~421_q\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~405_q\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~469_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~405_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~469_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~485_q\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~421_q\,
	combout => \MEMORIA_DADOS|ram~660_combout\);

-- Location: FF_X31_Y7_N46
\MEMORIA_DADOS|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~349_q\);

-- Location: FF_X29_Y8_N34
\MEMORIA_DADOS|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~301_q\);

-- Location: FF_X28_Y8_N5
\MEMORIA_DADOS|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~285_q\);

-- Location: FF_X29_Y4_N17
\MEMORIA_DADOS|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~365_q\);

-- Location: LABCELL_X29_Y4_N15
\MEMORIA_DADOS|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~659_combout\ = ( \MEMORIA_DADOS|ram~365_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_DADOS|ram~301_q\) # (\MEMORIA_INTRUCAO|memROM~24_combout\) ) ) ) # ( !\MEMORIA_DADOS|ram~365_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~301_q\) ) ) ) # ( \MEMORIA_DADOS|ram~365_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~285_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~349_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~365_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~285_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~349_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~349_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~301_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~285_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~365_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~659_combout\);

-- Location: FF_X32_Y8_N50
\MEMORIA_DADOS|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~341_q\);

-- Location: FF_X32_Y8_N14
\MEMORIA_DADOS|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~293_q\);

-- Location: LABCELL_X29_Y6_N18
\MEMORIA_DADOS|ram~277feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~277feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~277feeder_combout\);

-- Location: FF_X29_Y6_N19
\MEMORIA_DADOS|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~277feeder_combout\,
	ena => \MEMORIA_DADOS|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~277_q\);

-- Location: FF_X32_Y8_N44
\MEMORIA_DADOS|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~357_q\);

-- Location: LABCELL_X32_Y8_N42
\MEMORIA_DADOS|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~658_combout\ = ( \MEMORIA_DADOS|ram~357_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~341_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~357_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~341_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~357_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~277_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~293_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~357_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~277_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~293_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~341_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~293_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~277_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~357_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~658_combout\);

-- Location: FF_X31_Y7_N13
\MEMORIA_DADOS|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~477_q\);

-- Location: FF_X26_Y6_N41
\MEMORIA_DADOS|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~429_q\);

-- Location: FF_X28_Y8_N11
\MEMORIA_DADOS|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~413_q\);

-- Location: FF_X26_Y6_N14
\MEMORIA_DADOS|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~493_q\);

-- Location: LABCELL_X26_Y6_N12
\MEMORIA_DADOS|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~661_combout\ = ( \MEMORIA_DADOS|ram~493_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~477_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~493_q\ & ( \MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ( (\MEMORIA_DADOS|ram~477_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~493_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~413_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~429_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~493_q\ & ( !\MEMORIA_INTRUCAO|memROM~24_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~413_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~429_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~477_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~429_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~413_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~493_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	combout => \MEMORIA_DADOS|ram~661_combout\);

-- Location: LABCELL_X29_Y4_N57
\MEMORIA_DADOS|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~662_combout\ = ( \MEMORIA_DADOS|ram~658_combout\ & ( \MEMORIA_DADOS|ram~661_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~659_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~12_combout\)) # (\MEMORIA_DADOS|ram~660_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~658_combout\ & ( \MEMORIA_DADOS|ram~661_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (((\MEMORIA_DADOS|ram~659_combout\ & \MEMORIA_INTRUCAO|memROM~12_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~12_combout\)) # (\MEMORIA_DADOS|ram~660_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~658_combout\ & ( 
-- !\MEMORIA_DADOS|ram~661_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~659_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~660_combout\ & 
-- ((!\MEMORIA_INTRUCAO|memROM~12_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~658_combout\ & ( !\MEMORIA_DADOS|ram~661_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_DADOS|ram~659_combout\ & \MEMORIA_INTRUCAO|memROM~12_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~660_combout\ & ((!\MEMORIA_INTRUCAO|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~660_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~659_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~658_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~661_combout\,
	combout => \MEMORIA_DADOS|ram~662_combout\);

-- Location: FF_X26_Y8_N4
\MEMORIA_DADOS|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~197_q\);

-- Location: FF_X26_Y8_N37
\MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~69_q\);

-- Location: FF_X24_Y8_N4
\MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~53_q\);

-- Location: FF_X23_Y7_N55
\MEMORIA_DADOS|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~181_q\);

-- Location: LABCELL_X29_Y4_N18
\MEMORIA_DADOS|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~663_combout\ = ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~181_q\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~197_q\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~181_q\ 
-- & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~53_q\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~69_q\)) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_DADOS|ram~181_q\ & ( (\MEMORIA_DADOS|ram~197_q\ & 
-- \MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( !\MEMORIA_DADOS|ram~181_q\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~53_q\))) # (\MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- (\MEMORIA_DADOS|ram~69_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~197_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~53_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~181_q\,
	combout => \MEMORIA_DADOS|ram~663_combout\);

-- Location: FF_X24_Y4_N10
\MEMORIA_DADOS|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~253_q\);

-- Location: FF_X31_Y4_N41
\MEMORIA_DADOS|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~141_q\);

-- Location: FF_X24_Y4_N4
\MEMORIA_DADOS|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~125_q\);

-- Location: FF_X31_Y4_N20
\MEMORIA_DADOS|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~269_q\);

-- Location: LABCELL_X31_Y4_N18
\MEMORIA_DADOS|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~666_combout\ = ( \MEMORIA_DADOS|ram~269_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~141_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~269_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (\MEMORIA_DADOS|ram~141_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~269_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~125_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~253_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~269_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~125_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~253_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~253_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~141_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~125_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~269_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~666_combout\);

-- Location: FF_X25_Y4_N38
\MEMORIA_DADOS|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~133_q\);

-- Location: FF_X24_Y4_N25
\MEMORIA_DADOS|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~245_q\);

-- Location: MLABCELL_X23_Y4_N24
\MEMORIA_DADOS|ram~117feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~117feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~117feeder_combout\);

-- Location: FF_X23_Y4_N25
\MEMORIA_DADOS|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~117feeder_combout\,
	ena => \MEMORIA_DADOS|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~117_q\);

-- Location: FF_X25_Y4_N59
\MEMORIA_DADOS|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~261_q\);

-- Location: LABCELL_X25_Y4_N0
\MEMORIA_DADOS|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~665_combout\ = ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~261_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( \MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~245_q\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( \MEMORIA_DADOS|ram~133_q\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( !\MEMORIA_INTRUCAO|memROM~27_combout\ & ( 
-- \MEMORIA_DADOS|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~133_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~245_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~117_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~261_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	combout => \MEMORIA_DADOS|ram~665_combout\);

-- Location: MLABCELL_X23_Y4_N6
\MEMORIA_DADOS|ram~61feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~61feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~61feeder_combout\);

-- Location: FF_X23_Y4_N7
\MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~61feeder_combout\,
	ena => \MEMORIA_DADOS|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~61_q\);

-- Location: FF_X24_Y6_N59
\MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~77_q\);

-- Location: FF_X24_Y3_N37
\MEMORIA_DADOS|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~189_q\);

-- Location: FF_X24_Y6_N17
\MEMORIA_DADOS|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~205_q\);

-- Location: LABCELL_X24_Y6_N15
\MEMORIA_DADOS|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~664_combout\ = ( \MEMORIA_DADOS|ram~205_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~27_combout\) # (\MEMORIA_DADOS|ram~77_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~205_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (\MEMORIA_DADOS|ram~77_q\ & !\MEMORIA_INTRUCAO|memROM~27_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~205_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~61_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~189_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~205_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~61_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & ((\MEMORIA_DADOS|ram~189_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~61_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~189_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~205_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~664_combout\);

-- Location: LABCELL_X29_Y4_N36
\MEMORIA_DADOS|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~667_combout\ = ( \MEMORIA_DADOS|ram~665_combout\ & ( \MEMORIA_DADOS|ram~664_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~663_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~666_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~665_combout\ & ( \MEMORIA_DADOS|ram~664_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~663_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((!\MEMORIA_INTRUCAO|memROM~24_combout\) # ((\MEMORIA_DADOS|ram~666_combout\)))) ) ) ) # ( \MEMORIA_DADOS|ram~665_combout\ & ( 
-- !\MEMORIA_DADOS|ram~664_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (((\MEMORIA_DADOS|ram~663_combout\)) # (\MEMORIA_INTRUCAO|memROM~24_combout\))) # (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & 
-- ((\MEMORIA_DADOS|ram~666_combout\)))) ) ) ) # ( !\MEMORIA_DADOS|ram~665_combout\ & ( !\MEMORIA_DADOS|ram~664_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\ & (\MEMORIA_DADOS|ram~663_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~24_combout\ & ((\MEMORIA_DADOS|ram~666_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~663_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~666_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~665_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~664_combout\,
	combout => \MEMORIA_DADOS|ram~667_combout\);

-- Location: FF_X26_Y7_N14
\MEMORIA_DADOS|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~165_q\);

-- Location: FF_X24_Y3_N7
\MEMORIA_DADOS|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~149_q\);

-- Location: FF_X24_Y3_N5
\MEMORIA_DADOS|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~157_q\);

-- Location: FF_X25_Y5_N8
\MEMORIA_DADOS|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~173_q\);

-- Location: LABCELL_X25_Y5_N6
\MEMORIA_DADOS|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~654_combout\ = ( \MEMORIA_DADOS|ram~173_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~165_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~173_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (\MEMORIA_DADOS|ram~165_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~173_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~149_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~157_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~173_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~149_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~157_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~165_q\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~149_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~157_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~173_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~654_combout\);

-- Location: FF_X28_Y2_N29
\MEMORIA_DADOS|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~101_q\);

-- Location: FF_X28_Y2_N47
\MEMORIA_DADOS|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~93_q\);

-- Location: MLABCELL_X23_Y4_N0
\MEMORIA_DADOS|ram~85feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~85feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~85feeder_combout\);

-- Location: FF_X23_Y4_N1
\MEMORIA_DADOS|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~85feeder_combout\,
	ena => \MEMORIA_DADOS|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~85_q\);

-- Location: FF_X28_Y2_N2
\MEMORIA_DADOS|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~109_q\);

-- Location: MLABCELL_X28_Y2_N0
\MEMORIA_DADOS|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~655_combout\ = ( \MEMORIA_DADOS|ram~109_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~93_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~109_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & 
-- ( (\MEMORIA_DADOS|ram~93_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~109_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~85_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~101_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~109_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~85_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~101_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~101_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~93_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~85_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~109_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~655_combout\);

-- Location: MLABCELL_X23_Y3_N18
\MEMORIA_DADOS|ram~229feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~229feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~229feeder_combout\);

-- Location: FF_X23_Y3_N20
\MEMORIA_DADOS|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~229feeder_combout\,
	ena => \MEMORIA_DADOS|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~229_q\);

-- Location: MLABCELL_X23_Y3_N15
\MEMORIA_DADOS|ram~221feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~221feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~221feeder_combout\);

-- Location: FF_X23_Y3_N17
\MEMORIA_DADOS|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~221feeder_combout\,
	ena => \MEMORIA_DADOS|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~221_q\);

-- Location: FF_X25_Y7_N58
\MEMORIA_DADOS|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~213_q\);

-- Location: FF_X23_Y3_N8
\MEMORIA_DADOS|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~237_q\);

-- Location: MLABCELL_X23_Y3_N6
\MEMORIA_DADOS|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~656_combout\ = ( \MEMORIA_DADOS|ram~237_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & ( (\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_DADOS|ram~229_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~237_q\ & ( \MEMORIA_INTRUCAO|memROM~18_combout\ & 
-- ( (\MEMORIA_DADOS|ram~229_q\ & !\MEMORIA_INTRUCAO|memROM~12_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~237_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~213_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~221_q\)) ) ) ) # ( !\MEMORIA_DADOS|ram~237_q\ & ( !\MEMORIA_INTRUCAO|memROM~18_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~12_combout\ & ((\MEMORIA_DADOS|ram~213_q\))) # 
-- (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_DADOS|ram~221_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~229_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~221_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~213_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~237_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	combout => \MEMORIA_DADOS|ram~656_combout\);

-- Location: MLABCELL_X23_Y6_N39
\MEMORIA_DADOS|ram~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~29feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~29feeder_combout\);

-- Location: FF_X23_Y6_N40
\MEMORIA_DADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~29feeder_combout\,
	ena => \MEMORIA_DADOS|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~29_q\);

-- Location: MLABCELL_X23_Y6_N42
\MEMORIA_DADOS|ram~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~21feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \MEMORIA_DADOS|ram~21feeder_combout\);

-- Location: FF_X23_Y6_N43
\MEMORIA_DADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MEMORIA_DADOS|ram~21feeder_combout\,
	ena => \MEMORIA_DADOS|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~21_q\);

-- Location: FF_X24_Y8_N19
\MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

-- Location: FF_X26_Y6_N32
\MEMORIA_DADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~45_q\);

-- Location: LABCELL_X26_Y6_N30
\MEMORIA_DADOS|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~653_combout\ = ( \MEMORIA_DADOS|ram~45_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( (\MEMORIA_INTRUCAO|memROM~18_combout\) # (\MEMORIA_DADOS|ram~29_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~45_q\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- (\MEMORIA_DADOS|ram~29_q\ & !\MEMORIA_INTRUCAO|memROM~18_combout\) ) ) ) # ( \MEMORIA_DADOS|ram~45_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~21_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~37_q\))) ) ) ) # ( !\MEMORIA_DADOS|ram~45_q\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_DADOS|ram~21_q\)) # 
-- (\MEMORIA_INTRUCAO|memROM~18_combout\ & ((\MEMORIA_DADOS|ram~37_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~29_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~21_q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~45_q\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~653_combout\);

-- Location: LABCELL_X29_Y4_N24
\MEMORIA_DADOS|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~657_combout\ = ( \MEMORIA_DADOS|ram~656_combout\ & ( \MEMORIA_DADOS|ram~653_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((!\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~655_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\)) # (\MEMORIA_DADOS|ram~654_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~656_combout\ & ( \MEMORIA_DADOS|ram~653_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & 
-- (((!\MEMORIA_INTRUCAO|memROM~24_combout\) # (\MEMORIA_DADOS|ram~655_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~654_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~656_combout\ & ( 
-- !\MEMORIA_DADOS|ram~653_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~655_combout\)))) # (\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\)) # 
-- (\MEMORIA_DADOS|ram~654_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~656_combout\ & ( !\MEMORIA_DADOS|ram~653_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~27_combout\ & (((\MEMORIA_INTRUCAO|memROM~24_combout\ & \MEMORIA_DADOS|ram~655_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~27_combout\ & (\MEMORIA_DADOS|ram~654_combout\ & (!\MEMORIA_INTRUCAO|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~27_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~654_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~24_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~655_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~656_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~653_combout\,
	combout => \MEMORIA_DADOS|ram~657_combout\);

-- Location: LABCELL_X29_Y4_N30
\MEMORIA_DADOS|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~673_combout\ = ( \MEMORIA_DADOS|ram~667_combout\ & ( \MEMORIA_DADOS|ram~657_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\) # ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~662_combout\))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_DADOS|ram~672_combout\))) ) ) ) # ( !\MEMORIA_DADOS|ram~667_combout\ & ( \MEMORIA_DADOS|ram~657_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\) # 
-- ((\MEMORIA_DADOS|ram~662_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_DADOS|ram~672_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~667_combout\ & ( !\MEMORIA_DADOS|ram~657_combout\ & ( 
-- (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((\MEMORIA_DADOS|ram~662_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INTRUCAO|memROM~15_combout\) # ((\MEMORIA_DADOS|ram~672_combout\)))) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~667_combout\ & ( !\MEMORIA_DADOS|ram~657_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & ((\MEMORIA_DADOS|ram~662_combout\))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (\MEMORIA_DADOS|ram~672_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~672_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~662_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~667_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~657_combout\,
	combout => \MEMORIA_DADOS|ram~673_combout\);

-- Location: LABCELL_X29_Y4_N51
\CPU|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~5_combout\ = ( \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ( \MEMORIA_DADOS|ram~673_combout\ & ( \MEMORIA_INTRUCAO|memROM~25_combout\ ) ) ) # ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ( \MEMORIA_DADOS|ram~673_combout\ & ( 
-- (\MEMORIA_DADOS|dado_out~0_combout\) # (\SW[6]~input_o\) ) ) ) # ( \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ( !\MEMORIA_DADOS|ram~673_combout\ & ( \MEMORIA_INTRUCAO|memROM~25_combout\ ) ) ) # ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ & ( 
-- !\MEMORIA_DADOS|ram~673_combout\ & ( (\SW[6]~input_o\ & !\MEMORIA_DADOS|dado_out~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010101010100001111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~25_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out~0_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~673_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~5_combout\);

-- Location: MLABCELL_X28_Y3_N21
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REG1|DOUT\(7) ) + ( \CPU|MUX1|saida_MUX[7]~6_combout\ ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X28_Y3_N27
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (\CPU|MUX1|saida_MUX[7]~6_combout\) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & \CPU|MUX1|saida_MUX[7]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X28_Y3_N23
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: MLABCELL_X28_Y3_N54
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[7]~6_combout\ ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(7),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X29_Y3_N18
\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( ((!\MEMORIA_INTRUCAO|memROM~22_combout\) # ((\MEMORIA_INTRUCAO|memROM~21_combout\) # (\MEMORIA_INTRUCAO|memROM~19_combout\))) # (\MEMORIA_INTRUCAO|memROM~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|FLAG|DOUT~0_combout\);

-- Location: LABCELL_X29_Y3_N21
\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\CPU|DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~20_combout\ & (\MEMORIA_INTRUCAO|memROM~22_combout\ & (!\MEMORIA_INTRUCAO|memROM~21_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	dataf => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux7~0_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

-- Location: LABCELL_X29_Y3_N6
\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( !\CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~13_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & \CPU|FLAG|DOUT~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

-- Location: LABCELL_X29_Y3_N42
\CPU|FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~3_combout\ = ( \CPU|FLAG|DOUT~0_combout\ & ( \CPU|FLAG|DOUT~2_combout\ ) ) # ( !\CPU|FLAG|DOUT~0_combout\ & ( \CPU|FLAG|DOUT~2_combout\ & ( (!\CPU|ULA1|Add1~29_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & 
-- !\CPU|ULA1|Add1~17_sumout\))) ) ) ) # ( \CPU|FLAG|DOUT~0_combout\ & ( !\CPU|FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~0_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLAG|DOUT~3_combout\);

-- Location: FF_X29_Y3_N44
\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FLAG|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

-- Location: LABCELL_X29_Y3_N12
\CPU|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|Equal2~0_combout\ = ( \MEMORIA_INTRUCAO|memROM~21_combout\ & ( (\MEMORIA_INTRUCAO|memROM~20_combout\ & (!\MEMORIA_INTRUCAO|memROM~22_combout\ & ((!\MEMORIA_INTRUCAO|memROM~19_combout\) # (\CPU|FLAG|DOUT~q\)))) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~21_combout\ & ( (\MEMORIA_INTRUCAO|memROM~22_combout\ & (!\MEMORIA_INTRUCAO|memROM~20_combout\ $ (!\MEMORIA_INTRUCAO|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001010001000000000101000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datab => \CPU|FLAG|ALT_INV_DOUT~q\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	combout => \CPU|MUX2|Equal2~0_combout\);

-- Location: FF_X34_Y7_N37
\CPU|REG_END_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~9_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(2));

-- Location: LABCELL_X29_Y7_N24
\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~9_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (((\CPU|REG_END_RET|DOUT\(2))) # (\CPU|MUX2|Equal1~0_combout\))) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (!\CPU|MUX2|Equal2~0_combout\ & (((\CPU|SOMADOR|Add0~9_sumout\)))) # (\CPU|MUX2|Equal2~0_combout\ & (!\CPU|MUX2|Equal1~0_combout\ & ((\CPU|REG_END_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|SOMADOR|ALT_INV_Add0~9_sumout\,
	datad => \CPU|REG_END_RET|ALT_INV_DOUT\(2),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

-- Location: FF_X29_Y7_N26
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X31_Y8_N42
\MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~5_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000100000010000000010000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~5_combout\);

-- Location: LABCELL_X31_Y8_N21
\MEMORIA_INTRUCAO|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~20_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~20_combout\);

-- Location: LABCELL_X29_Y3_N3
\CPU|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|Equal1~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~20_combout\ & (\MEMORIA_INTRUCAO|memROM~22_combout\ & (!\MEMORIA_INTRUCAO|memROM~21_combout\ & \MEMORIA_INTRUCAO|memROM~19_combout\))) # (\MEMORIA_INTRUCAO|memROM~20_combout\ 
-- & (!\MEMORIA_INTRUCAO|memROM~22_combout\ & (\MEMORIA_INTRUCAO|memROM~21_combout\))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\MEMORIA_INTRUCAO|memROM~20_combout\ & (\MEMORIA_INTRUCAO|memROM~22_combout\ & (!\MEMORIA_INTRUCAO|memROM~21_combout\ & 
-- \MEMORIA_INTRUCAO|memROM~19_combout\))) # (\MEMORIA_INTRUCAO|memROM~20_combout\ & (!\MEMORIA_INTRUCAO|memROM~22_combout\ & (\MEMORIA_INTRUCAO|memROM~21_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000000001000010000000000100001001000000010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX2|Equal1~0_combout\);

-- Location: FF_X34_Y7_N43
\CPU|REG_END_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~17_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(4));

-- Location: MLABCELL_X28_Y7_N39
\CPU|MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~4_combout\ = ( \CPU|SOMADOR|Add0~17_sumout\ & ( (!\CPU|MUX2|Equal2~0_combout\) # ((!\CPU|MUX2|Equal1~0_combout\ & \CPU|REG_END_RET|DOUT\(4))) ) ) # ( !\CPU|SOMADOR|Add0~17_sumout\ & ( (!\CPU|MUX2|Equal1~0_combout\ & 
-- (\CPU|REG_END_RET|DOUT\(4) & \CPU|MUX2|Equal2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|REG_END_RET|ALT_INV_DOUT\(4),
	datad => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|SOMADOR|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~4_combout\);

-- Location: FF_X28_Y7_N41
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X29_Y7_N5
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: MLABCELL_X28_Y7_N27
\MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~4_combout\ = (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \MEMORIA_INTRUCAO|memROM~4_combout\);

-- Location: LABCELL_X31_Y8_N45
\MEMORIA_INTRUCAO|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~21_combout\ = ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( \MEMORIA_INTRUCAO|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~21_combout\);

-- Location: LABCELL_X29_Y3_N33
\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~20_combout\ & ( (\MEMORIA_INTRUCAO|memROM~21_combout\ & (!\MEMORIA_INTRUCAO|memROM~22_combout\ & !\MEMORIA_INTRUCAO|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~22_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	combout => \CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\);

-- Location: LABCELL_X29_Y4_N9
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|MUX1|saida_MUX[1]~0_combout\ & ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) # (\CPU|ULA1|Equal0~0_combout\) ) ) ) # ( !\CPU|MUX1|saida_MUX[1]~0_combout\ & ( \CPU|ULA1|Add1~5_sumout\ 
-- & ( \CPU|ULA1|Equal0~0_combout\ ) ) ) # ( \CPU|MUX1|saida_MUX[1]~0_combout\ & ( !\CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & !\CPU|DECODIFICADOR_INSTRUCAO|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux5~0_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X28_Y3_N5
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: LABCELL_X29_Y8_N27
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\MEMORIA_INTRUCAO|memROM~9_combout\ & ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( (\MEMORIA_INTRUCAO|memROM~4_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\MEMORIA_INTRUCAO|memROM~10_combout\) # (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X32_Y4_N27
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & \comb~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \comb~1_combout\);

-- Location: FF_X41_Y2_N47
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: FF_X41_Y2_N44
\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: FF_X41_Y2_N2
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: FF_X41_Y2_N50
\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: LABCELL_X41_Y2_N51
\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( 
-- (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011000011001100001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N54
\DECOD_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(1))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(1)) 
-- # (\REG_HEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N57
\DECOD_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(0) & ( (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(3) & 
-- ((\REG_HEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N48
\DECOD_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(3) & ( (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(2) $ (\REG_HEX0|DOUT\(0)))) ) ) # ( !\REG_HEX0|DOUT\(3) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(2) $ (!\REG_HEX0|DOUT\(0)))) # 
-- (\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(2) & \REG_HEX0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	dataf => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N42
\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3)) # ((!\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(1))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(2),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N45
\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = ( \REG_HEX0|DOUT\(0) & ( !\REG_HEX0|DOUT\(3) $ (((\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(1)))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101111100001010010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N0
\DECOD_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(3) & ( (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(3) & ( (!\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(1) & 
-- (\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000011110011000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X32_Y4_N18
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( (\comb~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~12_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \comb~2_combout\);

-- Location: FF_X41_Y2_N8
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: FF_X41_Y2_N17
\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: FF_X41_Y2_N14
\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X41_Y2_N11
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: LABCELL_X41_Y2_N3
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

-- Location: LABCELL_X41_Y2_N24
\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = ( \REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(0) $ 
-- (!\REG_HEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N27
\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(0) & ( (\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(2))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(2))) # (\REG_HEX1|DOUT\(3) & 
-- ((\REG_HEX1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N12
\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = ( \REG_HEX1|DOUT\(3) & ( (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(2) $ (\REG_HEX1|DOUT\(0)))) ) ) # ( !\REG_HEX1|DOUT\(3) & ( (!\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) 
-- & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(2),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	dataf => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N15
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

-- Location: LABCELL_X41_Y2_N9
\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = ( \REG_HEX1|DOUT\(0) & ( !\REG_HEX1|DOUT\(3) $ (((\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N6
\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = ( \REG_HEX1|DOUT\(1) & ( (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(2))) ) ) # ( !\REG_HEX1|DOUT\(1) & ( (!\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(3) & 
-- (!\REG_HEX1|DOUT\(0) & \REG_HEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011000010001000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	dataf => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X34_Y4_N27
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

-- Location: MLABCELL_X34_Y6_N3
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \comb~0_combout\ & ( (\CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & \MEMORIA_INTRUCAO|memROM~15_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~3_combout\);

-- Location: FF_X34_Y4_N29
\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[3]~feeder_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

-- Location: MLABCELL_X34_Y4_N24
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

-- Location: FF_X34_Y4_N25
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX2|DOUT[0]~feeder_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: FF_X34_Y4_N38
\REG_HEX2|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X34_Y4_N44
\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

-- Location: MLABCELL_X34_Y4_N57
\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) $ 
-- (!\REG_HEX2|DOUT[2]~DUPLICATE_q\))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X34_Y4_N12
\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT[2]~DUPLICATE_q\))) # (\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(3))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT[2]~DUPLICATE_q\ & 
-- (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datad => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: FF_X34_Y4_N37
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

-- Location: MLABCELL_X34_Y4_N15
\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(3) & ((\REG_HEX2|DOUT\(2)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(3) & 
-- (!\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X34_Y4_N30
\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(3) & !\REG_HEX2|DOUT[2]~DUPLICATE_q\)) # (\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( 
-- (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datad => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X34_Y4_N33
\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & \REG_HEX2|DOUT\(0)) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT[2]~DUPLICATE_q\ & ((\REG_HEX2|DOUT\(0)))) # (\REG_HEX2|DOUT[2]~DUPLICATE_q\ & 
-- (!\REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001100111010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X34_Y4_N54
\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT[2]~DUPLICATE_q\) # (\REG_HEX2|DOUT\(0)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ 
-- (\REG_HEX2|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datad => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X34_Y4_N0
\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = ( \REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) $ (\REG_HEX2|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\REG_HEX2|DOUT\(0) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ 
-- (\REG_HEX2|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datad => \REG_HEX2|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X34_Y4_N45
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & ( \comb~0_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~18_combout\ & \MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~4_combout\);

-- Location: FF_X41_Y2_N41
\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: FF_X41_Y2_N32
\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: FF_X41_Y2_N35
\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: FF_X41_Y2_N38
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: LABCELL_X40_Y1_N39
\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = ( \REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(0)) ) ) ) # ( !\REG_HEX3|DOUT\(3) & ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(0)) ) ) ) # ( 
-- \REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(2) & ( (\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(0)) ) ) ) # ( !\REG_HEX3|DOUT\(3) & ( !\REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000001010000010110100000101000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datae => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N21
\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(0) & ((\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ 
-- (!\REG_HEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N18
\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) & !\REG_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(1),
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N30
\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = ( \REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & ((\REG_HEX3|DOUT\(0)))) ) ) # ( !\REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(3) & 
-- (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N33
\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = ( \REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(3)) # ((!\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2))) ) ) # ( !\REG_HEX3|DOUT\(0) & ( (!\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	dataf => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N39
\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(1))) # (\REG_HEX3|DOUT\(0) & 
-- ((!\REG_HEX3|DOUT\(2)) # (\REG_HEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N36
\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = ( \REG_HEX3|DOUT\(1) & ( (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) & \REG_HEX3|DOUT\(2))) ) ) # ( !\REG_HEX3|DOUT\(1) & ( (!\REG_HEX3|DOUT\(3) & ((!\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(3) & 
-- (!\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001100111100000000110000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	dataf => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X34_Y4_N39
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & ( \comb~0_combout\ & ( (\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X34_Y4_N53
\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: FF_X34_Y4_N8
\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: FF_X34_Y4_N11
\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: FF_X34_Y4_N50
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: MLABCELL_X34_Y4_N3
\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X34_Y4_N18
\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(2))) # (\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) $ 
-- (!\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X34_Y4_N21
\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) & \REG_HEX4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X34_Y4_N6
\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(0))) # (\REG_HEX4|DOUT\(1) & ((\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(1) & 
-- (!\REG_HEX4|DOUT\(3) & \REG_HEX4|DOUT\(0))) # (\REG_HEX4|DOUT\(1) & (\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X34_Y4_N51
\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = ( \REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(1)) # (\REG_HEX4|DOUT\(0)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(0) & ((!\REG_HEX4|DOUT\(1)) # (!\REG_HEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(1),
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X34_Y4_N9
\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = ( \REG_HEX4|DOUT\(2) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (!\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(2) & ( (!\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(1)) # (\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X34_Y4_N48
\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) $ (\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000011000101000000001100010100000000110001010000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(1),
	datab => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X25_Y3_N24
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

-- Location: MLABCELL_X28_Y9_N0
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & ( (\comb~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~2_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	combout => \comb~6_combout\);

-- Location: FF_X25_Y3_N26
\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX5|DOUT[0]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

-- Location: FF_X25_Y3_N41
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

-- Location: FF_X25_Y3_N19
\REG_HEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

-- Location: LABCELL_X25_Y3_N0
\REG_HEX5|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_HEX5|DOUT[1]~feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \REG_HEX5|DOUT[1]~feeder_combout\);

-- Location: FF_X25_Y3_N1
\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX5|DOUT[1]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

-- Location: LABCELL_X25_Y3_N33
\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(3))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(3))) # (\REG_HEX5|DOUT\(0) & 
-- (!\REG_HEX5|DOUT\(2) $ (\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: FF_X25_Y3_N25
\REG_HEX5|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_HEX5|DOUT[0]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y3_N48
\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = ( \REG_HEX5|DOUT\(2) & ( (!\REG_HEX5|DOUT[0]~DUPLICATE_q\ & ((\REG_HEX5|DOUT\(1)) # (\REG_HEX5|DOUT\(3)))) # (\REG_HEX5|DOUT[0]~DUPLICATE_q\ & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(1)))) ) ) # ( 
-- !\REG_HEX5|DOUT\(2) & ( (\REG_HEX5|DOUT[0]~DUPLICATE_q\ & (\REG_HEX5|DOUT\(3) & \REG_HEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	dataf => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X25_Y3_N6
\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = ( \REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(1) & ( \REG_HEX5|DOUT\(2) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(0)) ) ) ) # ( \REG_HEX5|DOUT\(3) & ( 
-- !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X25_Y3_N30
\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(3))) # (\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(2))) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) 
-- $ (!\REG_HEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X25_Y3_N12
\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(1) & ( \REG_HEX5|DOUT\(0) ) ) ) # ( \REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(0)) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( 
-- !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X25_Y3_N45
\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2)) # (\REG_HEX5|DOUT\(0)) ) ) ) # ( \REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & \REG_HEX5|DOUT\(2)) ) ) ) # ( 
-- !\REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010111110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X25_Y3_N36
\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(0)) ) ) ) # ( \REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(0)) ) ) ) # ( 
-- !\REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(1) & ( !\REG_HEX5|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100000011000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X34_Y7_N54
\CPU|SOMADOR|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMADOR|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|SOMADOR|Add0~30\,
	sumout => \CPU|SOMADOR|Add0~33_sumout\);

-- Location: FF_X34_Y7_N55
\CPU|REG_END_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMADOR|Add0~33_sumout\,
	ena => \CPU|DECODIFICADOR_INSTRUCAO|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_END_RET|DOUT\(8));

-- Location: MLABCELL_X34_Y7_N12
\CPU|MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~8_combout\ = ( \CPU|SOMADOR|Add0~33_sumout\ & ( \CPU|MUX2|Equal2~0_combout\ & ( (!\CPU|MUX2|Equal1~0_combout\ & ((\CPU|REG_END_RET|DOUT\(8)))) # (\CPU|MUX2|Equal1~0_combout\ & (\MEMORIA_INTRUCAO|memROM~26_combout\)) ) ) ) # ( 
-- !\CPU|SOMADOR|Add0~33_sumout\ & ( \CPU|MUX2|Equal2~0_combout\ & ( (!\CPU|MUX2|Equal1~0_combout\ & ((\CPU|REG_END_RET|DOUT\(8)))) # (\CPU|MUX2|Equal1~0_combout\ & (\MEMORIA_INTRUCAO|memROM~26_combout\)) ) ) ) # ( \CPU|SOMADOR|Add0~33_sumout\ & ( 
-- !\CPU|MUX2|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~26_combout\,
	datab => \CPU|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|REG_END_RET|ALT_INV_DOUT\(8),
	datae => \CPU|SOMADOR|ALT_INV_Add0~33_sumout\,
	dataf => \CPU|MUX2|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUX2|saida_MUX[8]~8_combout\);

-- Location: FF_X34_Y7_N14
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: MLABCELL_X23_Y11_N51
\REG_LEDR0a7|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[0]~feeder_combout\ = ( \CPU|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	combout => \REG_LEDR0a7|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X28_Y9_N27
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & \comb~0_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	dataf => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	combout => \comb~7_combout\);

-- Location: FF_X23_Y11_N53
\REG_LEDR0a7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[0]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(0));

-- Location: MLABCELL_X23_Y11_N9
\REG_LEDR0a7|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[1]~feeder_combout\ = ( \CPU|REG1|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	combout => \REG_LEDR0a7|DOUT[1]~feeder_combout\);

-- Location: FF_X23_Y11_N10
\REG_LEDR0a7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[1]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(1));

-- Location: MLABCELL_X23_Y11_N36
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

-- Location: FF_X23_Y11_N37
\REG_LEDR0a7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[2]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(2));

-- Location: MLABCELL_X23_Y11_N42
\REG_LEDR0a7|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[3]~feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \REG_LEDR0a7|DOUT[3]~feeder_combout\);

-- Location: FF_X23_Y11_N43
\REG_LEDR0a7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[3]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(3));

-- Location: MLABCELL_X23_Y11_N12
\REG_LEDR0a7|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[4]~feeder_combout\ = ( \CPU|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	combout => \REG_LEDR0a7|DOUT[4]~feeder_combout\);

-- Location: FF_X23_Y11_N13
\REG_LEDR0a7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[4]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(4));

-- Location: MLABCELL_X23_Y11_N54
\REG_LEDR0a7|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[5]~feeder_combout\ = ( \CPU|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	combout => \REG_LEDR0a7|DOUT[5]~feeder_combout\);

-- Location: FF_X23_Y11_N55
\REG_LEDR0a7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[5]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(5));

-- Location: MLABCELL_X23_Y11_N27
\REG_LEDR0a7|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0a7|DOUT[6]~feeder_combout\ = ( \CPU|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	combout => \REG_LEDR0a7|DOUT[6]~feeder_combout\);

-- Location: FF_X23_Y11_N28
\REG_LEDR0a7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[6]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(6));

-- Location: MLABCELL_X23_Y11_N30
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

-- Location: FF_X23_Y11_N31
\REG_LEDR0a7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0a7|DOUT[7]~feeder_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0a7|DOUT\(7));

-- Location: MLABCELL_X28_Y9_N33
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( !\MEMORIA_INTRUCAO|memROM~2_combout\ & ( \comb~0_combout\ & ( \CPU|DECODIFICADOR_INSTRUCAO|Mux11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODIFICADOR_INSTRUCAO|ALT_INV_Mux11~0_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~8_combout\);

-- Location: MLABCELL_X28_Y9_N36
\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \FF_LEDR8|DOUT~q\ & ( \comb~8_combout\ & ( (((!\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_INTRUCAO|memROM~15_combout\)) # (\MEMORIA_INTRUCAO|memROM~18_combout\)) # (\CPU|REG1|DOUT\(0)) ) ) ) # ( !\FF_LEDR8|DOUT~q\ & ( 
-- \comb~8_combout\ & ( (\CPU|REG1|DOUT\(0) & (!\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & \MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) ) # ( \FF_LEDR8|DOUT~q\ & ( !\comb~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \FF_LEDR8|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \FF_LEDR8|DOUT~0_combout\);

-- Location: FF_X28_Y9_N37
\FF_LEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FF_LEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR8|DOUT~q\);

-- Location: MLABCELL_X28_Y9_N42
\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = ( \FF_LEDR9|DOUT~q\ & ( \comb~8_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~18_combout\) # ((\MEMORIA_INTRUCAO|memROM~12_combout\) # (\MEMORIA_INTRUCAO|memROM~15_combout\))) # (\CPU|REG1|DOUT\(0)) ) ) ) # ( !\FF_LEDR9|DOUT~q\ & ( 
-- \comb~8_combout\ & ( (\CPU|REG1|DOUT\(0) & (\MEMORIA_INTRUCAO|memROM~18_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & !\MEMORIA_INTRUCAO|memROM~12_combout\))) ) ) ) # ( \FF_LEDR9|DOUT~q\ & ( !\comb~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG1|ALT_INV_DOUT\(0),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datae => \FF_LEDR9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \FF_LEDR9|DOUT~0_combout\);

-- Location: FF_X28_Y9_N43
\FF_LEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FF_LEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR9|DOUT~q\);

-- Location: LABCELL_X47_Y44_N0
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


