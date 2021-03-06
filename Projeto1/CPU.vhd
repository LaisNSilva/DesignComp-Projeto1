-- data: 21/10/2021
-- autore:	João Guilherme Almeida <joaogcfa@al.insper.edu.br>
--			   Lais Silva <laisns@al.insper.edu.br>
--				William Silva <williamars@al.insper.edu.br >
-- descrição: CPU do Projeto 1

library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8; 
		  larguraEnderecoRAM : natural := 8; 
		  larguraInstrucao : natural := 15; 
		  larguraEnderecoROM : natural := 8;
		  larguraDados_PC : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK : in std_logic;
    INTRUCTION_IN: in std_logic_vector(larguraInstrucao-1 downto 0);
	 Reset: in std_logic;
	 BARRAMENTO_DADOS_ENTRADA: in std_logic_vector(larguraDados-1 downto 0); 
	 RD: out std_logic;
	 WR: out std_logic;
	 ROM_Address : out std_logic_vector(larguraDados_PC-1 downto 0);
	 BARRAMENTO_DADOS_SAIDA: out std_logic_vector(larguraDados-1 downto 0); 
	 BARRAMENTO_DADOS_ENDERECOS: out std_logic_vector(8 downto 0) 
  );
end entity;


architecture arquitetura of CPU is

  -- Sinais usados na CPU
  
  signal MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (3 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal Imediato : std_logic_vector (larguraDados-1 downto 0);
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
  
  -- divisao da instrucao
  alias endereco_REG : std_logic_vector (1 downto 0) is INTRUCTION_IN(10 downto 9);
  alias opCode : std_logic_vector (3 downto 0) is INTRUCTION_IN(14 downto 11);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate

CLK <= CLOCK;

end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => BARRAMENTO_DADOS_ENTRADA,
                 entradaB_MUX =>  INTRUCTION_IN(7 downto 0),
                 seletor_MUX => Saida_Decod(6),
                 saida_MUX => MUX_ULA_B);

-- O port map completo do DecodInstrucao.				  
DECODIFICADOR_INSTRUCAO : entity work.DecodInstrucao 
          port map (CodigoBinario => opCode, Saida => Saida_Decod);
			 
			 
-- O port map completo do Acumulador.
PC : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => Mux_PC, DOUT => endereco_PC, ENABLE => '1', RST => '0', CLK => CLK);

-- O port map completo do Somador.			 
SOMADOR  :  entity work.somaConstante  generic map (larguraDados => larguraDados_PC, constante => 1) ----colocamos 1 na constante
        port map( entrada => endereco_PC, saida => Saida_Somador);

-- O port map completo do PC.
REG_END_RET : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => Saida_Somador, DOUT => SaidaReg_MUX_C, ENABLE => Saida_Decod(11), RST => '0', CLK => CLK);

-- O port map completo do Banco de Registrador.
BANCO_REG : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados, larguraEndBancoRegs => 2)
          port map ( clk => CLK,
              endereco => endereco_REG,
              dadoEscrita => Saida_ULA,
              habilitaEscrita => Saida_Decod(5),
              saida  => REG1_ULA_A);


-- O port map completo da ULA.
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA_B, seletor => Saida_Decod(4 downto 3), saida => Saida_ULA, flag_0 => Saida_ULA_Flag0);

-- O port map completo da FlipFlop(Flag de comparacao).	
FLAG : 	entity work.FlipFlop   
         port map ( DIN => Saida_ULA_Flag0, DOUT => Saida_FlipFlop, ENABLE => Saida_Decod(2), RST => '0',  CLK => CLK);		

-- O port map completo da Logica de Desvio.
LOGICA_DE_DESVIO : entity work.LogicaDesvio   
         port map ( JMP =>Saida_Decod(10), JEQ =>Saida_Decod(7), Flag =>Saida_FlipFlop, RET =>Saida_Decod(9) , JSR =>Saida_Decod(8) , Saida => Saida_LogicaDesvio );		

		
-- O port map completo do MUX.
MUX2 :  entity work.muxGenerico2x1_PC  generic map (larguraDados => larguraDados_PC)
        port map( entradaA_MUX => Saida_Somador,
                 entradaB_MUX =>  INTRUCTION_IN(8 downto 0),
					  entradaC_MUX => SaidaReg_MUX_C,
					  entradaD_MUX => "000000000",
                 seletor_MUX => Saida_LogicaDesvio,
                 saida_MUX => Mux_PC);
					  
					
-- Atribuacoes					  
BARRAMENTO_DADOS_SAIDA <= REG1_ULA_A; --Data_OUT
BARRAMENTO_DADOS_ENDERECOS <= INTRUCTION_IN(8 downto 0); --Data_Address



RD <= Saida_Decod(1);
WR <= Saida_Decod(0);

ROM_Address <= endereco_PC;




end architecture;