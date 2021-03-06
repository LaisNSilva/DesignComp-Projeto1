library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
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
	 BARRAMENTO_DADOS_SAIDA: out std_logic_vector(larguraDados-1 downto 0);
	 BARRAMENTO_DADOS_ENTRADA: out std_logic_vector(larguraDados-1 downto 0);
	 BARRAMENTO_DADOS_ENDERECOS: out std_logic_vector(8 downto 0);
	 FLAG_IGUAL : out std_logic;
	 SAIDA_PC: out std_logic_vector(larguraDados downto 0)
    --SW: in std_logic_vector(9 downto 0);
    --LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

-- Faltam alguns sinais:
  signal MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (3 downto 0);
  --signal Proximo_Estado : std_logic_vector (3 downto 0);
  --signal Estado_Atual : std_logic_vector (3 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal Saida_Dados : std_logic_vector (larguraDados-1 downto 0);
  signal Imediato : std_logic_vector (larguraDados-1 downto 0);
  signal opCode : std_logic_vector (3 downto 0);
  signal endereco_PC:std_logic_vector (8 downto 0);
  signal endereco :std_logic_vector (8 downto 0);
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;
  signal Saida_Somador : std_logic_vector (8 downto 0); 
  signal Mux_PC : std_logic_vector (8 downto 0); 
  signal Endereco_Imediato : std_logic_vector (8 downto 0);
  signal Saida_Decod : STD_LOGIC_VECTOR(11 downto 0);
  signal Saida_FlipFlop : std_logic;
  signal Saida_ULA_Flag0 : std_logic;
  signal Saida_LogicaDesvio : std_logic_vector (1 downto 0);
  signal SaidaReg_MUX_C : std_logic_vector (8 downto 0);

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
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Dados,
                 entradaB_MUX =>  Endereco_Imediato(7 downto 0),
                 seletor_MUX => Saida_Decod(6),
                 saida_MUX => MUX_ULA_B);
					  
DECODIFICADOR_INSTRUCAO : entity work.DecodInstrucao -- apagamos o generic map
          port map (CodigoBinario => opCode, Saida => Saida_Decod);
			 
			 
-- O port map completo do Acumulador.
PC : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => Mux_PC, DOUT => endereco_PC, ENABLE => '1', RST => '0', CLK => CLK);
			 
SOMADOR  :  entity work.somaConstante  generic map (larguraDados => larguraDados_PC, constante => 1) ----colocamos 1 na constante
        port map( entrada => endereco_PC, saida => Saida_Somador);

REG_END_RET : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => Saida_Somador, DOUT => SaidaReg_MUX_C, ENABLE => Saida_Decod(11), RST => '0', CLK => CLK);

-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Saida_Decod(5), RST => '0',CLK => CLK);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA_B, seletor => Saida_Decod(4 downto 3), saida => Saida_ULA, flag_0 => Saida_ULA_Flag0);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
MEMORIA_INTRUCAO : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM)
          port map (Endereco => Endereco_PC, Dado(8 downto 0) => Endereco_Imediato, Dado(12 downto 9) => opCode);

MEMORIA_DADOS : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
          port map (addr => Endereco_Imediato(7 downto 0), we => Saida_Decod(0), re=>Saida_Decod(1), habilita=>Endereco_Imediato(8), dado_in => REG1_ULA_A, dado_out => Saida_Dados, clk => CLK);		

		
FLAG : 	entity work.FlipFlop   
         port map ( DIN => Saida_ULA_Flag0, DOUT => Saida_FlipFlop, ENABLE => Saida_Decod(2), RST => '0',  CLK => CLK);		

			
LOGICA_DE_DESVIO : entity work.LogicaDesvio   
         port map ( JMP =>Saida_Decod(10), JEQ =>Saida_Decod(7), Flag =>Saida_FlipFlop, RET =>Saida_Decod(9) , JSR =>Saida_Decod(8) , Saida => Saida_LogicaDesvio );		

		
-- O port map completo do MUX.
MUX2 :  entity work.muxGenerico2x1_PC  generic map (larguraDados => larguraDados_PC)
        port map( entradaA_MUX => Saida_Somador,
                 entradaB_MUX =>  Endereco_Imediato(8 downto 0),
					  entradaC_MUX => SaidaReg_MUX_C,
					  entradaD_MUX => "000000000",
                 seletor_MUX => Saida_LogicaDesvio,
                 saida_MUX => Mux_PC);
					  
BARRAMENTO_DADOS_SAIDA <= REG1_ULA_A;
BARRAMENTO_DADOS_ENTRADA <= Saida_Dados;
BARRAMENTO_DADOS_ENDERECOS <= Endereco_Imediato(8 downto 0);
FLAG_IGUAL <= Saida_FlipFlop;
SAIDA_PC <= endereco_PC;

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