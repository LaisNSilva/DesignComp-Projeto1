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

-- DATE "09/09/2021 15:55:11"

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
	BARRAMENTO_DADOS_ENDERECOS : OUT std_logic_vector(8 DOWNTO 0)
	);
END Aula5;

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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[0]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[1]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[2]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[3]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[4]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[5]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[6]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENTRADA[7]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[0]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[1]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[2]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[3]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[4]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[5]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[6]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_SAIDA[7]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[0]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[1]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[2]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[3]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[4]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[5]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[6]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[7]~output_o\ : std_logic;
SIGNAL \BARRAMENTO_DADOS_ENDERECOS[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~6\ : std_logic;
SIGNAL \SOMADOR|Add0~10\ : std_logic;
SIGNAL \SOMADOR|Add0~14\ : std_logic;
SIGNAL \SOMADOR|Add0~18\ : std_logic;
SIGNAL \SOMADOR|Add0~22\ : std_logic;
SIGNAL \SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~17_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~30\ : std_logic;
SIGNAL \SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~26\ : std_logic;
SIGNAL \SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out~16_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[0]~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~18_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~19_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~21_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~20_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~538_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~539_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~541_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~546_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~547_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~549_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~548_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~425_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~540_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~290_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~542_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~122_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~543_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~138_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~545_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~130_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~550_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~551_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~106_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~553_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~98_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~552_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~429_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~544_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~114_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~294_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~433_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~298_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~437_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~302_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~306_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[1]~8_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~441_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~307_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~123_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~139_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~131_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~107_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~99_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~445_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~115_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~311_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~449_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~315_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~453_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~319_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~323_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[2]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~457_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~324_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~124_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~140_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~132_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~108_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~461_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~116_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~328_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~465_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~332_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~469_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~336_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~340_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[3]~10_combout\ : std_logic;
SIGNAL \ULA1|Add1~30\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~7_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~473_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~341_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~125_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~141_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~133_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~109_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~101_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~477_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~117_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~345_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~481_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~349_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~485_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~353_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~357_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[4]~11_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~489_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~358_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~126_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~142_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~134_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~110_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~102_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~493_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~118_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~362_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~497_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~366_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~501_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~370_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~374_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[5]~12_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~505_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~375_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~127_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~143_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~135_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~111_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~103_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~509_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~119_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~379_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~513_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~383_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~517_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~387_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~391_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[6]~13_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~521_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~392_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~128_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~144_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~136_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~112_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~104_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~525_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~120_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~396_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~400_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~404_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~408_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|dado_out[7]~14_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \ULA1|Equal0~1_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~17_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~409_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~273_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~121_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~137_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~129_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~413_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~113_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~277_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~417_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~281_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~421_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~285_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~289_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_END_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[0]~15_combout\ : std_logic;
SIGNAL \REG_END_RET|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[7]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~408_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[6]~13_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~391_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[5]~12_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~374_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[4]~11_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~357_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[3]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[3]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~340_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[2]~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[2]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~323_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_dado_out[1]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~306_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~289_combout\ : std_logic;
SIGNAL \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ : std_logic;
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
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~525_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~521_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~517_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~513_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~509_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~505_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~501_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~497_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~493_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~489_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~485_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~481_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~477_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~473_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~469_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~465_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~461_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~457_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~453_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~449_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~445_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~441_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~437_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~433_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~429_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~425_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~421_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~417_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~413_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~409_combout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~404_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~400_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~396_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~392_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~387_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~383_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~379_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~375_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~370_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~366_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~362_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~358_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~353_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~349_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~345_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~341_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~336_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~332_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~328_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~324_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~319_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~315_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~311_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~307_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~302_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~298_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~294_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~290_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~285_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~281_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~277_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~273_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
BARRAMENTO_DADOS_SAIDA <= ww_BARRAMENTO_DADOS_SAIDA;
BARRAMENTO_DADOS_ENTRADA <= ww_BARRAMENTO_DADOS_ENTRADA;
BARRAMENTO_DADOS_ENDERECOS <= ww_BARRAMENTO_DADOS_ENDERECOS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MEMORIA_DADOS|ALT_INV_dado_out~16_combout\ <= NOT \MEMORIA_DADOS|dado_out~16_combout\;
\MUX2|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \MUX2|saida_MUX[7]~8_combout\;
\MEMORIA_DADOS|ALT_INV_ram~104_q\ <= NOT \MEMORIA_DADOS|ram~104_q\;
\MEMORIA_DADOS|ALT_INV_ram~88_q\ <= NOT \MEMORIA_DADOS|ram~88_q\;
\MEMORIA_DADOS|ALT_INV_ram~112_q\ <= NOT \MEMORIA_DADOS|ram~112_q\;
\MEMORIA_DADOS|ALT_INV_ram~96_q\ <= NOT \MEMORIA_DADOS|ram~96_q\;
\MEMORIA_DADOS|ALT_INV_ram~40_q\ <= NOT \MEMORIA_DADOS|ram~40_q\;
\MEMORIA_DADOS|ALT_INV_ram~24_q\ <= NOT \MEMORIA_DADOS|ram~24_q\;
\MEMORIA_DADOS|ALT_INV_ram~48_q\ <= NOT \MEMORIA_DADOS|ram~48_q\;
\MEMORIA_DADOS|ALT_INV_ram~32_q\ <= NOT \MEMORIA_DADOS|ram~32_q\;
\MEMORIA_DADOS|ALT_INV_ram~103_q\ <= NOT \MEMORIA_DADOS|ram~103_q\;
\MEMORIA_DADOS|ALT_INV_ram~87_q\ <= NOT \MEMORIA_DADOS|ram~87_q\;
\MEMORIA_DADOS|ALT_INV_ram~111_q\ <= NOT \MEMORIA_DADOS|ram~111_q\;
\MEMORIA_DADOS|ALT_INV_ram~95_q\ <= NOT \MEMORIA_DADOS|ram~95_q\;
\MEMORIA_DADOS|ALT_INV_ram~39_q\ <= NOT \MEMORIA_DADOS|ram~39_q\;
\MEMORIA_DADOS|ALT_INV_ram~23_q\ <= NOT \MEMORIA_DADOS|ram~23_q\;
\MEMORIA_DADOS|ALT_INV_ram~47_q\ <= NOT \MEMORIA_DADOS|ram~47_q\;
\MEMORIA_DADOS|ALT_INV_ram~31_q\ <= NOT \MEMORIA_DADOS|ram~31_q\;
\MEMORIA_DADOS|ALT_INV_ram~102_q\ <= NOT \MEMORIA_DADOS|ram~102_q\;
\MEMORIA_DADOS|ALT_INV_ram~86_q\ <= NOT \MEMORIA_DADOS|ram~86_q\;
\MEMORIA_DADOS|ALT_INV_ram~110_q\ <= NOT \MEMORIA_DADOS|ram~110_q\;
\MEMORIA_DADOS|ALT_INV_ram~94_q\ <= NOT \MEMORIA_DADOS|ram~94_q\;
\MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \MEMORIA_DADOS|ram~38_q\;
\MEMORIA_DADOS|ALT_INV_ram~22_q\ <= NOT \MEMORIA_DADOS|ram~22_q\;
\MEMORIA_DADOS|ALT_INV_ram~46_q\ <= NOT \MEMORIA_DADOS|ram~46_q\;
\MEMORIA_DADOS|ALT_INV_ram~30_q\ <= NOT \MEMORIA_DADOS|ram~30_q\;
\MEMORIA_DADOS|ALT_INV_ram~101_q\ <= NOT \MEMORIA_DADOS|ram~101_q\;
\MEMORIA_DADOS|ALT_INV_ram~85_q\ <= NOT \MEMORIA_DADOS|ram~85_q\;
\MEMORIA_DADOS|ALT_INV_ram~109_q\ <= NOT \MEMORIA_DADOS|ram~109_q\;
\MEMORIA_DADOS|ALT_INV_ram~93_q\ <= NOT \MEMORIA_DADOS|ram~93_q\;
\MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \MEMORIA_DADOS|ram~37_q\;
\MEMORIA_DADOS|ALT_INV_ram~21_q\ <= NOT \MEMORIA_DADOS|ram~21_q\;
\MEMORIA_DADOS|ALT_INV_ram~45_q\ <= NOT \MEMORIA_DADOS|ram~45_q\;
\MEMORIA_DADOS|ALT_INV_ram~29_q\ <= NOT \MEMORIA_DADOS|ram~29_q\;
\MEMORIA_DADOS|ALT_INV_ram~100_q\ <= NOT \MEMORIA_DADOS|ram~100_q\;
\MEMORIA_DADOS|ALT_INV_ram~84_q\ <= NOT \MEMORIA_DADOS|ram~84_q\;
\MEMORIA_DADOS|ALT_INV_ram~108_q\ <= NOT \MEMORIA_DADOS|ram~108_q\;
\MEMORIA_DADOS|ALT_INV_ram~92_q\ <= NOT \MEMORIA_DADOS|ram~92_q\;
\MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \MEMORIA_DADOS|ram~36_q\;
\MEMORIA_DADOS|ALT_INV_ram~20_q\ <= NOT \MEMORIA_DADOS|ram~20_q\;
\MEMORIA_DADOS|ALT_INV_ram~44_q\ <= NOT \MEMORIA_DADOS|ram~44_q\;
\MEMORIA_DADOS|ALT_INV_ram~28_q\ <= NOT \MEMORIA_DADOS|ram~28_q\;
\MEMORIA_DADOS|ALT_INV_ram~99_q\ <= NOT \MEMORIA_DADOS|ram~99_q\;
\MEMORIA_DADOS|ALT_INV_ram~83_q\ <= NOT \MEMORIA_DADOS|ram~83_q\;
\MEMORIA_DADOS|ALT_INV_ram~107_q\ <= NOT \MEMORIA_DADOS|ram~107_q\;
\MEMORIA_DADOS|ALT_INV_ram~91_q\ <= NOT \MEMORIA_DADOS|ram~91_q\;
\MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \MEMORIA_DADOS|ram~35_q\;
\MEMORIA_DADOS|ALT_INV_ram~19_q\ <= NOT \MEMORIA_DADOS|ram~19_q\;
\MEMORIA_DADOS|ALT_INV_ram~43_q\ <= NOT \MEMORIA_DADOS|ram~43_q\;
\MEMORIA_DADOS|ALT_INV_ram~27_q\ <= NOT \MEMORIA_DADOS|ram~27_q\;
\MEMORIA_DADOS|ALT_INV_ram~98_q\ <= NOT \MEMORIA_DADOS|ram~98_q\;
\MEMORIA_DADOS|ALT_INV_ram~82_q\ <= NOT \MEMORIA_DADOS|ram~82_q\;
\MEMORIA_DADOS|ALT_INV_ram~106_q\ <= NOT \MEMORIA_DADOS|ram~106_q\;
\MEMORIA_DADOS|ALT_INV_ram~90_q\ <= NOT \MEMORIA_DADOS|ram~90_q\;
\MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \MEMORIA_DADOS|ram~34_q\;
\MEMORIA_DADOS|ALT_INV_ram~18_q\ <= NOT \MEMORIA_DADOS|ram~18_q\;
\MEMORIA_DADOS|ALT_INV_ram~42_q\ <= NOT \MEMORIA_DADOS|ram~42_q\;
\MEMORIA_DADOS|ALT_INV_ram~26_q\ <= NOT \MEMORIA_DADOS|ram~26_q\;
\MEMORIA_DADOS|ALT_INV_ram~97_q\ <= NOT \MEMORIA_DADOS|ram~97_q\;
\MEMORIA_DADOS|ALT_INV_ram~81_q\ <= NOT \MEMORIA_DADOS|ram~81_q\;
\MEMORIA_DADOS|ALT_INV_ram~105_q\ <= NOT \MEMORIA_DADOS|ram~105_q\;
\MEMORIA_DADOS|ALT_INV_ram~89_q\ <= NOT \MEMORIA_DADOS|ram~89_q\;
\MEMORIA_DADOS|ALT_INV_ram~33_q\ <= NOT \MEMORIA_DADOS|ram~33_q\;
\MEMORIA_DADOS|ALT_INV_ram~17_q\ <= NOT \MEMORIA_DADOS|ram~17_q\;
\MEMORIA_DADOS|ALT_INV_ram~41_q\ <= NOT \MEMORIA_DADOS|ram~41_q\;
\MEMORIA_DADOS|ALT_INV_ram~25_q\ <= NOT \MEMORIA_DADOS|ram~25_q\;
\MEMORIA_DADOS|ALT_INV_ram~537_combout\ <= NOT \MEMORIA_DADOS|ram~537_combout\;
\MEMORIA_DADOS|ALT_INV_ram~136_q\ <= NOT \MEMORIA_DADOS|ram~136_q\;
\MEMORIA_DADOS|ALT_INV_ram~120_q\ <= NOT \MEMORIA_DADOS|ram~120_q\;
\MEMORIA_DADOS|ALT_INV_ram~144_q\ <= NOT \MEMORIA_DADOS|ram~144_q\;
\MEMORIA_DADOS|ALT_INV_ram~128_q\ <= NOT \MEMORIA_DADOS|ram~128_q\;
\MEMORIA_DADOS|ALT_INV_ram~72_q\ <= NOT \MEMORIA_DADOS|ram~72_q\;
\MEMORIA_DADOS|ALT_INV_ram~56_q\ <= NOT \MEMORIA_DADOS|ram~56_q\;
\MEMORIA_DADOS|ALT_INV_ram~80_q\ <= NOT \MEMORIA_DADOS|ram~80_q\;
\MEMORIA_DADOS|ALT_INV_ram~64_q\ <= NOT \MEMORIA_DADOS|ram~64_q\;
\MEMORIA_DADOS|ALT_INV_ram~135_q\ <= NOT \MEMORIA_DADOS|ram~135_q\;
\MEMORIA_DADOS|ALT_INV_ram~119_q\ <= NOT \MEMORIA_DADOS|ram~119_q\;
\MEMORIA_DADOS|ALT_INV_ram~143_q\ <= NOT \MEMORIA_DADOS|ram~143_q\;
\MEMORIA_DADOS|ALT_INV_ram~127_q\ <= NOT \MEMORIA_DADOS|ram~127_q\;
\MEMORIA_DADOS|ALT_INV_ram~71_q\ <= NOT \MEMORIA_DADOS|ram~71_q\;
\MEMORIA_DADOS|ALT_INV_ram~55_q\ <= NOT \MEMORIA_DADOS|ram~55_q\;
\MEMORIA_DADOS|ALT_INV_ram~79_q\ <= NOT \MEMORIA_DADOS|ram~79_q\;
\MEMORIA_DADOS|ALT_INV_ram~63_q\ <= NOT \MEMORIA_DADOS|ram~63_q\;
\MEMORIA_DADOS|ALT_INV_ram~134_q\ <= NOT \MEMORIA_DADOS|ram~134_q\;
\MEMORIA_DADOS|ALT_INV_ram~118_q\ <= NOT \MEMORIA_DADOS|ram~118_q\;
\MEMORIA_DADOS|ALT_INV_ram~142_q\ <= NOT \MEMORIA_DADOS|ram~142_q\;
\MEMORIA_DADOS|ALT_INV_ram~126_q\ <= NOT \MEMORIA_DADOS|ram~126_q\;
\MEMORIA_DADOS|ALT_INV_ram~70_q\ <= NOT \MEMORIA_DADOS|ram~70_q\;
\MEMORIA_DADOS|ALT_INV_ram~54_q\ <= NOT \MEMORIA_DADOS|ram~54_q\;
\MEMORIA_DADOS|ALT_INV_ram~78_q\ <= NOT \MEMORIA_DADOS|ram~78_q\;
\MEMORIA_DADOS|ALT_INV_ram~62_q\ <= NOT \MEMORIA_DADOS|ram~62_q\;
\MEMORIA_DADOS|ALT_INV_ram~133_q\ <= NOT \MEMORIA_DADOS|ram~133_q\;
\MEMORIA_DADOS|ALT_INV_ram~117_q\ <= NOT \MEMORIA_DADOS|ram~117_q\;
\MEMORIA_DADOS|ALT_INV_ram~141_q\ <= NOT \MEMORIA_DADOS|ram~141_q\;
\MEMORIA_DADOS|ALT_INV_ram~125_q\ <= NOT \MEMORIA_DADOS|ram~125_q\;
\MEMORIA_DADOS|ALT_INV_ram~69_q\ <= NOT \MEMORIA_DADOS|ram~69_q\;
\MEMORIA_DADOS|ALT_INV_ram~53_q\ <= NOT \MEMORIA_DADOS|ram~53_q\;
\MEMORIA_DADOS|ALT_INV_ram~77_q\ <= NOT \MEMORIA_DADOS|ram~77_q\;
\MEMORIA_DADOS|ALT_INV_ram~61_q\ <= NOT \MEMORIA_DADOS|ram~61_q\;
\MEMORIA_DADOS|ALT_INV_ram~132_q\ <= NOT \MEMORIA_DADOS|ram~132_q\;
\MEMORIA_DADOS|ALT_INV_ram~116_q\ <= NOT \MEMORIA_DADOS|ram~116_q\;
\MEMORIA_DADOS|ALT_INV_ram~140_q\ <= NOT \MEMORIA_DADOS|ram~140_q\;
\MEMORIA_DADOS|ALT_INV_ram~124_q\ <= NOT \MEMORIA_DADOS|ram~124_q\;
\MEMORIA_DADOS|ALT_INV_ram~68_q\ <= NOT \MEMORIA_DADOS|ram~68_q\;
\MEMORIA_DADOS|ALT_INV_ram~52_q\ <= NOT \MEMORIA_DADOS|ram~52_q\;
\MEMORIA_DADOS|ALT_INV_ram~76_q\ <= NOT \MEMORIA_DADOS|ram~76_q\;
\MEMORIA_DADOS|ALT_INV_ram~60_q\ <= NOT \MEMORIA_DADOS|ram~60_q\;
\MEMORIA_DADOS|ALT_INV_ram~131_q\ <= NOT \MEMORIA_DADOS|ram~131_q\;
\MEMORIA_DADOS|ALT_INV_ram~115_q\ <= NOT \MEMORIA_DADOS|ram~115_q\;
\MEMORIA_DADOS|ALT_INV_ram~139_q\ <= NOT \MEMORIA_DADOS|ram~139_q\;
\MEMORIA_DADOS|ALT_INV_ram~123_q\ <= NOT \MEMORIA_DADOS|ram~123_q\;
\MEMORIA_DADOS|ALT_INV_ram~67_q\ <= NOT \MEMORIA_DADOS|ram~67_q\;
\MEMORIA_DADOS|ALT_INV_ram~51_q\ <= NOT \MEMORIA_DADOS|ram~51_q\;
\MEMORIA_DADOS|ALT_INV_ram~75_q\ <= NOT \MEMORIA_DADOS|ram~75_q\;
\MEMORIA_DADOS|ALT_INV_ram~59_q\ <= NOT \MEMORIA_DADOS|ram~59_q\;
\MEMORIA_DADOS|ALT_INV_ram~130_q\ <= NOT \MEMORIA_DADOS|ram~130_q\;
\MEMORIA_DADOS|ALT_INV_ram~114_q\ <= NOT \MEMORIA_DADOS|ram~114_q\;
\MEMORIA_DADOS|ALT_INV_ram~138_q\ <= NOT \MEMORIA_DADOS|ram~138_q\;
\MEMORIA_DADOS|ALT_INV_ram~122_q\ <= NOT \MEMORIA_DADOS|ram~122_q\;
\MEMORIA_DADOS|ALT_INV_ram~66_q\ <= NOT \MEMORIA_DADOS|ram~66_q\;
\MEMORIA_DADOS|ALT_INV_ram~50_q\ <= NOT \MEMORIA_DADOS|ram~50_q\;
\MEMORIA_DADOS|ALT_INV_ram~74_q\ <= NOT \MEMORIA_DADOS|ram~74_q\;
\MEMORIA_DADOS|ALT_INV_ram~58_q\ <= NOT \MEMORIA_DADOS|ram~58_q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~21_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~20_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~19_combout\;
\MEMORIA_DADOS|ALT_INV_ram~129_q\ <= NOT \MEMORIA_DADOS|ram~129_q\;
\MEMORIA_DADOS|ALT_INV_ram~113_q\ <= NOT \MEMORIA_DADOS|ram~113_q\;
\MEMORIA_DADOS|ALT_INV_ram~137_q\ <= NOT \MEMORIA_DADOS|ram~137_q\;
\MEMORIA_DADOS|ALT_INV_ram~121_q\ <= NOT \MEMORIA_DADOS|ram~121_q\;
\MEMORIA_DADOS|ALT_INV_ram~65_q\ <= NOT \MEMORIA_DADOS|ram~65_q\;
\MEMORIA_DADOS|ALT_INV_ram~49_q\ <= NOT \MEMORIA_DADOS|ram~49_q\;
\MEMORIA_DADOS|ALT_INV_ram~73_q\ <= NOT \MEMORIA_DADOS|ram~73_q\;
\MEMORIA_DADOS|ALT_INV_ram~57_q\ <= NOT \MEMORIA_DADOS|ram~57_q\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~18_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[0]~15_combout\ <= NOT \MEMORIA_DADOS|dado_out[0]~15_combout\;
\REG_END_RET|ALT_INV_DOUT\(5) <= NOT \REG_END_RET|DOUT\(5);
\REG_END_RET|ALT_INV_DOUT\(6) <= NOT \REG_END_RET|DOUT\(6);
\REG_END_RET|ALT_INV_DOUT\(4) <= NOT \REG_END_RET|DOUT\(4);
\REG_END_RET|ALT_INV_DOUT\(3) <= NOT \REG_END_RET|DOUT\(3);
\REG_END_RET|ALT_INV_DOUT\(2) <= NOT \REG_END_RET|DOUT\(2);
\REG_END_RET|ALT_INV_DOUT\(1) <= NOT \REG_END_RET|DOUT\(1);
\REG_END_RET|ALT_INV_DOUT\(0) <= NOT \REG_END_RET|DOUT\(0);
\DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\ <= NOT \DECODIFICADOR_INSTRUCAO|Mux3~0_combout\;
\REG_END_RET|ALT_INV_DOUT\(7) <= NOT \REG_END_RET|DOUT\(7);
\MEMORIA_DADOS|ALT_INV_dado_out[7]~14_combout\ <= NOT \MEMORIA_DADOS|dado_out[7]~14_combout\;
\MEMORIA_DADOS|ALT_INV_ram~408_combout\ <= NOT \MEMORIA_DADOS|ram~408_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[6]~13_combout\ <= NOT \MEMORIA_DADOS|dado_out[6]~13_combout\;
\MEMORIA_DADOS|ALT_INV_ram~391_combout\ <= NOT \MEMORIA_DADOS|ram~391_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[5]~12_combout\ <= NOT \MEMORIA_DADOS|dado_out[5]~12_combout\;
\MEMORIA_DADOS|ALT_INV_ram~374_combout\ <= NOT \MEMORIA_DADOS|ram~374_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[4]~11_combout\ <= NOT \MEMORIA_DADOS|dado_out[4]~11_combout\;
\MEMORIA_DADOS|ALT_INV_ram~357_combout\ <= NOT \MEMORIA_DADOS|ram~357_combout\;
\ULA1|ALT_INV_saida[3]~5_combout\ <= NOT \ULA1|saida[3]~5_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[3]~10_combout\ <= NOT \MEMORIA_DADOS|dado_out[3]~10_combout\;
\MEMORIA_DADOS|ALT_INV_ram~340_combout\ <= NOT \MEMORIA_DADOS|ram~340_combout\;
\ULA1|ALT_INV_saida[2]~3_combout\ <= NOT \ULA1|saida[2]~3_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[2]~9_combout\ <= NOT \MEMORIA_DADOS|dado_out[2]~9_combout\;
\MEMORIA_DADOS|ALT_INV_ram~323_combout\ <= NOT \MEMORIA_DADOS|ram~323_combout\;
\ULA1|ALT_INV_saida[1]~1_combout\ <= NOT \ULA1|saida[1]~1_combout\;
\MEMORIA_DADOS|ALT_INV_dado_out[1]~8_combout\ <= NOT \MEMORIA_DADOS|dado_out[1]~8_combout\;
\MEMORIA_DADOS|ALT_INV_ram~306_combout\ <= NOT \MEMORIA_DADOS|ram~306_combout\;
\DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\ <= NOT \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\;
\DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\ <= NOT \DECODIFICADOR_INSTRUCAO|Mux9~0_combout\;
\ULA1|ALT_INV_Equal0~1_combout\ <= NOT \ULA1|Equal0~1_combout\;
\ULA1|ALT_INV_Equal0~0_combout\ <= NOT \ULA1|Equal0~0_combout\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~289_combout\ <= NOT \MEMORIA_DADOS|ram~289_combout\;
\DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\ <= NOT \DECODIFICADOR_INSTRUCAO|Mux6~0_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~17_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~16_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~15_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~14_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~12_combout\;
\MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~11_combout\;
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
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INTRUCAO|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\MEMORIA_DADOS|ALT_INV_ram~533_combout\ <= NOT \MEMORIA_DADOS|ram~533_combout\;
\MEMORIA_DADOS|ALT_INV_ram~529_combout\ <= NOT \MEMORIA_DADOS|ram~529_combout\;
\MEMORIA_DADOS|ALT_INV_ram~525_combout\ <= NOT \MEMORIA_DADOS|ram~525_combout\;
\MEMORIA_DADOS|ALT_INV_ram~521_combout\ <= NOT \MEMORIA_DADOS|ram~521_combout\;
\MEMORIA_DADOS|ALT_INV_ram~517_combout\ <= NOT \MEMORIA_DADOS|ram~517_combout\;
\MEMORIA_DADOS|ALT_INV_ram~513_combout\ <= NOT \MEMORIA_DADOS|ram~513_combout\;
\MEMORIA_DADOS|ALT_INV_ram~509_combout\ <= NOT \MEMORIA_DADOS|ram~509_combout\;
\MEMORIA_DADOS|ALT_INV_ram~505_combout\ <= NOT \MEMORIA_DADOS|ram~505_combout\;
\MEMORIA_DADOS|ALT_INV_ram~501_combout\ <= NOT \MEMORIA_DADOS|ram~501_combout\;
\MEMORIA_DADOS|ALT_INV_ram~497_combout\ <= NOT \MEMORIA_DADOS|ram~497_combout\;
\MEMORIA_DADOS|ALT_INV_ram~493_combout\ <= NOT \MEMORIA_DADOS|ram~493_combout\;
\MEMORIA_DADOS|ALT_INV_ram~489_combout\ <= NOT \MEMORIA_DADOS|ram~489_combout\;
\MEMORIA_DADOS|ALT_INV_ram~485_combout\ <= NOT \MEMORIA_DADOS|ram~485_combout\;
\MEMORIA_DADOS|ALT_INV_ram~481_combout\ <= NOT \MEMORIA_DADOS|ram~481_combout\;
\MEMORIA_DADOS|ALT_INV_ram~477_combout\ <= NOT \MEMORIA_DADOS|ram~477_combout\;
\MEMORIA_DADOS|ALT_INV_ram~473_combout\ <= NOT \MEMORIA_DADOS|ram~473_combout\;
\MEMORIA_DADOS|ALT_INV_ram~469_combout\ <= NOT \MEMORIA_DADOS|ram~469_combout\;
\MEMORIA_DADOS|ALT_INV_ram~465_combout\ <= NOT \MEMORIA_DADOS|ram~465_combout\;
\MEMORIA_DADOS|ALT_INV_ram~461_combout\ <= NOT \MEMORIA_DADOS|ram~461_combout\;
\MEMORIA_DADOS|ALT_INV_ram~457_combout\ <= NOT \MEMORIA_DADOS|ram~457_combout\;
\MEMORIA_DADOS|ALT_INV_ram~453_combout\ <= NOT \MEMORIA_DADOS|ram~453_combout\;
\MEMORIA_DADOS|ALT_INV_ram~449_combout\ <= NOT \MEMORIA_DADOS|ram~449_combout\;
\MEMORIA_DADOS|ALT_INV_ram~445_combout\ <= NOT \MEMORIA_DADOS|ram~445_combout\;
\MEMORIA_DADOS|ALT_INV_ram~441_combout\ <= NOT \MEMORIA_DADOS|ram~441_combout\;
\MEMORIA_DADOS|ALT_INV_ram~437_combout\ <= NOT \MEMORIA_DADOS|ram~437_combout\;
\MEMORIA_DADOS|ALT_INV_ram~433_combout\ <= NOT \MEMORIA_DADOS|ram~433_combout\;
\MEMORIA_DADOS|ALT_INV_ram~429_combout\ <= NOT \MEMORIA_DADOS|ram~429_combout\;
\MEMORIA_DADOS|ALT_INV_ram~425_combout\ <= NOT \MEMORIA_DADOS|ram~425_combout\;
\MEMORIA_DADOS|ALT_INV_ram~421_combout\ <= NOT \MEMORIA_DADOS|ram~421_combout\;
\MEMORIA_DADOS|ALT_INV_ram~417_combout\ <= NOT \MEMORIA_DADOS|ram~417_combout\;
\MEMORIA_DADOS|ALT_INV_ram~413_combout\ <= NOT \MEMORIA_DADOS|ram~413_combout\;
\MEMORIA_DADOS|ALT_INV_ram~409_combout\ <= NOT \MEMORIA_DADOS|ram~409_combout\;
\SOMADOR|ALT_INV_Add0~29_sumout\ <= NOT \SOMADOR|Add0~29_sumout\;
\SOMADOR|ALT_INV_Add0~25_sumout\ <= NOT \SOMADOR|Add0~25_sumout\;
\SOMADOR|ALT_INV_Add0~21_sumout\ <= NOT \SOMADOR|Add0~21_sumout\;
\SOMADOR|ALT_INV_Add0~17_sumout\ <= NOT \SOMADOR|Add0~17_sumout\;
\SOMADOR|ALT_INV_Add0~13_sumout\ <= NOT \SOMADOR|Add0~13_sumout\;
\SOMADOR|ALT_INV_Add0~9_sumout\ <= NOT \SOMADOR|Add0~9_sumout\;
\SOMADOR|ALT_INV_Add0~5_sumout\ <= NOT \SOMADOR|Add0~5_sumout\;
\SOMADOR|ALT_INV_Add0~1_sumout\ <= NOT \SOMADOR|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\MEMORIA_DADOS|ALT_INV_ram~404_combout\ <= NOT \MEMORIA_DADOS|ram~404_combout\;
\MEMORIA_DADOS|ALT_INV_ram~400_combout\ <= NOT \MEMORIA_DADOS|ram~400_combout\;
\MEMORIA_DADOS|ALT_INV_ram~396_combout\ <= NOT \MEMORIA_DADOS|ram~396_combout\;
\MEMORIA_DADOS|ALT_INV_ram~392_combout\ <= NOT \MEMORIA_DADOS|ram~392_combout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\MEMORIA_DADOS|ALT_INV_ram~387_combout\ <= NOT \MEMORIA_DADOS|ram~387_combout\;
\MEMORIA_DADOS|ALT_INV_ram~383_combout\ <= NOT \MEMORIA_DADOS|ram~383_combout\;
\MEMORIA_DADOS|ALT_INV_ram~379_combout\ <= NOT \MEMORIA_DADOS|ram~379_combout\;
\MEMORIA_DADOS|ALT_INV_ram~375_combout\ <= NOT \MEMORIA_DADOS|ram~375_combout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\MEMORIA_DADOS|ALT_INV_ram~370_combout\ <= NOT \MEMORIA_DADOS|ram~370_combout\;
\MEMORIA_DADOS|ALT_INV_ram~366_combout\ <= NOT \MEMORIA_DADOS|ram~366_combout\;
\MEMORIA_DADOS|ALT_INV_ram~362_combout\ <= NOT \MEMORIA_DADOS|ram~362_combout\;
\MEMORIA_DADOS|ALT_INV_ram~358_combout\ <= NOT \MEMORIA_DADOS|ram~358_combout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\MEMORIA_DADOS|ALT_INV_ram~353_combout\ <= NOT \MEMORIA_DADOS|ram~353_combout\;
\MEMORIA_DADOS|ALT_INV_ram~349_combout\ <= NOT \MEMORIA_DADOS|ram~349_combout\;
\MEMORIA_DADOS|ALT_INV_ram~345_combout\ <= NOT \MEMORIA_DADOS|ram~345_combout\;
\MEMORIA_DADOS|ALT_INV_ram~341_combout\ <= NOT \MEMORIA_DADOS|ram~341_combout\;
\MEMORIA_DADOS|ALT_INV_ram~336_combout\ <= NOT \MEMORIA_DADOS|ram~336_combout\;
\MEMORIA_DADOS|ALT_INV_ram~332_combout\ <= NOT \MEMORIA_DADOS|ram~332_combout\;
\MEMORIA_DADOS|ALT_INV_ram~328_combout\ <= NOT \MEMORIA_DADOS|ram~328_combout\;
\MEMORIA_DADOS|ALT_INV_ram~324_combout\ <= NOT \MEMORIA_DADOS|ram~324_combout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\MEMORIA_DADOS|ALT_INV_ram~319_combout\ <= NOT \MEMORIA_DADOS|ram~319_combout\;
\MEMORIA_DADOS|ALT_INV_ram~315_combout\ <= NOT \MEMORIA_DADOS|ram~315_combout\;
\MEMORIA_DADOS|ALT_INV_ram~311_combout\ <= NOT \MEMORIA_DADOS|ram~311_combout\;
\MEMORIA_DADOS|ALT_INV_ram~307_combout\ <= NOT \MEMORIA_DADOS|ram~307_combout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\MEMORIA_DADOS|ALT_INV_ram~302_combout\ <= NOT \MEMORIA_DADOS|ram~302_combout\;
\MEMORIA_DADOS|ALT_INV_ram~298_combout\ <= NOT \MEMORIA_DADOS|ram~298_combout\;
\MEMORIA_DADOS|ALT_INV_ram~294_combout\ <= NOT \MEMORIA_DADOS|ram~294_combout\;
\MEMORIA_DADOS|ALT_INV_ram~290_combout\ <= NOT \MEMORIA_DADOS|ram~290_combout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\MEMORIA_DADOS|ALT_INV_ram~285_combout\ <= NOT \MEMORIA_DADOS|ram~285_combout\;
\MEMORIA_DADOS|ALT_INV_ram~281_combout\ <= NOT \MEMORIA_DADOS|ram~281_combout\;
\MEMORIA_DADOS|ALT_INV_ram~277_combout\ <= NOT \MEMORIA_DADOS|ram~277_combout\;
\MEMORIA_DADOS|ALT_INV_ram~273_combout\ <= NOT \MEMORIA_DADOS|ram~273_combout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;

\BARRAMENTO_DADOS_ENTRADA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~289_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[0]~output_o\);

\BARRAMENTO_DADOS_ENTRADA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~306_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[1]~output_o\);

\BARRAMENTO_DADOS_ENTRADA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~323_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[2]~output_o\);

\BARRAMENTO_DADOS_ENTRADA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~340_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[3]~output_o\);

\BARRAMENTO_DADOS_ENTRADA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~357_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[4]~output_o\);

\BARRAMENTO_DADOS_ENTRADA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~374_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[5]~output_o\);

\BARRAMENTO_DADOS_ENTRADA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~391_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[6]~output_o\);

\BARRAMENTO_DADOS_ENTRADA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_DADOS|ram~408_combout\,
	oe => \MEMORIA_DADOS|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENTRADA[7]~output_o\);

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
	o => \BARRAMENTO_DADOS_SAIDA[0]~output_o\);

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
	o => \BARRAMENTO_DADOS_SAIDA[1]~output_o\);

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
	o => \BARRAMENTO_DADOS_SAIDA[2]~output_o\);

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
	o => \BARRAMENTO_DADOS_SAIDA[3]~output_o\);

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
	o => \BARRAMENTO_DADOS_SAIDA[4]~output_o\);

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
	o => \BARRAMENTO_DADOS_SAIDA[5]~output_o\);

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
	o => \BARRAMENTO_DADOS_SAIDA[6]~output_o\);

\BARRAMENTO_DADOS_SAIDA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_SAIDA[7]~output_o\);

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
	o => \BARRAMENTO_DADOS_ENDERECOS[0]~output_o\);

\BARRAMENTO_DADOS_ENDERECOS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_INTRUCAO|memROM~6_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENDERECOS[1]~output_o\);

\BARRAMENTO_DADOS_ENDERECOS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_INTRUCAO|memROM~8_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENDERECOS[2]~output_o\);

\BARRAMENTO_DADOS_ENDERECOS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_INTRUCAO|memROM~10_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENDERECOS[3]~output_o\);

\BARRAMENTO_DADOS_ENDERECOS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_INTRUCAO|memROM~12_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENDERECOS[4]~output_o\);

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
	o => \BARRAMENTO_DADOS_ENDERECOS[5]~output_o\);

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
	o => \BARRAMENTO_DADOS_ENDERECOS[6]~output_o\);

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
	o => \BARRAMENTO_DADOS_ENDERECOS[7]~output_o\);

\BARRAMENTO_DADOS_ENDERECOS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMORIA_INTRUCAO|memROM~13_combout\,
	devoe => ww_devoe,
	o => \BARRAMENTO_DADOS_ENDERECOS[8]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\MEMORIA_INTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~11_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~11_combout\);

\MUX2|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~8_combout\ = ( \PC|DOUT\(1) & ( \PC|DOUT\(0) & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & (!\PC|DOUT\(4) & \PC|DOUT\(3))) ) ) ) # ( \PC|DOUT\(1) & ( !\PC|DOUT\(0) & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & (!\PC|DOUT\(4) & (\PC|DOUT\(3) 
-- & \PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \MUX2|saida_MUX[7]~8_combout\);

\SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~5_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \SOMADOR|Add0~6\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \SOMADOR|Add0~5_sumout\,
	cout => \SOMADOR|Add0~6\);

\SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~9_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))
-- \SOMADOR|Add0~10\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \SOMADOR|Add0~6\,
	sumout => \SOMADOR|Add0~9_sumout\,
	cout => \SOMADOR|Add0~10\);

\SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~13_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))
-- \SOMADOR|Add0~14\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \SOMADOR|Add0~10\,
	sumout => \SOMADOR|Add0~13_sumout\,
	cout => \SOMADOR|Add0~14\);

\SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~17_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))
-- \SOMADOR|Add0~18\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \SOMADOR|Add0~14\,
	sumout => \SOMADOR|Add0~17_sumout\,
	cout => \SOMADOR|Add0~18\);

\SOMADOR|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~21_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))
-- \SOMADOR|Add0~22\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOMADOR|Add0~18\,
	sumout => \SOMADOR|Add0~21_sumout\,
	cout => \SOMADOR|Add0~22\);

\SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~29_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))
-- \SOMADOR|Add0~30\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOMADOR|Add0~22\,
	sumout => \SOMADOR|Add0~29_sumout\,
	cout => \SOMADOR|Add0~30\);

\DECODIFICADOR_INSTRUCAO|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\ = ( !\PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\);

\REG_END_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~29_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(5));

\MUX2|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~7_combout\ = (!\MUX2|saida_MUX[7]~8_combout\ & ((!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & ((\SOMADOR|Add0~29_sumout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\REG_END_RET|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	datac => \REG_END_RET|ALT_INV_DOUT\(5),
	datad => \SOMADOR|ALT_INV_Add0~29_sumout\,
	combout => \MUX2|saida_MUX[5]~7_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\MEMORIA_INTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~1_combout\ = (!\PC|DOUT\(6) & !\PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~1_combout\);

\MEMORIA_INTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~9_combout\ = (\PC|DOUT\(0) & ((!\PC|DOUT\(2) & ((\PC|DOUT\(3)))) # (\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010000000000010101000000000001010100000000000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~9_combout\);

\MEMORIA_INTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~10_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(4) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~10_combout\);

\REG_END_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~17_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(3));

\MUX2|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~4_combout\ = ( \SOMADOR|Add0~17_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (((!\MUX2|saida_MUX[7]~8_combout\)) # (\MEMORIA_INTRUCAO|memROM~10_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(3))))) ) ) # ( !\SOMADOR|Add0~17_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\MEMORIA_INTRUCAO|memROM~10_combout\ & (\MUX2|saida_MUX[7]~8_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	datad => \REG_END_RET|ALT_INV_DOUT\(3),
	datae => \SOMADOR|ALT_INV_Add0~17_sumout\,
	combout => \MUX2|saida_MUX[3]~4_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\MEMORIA_INTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~12_combout\ = ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (\PC|DOUT\(1) & (\PC|DOUT\(2) & (\PC|DOUT\(3) & !\PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~12_combout\);

\REG_END_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~21_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(4));

\MUX2|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~5_combout\ = ( \SOMADOR|Add0~21_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (((!\MUX2|saida_MUX[7]~8_combout\)) # (\MEMORIA_INTRUCAO|memROM~12_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(4))))) ) ) # ( !\SOMADOR|Add0~21_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\ & (\MUX2|saida_MUX[7]~8_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	datad => \REG_END_RET|ALT_INV_DOUT\(4),
	datae => \SOMADOR|ALT_INV_Add0~21_sumout\,
	combout => \MUX2|saida_MUX[4]~5_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\MEMORIA_INTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~7_combout\ = (!\PC|DOUT\(2) & (\PC|DOUT\(0) & ((\PC|DOUT\(3))))) # (\PC|DOUT\(2) & (\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010001000000110101000100000011010100010000001101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~7_combout\);

\MEMORIA_INTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~8_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(4) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~8_combout\);

\REG_END_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~13_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(2));

\MUX2|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~3_combout\ = ( \SOMADOR|Add0~13_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (((!\MUX2|saida_MUX[7]~8_combout\)) # (\MEMORIA_INTRUCAO|memROM~8_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(2))))) ) ) # ( !\SOMADOR|Add0~13_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & (\MUX2|saida_MUX[7]~8_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	datad => \REG_END_RET|ALT_INV_DOUT\(2),
	datae => \SOMADOR|ALT_INV_Add0~13_sumout\,
	combout => \MUX2|saida_MUX[2]~3_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\MEMORIA_INTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~3_combout\ = (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & \PC|DOUT\(4))))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100000000000011010000000000001101000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INTRUCAO|memROM~3_combout\);

\MEMORIA_INTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~4_combout\ = ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(6) & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000000000000000000010101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~4_combout\);

\MEMORIA_INTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~5_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INTRUCAO|memROM~5_combout\);

\MEMORIA_INTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~6_combout\ = ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\PC|DOUT\(7) & (((\PC|DOUT\(0) & !\PC|DOUT\(1))) # (\MEMORIA_INTRUCAO|memROM~3_combout\))) ) ) ) # ( 
-- !\MEMORIA_INTRUCAO|memROM~4_combout\ & ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\PC|DOUT\(7) & \MEMORIA_INTRUCAO|memROM~3_combout\) ) ) ) # ( \MEMORIA_INTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INTRUCAO|memROM~5_combout\ & ( (!\PC|DOUT\(7) & 
-- (\PC|DOUT\(0) & !\PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000101010100010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~6_combout\);

\REG_END_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~9_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(1));

\MUX2|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~2_combout\ = ( \SOMADOR|Add0~9_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (((!\MUX2|saida_MUX[7]~8_combout\)) # (\MEMORIA_INTRUCAO|memROM~6_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(1))))) ) ) # ( !\SOMADOR|Add0~9_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MUX2|saida_MUX[7]~8_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	datad => \REG_END_RET|ALT_INV_DOUT\(1),
	datae => \SOMADOR|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|saida_MUX[1]~2_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\MEMORIA_INTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~15_combout\ = ( \PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (\PC|DOUT\(0) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (\PC|DOUT\(2) & 
-- (\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001100001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~15_combout\);

\MEMORIA_INTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~16_combout\ = ( \PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) ) ) # ( !\PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & 
-- (\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & ((!\PC|DOUT\(1) & (!\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000010100010011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~16_combout\);

\MEMORIA_INTRUCAO|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~17_combout\ = ( \PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(0) & 
-- (((\PC|DOUT\(1) & !\PC|DOUT\(2))) # (\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (((!\PC|DOUT\(3)) # (\PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100101111010110100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~17_combout\);

\DECODIFICADOR_INSTRUCAO|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (\MEMORIA_INTRUCAO|memROM~15_combout\ & (\MEMORIA_INTRUCAO|memROM~16_combout\ & !\MEMORIA_INTRUCAO|memROM~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	combout => \DECODIFICADOR_INSTRUCAO|Mux3~0_combout\);

\SOMADOR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))
-- \SOMADOR|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOMADOR|Add0~30\,
	sumout => \SOMADOR|Add0~25_sumout\,
	cout => \SOMADOR|Add0~26\);

\REG_END_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~25_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(6));

\MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~6_combout\ = (!\MUX2|saida_MUX[7]~8_combout\ & ((!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & ((\SOMADOR|Add0~25_sumout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\REG_END_RET|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	datac => \REG_END_RET|ALT_INV_DOUT\(6),
	datad => \SOMADOR|ALT_INV_Add0~25_sumout\,
	combout => \MUX2|saida_MUX[6]~6_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOMADOR|Add0~26\,
	sumout => \SOMADOR|Add0~1_sumout\);

\REG_END_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~1_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(7));

\MUX2|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~0_combout\ = (!\MUX2|saida_MUX[7]~8_combout\ & ((!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & ((\SOMADOR|Add0~1_sumout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\REG_END_RET|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101000000000001110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_END_RET|ALT_INV_DOUT\(7),
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datac => \SOMADOR|ALT_INV_Add0~1_sumout\,
	datad => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	combout => \MUX2|saida_MUX[7]~0_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\MEMORIA_INTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~0_combout\ = (\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (((\PC|DOUT\(1) & !\PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101010000010000010101000001000001010100000100000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \MEMORIA_INTRUCAO|memROM~0_combout\);

\MEMORIA_INTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~2_combout\ = (!\PC|DOUT\(7) & (\MEMORIA_INTRUCAO|memROM~0_combout\ & (!\PC|DOUT\(4) & \MEMORIA_INTRUCAO|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~2_combout\);

\REG_END_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMADOR|Add0~5_sumout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_END_RET|DOUT\(0));

\MUX2|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~1_combout\ = ( \SOMADOR|Add0~5_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (((!\MUX2|saida_MUX[7]~8_combout\)) # (\MEMORIA_INTRUCAO|memROM~2_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(0))))) ) ) # ( !\SOMADOR|Add0~5_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MUX2|saida_MUX[7]~8_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux3~0_combout\ & 
-- (((\REG_END_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux3~0_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~8_combout\,
	datad => \REG_END_RET|ALT_INV_DOUT\(0),
	datae => \SOMADOR|ALT_INV_Add0~5_sumout\,
	combout => \MUX2|saida_MUX[0]~1_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\MEMORIA_INTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~14_combout\ = ( \PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) ) ) # ( !\PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(1) $ 
-- (((!\PC|DOUT\(2)) # (!\PC|DOUT\(3)))))) # (\PC|DOUT\(0) & ((!\PC|DOUT\(1) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100111001110011100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~14_combout\);

\DECODIFICADOR_INSTRUCAO|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ = (\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ & (!\MEMORIA_INTRUCAO|memROM~16_combout\ & !\MEMORIA_INTRUCAO|memROM~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	combout => \DECODIFICADOR_INSTRUCAO|Mux6~0_combout\);

\MEMORIA_DADOS|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out~16_combout\ = ( \PC|DOUT\(1) & ( \PC|DOUT\(0) & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & (!\PC|DOUT\(4) & (!\PC|DOUT\(3) & !\PC|DOUT\(2)))) ) ) ) # ( !\PC|DOUT\(1) & ( \PC|DOUT\(0) & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & 
-- (!\PC|DOUT\(4) & \PC|DOUT\(3))) ) ) ) # ( \PC|DOUT\(1) & ( !\PC|DOUT\(0) & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & (\PC|DOUT\(4) & (!\PC|DOUT\(3) & !\PC|DOUT\(2)))) ) ) ) # ( !\PC|DOUT\(1) & ( !\PC|DOUT\(0) & ( (\MEMORIA_INTRUCAO|memROM~11_combout\ & 
-- (!\PC|DOUT\(4) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000100000000000000000100000001000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \MEMORIA_DADOS|dado_out~16_combout\);

\MEMORIA_DADOS|dado_out[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[0]~15_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~289_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~289_combout\,
	combout => \MEMORIA_DADOS|dado_out[0]~15_combout\);

\MEMORIA_INTRUCAO|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~18_combout\ = (\MEMORIA_INTRUCAO|memROM~0_combout\ & (!\PC|DOUT\(4) & \MEMORIA_INTRUCAO|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~18_combout\);

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

\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\MEMORIA_DADOS|dado_out[0]~15_combout\)) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\PC|DOUT\(7))))) ) + ( \REG1|DOUT\(0) ) + ( 
-- \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\MEMORIA_DADOS|dado_out[0]~15_combout\)) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~18_combout\) # (\PC|DOUT\(7))))) ) + ( \REG1|DOUT\(0) ) + ( 
-- \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out[0]~15_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[0]~15_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~18_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( 
-- !VCC ))
-- \ULA1|Add0~2\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[0]~15_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~18_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[0]~15_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~18_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out~16_combout\ & !\MEMORIA_DADOS|ram~289_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000100010001011100010001000101110001000100010111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~289_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

\DECODIFICADOR_INSTRUCAO|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~17_combout\ & (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~16_combout\ $ (!\MEMORIA_INTRUCAO|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \DECODIFICADOR_INSTRUCAO|Mux9~0_combout\);

\DECODIFICADOR_INSTRUCAO|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~16_combout\ & ((!\MEMORIA_INTRUCAO|memROM~17_combout\ & (!\MEMORIA_INTRUCAO|memROM~14_combout\ $ (!\MEMORIA_INTRUCAO|memROM~15_combout\))) # (\MEMORIA_INTRUCAO|memROM~17_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~14_combout\ & !\MEMORIA_INTRUCAO|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010000000010010001000000001001000100000000100100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\);

\MEMORIA_INTRUCAO|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~19_combout\ = (!\PC|DOUT\(4) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~9_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~19_combout\);

\MEMORIA_INTRUCAO|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~21_combout\ = (!\PC|DOUT\(4) & (\MEMORIA_INTRUCAO|memROM~1_combout\ & \MEMORIA_INTRUCAO|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~21_combout\);

\MEMORIA_INTRUCAO|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~20_combout\ = ( \MEMORIA_INTRUCAO|memROM~5_combout\ & ( ((\PC|DOUT\(0) & (!\PC|DOUT\(1) & \MEMORIA_INTRUCAO|memROM~4_combout\))) # (\MEMORIA_INTRUCAO|memROM~3_combout\) ) ) # ( !\MEMORIA_INTRUCAO|memROM~5_combout\ & ( 
-- (\PC|DOUT\(0) & (!\PC|DOUT\(1) & \MEMORIA_INTRUCAO|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000011110100111100000000010001000000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~4_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~20_combout\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_DADOS|dado_out[1]~8_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~20_combout\)) # (\PC|DOUT\(7)))) ) + ( \REG1|DOUT\(1) ) + ( 
-- \ULA1|Add1~2\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_DADOS|dado_out[1]~8_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~20_combout\)) # (\PC|DOUT\(7)))) ) + ( \REG1|DOUT\(1) ) + ( 
-- \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[1]~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[1]~8_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~20_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( 
-- \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[1]~8_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~20_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( 
-- \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[1]~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~20_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & ((\MEMORIA_DADOS|dado_out[1]~8_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[1]~8_combout\,
	combout => \ULA1|saida[1]~1_combout\);

\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \ULA1|saida[1]~1_combout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & (((\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\)) # (\ULA1|Add1~25_sumout\))) # (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & 
-- (((!\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & \ULA1|Add0~5_sumout\)))) ) ) # ( !\ULA1|saida[1]~1_combout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ((!\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & (\ULA1|Add1~25_sumout\)) # 
-- (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & ((\ULA1|Add0~5_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000000011100000100110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~25_sumout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	datac => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	datae => \ULA1|ALT_INV_saida[1]~1_combout\,
	combout => \ULA1|saida[1]~2_combout\);

\DECODIFICADOR_INSTRUCAO|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\ = (!\MEMORIA_INTRUCAO|memROM~14_combout\ & (!\MEMORIA_INTRUCAO|memROM~15_combout\ $ (((!\MEMORIA_INTRUCAO|memROM~17_combout\ & !\MEMORIA_INTRUCAO|memROM~16_combout\))))) # (\MEMORIA_INTRUCAO|memROM~14_combout\ & 
-- (!\MEMORIA_INTRUCAO|memROM~17_combout\ & (!\MEMORIA_INTRUCAO|memROM~16_combout\ & !\MEMORIA_INTRUCAO|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000000011110001000000001111000100000000111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~17_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~16_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~14_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[1]~2_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\MEMORIA_DADOS|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~537_combout\ = ( \PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(0) & 
-- ((!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(1) & (!\PC|DOUT\(2))))) # (\PC|DOUT\(0) & (((\PC|DOUT\(2) & !\PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100101001010000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_DADOS|ram~537_combout\);

\MEMORIA_DADOS|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~538_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~538_combout\);

\MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~58_q\);

\MEMORIA_DADOS|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~539_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~539_combout\);

\MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~74_q\);

\MEMORIA_DADOS|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~541_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~541_combout\);

\MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~66_q\);

\MEMORIA_DADOS|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~546_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~546_combout\);

\MEMORIA_DADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~26_q\);

\MEMORIA_DADOS|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~547_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~547_combout\);

\MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~42_q\);

\MEMORIA_DADOS|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~549_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~549_combout\);

\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

\MEMORIA_DADOS|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~548_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~548_combout\);

\MEMORIA_DADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~18_q\);

\MEMORIA_DADOS|ram~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~425_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~18_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~26_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~34_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~26_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~42_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~18_q\,
	combout => \MEMORIA_DADOS|ram~425_combout\);

\MEMORIA_DADOS|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~540_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & !\MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~540_combout\);

\MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~50_q\);

\MEMORIA_DADOS|ram~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~290_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~425_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~425_combout\ & 
-- ((\MEMORIA_DADOS|ram~50_q\))) # (\MEMORIA_DADOS|ram~425_combout\ & (\MEMORIA_DADOS|ram~58_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~425_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~425_combout\ & ((\MEMORIA_DADOS|ram~66_q\))) # (\MEMORIA_DADOS|ram~425_combout\ & (\MEMORIA_DADOS|ram~74_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~58_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~425_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~50_q\,
	combout => \MEMORIA_DADOS|ram~290_combout\);

\MEMORIA_DADOS|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~542_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~542_combout\);

\MEMORIA_DADOS|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~122_q\);

\MEMORIA_DADOS|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~543_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~543_combout\);

\MEMORIA_DADOS|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~138_q\);

\MEMORIA_DADOS|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~545_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~545_combout\);

\MEMORIA_DADOS|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~130_q\);

\MEMORIA_DADOS|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~550_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~550_combout\);

\MEMORIA_DADOS|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~90_q\);

\MEMORIA_DADOS|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~551_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~551_combout\);

\MEMORIA_DADOS|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~106_q\);

\MEMORIA_DADOS|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~553_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~553_combout\);

\MEMORIA_DADOS|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~98_q\);

\MEMORIA_DADOS|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~552_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (!\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~552_combout\);

\MEMORIA_DADOS|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~82_q\);

\MEMORIA_DADOS|ram~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~429_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~82_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~90_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~98_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~106_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~90_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~106_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~98_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~82_q\,
	combout => \MEMORIA_DADOS|ram~429_combout\);

\MEMORIA_DADOS|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~544_combout\ = ( \MEMORIA_DADOS|ram~537_combout\ & ( (!\MEMORIA_INTRUCAO|memROM~2_combout\ & (!\MEMORIA_INTRUCAO|memROM~6_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\ & \MEMORIA_INTRUCAO|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~537_combout\,
	combout => \MEMORIA_DADOS|ram~544_combout\);

\MEMORIA_DADOS|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~114_q\);

\MEMORIA_DADOS|ram~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~294_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~429_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~429_combout\ & 
-- ((\MEMORIA_DADOS|ram~114_q\))) # (\MEMORIA_DADOS|ram~429_combout\ & (\MEMORIA_DADOS|ram~122_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~429_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~429_combout\ & ((\MEMORIA_DADOS|ram~130_q\))) # (\MEMORIA_DADOS|ram~429_combout\ & (\MEMORIA_DADOS|ram~138_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~122_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~138_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~130_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~429_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~114_q\,
	combout => \MEMORIA_DADOS|ram~294_combout\);

\MEMORIA_DADOS|ram~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~433_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~433_combout\);

\MEMORIA_DADOS|ram~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~298_combout\ = ( \MEMORIA_DADOS|ram~433_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~433_combout\,
	combout => \MEMORIA_DADOS|ram~298_combout\);

\MEMORIA_DADOS|ram~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~437_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~437_combout\);

\MEMORIA_DADOS|ram~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~302_combout\ = ( \MEMORIA_DADOS|ram~437_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~437_combout\,
	combout => \MEMORIA_DADOS|ram~302_combout\);

\MEMORIA_DADOS|ram~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~306_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~302_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~298_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~294_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~290_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~290_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~294_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~298_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~302_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~306_combout\);

\MEMORIA_DADOS|dado_out[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[1]~8_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~306_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~306_combout\,
	combout => \MEMORIA_DADOS|dado_out[1]~8_combout\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_DADOS|dado_out[2]~9_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~21_combout\)) # (\PC|DOUT\(7)))) ) + ( \REG1|DOUT\(2) ) + ( 
-- \ULA1|Add1~26\ ))
-- \ULA1|Add1~30\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_DADOS|dado_out[2]~9_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~21_combout\)) # (\PC|DOUT\(7)))) ) + ( \REG1|DOUT\(2) ) + ( 
-- \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[2]~9_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\,
	cout => \ULA1|Add1~30\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[2]~9_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~21_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( 
-- \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[2]~9_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~21_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( 
-- \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[2]~9_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~21_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & ((\MEMORIA_DADOS|dado_out[2]~9_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_INTRUCAO|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[2]~9_combout\,
	combout => \ULA1|saida[2]~3_combout\);

\ULA1|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~4_combout\ = ( \ULA1|saida[2]~3_combout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & (((\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\)) # (\ULA1|Add1~29_sumout\))) # (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & 
-- (((!\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & \ULA1|Add0~9_sumout\)))) ) ) # ( !\ULA1|saida[2]~3_combout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ((!\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & (\ULA1|Add1~29_sumout\)) # 
-- (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & ((\ULA1|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000000011100000100110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~29_sumout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	datac => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	datad => \ULA1|ALT_INV_Add0~9_sumout\,
	datae => \ULA1|ALT_INV_saida[2]~3_combout\,
	combout => \ULA1|saida[2]~4_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[2]~4_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~59_q\);

\MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~75_q\);

\MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~67_q\);

\MEMORIA_DADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~27_q\);

\MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~43_q\);

\MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

\MEMORIA_DADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~19_q\);

\MEMORIA_DADOS|ram~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~441_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~19_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~27_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~35_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~27_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~43_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~19_q\,
	combout => \MEMORIA_DADOS|ram~441_combout\);

\MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~51_q\);

\MEMORIA_DADOS|ram~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~307_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~441_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~441_combout\ & 
-- ((\MEMORIA_DADOS|ram~51_q\))) # (\MEMORIA_DADOS|ram~441_combout\ & (\MEMORIA_DADOS|ram~59_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~441_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~441_combout\ & ((\MEMORIA_DADOS|ram~67_q\))) # (\MEMORIA_DADOS|ram~441_combout\ & (\MEMORIA_DADOS|ram~75_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~59_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~441_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~51_q\,
	combout => \MEMORIA_DADOS|ram~307_combout\);

\MEMORIA_DADOS|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~123_q\);

\MEMORIA_DADOS|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~139_q\);

\MEMORIA_DADOS|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~131_q\);

\MEMORIA_DADOS|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~91_q\);

\MEMORIA_DADOS|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~107_q\);

\MEMORIA_DADOS|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~99_q\);

\MEMORIA_DADOS|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~83_q\);

\MEMORIA_DADOS|ram~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~445_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~83_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~91_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~99_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~107_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~91_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~107_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~99_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~83_q\,
	combout => \MEMORIA_DADOS|ram~445_combout\);

\MEMORIA_DADOS|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~115_q\);

\MEMORIA_DADOS|ram~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~311_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~445_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~445_combout\ & 
-- ((\MEMORIA_DADOS|ram~115_q\))) # (\MEMORIA_DADOS|ram~445_combout\ & (\MEMORIA_DADOS|ram~123_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~445_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~445_combout\ & ((\MEMORIA_DADOS|ram~131_q\))) # (\MEMORIA_DADOS|ram~445_combout\ & (\MEMORIA_DADOS|ram~139_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~123_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~139_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~131_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~445_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~115_q\,
	combout => \MEMORIA_DADOS|ram~311_combout\);

\MEMORIA_DADOS|ram~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~449_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~449_combout\);

\MEMORIA_DADOS|ram~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~315_combout\ = ( \MEMORIA_DADOS|ram~449_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~449_combout\,
	combout => \MEMORIA_DADOS|ram~315_combout\);

\MEMORIA_DADOS|ram~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~453_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~453_combout\);

\MEMORIA_DADOS|ram~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~319_combout\ = ( \MEMORIA_DADOS|ram~453_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~453_combout\,
	combout => \MEMORIA_DADOS|ram~319_combout\);

\MEMORIA_DADOS|ram~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~323_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~319_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~315_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~311_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~307_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~311_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~315_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~319_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~323_combout\);

\MEMORIA_DADOS|dado_out[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[2]~9_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~323_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~323_combout\,
	combout => \MEMORIA_DADOS|dado_out[2]~9_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[3]~10_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~19_combout\)))) ) + ( \REG1|DOUT\(3) ) + ( 
-- \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((\MEMORIA_DADOS|dado_out[3]~10_combout\)))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\PC|DOUT\(7) & ((\MEMORIA_INTRUCAO|memROM~19_combout\)))) ) + ( \REG1|DOUT\(3) ) + ( 
-- \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[3]~10_combout\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~5_combout\ = (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & ((\MEMORIA_DADOS|dado_out[3]~10_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_INTRUCAO|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_dado_out[3]~10_combout\,
	combout => \ULA1|saida[3]~5_combout\);

\ULA1|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~6_combout\ = ( \ULA1|saida[3]~5_combout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & (((\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\)) # (\ULA1|Add1~5_sumout\))) # (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & 
-- (((!\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & \ULA1|Add0~13_sumout\)))) ) ) # ( !\ULA1|saida[3]~5_combout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ((!\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & (\ULA1|Add1~5_sumout\)) # 
-- (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & ((\ULA1|Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000000011100000100110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~5_sumout\,
	datab => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	datac => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	datae => \ULA1|ALT_INV_saida[3]~5_combout\,
	combout => \ULA1|saida[3]~6_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[3]~6_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~60_q\);

\MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~76_q\);

\MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~68_q\);

\MEMORIA_DADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~28_q\);

\MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~44_q\);

\MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~549_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~20_q\);

\MEMORIA_DADOS|ram~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~457_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~20_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~28_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~36_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~44_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~28_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~44_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~20_q\,
	combout => \MEMORIA_DADOS|ram~457_combout\);

\MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~52_q\);

\MEMORIA_DADOS|ram~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~324_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~457_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~457_combout\ & 
-- ((\MEMORIA_DADOS|ram~52_q\))) # (\MEMORIA_DADOS|ram~457_combout\ & (\MEMORIA_DADOS|ram~60_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~457_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~457_combout\ & ((\MEMORIA_DADOS|ram~68_q\))) # (\MEMORIA_DADOS|ram~457_combout\ & (\MEMORIA_DADOS|ram~76_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~60_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~76_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~457_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~52_q\,
	combout => \MEMORIA_DADOS|ram~324_combout\);

\MEMORIA_DADOS|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~124_q\);

\MEMORIA_DADOS|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~140_q\);

\MEMORIA_DADOS|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~132_q\);

\MEMORIA_DADOS|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~92_q\);

\MEMORIA_DADOS|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~108_q\);

\MEMORIA_DADOS|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~100_q\);

\MEMORIA_DADOS|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~84_q\);

\MEMORIA_DADOS|ram~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~461_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~84_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~92_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~100_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~108_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~92_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~108_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~100_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~84_q\,
	combout => \MEMORIA_DADOS|ram~461_combout\);

\MEMORIA_DADOS|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~116_q\);

\MEMORIA_DADOS|ram~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~328_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~461_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~461_combout\ & 
-- ((\MEMORIA_DADOS|ram~116_q\))) # (\MEMORIA_DADOS|ram~461_combout\ & (\MEMORIA_DADOS|ram~124_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~461_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~461_combout\ & ((\MEMORIA_DADOS|ram~132_q\))) # (\MEMORIA_DADOS|ram~461_combout\ & (\MEMORIA_DADOS|ram~140_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~124_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~140_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~132_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~461_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~116_q\,
	combout => \MEMORIA_DADOS|ram~328_combout\);

\MEMORIA_DADOS|ram~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~465_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~465_combout\);

\MEMORIA_DADOS|ram~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~332_combout\ = ( \MEMORIA_DADOS|ram~465_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~465_combout\,
	combout => \MEMORIA_DADOS|ram~332_combout\);

\MEMORIA_DADOS|ram~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~469_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~469_combout\);

\MEMORIA_DADOS|ram~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~336_combout\ = ( \MEMORIA_DADOS|ram~469_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~469_combout\,
	combout => \MEMORIA_DADOS|ram~336_combout\);

\MEMORIA_DADOS|ram~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~340_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~336_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~332_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~328_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~324_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~324_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~328_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~332_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~336_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~340_combout\);

\MEMORIA_DADOS|dado_out[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[3]~10_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~340_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~340_combout\,
	combout => \MEMORIA_DADOS|dado_out[3]~10_combout\);

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\MEMORIA_DADOS|dado_out[3]~10_combout\)) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~19_combout\) # (\PC|DOUT\(7))))) ) + ( \REG1|DOUT\(3) ) + ( 
-- \ULA1|Add1~30\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\MEMORIA_DADOS|dado_out[3]~10_combout\)) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (((!\MEMORIA_INTRUCAO|memROM~19_combout\) # (\PC|DOUT\(7))))) ) + ( \REG1|DOUT\(3) ) + ( 
-- \ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out[3]~10_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~19_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~30\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & ((\MEMORIA_DADOS|dado_out[4]~11_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & ((\MEMORIA_DADOS|dado_out[4]~11_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_INTRUCAO|memROM~12_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[4]~11_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~7_combout\ = ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~17_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[4]~11_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( 
-- !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~17_sumout\ & ( (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) # (\ULA1|Add1~9_sumout\) ) ) ) # ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~17_sumout\ & ( 
-- (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[4]~11_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~17_sumout\ & ( (\ULA1|Add1~9_sumout\ & 
-- !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001000100000000000001111111111110010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out[4]~11_combout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	datae => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~7_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[4]~7_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~61_q\);

\MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~77_q\);

\MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~69_q\);

\MEMORIA_DADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~546_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~45_q\);

\MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

\MEMORIA_DADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~21_q\);

\MEMORIA_DADOS|ram~473\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~473_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~21_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~29_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~37_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~45_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~29_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~45_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~21_q\,
	combout => \MEMORIA_DADOS|ram~473_combout\);

\MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~53_q\);

\MEMORIA_DADOS|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~341_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~473_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~473_combout\ & 
-- ((\MEMORIA_DADOS|ram~53_q\))) # (\MEMORIA_DADOS|ram~473_combout\ & (\MEMORIA_DADOS|ram~61_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~473_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~473_combout\ & ((\MEMORIA_DADOS|ram~69_q\))) # (\MEMORIA_DADOS|ram~473_combout\ & (\MEMORIA_DADOS|ram~77_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~61_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~473_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~53_q\,
	combout => \MEMORIA_DADOS|ram~341_combout\);

\MEMORIA_DADOS|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~125_q\);

\MEMORIA_DADOS|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~141_q\);

\MEMORIA_DADOS|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~133_q\);

\MEMORIA_DADOS|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~550_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~109_q\);

\MEMORIA_DADOS|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~101_q\);

\MEMORIA_DADOS|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~85_q\);

\MEMORIA_DADOS|ram~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~477_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~85_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~93_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~101_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~109_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~93_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~101_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~85_q\,
	combout => \MEMORIA_DADOS|ram~477_combout\);

\MEMORIA_DADOS|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~117_q\);

\MEMORIA_DADOS|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~345_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~477_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~477_combout\ & 
-- ((\MEMORIA_DADOS|ram~117_q\))) # (\MEMORIA_DADOS|ram~477_combout\ & (\MEMORIA_DADOS|ram~125_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~477_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~477_combout\ & ((\MEMORIA_DADOS|ram~133_q\))) # (\MEMORIA_DADOS|ram~477_combout\ & (\MEMORIA_DADOS|ram~141_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~125_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~141_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~133_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~477_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~117_q\,
	combout => \MEMORIA_DADOS|ram~345_combout\);

\MEMORIA_DADOS|ram~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~481_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~481_combout\);

\MEMORIA_DADOS|ram~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~349_combout\ = ( \MEMORIA_DADOS|ram~481_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~481_combout\,
	combout => \MEMORIA_DADOS|ram~349_combout\);

\MEMORIA_DADOS|ram~485\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~485_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~485_combout\);

\MEMORIA_DADOS|ram~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~353_combout\ = ( \MEMORIA_DADOS|ram~485_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~485_combout\,
	combout => \MEMORIA_DADOS|ram~353_combout\);

\MEMORIA_DADOS|ram~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~357_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~353_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~349_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~345_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~341_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~341_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~345_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~349_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~353_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~357_combout\);

\MEMORIA_DADOS|dado_out[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[4]~11_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~357_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~357_combout\,
	combout => \MEMORIA_DADOS|dado_out[4]~11_combout\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & ((!\MEMORIA_DADOS|dado_out[4]~11_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & ((!\MEMORIA_DADOS|dado_out[4]~11_combout\))) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (!\MEMORIA_INTRUCAO|memROM~12_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datac => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[4]~11_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & \MEMORIA_DADOS|dado_out[5]~12_combout\) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & \MEMORIA_DADOS|dado_out[5]~12_combout\) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[5]~12_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~8_combout\ = ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~21_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[5]~12_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( 
-- !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~21_sumout\ & ( (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) # (\ULA1|Add1~13_sumout\) ) ) ) # ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~21_sumout\ & ( 
-- (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[5]~12_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~21_sumout\ & ( (\ULA1|Add1~13_sumout\ & 
-- !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001000100000000000001111111111110010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out[5]~12_combout\,
	datac => \ULA1|ALT_INV_Add1~13_sumout\,
	datad => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	datae => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~8_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[5]~8_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~62_q\);

\MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~78_q\);

\MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~70_q\);

\MEMORIA_DADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~30_q\);

\MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~46_q\);

\MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

\MEMORIA_DADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~22_q\);

\MEMORIA_DADOS|ram~489\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~489_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~22_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~30_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~38_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~46_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~30_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~46_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~22_q\,
	combout => \MEMORIA_DADOS|ram~489_combout\);

\MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~54_q\);

\MEMORIA_DADOS|ram~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~358_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~489_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~489_combout\ & 
-- ((\MEMORIA_DADOS|ram~54_q\))) # (\MEMORIA_DADOS|ram~489_combout\ & (\MEMORIA_DADOS|ram~62_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~489_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~489_combout\ & ((\MEMORIA_DADOS|ram~70_q\))) # (\MEMORIA_DADOS|ram~489_combout\ & (\MEMORIA_DADOS|ram~78_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~62_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~78_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~489_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~54_q\,
	combout => \MEMORIA_DADOS|ram~358_combout\);

\MEMORIA_DADOS|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~126_q\);

\MEMORIA_DADOS|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~142_q\);

\MEMORIA_DADOS|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~134_q\);

\MEMORIA_DADOS|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~94_q\);

\MEMORIA_DADOS|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~110_q\);

\MEMORIA_DADOS|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~102_q\);

\MEMORIA_DADOS|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~86_q\);

\MEMORIA_DADOS|ram~493\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~493_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~86_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~94_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~102_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~110_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~94_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~110_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~102_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~86_q\,
	combout => \MEMORIA_DADOS|ram~493_combout\);

\MEMORIA_DADOS|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~118_q\);

\MEMORIA_DADOS|ram~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~362_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~493_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~493_combout\ & 
-- ((\MEMORIA_DADOS|ram~118_q\))) # (\MEMORIA_DADOS|ram~493_combout\ & (\MEMORIA_DADOS|ram~126_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~493_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~493_combout\ & ((\MEMORIA_DADOS|ram~134_q\))) # (\MEMORIA_DADOS|ram~493_combout\ & (\MEMORIA_DADOS|ram~142_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~126_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~142_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~134_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~493_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~118_q\,
	combout => \MEMORIA_DADOS|ram~362_combout\);

\MEMORIA_DADOS|ram~497\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~497_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~497_combout\);

\MEMORIA_DADOS|ram~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~366_combout\ = ( \MEMORIA_DADOS|ram~497_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~497_combout\,
	combout => \MEMORIA_DADOS|ram~366_combout\);

\MEMORIA_DADOS|ram~501\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~501_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~501_combout\);

\MEMORIA_DADOS|ram~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~370_combout\ = ( \MEMORIA_DADOS|ram~501_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~501_combout\,
	combout => \MEMORIA_DADOS|ram~370_combout\);

\MEMORIA_DADOS|ram~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~374_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~370_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~366_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~362_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~358_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~358_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~362_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~366_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~370_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~374_combout\);

\MEMORIA_DADOS|dado_out[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[5]~12_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~374_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~374_combout\,
	combout => \MEMORIA_DADOS|dado_out[5]~12_combout\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[5]~12_combout\) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\MEMORIA_DADOS|dado_out[5]~12_combout\) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[5]~12_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & \MEMORIA_DADOS|dado_out[6]~13_combout\) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & \MEMORIA_DADOS|dado_out[6]~13_combout\) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[6]~13_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~9_combout\ = ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~25_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[6]~13_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( 
-- !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~25_sumout\ & ( (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) # (\ULA1|Add1~17_sumout\) ) ) ) # ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~25_sumout\ & ( 
-- (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[6]~13_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~25_sumout\ & ( (\ULA1|Add1~17_sumout\ & 
-- !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001000100000000000001111111111110010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out[6]~13_combout\,
	datac => \ULA1|ALT_INV_Add1~17_sumout\,
	datad => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	datae => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~9_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[6]~9_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~63_q\);

\MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~79_q\);

\MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~71_q\);

\MEMORIA_DADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~31_q\);

\MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~47_q\);

\MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~39_q\);

\MEMORIA_DADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~23_q\);

\MEMORIA_DADOS|ram~505\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~505_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~23_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~31_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~39_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~47_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~31_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~47_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~39_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~23_q\,
	combout => \MEMORIA_DADOS|ram~505_combout\);

\MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~55_q\);

\MEMORIA_DADOS|ram~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~375_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~505_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~505_combout\ & 
-- ((\MEMORIA_DADOS|ram~55_q\))) # (\MEMORIA_DADOS|ram~505_combout\ & (\MEMORIA_DADOS|ram~63_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~505_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~505_combout\ & ((\MEMORIA_DADOS|ram~71_q\))) # (\MEMORIA_DADOS|ram~505_combout\ & (\MEMORIA_DADOS|ram~79_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~63_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~79_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~71_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~505_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~55_q\,
	combout => \MEMORIA_DADOS|ram~375_combout\);

\MEMORIA_DADOS|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~127_q\);

\MEMORIA_DADOS|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~143_q\);

\MEMORIA_DADOS|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~135_q\);

\MEMORIA_DADOS|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~95_q\);

\MEMORIA_DADOS|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~111_q\);

\MEMORIA_DADOS|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~103_q\);

\MEMORIA_DADOS|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~87_q\);

\MEMORIA_DADOS|ram~509\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~509_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~87_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~95_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~103_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~111_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~95_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~111_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~103_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~87_q\,
	combout => \MEMORIA_DADOS|ram~509_combout\);

\MEMORIA_DADOS|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~119_q\);

\MEMORIA_DADOS|ram~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~379_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~509_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~509_combout\ & 
-- ((\MEMORIA_DADOS|ram~119_q\))) # (\MEMORIA_DADOS|ram~509_combout\ & (\MEMORIA_DADOS|ram~127_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~509_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~509_combout\ & ((\MEMORIA_DADOS|ram~135_q\))) # (\MEMORIA_DADOS|ram~509_combout\ & (\MEMORIA_DADOS|ram~143_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~127_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~143_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~135_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~509_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~119_q\,
	combout => \MEMORIA_DADOS|ram~379_combout\);

\MEMORIA_DADOS|ram~513\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~513_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~513_combout\);

\MEMORIA_DADOS|ram~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~383_combout\ = ( \MEMORIA_DADOS|ram~513_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~513_combout\,
	combout => \MEMORIA_DADOS|ram~383_combout\);

\MEMORIA_DADOS|ram~517\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~517_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~517_combout\);

\MEMORIA_DADOS|ram~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~387_combout\ = ( \MEMORIA_DADOS|ram~517_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~517_combout\,
	combout => \MEMORIA_DADOS|ram~387_combout\);

\MEMORIA_DADOS|ram~391\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~391_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~387_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~383_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~379_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~375_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~375_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~379_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~383_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~387_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~391_combout\);

\MEMORIA_DADOS|dado_out[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[6]~13_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~391_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~391_combout\,
	combout => \MEMORIA_DADOS|dado_out[6]~13_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[6]~13_combout\) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\MEMORIA_DADOS|dado_out[6]~13_combout\) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[6]~13_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & \MEMORIA_DADOS|dado_out[7]~14_combout\) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[7]~14_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\ULA1|saida[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~10_combout\ = ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~29_sumout\ & ( (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[7]~14_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( 
-- !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~29_sumout\ & ( (\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) # (\ULA1|Add1~21_sumout\) ) ) ) # ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~29_sumout\ & ( 
-- (!\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\ & (\MEMORIA_DADOS|dado_out[7]~14_combout\ & !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\)) ) ) ) # ( !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( !\ULA1|Add0~29_sumout\ & ( (\ULA1|Add1~21_sumout\ & 
-- !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001000100000000000001111111111110010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_dado_out[7]~14_combout\,
	datac => \ULA1|ALT_INV_Add1~21_sumout\,
	datad => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	datae => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~10_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[7]~10_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

\MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~64_q\);

\MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~80_q\);

\MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~72_q\);

\MEMORIA_DADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~32_q\);

\MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~48_q\);

\MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~40_q\);

\MEMORIA_DADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~24_q\);

\MEMORIA_DADOS|ram~521\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~521_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~24_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~32_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~40_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~48_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~32_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~48_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~40_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~24_q\,
	combout => \MEMORIA_DADOS|ram~521_combout\);

\MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~56_q\);

\MEMORIA_DADOS|ram~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~392_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~521_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~521_combout\ & 
-- ((\MEMORIA_DADOS|ram~56_q\))) # (\MEMORIA_DADOS|ram~521_combout\ & (\MEMORIA_DADOS|ram~64_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~521_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~521_combout\ & ((\MEMORIA_DADOS|ram~72_q\))) # (\MEMORIA_DADOS|ram~521_combout\ & (\MEMORIA_DADOS|ram~80_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~64_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~80_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~521_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~56_q\,
	combout => \MEMORIA_DADOS|ram~392_combout\);

\MEMORIA_DADOS|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~128_q\);

\MEMORIA_DADOS|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~144_q\);

\MEMORIA_DADOS|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~136_q\);

\MEMORIA_DADOS|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~96_q\);

\MEMORIA_DADOS|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~112_q\);

\MEMORIA_DADOS|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~104_q\);

\MEMORIA_DADOS|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~88_q\);

\MEMORIA_DADOS|ram~525\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~525_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~88_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~96_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~104_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~112_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~96_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~112_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~104_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~88_q\,
	combout => \MEMORIA_DADOS|ram~525_combout\);

\MEMORIA_DADOS|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~120_q\);

\MEMORIA_DADOS|ram~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~396_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~525_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~525_combout\ & 
-- ((\MEMORIA_DADOS|ram~120_q\))) # (\MEMORIA_DADOS|ram~525_combout\ & (\MEMORIA_DADOS|ram~128_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~525_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~525_combout\ & ((\MEMORIA_DADOS|ram~136_q\))) # (\MEMORIA_DADOS|ram~525_combout\ & (\MEMORIA_DADOS|ram~144_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~128_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~144_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~136_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~525_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~120_q\,
	combout => \MEMORIA_DADOS|ram~396_combout\);

\MEMORIA_DADOS|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~529_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~529_combout\);

\MEMORIA_DADOS|ram~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~400_combout\ = ( \MEMORIA_DADOS|ram~529_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~529_combout\,
	combout => \MEMORIA_DADOS|ram~400_combout\);

\MEMORIA_DADOS|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~533_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~533_combout\);

\MEMORIA_DADOS|ram~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~404_combout\ = ( \MEMORIA_DADOS|ram~533_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~533_combout\,
	combout => \MEMORIA_DADOS|ram~404_combout\);

\MEMORIA_DADOS|ram~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~408_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~404_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~400_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~396_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~392_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~392_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~396_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~400_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~404_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~408_combout\);

\MEMORIA_DADOS|dado_out[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|dado_out[7]~14_combout\ = (!\MEMORIA_DADOS|dado_out~16_combout\) # (\MEMORIA_DADOS|ram~408_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_dado_out~16_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~408_combout\,
	combout => \MEMORIA_DADOS|dado_out[7]~14_combout\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\MEMORIA_DADOS|dado_out[7]~14_combout\) # (\DECODIFICADOR_INSTRUCAO|Mux6~0_combout\) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux6~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_dado_out[7]~14_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\);

\ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~0_combout\ = (!\ULA1|Add1~1_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \ULA1|ALT_INV_Add1~25_sumout\,
	datac => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|Equal0~0_combout\);

\ULA1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~1_combout\ = ( !\ULA1|Add1~21_sumout\ & ( \ULA1|Equal0~0_combout\ & ( (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & (!\ULA1|Add1~13_sumout\ & !\ULA1|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~5_sumout\,
	datab => \ULA1|ALT_INV_Add1~9_sumout\,
	datac => \ULA1|ALT_INV_Add1~13_sumout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	datae => \ULA1|ALT_INV_Add1~21_sumout\,
	dataf => \ULA1|ALT_INV_Equal0~0_combout\,
	combout => \ULA1|Equal0~1_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Equal0~1_combout\ ) ) ) # ( !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & ( \DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( 
-- !\MUX1|saida_MUX[0]~0_combout\ ) ) ) # ( \DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & ( !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( \ULA1|Add0~1_sumout\ ) ) ) # ( !\DECODIFICADOR_INSTRUCAO|Mux9~0_combout\ & ( !\DECODIFICADOR_INSTRUCAO|Mux8~0_combout\ & ( 
-- \ULA1|Add1~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \ULA1|ALT_INV_Add0~1_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA1|ALT_INV_Equal0~1_combout\,
	datae => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux9~0_combout\,
	dataf => \DECODIFICADOR_INSTRUCAO|ALT_INV_Mux8~0_combout\,
	combout => \ULA1|saida[0]~0_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \DECODIFICADOR_INSTRUCAO|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~57_q\);

\MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~73_q\);

\MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~65_q\);

\MEMORIA_DADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~25_q\);

\MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~41_q\);

\MEMORIA_DADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~33_q\);

\MEMORIA_DADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~17_q\);

\MEMORIA_DADOS|ram~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~409_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~17_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~25_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~33_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~25_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~41_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~33_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~17_q\,
	combout => \MEMORIA_DADOS|ram~409_combout\);

\MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~49_q\);

\MEMORIA_DADOS|ram~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~273_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~409_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~409_combout\ & 
-- ((\MEMORIA_DADOS|ram~49_q\))) # (\MEMORIA_DADOS|ram~409_combout\ & (\MEMORIA_DADOS|ram~57_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~409_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~409_combout\ & ((\MEMORIA_DADOS|ram~65_q\))) # (\MEMORIA_DADOS|ram~409_combout\ & (\MEMORIA_DADOS|ram~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~57_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~65_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~409_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~49_q\,
	combout => \MEMORIA_DADOS|ram~273_combout\);

\MEMORIA_DADOS|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~121_q\);

\MEMORIA_DADOS|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~137_q\);

\MEMORIA_DADOS|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~129_q\);

\MEMORIA_DADOS|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~89_q\);

\MEMORIA_DADOS|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~105_q\);

\MEMORIA_DADOS|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~97_q\);

\MEMORIA_DADOS|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~81_q\);

\MEMORIA_DADOS|ram~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~413_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~81_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # (\MEMORIA_INTRUCAO|memROM~2_combout\ & 
-- (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~89_q\)))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_DADOS|ram~97_q\ & !\MEMORIA_INTRUCAO|memROM~8_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~2_combout\ & (((\MEMORIA_INTRUCAO|memROM~8_combout\)) # (\MEMORIA_DADOS|ram~105_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~89_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~97_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~81_q\,
	combout => \MEMORIA_DADOS|ram~413_combout\);

\MEMORIA_DADOS|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \MEMORIA_DADOS|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~113_q\);

\MEMORIA_DADOS|ram~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~277_combout\ = ( !\MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~413_combout\)))) # (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~413_combout\ & 
-- ((\MEMORIA_DADOS|ram~113_q\))) # (\MEMORIA_DADOS|ram~413_combout\ & (\MEMORIA_DADOS|ram~121_q\))))) ) ) # ( \MEMORIA_INTRUCAO|memROM~6_combout\ & ( ((!\MEMORIA_INTRUCAO|memROM~8_combout\ & (((\MEMORIA_DADOS|ram~413_combout\)))) # 
-- (\MEMORIA_INTRUCAO|memROM~8_combout\ & ((!\MEMORIA_DADOS|ram~413_combout\ & ((\MEMORIA_DADOS|ram~129_q\))) # (\MEMORIA_DADOS|ram~413_combout\ & (\MEMORIA_DADOS|ram~137_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~121_q\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~137_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~129_q\,
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~6_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~413_combout\,
	datag => \MEMORIA_DADOS|ALT_INV_ram~113_q\,
	combout => \MEMORIA_DADOS|ram~277_combout\);

\MEMORIA_DADOS|ram~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~417_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~417_combout\);

\MEMORIA_DADOS|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~281_combout\ = ( \MEMORIA_DADOS|ram~417_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~417_combout\,
	combout => \MEMORIA_DADOS|ram~281_combout\);

\MEMORIA_DADOS|ram~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~421_combout\ = ( \MEMORIA_INTRUCAO|memROM~8_combout\ & ( \MEMORIA_INTRUCAO|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~2_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	combout => \MEMORIA_DADOS|ram~421_combout\);

\MEMORIA_DADOS|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~285_combout\ = ( \MEMORIA_DADOS|ram~421_combout\ & ( !\MEMORIA_INTRUCAO|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INTRUCAO|ALT_INV_memROM~8_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~421_combout\,
	combout => \MEMORIA_DADOS|ram~285_combout\);

\MEMORIA_DADOS|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~289_combout\ = ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~285_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( \MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~281_combout\ ) ) ) # ( \MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( \MEMORIA_DADOS|ram~277_combout\ ) ) ) # ( !\MEMORIA_INTRUCAO|memROM~10_combout\ & ( !\MEMORIA_INTRUCAO|memROM~12_combout\ & ( 
-- \MEMORIA_DADOS|ram~273_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~273_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~277_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~281_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~285_combout\,
	datae => \MEMORIA_INTRUCAO|ALT_INV_memROM~10_combout\,
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~12_combout\,
	combout => \MEMORIA_DADOS|ram~289_combout\);

\MEMORIA_INTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INTRUCAO|memROM~13_combout\ = ( \PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((\PC|DOUT\(1)) # (\PC|DOUT\(0))))) ) ) ) # ( !\PC|DOUT\(4) & ( \MEMORIA_INTRUCAO|memROM~11_combout\ & ( (!\PC|DOUT\(0) & 
-- ((!\PC|DOUT\(1) $ (!\PC|DOUT\(2))) # (\PC|DOUT\(3)))) # (\PC|DOUT\(0) & ((!\PC|DOUT\(1) $ (!\PC|DOUT\(3))) # (\PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111101111011110111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \MEMORIA_INTRUCAO|ALT_INV_memROM~11_combout\,
	combout => \MEMORIA_INTRUCAO|memROM~13_combout\);

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

ww_BARRAMENTO_DADOS_SAIDA(0) <= \BARRAMENTO_DADOS_SAIDA[0]~output_o\;

ww_BARRAMENTO_DADOS_SAIDA(1) <= \BARRAMENTO_DADOS_SAIDA[1]~output_o\;

ww_BARRAMENTO_DADOS_SAIDA(2) <= \BARRAMENTO_DADOS_SAIDA[2]~output_o\;

ww_BARRAMENTO_DADOS_SAIDA(3) <= \BARRAMENTO_DADOS_SAIDA[3]~output_o\;

ww_BARRAMENTO_DADOS_SAIDA(4) <= \BARRAMENTO_DADOS_SAIDA[4]~output_o\;

ww_BARRAMENTO_DADOS_SAIDA(5) <= \BARRAMENTO_DADOS_SAIDA[5]~output_o\;

ww_BARRAMENTO_DADOS_SAIDA(6) <= \BARRAMENTO_DADOS_SAIDA[6]~output_o\;

ww_BARRAMENTO_DADOS_SAIDA(7) <= \BARRAMENTO_DADOS_SAIDA[7]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(0) <= \BARRAMENTO_DADOS_ENTRADA[0]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(1) <= \BARRAMENTO_DADOS_ENTRADA[1]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(2) <= \BARRAMENTO_DADOS_ENTRADA[2]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(3) <= \BARRAMENTO_DADOS_ENTRADA[3]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(4) <= \BARRAMENTO_DADOS_ENTRADA[4]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(5) <= \BARRAMENTO_DADOS_ENTRADA[5]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(6) <= \BARRAMENTO_DADOS_ENTRADA[6]~output_o\;

ww_BARRAMENTO_DADOS_ENTRADA(7) <= \BARRAMENTO_DADOS_ENTRADA[7]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(0) <= \BARRAMENTO_DADOS_ENDERECOS[0]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(1) <= \BARRAMENTO_DADOS_ENDERECOS[1]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(2) <= \BARRAMENTO_DADOS_ENDERECOS[2]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(3) <= \BARRAMENTO_DADOS_ENDERECOS[3]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(4) <= \BARRAMENTO_DADOS_ENDERECOS[4]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(5) <= \BARRAMENTO_DADOS_ENDERECOS[5]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(6) <= \BARRAMENTO_DADOS_ENDERECOS[6]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(7) <= \BARRAMENTO_DADOS_ENDERECOS[7]~output_o\;

ww_BARRAMENTO_DADOS_ENDERECOS(8) <= \BARRAMENTO_DADOS_ENDERECOS[8]~output_o\;
END structure;


