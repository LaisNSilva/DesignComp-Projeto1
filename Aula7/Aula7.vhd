library ieee;
use ieee.std_logic_1164.all;

entity Aula7 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8; -- AGORA É 8 
		  larguraEnderecoRAM : natural := 8; 
		  larguraInstrucao : natural := 13; 
		  larguraEnderecoROM : natural := 8;
		  larguraDados_PC : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 --BARRAMENTO_DADOS_SAIDA: out std_logic_vector(larguraDados-1 downto 0);
	 --BARRAMENTO_DADOS_ENTRADA: out std_logic_vector(larguraDados-1 downto 0);
	 --BARRAMENTO_DADOS_ENDERECOS: out std_logic_vector(8 downto 0)
--    SW: in std_logic_vector(9 downto 0);
	HEX0 : out std_logic_vector (6 DOWNTO 0);
	HEX1 : out std_logic_vector (6 DOWNTO 0);
	HEX2 : out std_logic_vector (6 DOWNTO 0);
	HEX3 : out std_logic_vector (6 DOWNTO 0);
	HEX4 : out std_logic_vector (6 DOWNTO 0);
	HEX5 : out std_logic_vector (6 DOWNTO 0);

   LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula7 is

-- Faltam alguns sinais:
--  signal MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
--  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
    signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
--  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
--  signal Sinais_Controle : std_logic_vector (3 downto 0);
--  --signal Proximo_Estado : std_logic_vector (3 downto 0);
--  --signal Estado_Atual : std_logic_vector (3 downto 0);
--  signal Chave_Operacao_ULA : std_logic;
    signal CLK : std_logic;
--  signal SelMUX : std_logic;
--  signal Habilita_A : std_logic;
--  signal Operacao_ULA : std_logic_vector (1 downto 0);
	 signal Saida_Dados : std_logic_vector (larguraDados-1 downto 0);
--  signal Imediato : std_logic_vector (larguraDados-1 downto 0);
    signal opCode : std_logic_vector (3 downto 0);
    signal endereco_PC:std_logic_vector (8 downto 0);
--  signal endereco :std_logic_vector (8 downto 0);
    signal habLeituraMEM : std_logic;
    signal habEscritaMEM : std_logic;
--  signal Saida_Somador : std_logic_vector (8 downto 0); 
--  signal Mux_PC : std_logic_vector (8 downto 0); 
    signal Endereco_barramento : std_logic_vector (8 downto 0);
    signal Endereco_instrucao : std_logic_vector (8 downto 0);
    --signal Saida_Decod : STD_LOGIC_VECTOR(11 downto 0);
--  signal Saida_FlipFlop : std_logic;
--  signal Saida_ULA_Flag0 : std_logic;
--  signal Saida_LogicaDesvio : std_logic_vector (1 downto 0);
--  signal SaidaReg_MUX_C : std_logic_vector (8 downto 0);
	 signal Bloco_0 : std_logic;
	 signal Bloco_1 : std_logic;
	 signal Bloco_2 : std_logic;
	 signal Bloco_3 : std_logic;
	 signal Bloco_4 : std_logic;
	 signal Bloco_5 : std_logic;
	 signal Bloco_6 : std_logic;
	 signal Bloco_7 : std_logic;
	 signal Endereco_0 : std_logic;
	 signal Endereco_1 : std_logic;
	 signal Endereco_2 : std_logic;
	 signal Endereco_3 : std_logic;
	 signal Endereco_4 : std_logic;
	 signal Endereco_5 : std_logic;
	 signal Endereco_6 : std_logic;
	 signal Endereco_7 : std_logic;
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


begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
CPU : entity work.CPU
port map   (
    CLOCK => CLK,
    INTRUCTION_IN => Endereco_instrucao & opCode, -- CONFIRMAR SE É ASSIM QUE CONCATENA!!
	 RD => habLeituraMEM,
	 WR => habEscritaMEM,
	 BARRAMENTO_DADOS_ENTRADA => Saida_Dados,
	 Reset => '0',
	 BARRAMENTO_DADOS_SAIDA => REG1_ULA_A,
	 BARRAMENTO_DADOS_ENDERECOS => Endereco_barramento
  );

MEMORIA_INTRUCAO : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM)
          port map (Endereco => Endereco_PC, Dado(8 downto 0) => Endereco_instrucao, Dado(12 downto 9) => opCode);

MEMORIA_DADOS : entity work.memoriaRAM   --generic map (dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
          port map (addr => Endereco_barramento(5 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => Bloco_0, dado_in => REG1_ULA_A, dado_out => Saida_Dados, clk => CLK);		

DECODIFICADOR_3X8_6a8 : entity work.Decod3x8
			port map (	
			ENTRADA => Endereco_barramento(8 downto 6),
			S0 => Bloco_0,
			S1 => Bloco_1,
			S2 => Bloco_2,
			S3 => Bloco_3,
			S4 => Bloco_4,
			S5 => Bloco_5,
			S6 => Bloco_6,
			S7 => Bloco_7
			);
			
DECODIFICADOR_3X8_0a2 : entity work.Decod3x8
			port map (	
			ENTRADA => Endereco_barramento(2 downto 0),
			S0 => Endereco_0,
			S1 => Endereco_1,
			S2 => Endereco_2,
			S3 => Endereco_3,
			S4 => Endereco_4,
			S5 => Endereco_5,
			S6 => Endereco_6,
			S7 => Endereco_7
			);
			
-- O port map completo do Acumulador.
REG_LEDR0a7 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados, 
			 DOUT => Entrada_LEDR0a7, 
			 ENABLE => habEscritaMEM AND Endereco_0 AND Bloco_4 AND (NOT(Saida_Dados(5))), 
			 RST => '0',
			 CLK => CLK
			 );
			 
FF_LEDR8 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(0), --PRIMEIRO BIT????
			 DOUT => Entrada_LEDR8, 
			 ENABLE => habEscritaMEM AND Endereco_1 AND Bloco_4 AND (NOT(Saida_Dados(5))), 
			 RST => '0',
			 CLK => CLK
			 );
			 
FF_LEDR9 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(0), --PRIMEIRO BIT????, 
			 DOUT => Entrada_LEDR9, 
			 ENABLE => habEscritaMEM AND Endereco_2 AND Bloco_4 AND (NOT(Saida_Dados(5))), 
			 RST => '0',
			 CLK => CLK
			 );
			 
			 
--ROM1 : entity work.memoriaROM   generic map (dataWidth => 7, addrWidth => 4)
          --port map (Endereco => SW(3 downto 0), Dado => HEX0);
			 
--------- HEX0-----------
			 
REG_HEX0 : entity work.registradorGenerico_4b   --generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(3 downto 0), -- só os 4 primeiros
			 DOUT => Saida_REG_HEX0, 
			 ENABLE => Endereco_0 AND Saida_Dados(5) AND Bloco_4 AND habEscritaMEM,
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

REG_HEX1 : entity work.registradorGenerico_4b   --generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(3 downto 0), -- só os 4 primeiros
			 DOUT => Saida_REG_HEX1, 
			 ENABLE => Endereco_1 AND Saida_Dados(5) AND Bloco_4 AND habEscritaMEM,
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

REG_HEX2 : entity work.registradorGenerico_4b   --generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(3 downto 0), -- só os 4 primeiros
			 DOUT => Saida_REG_HEX2, 
			 ENABLE => Endereco_2 AND Saida_Dados(5) AND Bloco_4 AND habEscritaMEM,
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

REG_HEX3 : entity work.registradorGenerico_4b   --generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(3 downto 0), -- só os 4 primeiros
			 DOUT => Saida_REG_HEX3, 
			 ENABLE => Endereco_3 AND Saida_Dados(5) AND Bloco_4 AND habEscritaMEM,
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
REG_HEX4 : entity work.registradorGenerico_4b   --generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(3 downto 0), -- só os 4 primeiros
			 DOUT => Saida_REG_HEX4, 
			 ENABLE => Endereco_4 AND Saida_Dados(5) AND Bloco_4 AND habEscritaMEM,
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

REG_HEX5 : entity work.registradorGenerico_4b   --generic map (larguraDados => larguraDados)
          port map (
			 DIN => Saida_Dados(3 downto 0), -- só os 4 primeiros
			 DOUT => Saida_REG_HEX5, 
			 ENABLE => Endereco_5 AND Saida_Dados(5) AND Bloco_4 AND habEscritaMEM,
			 RST => '0',
			 CLK => CLK
			 );
			 
DECOD_HEX5 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_REG_HEX5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida7seg_HEX5);
					  

					  

			


LEDR (7 downto 9) <= Entrada_LEDR0a7;

LEDR (8) <= Entrada_LEDR8;

LEDR (9) <= Entrada_LEDR9;

HEX0 <= saida7seg_HEX0;
HEX1 <= saida7seg_HEX1;
HEX2 <= saida7seg_HEX2;
HEX3 <= saida7seg_HEX3;
HEX4 <= saida7seg_HEX4;
HEX5 <= saida7seg_HEX5;


			 
--BARRAMENTO_DADOS_SAIDA <= REG1_ULA_A;
--BARRAMENTO_DADOS_ENTRADA <= Saida_Dados;
--BARRAMENTO_DADOS_ENDERECOS <= Endereco_Imediato(8 downto 0);

--selMUX <= Sinais_Controle(3);
--Habilita_A <= Sinais_Controle(2);
--Reset_A <= Sinais_Controle(1);
--Operacao_ULA <= Sinais_Controle(0);

-- I/O
--chavesY_MUX_A <= SW(3 downto 0);
--chavesX_ULA_B <= SW(9 downto 6);

-- A ligacao dos LEDs:
--LEDR (9) <= SelMUX;
--LEDR (8) <= Habilita_A;
--LEDR (7) <= Reset_A;
--LEDR (6) <= Operacao_ULA;
--LEDR (5) <= '0';    -- Apagado.
--LEDR (4) <= '0';    -- Apagado.
--LEDR (3 downto 0) <= REG1_ULA_A;

end architecture;