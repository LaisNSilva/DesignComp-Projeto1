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
    
	  
	  tmp(8)  := JMP  & "01" & '0' & x"89";
	  
	  
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
	  tmp(23) := JSR  & "01" & '0' & x"9e";-- AINDA PENSAR EM QUAL SUBROTINA (VOLTAR AQUIIIIIIIIIIII) ------------------------------------------------------------------------------
	  tmp(24) := NOP  & "01" & '0' & x"00"; --
	  tmp(25) := LDA  & "01" & '1' & x"64"; -- 356=x164 (FPGA_RESET) VERIFICA SE APERTOU OU NÃO
	  tmp(26) := CEQ  & "01" & '0' & x"00"; -- compara FPGA_RESET com mem[0](que esta guardando 0)
	  tmp(27) := JEQ  & "01" & '0' & x"1d"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 29
	  tmp(28) := JSR  & "01" & '0' & x"00";-- AINDA PENSAR EM QUAL SUBROTINA  (VOLTAR AQUIIIIIIIIIIII)
	  tmp(29) := NOP  & "01" & '0' & x"00"; --
	  tmp(30) := JMP  & "01" & '0' & x"0e"; -- Pula para 14 para ficar no laço de verificar se o key0 foi apertado ou não
	  tmp(31) := STA & "01" & '1' & x"fe"; 
	  tmp(32) := JMP  & "01" & '0' & x"0e"; 
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
    tmp(116) := LDA  & "10" & '0' & X"39"; -- pega valor de HEX 5 
		tmp(117) := CEQ & "10" & '0' & x"01"; -- COMPARA VALOR DO hex5 com 1 se for 1 tem que mudar o limiter de do HEX4 (x01)
    tmp(118) := JEQ & "00" & '0' & x"78"; --- 120
    tmp(119) := JMP & "00" & '0' & x"7c"; --- 124

    tmp(120) := LDI & "00" & '0' & x"04"; -- se no x40 tiver 1 só pode incrementar até o 3 então o limite tem que mudar para 4
    tmp(121) := STA  & "00" & '0' & x"32";
    tmp(122) := NOP  & "01" & '0' & x"00"; 
    tmp(123) := NOP  & "01" & '0' & x"00"; 

    ---- verifica quantas vezes já passou do limite
    ---- so pode passar quando for 0 e 1, quando for 2 o limite é 4 e não mais 10
	  tmp(124) := LDA  & "10" & '0' & x"39";
	  tmp(125) := SOMA & "10" & '0' & x"01";
	  tmp(126) := STA  & "10" & '0' & X"39";
	  tmp(127) := CEQ  & "10" & '0' & x"33";
	  tmp(128) := JEQ  & "10" & '0' & x"84"; --132 passou do limite o HEX5 vai para 132
	 
	  -- se Não pular é pq não chegou no limite!
     tmp(129) := LDA  & "10" & '0' & x"39";
	  tmp(130) := STA  & "10" & '1' & x"25";
	  tmp(131) := JMP  & "01" & '0' & x"3c"; 

	 
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX5 PASSOU DO LIMITE
	  ---- OU SEJA, LIMITE MÁXIMO
	  --- VAMOS ACENDER O LED 8
	  
	  
	  tmp(132) := LDI  & "10" & '0' & x"00"; -- para 0 o R2
	  tmp(133) := STA  & "10" & '0' & x"39";
	  tmp(134) := STA  & "10" & '1' & x"25";
     tmp(135) := LDI  & "11" & '0' & x"01";
     tmp(136) := STA  & "11" & '0' & x"03"; -- bota 1 na flag (mem3) então para a contagem
	  
	  
	  --DEFININDO LIMITES PARA OS HEX
	  tmp(137) := LDI  & "11" & '0' & x"0a"; -- 10 PARA O REG 3
	  tmp(138) := STA  & "11" & '0' & x"2e"; -- 46	  
	  tmp(139) := STA  & "11" & '0' & x"30"; -- 48
	  tmp(140) := STA  & "11" & '0' & x"32"; -- 50
	  tmp(141) := LDI  & "11" & '0' & x"06"; -- 6 PARA O REG 3
	  tmp(142) := STA  & "11" & '0' & x"2f"; -- 47
	  tmp(143) := STA  & "11" & '0' & x"31"; -- 49
     tmp(144) := LDI  & "11" & '0' & x"03"; -- 3 PARA O REG 3 (HEX 5)
     tmp(145) := STA  & "11" & '0' & x"33"; -- 51
	  tmp(146) := LDI  & "11" & '0' & x"00";
	  tmp(147) := STA  & "11" & '1' & x"01";
     tmp(148) := STA  & "11" & '1' & x"02";
	  tmp(149) := STA  & "11" & '0' & x"34"; -- 52
	  tmp(150) := STA  & "11" & '0' & x"35"; -- 53
	  tmp(151) := STA  & "11" & '0' & x"36"; -- 54
	  tmp(152) := STA  & "11" & '0' & x"37"; -- 55
	  tmp(153) := STA  & "11" & '0' & x"38"; -- 56
	  tmp(154) := STA  & "11" & '0' & x"39"; -- 57
    --tmp(155) := LDI  & "11" & '0' & x"02";
	  --tmp(156) := STA  & "11" & '0' & x"3a";
    tmp(155) := NOP  & "01" & '0' & x"00";
    tmp(156) := STA & "11" & '0' & x"03"; --flag na MEM[3]
	  tmp(157) := JMP  & "00" & '0' & x"09";
	  

    -- SUBROTINA DE AJUSTAR O RELOGIO!! oi lais
		--configunrando os segundos
    -- verifica se key1 foi apertado e se foi apertado vai para a configuração dos minutos
    tmp(158) := STA  & "01" & '1' & x"fe"; -- limpa a leitura do KEY1(endereço=510)
	 	tmp(159) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	 	tmp(160) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
		tmp(161) := JEQ  & "01" & '0' & x"a3"; -- se for igual, ou seja, key1 não foi apertado, pulo para linha xa3=163 para verificar se KEY0 foi apertado(linha163)
	  tmp(162) := JMP  & "01" & '0' & x"c1";-- se apertou vai pra configuração dos minutos linha 193
    tmp(163) := LDA  & "01" & '1' & x"62"; -- 354=x162 (KEY2) VERIFICA SE APERTOU OU NÃO
	  tmp(164) := CEQ  & "01" & '0' & x"00"; -- compara key0 com mem[0](que esta guardando 0)
	  tmp(165) := JEQ  & "01" & '0' & x"9f"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 159
	  tmp(166) := JMP  & "01" & '0' & x"a7"; -- se apertou o key0, aqui soma 1 nos segundos(subrotina dos segundo)(linha198)
	  
    -- se KEY0 vai para uma subrotina que soma 1 até dar 59 segundo, se deu volta para 00

   -- SUBTORINA QUE SOMA OS SEGUNDOS


 	-- SUBROTINA DE COLOCAR VALORES NO DISPLAY
	  tmp(167) := STA  & "01" & '1' & x"fd"; -- Limpa aperto de KEY2
	  tmp(168) := LDA  & "10" & '0' & x"34"; -- Passa o valor atual de HEX0 para R2
	  tmp(169) := SOMA & "10" & '0' & x"01"; -- soma 1
	  tmp(170) := STA  & "10" & '0' & X"34"; -- Salva esse valor no mem[52]
	  tmp(171) := CEQ  & "10" & '0' & x"2e"; -- Compara com o limite de HEX0 (que ta guardado em mem[46]) com R2
	  tmp(172) := JEQ  & "00" & '0' & x"b0"; -- Se for igual vai pular para a linha que mexe na dezena 
	  -- se não pular é pq não chegou no limite!
	  tmp(173) := LDA  & "10" & '0' & x"34"; -- Pega o valor que salvou no mem[52]
	  tmp(174) := STA  & "10" & '1' & x"20";
	  tmp(175) := JMP  & "10" & '0' & x"9f"; -- Somou volta para 159 e fica verificando de novo os botões
	 
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX0 PASSOU DO LIMITE
	  tmp(176) := LDA  & "10" & '0' & x"00"; -- Salva 0 na R2
	  tmp(177) := STA  & "10" & '0' & x"34"; -- Passa r2 para memoria do HEX0 (d52 = 0x34)
    tmp(178) := STA  & "10" & '1' & x"20"; -- manda 0 para HEX0
	  tmp(179) := LDA  & "10" & '0' & x"35"; -- valor que ta em HEX1 para R2
	  tmp(180) := SOMA & "10" & '0' & x"01"; 
	  tmp(181) := STA  & "10" & '0' & X"35";
	  tmp(182) := CEQ  & "10" & '0' & x"2f";
	  tmp(183) := JEQ  & "10" & '0' & x"bb"; -- se a dezena passou do limite zera os HEX0 E HEX1 e volta pra ficar verificando KEY1 E KEY0
	  -- se não pular é pq não chegou no limite!
    tmp(184) := LDA  & "10" & '0' & x"35";
	  tmp(185) := STA  & "10" & '1' & x"21";
	  tmp(186) := JMP  & "01" & '0' & x"9f"; -- Somou volta para 159 e fica verificando de novo os botões
	  

		tmp(187) := LDA  & "10" & '0' & x"00"; 
    tmp(188) := STA  & "10" & '0' & x"34";
    tmp(189) := STA  & "10" & '1' & x"20"; -- manda 0 p HEX0
		tmp(190) := STA  & "10" & '0' & X"35";
		tmp(191) := STA  & "10" & '1' & x"21"; -- manda 0 para HEX1
    tmp(192) := JMP  & "01" & '0' & x"9f";



    -- configuração dos minutos
-- verifica se key1 foi apertado e se foi apertado vai para a configuração dos minutos
    tmp(193) := STA  & "01" & '1' & x"fe"; -- limpa a leitura do KEY1(endereço=510)
	 	tmp(194) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	 	tmp(195) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
		tmp(196) := JEQ  & "01" & '0' & x"c6"; -- se for igual, ou seja, key1 não foi apertado, pulo para linha aaaaa para verificar se KEY2 foi apertado(linha163)
	  tmp(197) := JMP  & "01" & '0' & x"e4";-- se apertou vai pra configuração dos horas linha --
    tmp(198) := LDA  & "01" & '1' & x"62"; -- 352=x160 (KEY2) VERIFICA SE APERTOU OU NÃO
	  tmp(199) := CEQ  & "01" & '0' & x"00"; -- compara key2 com mem[0](que esta guardando 0)
	  tmp(200) := JEQ  & "01" & '0' & x"c2"; -- se for igual, ou seja, key2 não foi apertado, pulo para linha 194
	  tmp(201) := JMP  & "01" & '0' & x"ca"; -- se apertou o key2, aqui soma 1 nos segundos(subrotina dos segundo)(linha202)

 -- SUBTORINA QUE SOMA OS MINUTOS


 	-- SUBROTINA DE COLOCAR VALORES NO DISPLAY
	  tmp(202) := STA  & "01" & '1' & x"fd"; -- Limpa aperto de KEY2
    tmp(203) := LDA  & "10" & '0' & x"36"; --Passa o valor atual de HEX2 para R2
	  tmp(204) := SOMA & "10" & '0' & x"01"; -- soma 1
    tmp(205) := STA  & "10" & '0' & X"36"; -- salva
	  tmp(206) := CEQ  & "10" & '0' & x"30";  
	  tmp(207) := JEQ  & "10" & '0' & x"d3"; -- passou do limite vai para 211
	   -- se não pular é pq não chegou no limite!
    tmp(208) := LDA  & "10" & '0' & x"36";
	  tmp(209) := STA  & "10" & '1' & x"22";
	  tmp(210) := JMP  & "01" & '0' & x"c2";-- somou 1 volta para loop dos botoes
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX2 PASSOU DO LIMITE
	  tmp(211) := LDA  & "10" & '0' & x"00";
    tmp(212) := STA  & "10" & '0' & x"36";
	  tmp(213) := STA  & "10" & '1' & x"22"; -- bota 0 HEX2
	  tmp(214) := LDA  & "10" & '0' & x"37";
	  tmp(215) := SOMA & "10" & '0' & x"01";
    tmp(216) := STA  & "10" & '0' & X"37";
	  tmp(217) := CEQ  & "10" & '0' & x"31";
	  tmp(218) := JEQ  & "10" & '0' & x"de"; -- passou do limite zera tudo - linha 222
	  -- se não pular é pq não chegou no limite!
	  tmp(219) := LDA  & "10" & '0' & x"37";
	  tmp(220) := STA  & "10" & '1' & x"23";
	  tmp(221) := JMP  & "01" & '0' & x"c2"; -- soma e volta para loop dos botoes

    tmp(222) := LDA  & "10" & '0' & x"00"; 
    tmp(223) := STA  & "10" & '0' & x"36";
    tmp(224) := STA  & "10" & '1' & x"22"; -- manda 0 p HEX2
		tmp(225) := STA  & "10" & '0' & X"37";
		tmp(226) := STA  & "10" & '1' & x"23"; -- manda 0 para HEX3
    tmp(227) := JMP  & "01" & '0' & x"c2"; -- volta para o loop

   -- configuração dos horas
-- verifica se key1 foi apertado e se foi apertado vai para a configuração dos minutos
    tmp(228) := STA & "01" & '1' & x"fe"; -- limpa a leitura do KEY1(endereço=510)
	 	tmp(229) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	 	tmp(230) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
		tmp(231) := JEQ  & "01" & '0' & x"e9"; -- se for igual, ou seja, key1 não foi apertado, pulo para linha aaaaa para verificar se KEY2 foi apertado(linha233)
	  tmp(232) := JMP  & "01" & '0' & x"1f";-- se apertou volta la para cima!!! --
    tmp(233) := LDA  & "01" & '1' & x"62"; -- 352=x160 (KEY2) VERIFICA SE APERTOU OU NÃO
	  tmp(234) := CEQ  & "01" & '0' & x"00"; -- compara key2 com mem[0](que esta guardando 0)
	  tmp(235) := JEQ  & "01" & '0' & x"e5"; -- se for igual, ou seja, key2 não foi apertado, pulo para linha 229
	  tmp(236) := JMP  & "01" & '0' & x"ed"; -- se apertou o key2, aqui soma 1 nos segundos(subrotina dos segundo)(linha202)

    
-- SUBTORINA QUE SOMA AS HORAS


 	-- SUBROTINA DE COLOCAR VALORES NO DISPLAY
	  tmp(237) := STA  & "01" & '1' & x"fd"; -- Limpa aperto de KEY2
    tmp(238) := LDA  & "10" & '0' & x"38"; -- pega HEX4 
	  tmp(239) := SOMA & "10" & '0' & x"01";
	  tmp(240) := STA  & "10" & '0' & X"38";
	  tmp(241) := CEQ  & "10" & '0' & x"32";
	  tmp(242) := JEQ  & "10" & '0' & x"f6"; -- passou do limite vai para linha 246
	  -- se não pular é pq não chegou no limite!
    tmp(243) := LDA  & "10" & '0' & x"38";
	  tmp(244) := STA  & "10" & '1' & x"24";
	  tmp(245) := JMP  & "01" & '0' & x"e5"; -- SOMA 1 E VOLTA PARA LOOP 229
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX4 PASSOU DO LIMITE
	  tmp(246) := LDA  & "10" & '0' & x"00";
	  tmp(247) := STA  & "10" & '0' & x"38";
	  tmp(248) := STA  & "10" & '1' & x"24";
    tmp(249) := LDA  & "10" & '0' & X"39"; -- pega valor de HEX 5 
		tmp(250) := CEQ & "10" & '0' & x"01"; -- COMPARA VALOR DO hex5 com 1 se for 1 tem que mudar o limiter de do HEX4 (x01)
    tmp(251) := JEQ & "00" & '0' & x"fd"; --- 253 e configura o novo limite de hex4
    tmp(252) := JMP & "00" & '1' & x"01"; --- 257 não precisa configurar

    tmp(253) := LDI & "00" & '0' & x"04"; -- se no x40 tiver 1 só pode incrementar até o 3 então o limite tem que mudar para 4
    tmp(254) := STA  & "00" & '0' & x"32";
    tmp(255) := NOP  & "01" & '0' & x"00"; 
    tmp(256) := NOP  & "01" & '0' & x"00"; 

    ---- verifica quantas vezes já passou do limite
    ---- so pode passar quando for 0 e 1, quando for 2 o limite é 4 e não mais 10
	  tmp(257) := LDA  & "10" & '0' & x"39";
	  tmp(258) := SOMA & "10" & '0' & x"01";
	  tmp(259) := STA  & "10" & '0' & X"39";
	  tmp(260) := CEQ  & "10" & '0' & x"33";
	  tmp(261) := JEQ  & "10" & '1' & x"09"; --passou do limite o HEX5 vai para 265
	 
	  -- se Não pular é pq não chegou no limite!
    tmp(262) := LDA  & "10" & '0' & x"39";
	  tmp(263) := STA  & "10" & '1' & x"25";
	  tmp(264) := JMP  & "01" & '0' & x"e5"; 

    tmp(265) := LDA  & "10" & '0' & x"00"; 
    tmp(266) := STA  & "10" & '0' & x"38";
    tmp(267) := STA  & "10" & '1' & x"24"; -- manda 0 p HEX4
		tmp(268) := STA  & "10" & '0' & X"39";
		tmp(269) := STA  & "10" & '1' & x"25"; -- manda 0 para HEX5
    tmp(270) := LDI & "00" & '0' & x"0a"; -- se no x40 tiver 1 só pode incrementar até o 3 então o limite tem que mudar para 4
    tmp(271) := STA  & "00" & '0' & x"32";
    tmp(272) := JMP  & "01" & '0' & x"e5"; -- volta para o loop			  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;