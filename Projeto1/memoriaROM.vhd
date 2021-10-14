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
		
--		-- TESTE DOS BOTÕES E CHAVES
--		  tmp(0)  := LDA & "01" & '1' & x"40"; -- 320 = x140
--        tmp(1)  := STA & "01" & '1' & x"20"; -- 288
--        tmp(2)  := LDA & "01" & '1' & x"41"; -- 320 = x141
--        tmp(3)  := STA & "01" & '1' & x"21"; -- manda para HEX1
--        tmp(4)  := LDA & "01" & '1' & x"42"; -- 
--        tmp(5)  := STA & "01" & '1' & x"22";	-- manda para HEX2
--        tmp(6)  := LDA & "01" & '1' & x"60"; -- 352=x160
--        tmp(7)  := STA & "01" & '1' & x"23"; --manda para HEX3
--        tmp(8)  := LDA & "01" & '1' & x"61"; -- 
--        tmp(9)  := STA & "01" & '1' & x"24"; -- manda para HEX4
--        tmp(10) := LDA & "01" & '1' & x"62"; -- 
--        tmp(11) := STA & "01" & '1' & x"25"; -- manda para HEX5
--        tmp(12) := LDA & "01" & '1' & x"63"; -- 
--        tmp(13) := STA & "01" & '1' & x"01"; -- armazena o valor do bit0 do acumulador no LDR8
--        tmp(14) := LDA & "01" & '1' & x"64";
--		  tmp(15) := STA & "01" & '1' & x"02";
--		  tmp(16) := JMP & "01" & '0' & x"00";

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
	  
	  
	  
--	  
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
--			  -- TESTE DO TRATAMENTO ESPECIAL DA KEY0	  	  	  
	  
	  
 	  tmp(0)  := LDI  & "01" & '0' & x"00"; -- manda 0 para acumulador
	  
	  -- Manda zero para os displays
	  tmp(1)  := STA  & "01" & '1' & x"20";
	  tmp(2)  := STA  & "01" & '1' & x"21";
	  tmp(3)  := STA  & "01" & '1' & x"22";
	  tmp(4)  := STA  & "01" & '1' & x"23";
	  tmp(5)  := STA  & "01" & '1' & x"24";
	  tmp(6)  := STA  & "01" & '1' & x"25";
	  
	  
	  -- Manda zero para os LEDS 0 a 7
	  tmp(7)  := STA  & "01" & '1' & x"00";
	  -- Os LED 8 e 9 estão em baixo
    
	  
	  tmp(8)  := JMP  & "01" & '0' & x"83";
	  
	  
	  tmp(9)  := LDI  & "01" & '0' & x"00";
	  tmp(10) := STA  & "01" & '0' & x"00"; -- guarda 0 no mem[0]
	  tmp(11) := STA  & "01" & '0' & x"02"; -- 0 no mem[2] (contador)
	  tmp(12) := LDI  & "01" & '0' & x"01"; -- manda 1 para o acumulador
	  tmp(13) := STA  & "01" & '0' & x"01"; -- armazena 1 no mem[1] (constante 1)
	  tmp(14) := NOP  & "01" & '0' & x"00";	-- 
	  tmp(15) := LDA  & "01" & '1' & x"60"; -- 352=x160 (KEY0) VERIFICA SE APERTOU OU NÃO
	  tmp(16) := CEQ  & "01" & '0' & x"00"; -- compara key0 com mem[0](que esta guardando 0)
	  tmp(17) := JEQ  & "01" & '0' & x"13"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 19
	  tmp(18) := JSR  & "01" & '0' & x"33"; -- se apertou o key0, vai para subrotina, pula para linha 51 
	  tmp(19) := NOP  & "01" & '0' & x"00"; -- 
	  tmp(20) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	  tmp(21) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
	  tmp(22) := JEQ  & "01" & '0' & x"18"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 24
	  tmp(23) := JSR  & "01" & '0' & x"98";-- AINDA PENSAR EM QUAL SUBROTINA (VOLTAR AQUIIIIIIIIIIII) ------------------------------------------------------------------------------
	  tmp(24) := NOP  & "01" & '0' & x"00"; --
	  tmp(25) := LDA  & "01" & '1' & x"64"; -- 356=x164 (FPGA_RESET) VERIFICA SE APERTOU OU NÃO
	  tmp(26) := CEQ  & "01" & '0' & x"00"; -- compara FPGA_RESET com mem[0](que esta guardando 0)
	  tmp(27) := JEQ  & "01" & '0' & x"1d"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 29
	  tmp(28) := JSR  & "01" & '0' & x"00";-- AINDA PENSAR EM QUAL SUBROTINA  (VOLTAR AQUIIIIIIIIIIII)
	  tmp(29) := NOP  & "01" & '0' & x"00"; --
	  tmp(30) := JMP  & "01" & '0' & x"0e"; -- Pula para 14 para ficar no laço de verificar se o key0 foi apertado ou não
	  tmp(31) := NOP  & "01" & '0' & x"00"; 
	  tmp(32) := NOP  & "01" & '0' & x"00"; 
	  tmp(33) := NOP  & "01" & '0' & x"00"; 
	  tmp(34) := NOP  & "01" & '0' & x"00"; 
	  tmp(35) := NOP  & "01" & '0' & x"00"; 
	  tmp(36) := NOP  & "01" & '0' & x"00"; 
	  tmp(37) := NOP  & "01" & '0' & x"00"; 
	  tmp(38) := NOP  & "01" & '0' & x"00"; 
	  tmp(39) := NOP  & "01" & '0' & x"00"; 
	  tmp(40) := NOP  & "01" & '0' & x"00"; 
	  tmp(41) := NOP  & "01" & '0' & x"00"; 
	  tmp(42) := NOP  & "01" & '0' & x"00"; 
	  tmp(43) := NOP  & "01" & '0' & x"00"; 
	  tmp(44) := NOP  & "01" & '0' & x"00"; 
	  tmp(45) := NOP  & "01" & '0' & x"00"; 
	  tmp(46) := NOP  & "01" & '0' & x"00";  
	  tmp(47) := NOP  & "01" & '0' & x"00"; 
	  tmp(48) := NOP  & "01" & '0' & x"00"; 
	  tmp(49) := NOP  & "01" & '0' & x"00"; 
	  tmp(50) := NOP  & "01" & '0' & x"00"; 
	  
--	  -- Apertou o key0 soma 1 no acumulador e muda os displays
	  tmp(51) := STA  & "01" & '1' & x"ff"; -- 511=x1ff, limpa a leitura no botão
    tmp(52) := LDI & "11" & '0' & x"01"; -- passa 1
    tmp(53) := CEQ & "11" & '0' & x"03"; -- ve se tem 1 na mem[3] flag
    tmp(54) := JEQ & "01" & '0' & x"0e"; -- se flag=1 não pode contar mais volta para linha 14
	  tmp(55) := LDA  & "01" & '0' & x"02"; -- bota o valor do mem[2] no acumulador
	  tmp(56) := SOMA & "01" & '0' & x"01"; -- Soma a constate 1 que esta no MEM[1] com o valor que foi para o acumulador
	  tmp(57) := STA  & "01" & '0' & x"02"; -- guarda o valor da soma em mem[2] (contador)
	  tmp(58) := STA  & "01" & '1' & x"02"; -- 258=x102 armazena o valor do bit0 do acumulador no LDR9
	  tmp(59) := JMP  & "01" & '0' & x"3d"; -- Vai para subrotina de colocar os valores no display(na linha40)
	  tmp(60) := RET  & "01" & '0' & x"00"; -- Retorna da subrotina (ou seja, vai para linha 19)
	  --tmp(58) := NOP  & "01" & '0' & x"00"; 
	  -- SUBROTINA DE COLOCAR VALORES NO DISPLAY
	  
	  tmp(61) := LDA  & "10" & '0' & x"34"; -- Passa o valor atual de HEX0 para R2
	  tmp(62) := SOMA & "10" & '0' & x"01"; -- soma 1
	  tmp(63) := STA  & "10" & '0' & X"34"; -- Salva esse valor no mem[52]
	  tmp(64) := CEQ  & "10" & '0' & x"2e"; -- Compara com o limite de HEX0 (que ta guardado em mem[46]) com R2
	  tmp(65) := JEQ  & "00" & '0' & x"45"; -- Se for igual vai pular para a linha que mexe na dezena 
	  -- se não pular é pq não chegou no limite!
	  tmp(66) := LDA  & "10" & '0' & x"34"; -- Pega o valor que salvou no mem[52]
	  tmp(67) := STA  & "10" & '1' & x"20";
	  tmp(68) := JMP  & "10" & '0' & x"3c"; -- Somou volta para o ret e fica verificando verificando de novo o KEY0
	 
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX0 PASSOU DO LIMITE
	  tmp(69) := LDA  & "10" & '0' & x"00"; -- Salva 0 na R2
	  tmp(70) := STA  & "10" & '0' & x"34"; -- Passa r2 para memoria do HEX0 (d52 = 0x34)
     tmp(71) := STA  & "10" & '1' & x"20"; -- manda 0 para HEX0
	  tmp(72) := LDA  & "10" & '0' & x"35"; -- valor que ta em HEX1 para R2
	  tmp(73) := SOMA & "10" & '0' & x"01"; 
	  tmp(74) := STA  & "10" & '0' & X"35";
	  tmp(75) := CEQ  & "10" & '0' & x"2f";
	  tmp(76) := JEQ  & "10" & '0' & x"50"; -- Vai para a linha 80
	  -- se não pular é pq não chegou no limite!
     tmp(77) := LDA  & "10" & '0' & x"35";
	  tmp(78) := STA  & "10" & '1' & x"21";
	  tmp(79) := JMP  & "01" & '0' & x"3c";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX1 PASSOU DO LIMITE
	  tmp(80) := LDA  & "10" & '0' & x"00";
    tmp(81) := STA  & "10" & '0' & x"35";
	  tmp(82) := STA  & "10" & '1' & x"21"; -- bota 0 no HEX1
	  tmp(83) := LDA  & "10" & '0' & x"36"; 
	  tmp(84) := SOMA & "10" & '0' & x"01";
     tmp(85) := STA  & "10" & '0' & X"36";
	  tmp(86) := CEQ  & "10" & '0' & x"30";
	  tmp(87) := JEQ  & "10" & '0' & x"5b"; -- 91
	   -- se não pular é pq não chegou no limite!
    tmp(88) := LDA  & "10" & '0' & x"36";
	  tmp(89) := STA  & "10" & '1' & x"22";
	  tmp(90) := JMP  & "01" & '0' & x"3c";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX2 PASSOU DO LIMITE
	  tmp(91) := LDA  & "10" & '0' & x"00";
     tmp(92) := STA  & "10" & '0' & x"36";
	  tmp(93) := STA  & "10" & '1' & x"22"; -- bota 0 HEX2
	  tmp(94) := LDA  & "10" & '0' & x"37";
	  tmp(95) := SOMA & "10" & '0' & x"01";
     tmp(96) := STA  & "10" & '0' & X"37";
	  tmp(97) := CEQ  & "10" & '0' & x"31";
	  tmp(98) := JEQ  & "10" & '0' & x"66"; -- 102
	  -- se não pular é pq não chegou no limite!
	  tmp(99) := LDA  & "10" & '0' & x"37";
	  tmp(100) := STA  & "10" & '1' & x"23";
	  tmp(101) := JMP  & "01" & '0' & x"3c"; 
	 
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX3 PASSOU DO LIMITE
	  tmp(102) := LDA  & "10" & '0' & x"00";
	  tmp(103) := STA  & "10" & '0' & x"37";
	  tmp(104) := STA  & "10" & '1' & x"23";
	  tmp(105) := LDA  & "10" & '0' & x"38";
	  tmp(106) := SOMA & "10" & '0' & x"01";
	  tmp(107) := STA  & "10" & '0' & X"38";
	  tmp(108) := CEQ  & "10" & '0' & x"32";
	  tmp(109) := JEQ  & "10" & '0' & x"71"; -- 113
	  -- se não pular é pq não chegou no limite!
     tmp(110) := LDA  & "10" & '0' & x"38";
	  tmp(111) := STA  & "10" & '1' & x"24";
	  tmp(112) := JMP  & "01" & '0' & x"3c"; 
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX4 PASSOU DO LIMITE
	  tmp(113) := LDA  & "10" & '0' & x"00";
	  tmp(114) := STA  & "10" & '0' & x"38";
	  tmp(115) := STA  & "10" & '1' & x"24";
     tmp(116) := LDI  & "00" & '0' & x"03"; -- carrega 3 no R0
     tmp(117) := STA  & "00" & '0' & x"32"; -- 50 - Limite do HEX 4 -  manda 3 para esse limite
	  tmp(118) := LDA  & "10" & '0' & x"39";
	  tmp(119) := SOMA & "10" & '0' & x"01";
	  tmp(120) := STA  & "10" & '0' & X"39";
	  tmp(121) := CEQ  & "10" & '0' & x"33";
	  tmp(122) := JEQ  & "10" & '0' & x"7e"; --126
	  -- se Não pular é pq não chegou no limite!
     tmp(123) := LDA  & "10" & '0' & x"39";
	  tmp(124) := STA  & "10" & '1' & x"25";
	  tmp(125) := JMP  & "01" & '0' & x"3c"; 

	 
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX5 PASSOU DO LIMITE
	  ---- OU SEJA, LIMITE MÁXIMO
	  --- VAMOS ACENDER O LED 8
	  
	  
	  tmp(126) := LDI  & "10" & '0' & x"00"; -- para 0 o R2
	  tmp(127) := STA  & "10" & '0' & x"39";
	  tmp(128) := STA  & "10" & '1' & x"25";
     tmp(129) := LDI  & "11" & '0' & x"01";
     tmp(130) := STA  & "11" & '0' & x"03"; -- bota 1 na flag (mem3) então para a contagem
	  
	  
	  --DEFININDO LIMITES PARA OS HEX
	  tmp(131) := LDI  & "11" & '0' & x"0a"; -- 10 PARA O REG 3
	  tmp(132) := STA  & "11" & '0' & x"2e"; -- 46	  
	  tmp(133) := STA  & "11" & '0' & x"30"; -- 48
	  tmp(134) := STA  & "11" & '0' & x"32"; -- 50
	  tmp(135) := LDI  & "11" & '0' & x"06"; -- 6 PARA O REG 3
	  tmp(136) := STA  & "11" & '0' & x"2f"; -- 47
	  tmp(137) := STA  & "11" & '0' & x"31"; -- 49
     tmp(138) := LDI  & "11" & '0' & x"03"; -- 2 PARA O REG 3 (HEX 5)
     tmp(139) := STA  & "11" & '0' & x"33"; -- 51
	  tmp(140) := LDI  & "11" & '0' & x"00";
	  tmp(141) := STA  & "11" & '1' & x"01";
     tmp(142) := STA  & "11" & '1' & x"02";
	  tmp(143) := STA  & "11" & '0' & x"34"; -- 52
	  tmp(144) := STA  & "11" & '0' & x"35"; -- 53
	  tmp(145) := STA  & "11" & '0' & x"36"; -- 54
	  tmp(146) := STA  & "11" & '0' & x"37"; -- 55
	  tmp(147) := STA  & "11" & '0' & x"38"; -- 56
	  tmp(148) := STA  & "11" & '0' & x"39"; -- 57
     tmp(149) := STA & "11" & '0' & x"03"; --flag na MEM[3]
	  tmp(150) := JMP  & "00" & '0' & x"09";
	  tmp(151) := NOP  & "01" & '0' & x"00";
	  
	  
	  		-- SUBROTINA DE CONFIGURAR LIMITES!!
		--configunrando as unidade
	  tmp(152) := STA  & "01" & '1' & x"fe";
	  tmp(153) := LDA  & "00" & '1' & x"40"; -- le as chaves
	  tmp(154) := STA  & "00" & '0' & x"2e"; -- 46
		-- loop KEY1
	  tmp(155) := NOP  & "01" & '0' & x"00"; --
	  tmp(156) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	  tmp(157) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
	  tmp(158) := JEQ  & "01" & '0' & x"9b"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 154
	  tmp(159) := JMP  & "01" & '0' & x"a1";-- se apertou vai pra 160
	  tmp(160) := NOP  & "01" & '0' & x"00"; --
		-- configunrando as dezenas
	  tmp(161) := STA  & "01" & '1' & x"fe";
     tmp(162) := LDA  & "00" & '1' & x"40"; -- le as chaves
	  tmp(163) := STA  & "00" & '0' & x"2f"; -- 47
	  -- loop KEY1
	  tmp(164) := NOP  & "01" & '0' & x"00"; --
	  tmp(165) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	  tmp(166) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
	  tmp(167) := JEQ  & "01" & '0' & x"a4"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 164
	  tmp(168) := JMP  & "01" & '0' & x"aa";-- se apertou vai pra 170
	  tmp(169) := NOP  & "01" & '0' & x"00"; --
		-- configunrando as centenas
	  tmp(170) := STA  & "01" & '1' & x"fe";
     tmp(171) := LDA  & "00" & '1' & x"40"; -- le as chaves
	  tmp(172) := STA  & "00" & '0' & x"30"; -- 48
		-- loop KEY1
	  tmp(173) := NOP  & "01" & '0' & x"00"; --
	  tmp(174) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	  tmp(175) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
	  tmp(176) := JEQ  & "01" & '0' & x"ad"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 173
	  tmp(177) := JMP  & "01" & '0' & x"b3";-- se apertou vai pra 179
	  tmp(178) := NOP  & "01" & '0' & x"00"; --
		-- configunrando as unidade de milhares
	  tmp(179) := STA  & "01" & '1' & x"fe";
     tmp(180) := LDA  & "00" & '1' & x"40"; -- le as chaves
	  tmp(181) := STA  & "00" & '0' & x"31"; -- 49
     -- loop KEY1
	  tmp(182) := NOP  & "01" & '0' & x"00"; --
	  tmp(183) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	  tmp(184) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
	  tmp(185) := JEQ  & "01" & '0' & x"b6"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 182
	  tmp(186) := JMP  & "01" & '0' & x"bc";-- AINDA PENSAR EM QUAL SUBROTINA (VOLTAR AQUIIIIIIIIIIII)
	  tmp(187) := NOP  & "01" & '0' & x"00"; --
		-- configunrando as dezenas de milhares
	  tmp(188) := STA  & "01" & '1' & x"fe";
     tmp(189) := LDA  & "00" & '1' & x"40"; -- le as chaves
	  tmp(190) := STA  & "00" & '0' & x"32"; -- 50
		-- loop KEY1
	  tmp(191) := NOP  & "01" & '0' & x"00"; --
	  tmp(192) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	  tmp(193) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
	  tmp(194) := JEQ  & "01" & '0' & x"bf"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 190
	  tmp(195) := JMP  & "01" & '0' & x"c5";-- AINDA PENSAR EM QUAL SUBROTINA (VOLTAR AQUIIIIIIIIIIII)
	  tmp(196) := NOP  & "01" & '0' & x"00"; --
    -- configunrando as centenas de milhares
	  tmp(197) := STA  & "01" & '1' & x"fe";
     tmp(198) := LDA  & "00" & '1' & x"40"; -- le as chaves
	  tmp(199) := STA  & "00" & '0' & x"33"; -- 51
	  tmp(200) := RET  & "01" & '0' & x"00";
	  tmp(201) := NOP  & "01" & '0' & x"00";








	  
	  
	  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;