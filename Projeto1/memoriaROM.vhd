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
	  
	  -- Manda zero para os displays
	  tmp(1)  := STA  & "01" & '1' & x"20";
	  tmp(2)  := STA  & "01" & '1' & x"21";
	  tmp(3)  := STA  & "01" & '1' & x"22";
	  tmp(4)  := STA  & "01" & '1' & x"23";
	  tmp(5)  := STA  & "01" & '1' & x"24";
	  tmp(6)  := STA  & "01" & '1' & x"25";
	  
	  -- Manda zero para os LEDS
	  tmp(7)  := STA  & "01" & '1' & x"00";
     tmp(8)  := STA  & "01" & '1' & x"01";
     --tmp(9)  := STA  & "01" & '1' & x"02";
	  
	  tmp(9)  := JMP  & "01" & '0' & x"6b";
	  
	  
	  
	  tmp(10)  := STA  & "01" & '0' & x"00"; -- guarda 0 no mem[0]
	  tmp(11)  := STA  & "01" & '0' & x"02"; -- 0 no mem[2] (contador)
	  tmp(12)  := LDI  & "01" & '0' & x"01"; -- manda 1 para o acumulador
	  tmp(13)  := STA  & "01" & '0' & x"01"; -- armazena 1 no mem[1] (constante 1)
	  tmp(14)  := NOP  & "01" & '0' & x"00";	-- 
	  tmp(15)  := LDA  & "01" & '1' & x"60"; -- 352=x160 (KEY0) VERIFICA SE APERTOU OU NÃO
	  tmp(16)  := CEQ  & "01" & '0' & x"00"; -- compara key0 com mem[0](que esta guardando 0)
	  tmp(17)  := JEQ  & "01" & '0' & x"19"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 19
	  tmp(18)  := JSR  & "01" & '0' & x"20"; -- se apertou o key0, vai para subrotina, pula para linha 32 
	  tmp(19) := NOP  & "01" & '0' & x"00"; -- 
	  tmp(20) := LDA  & "01" & '1' & x"61"; -- 353=x161 (KEY1) VERIFICA SE APERTOU OU NÃO
	  tmp(21) := CEQ  & "01" & '0' & x"00"; -- compara key1 com mem[0](que esta guardando 0)
	  tmp(22) := JEQ  & "01" & '0' & x"18"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 24
	  tmp(23) := JSR  & "01" & '0' & x"73";-- AINDA PENSAR EM QUAL SUBROTINA (VOLTAR AQUIIIIIIIIIIII)
	  tmp(24) := NOP  & "01" & '0' & x"00"; --
	  tmp(25) := LDA  & "01" & '1' & x"64"; -- 356=x164 (FPGA_RESET) VERIFICA SE APERTOU OU NÃO
	  tmp(26) := CEQ  & "01" & '0' & x"00"; -- compara FPGA_RESET com mem[0](que esta guardando 0)
	  tmp(27) := JEQ  & "01" & '0' & x"1d"; -- se for igual, ou seja, key0 não foi apertado, pulo para linha 29
	  tmp(28) := JSR  & "01" & '0' & x"73";-- AINDA PENSAR EM QUAL SUBROTINA  (VOLTAR AQUIIIIIIIIIIII)
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
	  
	  -- Apertou o key0 soma 1 no acumulador e muda os displays
	  tmp(51) := STA  & "01" & '1' & x"ff"; -- 511=x1ff, limpa a leitura no botão
	  tmp(52) := LDA  & "01" & '0' & x"02"; -- bota o valor do mem[2] no acumulador
	  tmp(53) := SOMA & "01" & '0' & x"01"; -- Soma a constate 1 que esta no MEM[1] com o valor que foi para o acumulador
	  tmp(54) := STA  & "01" & '0' & x"02"; -- guarda o valor da soma em mem[2] (contador)
	  tmp(55) := STA  & "01" & '1' & x"02"; -- 258=x102 armazena o valor do bit0 do acumulador no LDR9
	  tmp(56) := JMP  & "01" & '0' & x"3b"; -- Vai para subrotina de colocar os valores no display(na linha40)
	  tmp(57) := RET  & "01" & '0' & x"00"; -- Retorna da subrotina (ou seja, vai para linha 10)
	  tmp(58) := NOP  & "01" & '0' & x"00"; 
	  -- SUBROTINA DE COLOCAR VALORES NO DISPLAY
	  
	  tmp(59) := LDA  & "10" & '1' & x"20"; -- Passa o valor atual de HEX0 para R2
	  tmp(60) := SOMA & "10" & '0' & x"01"; -- soma 1
	  tmp(61) := CEQ  & "10" & '0' & x"2e"; -- Compara com o limite de HEX0 (que ta guardado em mem[46]) com R2
	  tmp(62) := JEQ  & "10" & '0' & x"41"; -- Se for igual vai pular para a linha que mexe na dezena 
	  -- se não pular é pq não chegou no limite!
	  tmp(63) := STA  & "10" & '1' & x"20";
	  tmp(64) := JMP  & "01" & '0' & x"39"; -- Somou volta para o ret e fica verificando verificando de novo o KEY0
	 
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX0 PASSOU DO LIMITE
	  tmp(65) := LDA  & "10" & '0' & x"00"; -- Salva 0 na R2
	  tmp(66) := STA  & "10" & '1' & x"20"; -- Passa 2 para HEX0
	  tmp(67) := LDA  & "10" & '1' & x"21"; -- valor que ta em HEX1 para R2
	  tmp(68) := SOMA & "10" & '0' & x"01";
	  tmp(69) := CEQ  & "10" & '0' & x"2f";
	  tmp(70) := JEQ  & "10" & '0' & x"49"; -- Vai para a linha 73
	  -- se não pular é pq não chegou no limite!
	  tmp(71) := STA  & "10" & '1' & x"21";
	  tmp(72) := JMP  & "01" & '0' & x"39";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX1 PASSOU DO LIMITE
	  tmp(73) := LDA  & "10" & '0' & x"00";
	  tmp(74) := STA  & "10" & '1' & x"21"; -- bota 0 no HEX0
	  tmp(75) := LDA  & "10" & '1' & x"22";
	  tmp(76) := SOMA & "10" & '0' & x"01";
	  tmp(77) := CEQ  & "10" & '0' & x"30";
	  tmp(78) := JEQ  & "10" & '0' & x"51"; --81
	   -- se não pular é pq não chegou no limite!
	  tmp(79) := STA  & "10" & '1' & x"22";
	  tmp(80) := JMP  & "01" & '0' & x"39";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX2 PASSOU DO LIMITE
	  tmp(81) := LDA  & "10" & '0' & x"00";
	  tmp(82) := STA  & "10" & '1' & x"22"; -- bota 0 HEX2
	  tmp(83) := LDA  & "10" & '1' & x"23";
	  tmp(84) := SOMA & "10" & '0' & x"01";
	  tmp(85) := CEQ  & "10" & '0' & x"31";
	  tmp(86) := JEQ  & "10" & '0' & x"59"; --89
	  -- se não pular é pq não chegou no limite!
	  tmp(87) := STA  & "10" & '1' & x"23";
	  tmp(88) := JMP  & "01" & '0' & x"39";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX3 PASSOU DO LIMITE
	  tmp(89) := LDA  & "10" & '0' & x"00";
	  tmp(90) := STA  & "10" & '1' & x"23";
	  tmp(91) := LDA  & "10" & '1' & x"24";
	  tmp(92) := SOMA & "10" & '0' & x"01";
	  tmp(93) := CEQ  & "10" & '0' & x"32";
	  tmp(94) := JEQ  & "10" & '0' & x"61"; -- 97
	  -- se não pular é pq não chegou no limite!
	  tmp(95) := STA  & "10" & '1' & x"24";
	  tmp(96) := JMP  & "01" & '0' & x"39";
	  
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX4 PASSOU DO LIMITE
	  tmp(97) := LDA  & "10" & '0' & x"00";
	  tmp(98) := STA  & "10" & '1' & x"24";
	  tmp(99) := LDA  & "10" & '1' & x"25";
	  tmp(100) := SOMA & "10" & '0' & x"01";
	  tmp(101) := CEQ  & "10" & '0' & x"33";
	  tmp(102) := JEQ  & "10" & '0' & x"69"; --105
	  -- se não pular é pq não chegou no limite!
	  tmp(103) := STA  & "10" & '1' & x"25";
	  tmp(104) := JMP  & "01" & '0' & x"39";
	 
	  ---- SÓ FAZ ESSA PARTE DE BAIXO DE HEX5 PASSOU DO LIMITE
	  ---- OU SEJA, LIMITE MÁXIMO
	  --- VAMOS ACENDER O LED 8
	  tmp(105) := LDA  & "10" & '0' & x"01"; -- para 1 o R2
	  tmp(106) := STA  & "10" & '1' & x"01"; -- ACENDE O LED 8
	  
	  tmp(107) := LDI  & "11" & '0' & x"09"; -- 9 PARA O REG 3
	  tmp(108) := STA  & "11" & '0' & x"2e"; --46
	  tmp(109) := STA  & "11" & '0' & x"2f"; -- 47
	  tmp(110) := STA  & "11" & '0' & x"30"; --48
	  tmp(111) := STA  & "11" & '0' & x"31"; --49
	  tmp(112) := STA  & "11" & '0' & x"32"; -- 50
	  tmp(113) := STA  & "11" & '0' & x"33"; -- 51
	  tmp(114) := JMP  & "00" & '0' & x"0a"
	  tmp(115) := NOP  & "01" & '0' & x"00";
	  
	  
	  
	  
		
	

	 
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;