library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (8 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is
	constant NOP : std_logic_vector (3 DOWNTO 0) := "0000";
	constant LDA : std_logic_vector (3 DOWNTO 0) := "0001";
	constant SOMA : std_logic_vector (3 DOWNTO 0) := "0010";
	constant SUB : std_logic_vector (3 DOWNTO 0) := "0011";
	constant LDI : std_logic_vector (3 DOWNTO 0) := "0100";
	constant STA : std_logic_vector (3 DOWNTO 0) := "0101";
	constant JMP : std_logic_vector (3 DOWNTO 0) := "0110";
	constant JEQ : std_logic_vector (3 DOWNTO 0) := "0111";
	constant CEQ : std_logic_vector (3 DOWNTO 0) := "1000";
	constant JSR : std_logic_vector (3 DOWNTO 0) := "1001";
	constant RET : std_logic_vector (3 DOWNTO 0) := "1010";
	
	
	
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
      --                 CTRL   Prox Estado
		
		-- TESTE DE SOMA
--		  tmp(0)  := LDI  & '0' & x"01"; -- carrega 1 no acumulador 
--        tmp(1)  := STA  & '0' & x"00"; -- carrega esse 1 no mem[0]
--        tmp(2)  := SOMA & '0' & x"00"; -- acumulador = 1 + mem[0] = 2
--		  
		-- TESTE DE SUB
--		  tmp(0)  := LDI  & '0' & x"01"; -- carrega 1 no acumulador 
--        tmp(1)  := STA  & '0' & x"00"; -- carrega esse 1 no mem[0]
--        tmp(2)  := LDI  & '0' & x"03"; -- carrega 1 no acumulador
--		  tmp(3)  := SUB  & '0' & x"00"; -- subtrai 1 de 3
       
--		
--		-- TESTE DOS LEDS
--		  tmp(0)  := LDI  & '0' & x"01"; -- carrega 1 no acumulador 
--        tmp(1)  := STA  & '0' & x"00"; -- carrega esse 1 no mem[0]
--        tmp(2)  := SOMA & '0' & x"00"; -- acumulador = 1 + mem[0] = 2
--        tmp(3)  := STA  & '0' & x"01"; -- salva 2 em mem[1]
--        tmp(4)  := LDA  & '0' & x"00"; -- volta 1 que esta na mem[0] para o acumulador
--        tmp(5)  := STA  & '1' & x"01"; -- 257=101
--        tmp(6)  := STA  & '1' & x"02"; -- 258=102
--        tmp(7)  := LDI  & '0' & x"55"; -- 85=55
--        tmp(8)  := STA  & '1' & x"00"; -- 256=100
--        tmp(9)  := LDI  & '0' & x"aa";
--        tmp(10) := STA  & '1' & x"00"; 
--		  tmp(11) := JMP  & '0' & x"b0"; 
       

		
			
		
			
		-- TESTE DOS DISPLAYS DE 7 SEGMENTOS
		 
--		  tmp(0)  := LDI  & '0' & x"01"; -- manda 1 para o acumulador
--        tmp(1)  := STA  & '0' & x"00"; -- manda esse 1 para mem[0]
--        tmp(2)  := SOMA & '0' & x"00"; -- soma, então acumulador=2
--        tmp(3)  := STA  & '1' & x"20"; -- armazena o valor do acumulador em HEX0 (288)
--        tmp(4)  := SOMA & '0' & x"00"; -- soma, então acumulador=3
--        tmp(5)  := STA  & '1' & x"21";	-- armazena o valor do acumulador em HEX1 (289)
--        tmp(6)  := SOMA & '0' & x"00"; -- soma, então acumulador=4
--        tmp(7)  := STA  & '1' & x"22"; -- armazena o valor do acumulador em HEX2 (290)
--        tmp(8)  := SOMA & '0' & x"00"; -- soma, então acumulador=5
--        tmp(9)  := STA  & '1' & x"23"; -- armazena o valor do acumulador em HEX3 (291)
--        tmp(10) := SOMA & '0' & x"00"; -- soma, então acumulador=6
--        tmp(11) := STA  & '1' & x"24"; -- armazena o valor do acumulador em HEX4 (292)
--        tmp(12) := SOMA & '0' & x"00"; -- soma, então acumulador=7
--        tmp(13) := STA  & '1' & x"25"; -- armazena o valor do acumulador em HEX5 (293)
--        tmp(14) := JMP  & '0' & x"02";
		
		-- TESTE DOS BOTÕES E CHAVES
--		  tmp(0)  := LDA  & '1' & x"40"; -- 320 = x140
--        tmp(1)  := STA  & '1' & x"20"; -- 288
--        tmp(2)  := LDA  & '1' & x"41"; -- 320 = x141
--        tmp(3)  := STA  & '1' & x"21"; -- manda para HEX1
--        tmp(4)  := LDA  & '1' & x"42"; -- 
--        tmp(5)  := STA  & '1' & x"22";	-- manda para HEX2
--        tmp(6)  := LDA  & '1' & x"60"; -- 352=x160
--        tmp(7)  := STA  & '1' & x"23"; --manda para HEX3
--        tmp(8)  := LDA  & '1' & x"61"; -- 
--        tmp(9)  := STA  & '1' & x"24"; -- manda para HEX4
--        tmp(10) := LDA  & '1' & x"62"; -- 
--        tmp(11) := STA  & '1' & x"25"; -- manda para HEX5
--        tmp(12) := LDA  & '1' & x"63"; -- 
--        tmp(13) := STA  & '1' & x"01"; -- armazena o valor do bit0 do acumulador no LDR8
--        tmp(14) := LDA  & '1' & x"64";
--		  tmp(15) := STA  & '1' & x"02";
--		  tmp(16) := JMP  & '0' & x"00";

--      -- TESTE DO TRATAMENTO ESPECIAL DA KEY0
--		  tmp(0)  := LDI  & "01" & '0' & x"00"; -- manda 0 para acumulador
--        tmp(1)  := STA  & "01" & '0' & x"00"; -- guarda 0 no mem[0]
--        tmp(2)  := STA  & "01" & '0' & x"02"; -- 0 no mem[2] (contador)
--        tmp(3)  := LDI  & "00" & '0' & x"01"; -- manda 1 para o acumulador
--        tmp(4)  := STA  & "00" & '0' & x"01"; -- armazena 1 no mem[1] (constante 1)
--        tmp(5)  := NOP  & "00" & '0' & x"00";	-- 
--        tmp(6)  := LDA  & "00" & '1' & x"60"; -- 352=x160 (KEY0) VERIFICA SE APERTOU OU NÃO
--        tmp(7)  := CEQ  & "00" & '0' & x"00"; -- compara key0 com mem[0](que esta guardando 0)
--        tmp(8)  := JEQ  & "00" & '0' & x"0a"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 10
--        tmp(9)  := JSR  & "00" & '0' & x"20"; -- se apertou o key0, vai para subrotina, pula para linha 32 
--        tmp(10) := NOP  & "00" & '0' & x"00"; -- 
--        tmp(11) := JMP  & "00" & '0' & x"05"; -- Pula para 5 para ficar no laço de verificar se o key0 foi apertado ou não
--        tmp(12) := NOP  & "00" & '0' & x"00"; 
--		  tmp(13) := NOP  & "00" & '0' & x"00"; 
--		  tmp(14) := NOP  & "00" & '0' & x"00"; 
--		  tmp(15) := NOP  & "00" & '0' & x"00"; 
--		  tmp(16) := NOP  & "00" & '0' & x"00"; 
--		  tmp(17) := NOP  & "00" & '0' & x"00"; 
--		  tmp(18) := NOP  & "00" & '0' & x"00"; 
--		  tmp(19) := NOP  & "00" & '0' & x"00"; 
--		  tmp(20) := NOP  & "00" & '0' & x"00"; 
--		  tmp(21) := NOP  & "00" & '0' & x"00"; 
--		  tmp(22) := NOP  & "00" & '0' & x"00"; 
--		  tmp(23) := NOP  & "00" & '0' & x"00"; 
--		  tmp(24) := NOP  & "00" & '0' & x"00"; 
--		  tmp(25) := NOP  & "00" & '0' & x"00"; 
--		  tmp(26) := NOP  & "00" & '0' & x"00"; 
--		  tmp(27) := NOP  & "00" & '0' & x"00";  
--		  tmp(28) := NOP  & "00" & '0' & x"00"; 
--		  tmp(29) := NOP  & "00" & '0' & x"00"; 
--		  tmp(30) := NOP  & "00" & '0' & x"00"; 
--		  tmp(31) := NOP  & "00" & '0' & x"00"; 
--		  tmp(32) := STA  & "00" & '1' & x"ff"; -- 511=x1ff, limpa a leitura no botão
--		  tmp(33) := LDA  & "00" & '0' & x"02"; -- bota o valor do mem[2] no acumulador
--		  tmp(34) := SOMA & "00" & '0' & x"01"; -- Soma a constate 1 que esta no MEM[1] com o valor que foi para o acumulador
--		  tmp(35) := STA  & "00" & '0' & x"02"; -- guarda o valor da soma em mem[2] (contador)
--		  tmp(36) := STA  & "00" & '1' & x"02"; -- 258=x102 armazena o valor do bit0 do acumulador no LDR9
--		  tmp(37) := RET  & "00" & '0' & x"00"; -- Retorna da subrotina (ou seja, vai para linha 10)
--		
	  -- TESTE DO TRATAMENTO ESPECIAL DA KEY0
	  tmp(0)  := LDI  & "01" & '0' & x"00"; -- manda 0 para acumulador
	  tmp(1)  := STA  & "01" & '0' & x"00"; -- guarda 0 no mem[0]
	  tmp(2)  := STA  & "01" & '0' & x"02"; -- 0 no mem[2] (contador)
	  tmp(3)  := LDI  & "01" & '0' & x"01"; -- manda 1 para o acumulador
	  tmp(4)  := STA  & "01" & '0' & x"01"; -- armazena 1 no mem[1] (constante 1)
	  tmp(5)  := NOP  & "01" & '0' & x"00";	-- 
	  tmp(6)  := LDA  & "01" & '1' & x"60"; -- 352=x160 (KEY0) VERIFICA SE APERTOU OU NÃO
	  tmp(7)  := CEQ  & "01" & '0' & x"00"; -- compara key0 com mem[0](que esta guardando 0)
	  tmp(8)  := JEQ  & "01" & '0' & x"0a"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 10
	  tmp(9)  := JSR  & "01" & '0' & x"20"; -- se apertou o key0, vai para subrotina, pula para linha 32 
	  tmp(10) := NOP  & "01" & '0' & x"00"; -- 
	  tmp(11) := JMP  & "01" & '0' & x"05"; -- Pula para 5 para ficar no laço de verificar se o key0 foi apertado ou não
	  tmp(12) := NOP  & "01" & '0' & x"00"; 
	  tmp(13) := NOP  & "01" & '0' & x"00"; 
	  tmp(14) := NOP  & "01" & '0' & x"00"; 
	  tmp(15) := NOP  & "01" & '0' & x"00"; 
	  tmp(16) := NOP  & "01" & '0' & x"00"; 
	  tmp(17) := NOP  & "01" & '0' & x"00"; 
	  tmp(18) := NOP  & "01" & '0' & x"00"; 
	  tmp(19) := NOP  & "01" & '0' & x"00"; 
	  tmp(20) := NOP  & "01" & '0' & x"00"; 
	  tmp(21) := NOP  & "01" & '0' & x"00"; 
	  tmp(22) := NOP  & "01" & '0' & x"00"; 
	  tmp(23) := NOP  & "01" & '0' & x"00"; 
	  tmp(24) := NOP  & "01" & '0' & x"00"; 
	  tmp(25) := NOP  & "01" & '0' & x"00"; 
	  tmp(26) := NOP  & "01" & '0' & x"00"; 
	  tmp(27) := NOP  & "01" & '0' & x"00";  
	  tmp(28) := NOP  & "01" & '0' & x"00"; 
	  tmp(29) := NOP  & "01" & '0' & x"00"; 
	  tmp(30) := NOP  & "01" & '0' & x"00"; 
	  tmp(31) := NOP  & "01" & '0' & x"00"; 
	  
	  -- Apertou o key0 soma 1 no acumulador e muda os displays
	  tmp(32) := STA  & "01" & '1' & x"ff"; -- 511=x1ff, limpa a leitura no botão
	  tmp(33) := LDA  & "01" & '0' & x"02"; -- bota o valor do mem[2] no acumulador
	  tmp(34) := SOMA & "01" & '0' & x"01"; -- Soma a constate 1 que esta no MEM[1] com o valor que foi para o acumulador
	  tmp(35) := STA  & "01" & '0' & x"02"; -- guarda o valor da soma em mem[2] (contador)
	  tmp(36) := STA  & "01" & '1' & x"02"; -- 258=x102 armazena o valor do bit0 do acumulador no LDR9
	  tmp(37) := JMP  & "01" & '0' & x"28"; -- Vai para subrotina de colocar os valores no display(na linha40)
	  tmp(38) := RET  & "01" & '0' & x"00"; -- Retorna da subrotina (ou seja, vai para linha 10)
	  tmp(39) := NOP  & "01" & '0' & x"00"; 
	  -- SUBROTINA DE COLOCAR VALORES NO DISPLAY
	  
	  tmp(40) := LDA  & "10" & '1' & x"20"; -- Passa o valor atual de HEX0 para R2
	  tmp(41) := SOMA & "10" & '0' & x"01"; -- soma 1
	  tmp(42) := CEQ  & "10" & '0' & x"2e"; -- Compara com o limite de HEX0 (que ta guardado em mem[46]) com R2
	  tmp(43) := JEQ  & "10" & '0' & x"2e"; -- Se for igual vai pular para a linha que mexe na dezena 
	  -- se não pular é pq não chegou no limite!
	  tmp(44) := STA  & "10" & '1' & x"20";
	  tmp(45) := JMP  & "01" & '0' & x"26"; -- Somou volta para o ret e fica verificando verificando de novo o KEY0
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX0 PASSOU DO LIMITE
	  tmp(46) := LDA  & "10" & '0' & x"00"; -- Salva 0 na R2
	  tmp(47) := STA  & "10" & '1' & x"20"; -- Passa 2 para HEX0
	  tmp(48) := LDA  & "10" & '1' & x"21"; -- valor que ta em HEX1 para R2
	  tmp(49) := SOMA & "10" & '0' & x"01";
	  tmp(50) := CEQ  & "10" & '0' & x"2f";
	  tmp(51) := JEQ  & "10" & '0' & x"36"; -- Vai para a linha 54
	  -- se não pular é pq não chegou no limite!
	  tmp(52) := STA  & "10" & '1' & x"21";
	  tmp(53) := JMP  & "01" & '0' & x"26";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX1 PASSOU DO LIMITE
	  tmp(54) := LDA  & "10" & '0' & x"00";
	  tmp(55) := STA  & "10" & '1' & x"21"; -- bota 0 no HEX0
	  tmp(56) := LDA  & "10" & '1' & x"22";
	  tmp(57) := SOMA & "10" & '0' & x"01";
	  tmp(57) := CEQ  & "10" & '0' & x"30";
	  tmp(58) := JEQ  & "10" & '0' & x"3d";
	   -- se não pular é pq não chegou no limite!
	  tmp(59) := STA  & "10" & '1' & x"22";
	  tmp(60) := JMP  & "01" & '0' & x"26";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX2 PASSOU DO LIMITE
	  tmp(61) := LDA  & "10" & '0' & x"00";
	  tmp(62) := STA  & "10" & '1' & x"22"; -- bota 0 HEX2
	  tmp(63) := LDA  & "10" & '1' & x"23";
	  tmp(64) := SOMA & "10" & '0' & x"01";
	  tmp(65) := CEQ  & "10" & '0' & x"31";
	  tmp(66) := JEQ  & "10" & '0' & x"45";
	  -- se não pular é pq não chegou no limite!
	  tmp(67) := STA  & "10" & '1' & x"23";
	  tmp(68) := JMP  & "01" & '0' & x"26";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX3 PASSOU DO LIMITE
	  tmp(69) := LDA  & "10" & '0' & x"00";
	  tmp(70) := STA  & "10" & '1' & x"23";
	  tmp(71) := LDA  & "10" & '1' & x"24";
	  tmp(72) := SOMA & "10" & '0' & x"01";
	  tmp(73) := CEQ  & "10" & '0' & x"32";
	  tmp(74) := JEQ  & "10" & '0' & x"4d";
	  -- se não pular é pq não chegou no limite!
	  tmp(75) := STA  & "10" & '1' & x"24";
	  tmp(76) := JMP  & "01" & '0' & x"26";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX4 PASSOU DO LIMITE
	  tmp(77) := LDA  & "10" & '0' & x"00";
	  tmp(78) := STA  & "10" & '1' & x"24";
	  tmp(79) := LDA  & "10" & '1' & x"25";
	  tmp(80) := SOMA & "10" & '0' & x"01";
	  tmp(81) := CEQ  & "10" & '0' & x"33";
	  tmp(82) := JEQ  & "10" & '0' & x"55";
	  -- se não pular é pq não chegou no limite!
	  tmp(83) := STA  & "10" & '1' & x"25";
	  tmp(84) := JMP  & "01" & '0' & x"26";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX5 PASSOU DO LIMITE
	  ---- OU SEJA, LIMITE MÁXIMO
	  --- VAMOS ACENDER O LED 8
	  tmp(85) := LDA  & "10" & '0' & x"01"; -- para 1 o R2
	  tmp(86) := STA  & "10" & '1' & x"01"; -- ACENDE O LED 8
	  
	  
	  
	  
		
		
		
	

	 
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;