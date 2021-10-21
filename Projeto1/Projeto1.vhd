-- data: 21/10/2021
-- autore:	João Guilherme Almeida <joaogcfa@al.insper.edu.br>
--			   Lais Silva <laisns@al.insper.edu.br>
--				William Silva <williamars@al.insper.edu.br >
-- descrição: TopLevel do Projeto 1

library ieee;
use ieee.std_logic_1164.all;

entity Projeto1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8; 
		  larguraEnderecoRAM : natural := 8; 
		  larguraInstrucao : natural := 15; 
		  larguraEnderecoROM : natural := 9;
		  larguraDados_PC : natural := 9;
        simulacao : boolean := FALSE 
  );
  port   (
   CLOCK_50 : in std_logic;
   KEY: in std_logic_vector(3 downto 0);
	FPGA_RESET_N: in std_logic;
   SW: in std_logic_vector(9 downto 0);
	HEX0 : out std_logic_vector (6 DOWNTO 0);
	HEX1 : out std_logic_vector (6 DOWNTO 0);
	HEX2 : out std_logic_vector (6 DOWNTO 0);
	HEX3 : out std_logic_vector (6 DOWNTO 0);
	HEX4 : out std_logic_vector (6 DOWNTO 0);
	HEX5 : out std_logic_vector (6 DOWNTO 0);
	PC_OUT: out std_logic_vector (8 DOWNTO 0);
	
	REG_A: out std_logic_vector (7 DOWNTO 0);

   LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Projeto1 is
	
	-- Sinais usados no Projeto 1 

    signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
    signal CLK : std_logic;
	 signal Saida_Dados : std_logic_vector (larguraDados-1 downto 0);
	 signal ROM_DADOS : std_logic_vector (larguraInstrucao-1 downto 0);
    signal endereco_PC:std_logic_vector (8 downto 0);
    signal habLeituraMEM : std_logic;
    signal habEscritaMEM : std_logic;
    signal Endereco_barramento : std_logic_vector (8 downto 0);
	 signal Bloco_0 : std_logic;
	 signal Bloco_4 : std_logic;
	 signal Bloco_5 : std_logic;
	 signal Endereco_0 : std_logic;
	 signal Endereco_1 : std_logic;
	 signal Endereco_2 : std_logic;
	 signal Endereco_3 : std_logic;
	 signal Endereco_4 : std_logic;
	 signal Endereco_5 : std_logic;
	 signal Entrada_LEDR0a7 : std_logic_vector (larguraDados-1 downto 0);
	 signal Entrada_LEDR8 : std_logic;
	 signal Entrada_LEDR9 : std_logic;
	 signal Saida_REG_HEX0 : std_logic_vector (3 downto 0);
	 signal Saida_REG_HEX1 : std_logic_vector (3 downto 0);
	 signal Saida_REG_HEX2 : std_logic_vector (3 downto 0);
	 signal Saida_REG_HEX3 : std_logic_vector (3 downto 0);
	 signal Saida_REG_HEX4 : std_logic_vector (3 downto 0);
	 signal Saida_REG_HEX5 : std_logic_vector (3 downto 0);
	 signal saida7seg_HEX0 : std_logic_vector (6 downto 0);
	 signal saida7seg_HEX1 : std_logic_vector (6 downto 0);
	 signal saida7seg_HEX2 : std_logic_vector (6 downto 0);
	 signal saida7seg_HEX3 : std_logic_vector (6 downto 0);
	 signal saida7seg_HEX4 : std_logic_vector (6 downto 0);
	 signal saida7seg_HEX5 : std_logic_vector (6 downto 0);
	 signal Saida_FF_DM : std_logic;
	 signal Saida_FF_KEY1 : std_logic;
	 signal Saida_FF_KEY2 : std_logic;
	 signal Saida_FF_KEY3 : std_logic;
	 signal Saida_DecBorda_KEY0 : std_logic;
	 signal Saida_DecBorda_KEY1 : std_logic;
	 signal Saida_DecBorda_KEY2 : std_logic;
	 signal Saida_DecBorda_KEY3 : std_logic;
	 signal saidaclk_reg1seg : std_logic;
	 signal saidaclk_reg1seg2 : std_logic;
	 signal MUX_ULA_B : std_logic;
	 
	 
	 alias opCode : std_logic_vector (3 downto 0) is ROM_DADOS(14 downto 11);
	 alias Endereco_instrucao : std_logic_vector (8 downto 0) is ROM_DADOS(8 downto 0);


begin

-- Instanciando os componentes:

-- atribuicao do clock
CLK <= CLOCK_50;

-- port map completo edgeDetector
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => Saida_DecBorda_KEY0);

detectorSub1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => Saida_DecBorda_KEY1);

detectorSub2: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(2)), saida => Saida_DecBorda_KEY2);
		  
detectorSub3: work.edgeDetector(bordaSubida)
		  port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => Saida_DecBorda_KEY3);

-- O port map completo do MUX.
CPU : entity work.CPU
port map   (
    CLOCK => CLK,
    INTRUCTION_IN => ROM_DADOS, 
	 RD => habLeituraMEM,
	 WR => habEscritaMEM,
	 BARRAMENTO_DADOS_ENTRADA => Saida_Dados,
	 Reset => '0',
	 ROM_Address => Endereco_PC,
	 BARRAMENTO_DADOS_SAIDA => REG1_ULA_A,
	 BARRAMENTO_DADOS_ENDERECOS => Endereco_barramento
  );
  
  
-- O port map completo da memoriaROM(Memoria de instrucao).
MEMORIA_INTRUCAO : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM)
          port map (Endereco => Endereco_PC, Dado => ROM_DADOS);
			 
-- O port map completo da memoriaRAM
MEMORIA_DADOS : entity work.memoriaRAM   
          port map (addr => Endereco_barramento(5 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => Bloco_0, dado_in => REG1_ULA_A, dado_out => Saida_Dados, clk => CLK);		

-- Decodificador 3x8 - blocos
DECODIFICADOR_3X8_6a8 : entity work.Decod3x8
			port map (	
			ENTRADA => Endereco_barramento(8 downto 6),
			S0 => Bloco_0,
			S1 => OPEN, --Bloco_1,
			S2 => OPEN, --Bloco_2,
			S3 => OPEN, --Bloco_3,
			S4 => Bloco_4,
			S5 => Bloco_5,
			S6 => OPEN, --Bloco_6,
			S7 => OPEN --Bloco_7
			);
			
-- Decodificador 3x8 - enderecos
DECODIFICADOR_3X8_0a2 : entity work.Decod3x8
			port map (	
			ENTRADA => Endereco_barramento(2 downto 0),
			S0 => Endereco_0,
			S1 => Endereco_1,
			S2 => Endereco_2,
			S3 => Endereco_3,
			S4 => Endereco_4,
			S5 => Endereco_5,
			S6 => OPEN, --Endereco_6,
			S7 => OPEN --Endereco_7
			);
			
-- O port map completo do Acumulador.
REG_LEDR0a7 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (
			 DIN => REG1_ULA_A, 
			 DOUT => Entrada_LEDR0a7, 
			 ENABLE => habEscritaMEM AND Endereco_0 AND Bloco_4 AND (NOT(Endereco_barramento(5))), 
			 RST => '0',
			 CLK => CLK
			 );
			 
-- O port map completo do FlipFlop LED8.			 
FF_LEDR8 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => REG1_ULA_A(0), 
			 DOUT => Entrada_LEDR8, 
			 ENABLE => habEscritaMEM AND Endereco_1 AND Bloco_4 AND (NOT(Endereco_barramento(5))), 
			 RST => '0',
			 CLK => CLK
			 );

-- O port map completo do FlipFlop LED9.			 
FF_LEDR9 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => REG1_ULA_A(0), 
			 DOUT => Entrada_LEDR9, 
			 ENABLE => habEscritaMEM AND Endereco_2 AND Bloco_4 AND (NOT(Endereco_barramento(5))), 
			 RST => '0',
			 CLK => CLK
			 );
			 
			 

			 
--------- HEX0-----------
			 
REG_HEX0 : entity work.registradorGenerico_4b   
          port map (
			 DIN => REG1_ULA_A(3 downto 0),
			 DOUT => Saida_REG_HEX0, 
			 ENABLE => Endereco_0 AND Endereco_barramento(5) AND Bloco_4 AND habEscritaMEM,
			 RST => '0',
			 CLK => CLK
			 );
			 
DECOD_HEX0 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_REG_HEX0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida7seg_HEX0);
					  
--------- HEX1-----------

REG_HEX1 : entity work.registradorGenerico_4b   
          port map (
			 DIN => REG1_ULA_A(3 downto 0), 
			 DOUT => Saida_REG_HEX1, 
			 ENABLE => Endereco_1 AND Endereco_barramento(5) AND Bloco_4 AND habEscritaMEM,
			 RST => '0',
			 CLK => CLK
			 );
			 
DECOD_HEX1 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_REG_HEX1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida7seg_HEX1);

--------- HEX2-----------

REG_HEX2 : entity work.registradorGenerico_4b   
          port map (
			 DIN => REG1_ULA_A(3 downto 0), 
			 DOUT => Saida_REG_HEX2, 
			 ENABLE => Endereco_2 AND Endereco_barramento(5) AND Bloco_4 AND habEscritaMEM,
			 RST => '0',
			 CLK => CLK
			 );
			 
DECOD_HEX2 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_REG_HEX2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida7seg_HEX2);

--------- HEX3-----------

REG_HEX3 : entity work.registradorGenerico_4b   
          port map (
			 DIN => REG1_ULA_A(3 downto 0), 
			 DOUT => Saida_REG_HEX3, 
			 ENABLE => Endereco_3 AND Endereco_barramento(5) AND Bloco_4 AND habEscritaMEM,
			 RST => '0',
			 CLK => CLK
			 );
			 
DECOD_HEX3 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_REG_HEX3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida7seg_HEX3);

--------- HEX4-----------
REG_HEX4 : entity work.registradorGenerico_4b   
          port map (
			 DIN => REG1_ULA_A(3 downto 0),
			 DOUT => Saida_REG_HEX4, 
			 ENABLE => Endereco_4 AND Endereco_barramento(5) AND Bloco_4 AND habEscritaMEM,
			 RST => '0',
			 CLK => CLK
			 );
			 
DECOD_HEX4 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_REG_HEX4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida7seg_HEX4);

--------- HEX5-----------

REG_HEX5 : entity work.registradorGenerico_4b   
          port map (
			 DIN => REG1_ULA_A(3 downto 0), 
			 DOUT => Saida_REG_HEX5, 
			 ENABLE => Endereco_5 AND Endereco_barramento(5) AND Bloco_4 AND habEscritaMEM,
			 RST => '0',
			 CLK => CLK
			 );
			 
DECOD_HEX5 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_REG_HEX5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida7seg_HEX5);
					  
-- FPGA RESET ---					  
					  
FPGA_R: entity work.buffertri
          port map (
			 DIN => not(FPGA_RESET_N),
			 DOUT => Saida_Dados(0), 
			 ENABLE => habLeituraMEM AND Endereco_barramento(5) AND Endereco_4 AND Bloco_5
			 );
		
--- BOTÕES KEY ----

---- TRATAMENTO ESPECIAL PARA KEY3 -----
FLIP_FLOP_KEY3 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => '1', 
			 DOUT => Saida_FF_KEY3, 
			 ENABLE => '1', 
			 RST => (NOT(Endereco_barramento(0))) AND (not(Endereco_barramento(1))) AND Endereco_barramento(2) AND Endereco_barramento(3) AND Endereco_barramento(4) AND Endereco_barramento(5) AND Endereco_barramento(6) AND Endereco_barramento(7) AND Endereco_barramento(8),
			 CLK => Saida_DecBorda_KEY3
			 );

KEY_3: entity work.buffertri
          port map (
			 DIN => Saida_FF_KEY3,
			 DOUT => Saida_Dados(0), 
			 ENABLE => habLeituraMEM AND Endereco_barramento(5) AND Endereco_3 AND Bloco_5
			 );

			 
------ TRATAMENTO ESPECIAL PARA KEY2 ----------------------			 
			 
FLIP_FLOP_KEY2 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => '1', 
			 DOUT => Saida_FF_KEY2, 
			 ENABLE => '1', 
			 RST => Endereco_barramento(0) AND (not(Endereco_barramento(1))) AND Endereco_barramento(2) AND Endereco_barramento(3) AND Endereco_barramento(4) AND Endereco_barramento(5) AND Endereco_barramento(6) AND Endereco_barramento(7) AND Endereco_barramento(8),
			 CLK => Saida_DecBorda_KEY2
			 );
			 
			 
KEY_2: entity work.buffertri
          port map (
			 DIN => Saida_FF_KEY2,
			 DOUT => Saida_Dados(0), 
			 ENABLE => habLeituraMEM AND Endereco_barramento(5) AND Endereco_2 AND Bloco_5
			 );
			 
------ TRATAMENTO ESPECIAL PARA KEY1 ----------------------

FLIP_FLOP_KEY1 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => '1', 
			 DOUT => Saida_FF_KEY1, 
			 ENABLE => '1', 
			 RST => (NOT(Endereco_barramento(0))) AND Endereco_barramento(1) AND Endereco_barramento(2) AND Endereco_barramento(3) AND Endereco_barramento(4) AND Endereco_barramento(5) AND Endereco_barramento(6) AND Endereco_barramento(7) AND Endereco_barramento(8),
			 CLK => Saida_DecBorda_KEY1
			 );


		
KEY_1: entity work.buffertri
          port map (
			 DIN => Saida_FF_KEY1,
			 DOUT => Saida_Dados(0), 
			 ENABLE => habLeituraMEM AND Endereco_barramento(5) AND Endereco_1 AND Bloco_5
			 );
			 
			 
------ TRATAMENTO ESPECIAL PARA BASE DE TEMPO ----------------------


FLIP_FLOP_DM : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => '1', 
			 DOUT => Saida_FF_DM, 
			 ENABLE => '1', 
			 RST => Endereco_barramento(0) AND Endereco_barramento(1) AND Endereco_barramento(2) AND Endereco_barramento(3) AND Endereco_barramento(4) AND Endereco_barramento(5) AND Endereco_barramento(6) AND Endereco_barramento(7) AND Endereco_barramento(8),
			 CLK => MUX_ULA_B
			 );

Tristate_contador : entity work.buffertri
          port map (
			 DIN => Saida_FF_DM,
			 DOUT => Saida_Dados(0), 
			 ENABLE => habLeituraMEM AND Endereco_barramento(5) AND Endereco_0 AND Bloco_5
			 );

			 
baseTempo: entity work.divisorGenerico
           generic map (divisor => 25000000)   
           port map (clk => clk, saida_clk => saidaclk_reg1seg);

baseTempo1: entity work.divisorGenerico
           generic map (divisor => 25000)   
           port map (clk => clk, saida_clk => saidaclk_reg1seg2);

MUX2 :  entity work.muxGenerico2x1_tempo  generic map (larguraDados => 1)
        port map( entradaA_MUX => saidaclk_reg1seg,
                 entradaB_MUX =>  saidaclk_reg1seg2,
                 seletor_MUX => SW(9),
                 saida_MUX => MUX_ULA_B);			  
			 
--- CHAVES SW ---

------- SW9 ---------			 
SW_9: entity work.buffertri
          port map (
			 DIN => SW(9),
			 DOUT => Saida_Dados(0), 
			 ENABLE => habLeituraMEM AND (NOT(Endereco_barramento(5))) AND Endereco_2 AND Bloco_5
			 );
			 
------- SW8 ---------
SW_8: entity work.buffertri
          port map (
			 DIN => SW(8),
			 DOUT => Saida_Dados(0), 
			 ENABLE => habLeituraMEM AND (NOT(Endereco_barramento(5))) AND Endereco_1 AND Bloco_5
			 );
			 
------- SW 0 a 7 ---------
SW_0_7: entity work.buffertri_8seg generic map (larguraDados => larguraDados)
		port map (
			 DIN => SW(7 downto 0),
			 DOUT => Saida_Dados(7 downto 0), 
			 ENABLE => habLeituraMEM AND (NOT(Endereco_barramento(5))) AND Endereco_0 AND Bloco_5
			 );


-------- ATRIBUICOES ----------
LEDR (7 downto 0) <= Entrada_LEDR0a7;

LEDR (8) <= Entrada_LEDR8;

LEDR (9) <= Entrada_LEDR9;

HEX0 <= saida7seg_HEX0;
HEX1 <= saida7seg_HEX1;
HEX2 <= saida7seg_HEX2;
HEX3 <= saida7seg_HEX3;
HEX4 <= saida7seg_HEX4;
HEX5 <= saida7seg_HEX5;

PC_OUT <= Endereco_PC;
REG_A <= REG1_ULA_A;



end architecture;