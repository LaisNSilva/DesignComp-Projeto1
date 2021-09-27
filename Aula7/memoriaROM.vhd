library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (8 DOWNTO 0);
          Dado : out std_logic_vector (12 DOWNTO 0)
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
		  tmp(0)  := LDI  & '0' & x"01"; -- carrega 1 no acumulador 
        tmp(1)  := STA  & '0' & x"00"; -- carrega esse 1 no mem[0]
        tmp(2)  := SOMA & '0' & x"00"; -- acumulador = 1 + mem[0] = 2
		  
		-- TESTE DE SUB
--		  tmp(0)  := LDI  & '0' & x"01"; -- carrega 1 no acumulador 
--        tmp(1)  := STA  & '0' & x"00"; -- carrega esse 1 no mem[0]
--        tmp(2)  := LDI  & '0' & x"03"; -- carrega 1 no acumulador
--		  tmp(3)  := SUB  & '0' & x"00"; -- subtrai 1 de 3
--       
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
--        tmp(2)  := SOMA & '0' & x"00"; -- soma, então mem[0]=2
--        tmp(3)  := STA  & '1' & x"20"; -- armazena o valor do acumulador em HEX0 (288)
--        tmp(4)  := SOMA & '0' & x"00";
--        tmp(5)  := STA  & '1' & x"21";
--        tmp(6)  := SOMA & '0' & x"00";
--        tmp(7)  := STA  & '1' & x"22"; 
--        tmp(8)  := SOMA & '0' & x"00";
--        tmp(9)  := STA  & '1' & x"23";
--        tmp(10) := SOMA & '0' & x"00";
--        tmp(11) := STA  & '1' & x"24"; 
--        tmp(12) := SOMA & '0' & x"00";
--        tmp(13) := STA  & '1' & x"25";
--        tmp(14) := JMP  & '0' & x"02";
		
		
		
	

	 
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;