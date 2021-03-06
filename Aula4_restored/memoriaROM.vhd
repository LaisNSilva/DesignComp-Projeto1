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
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
      --                 CTRL   Prox Estado
	
        tmp(0)  := NOP & '0' & x"00";
        tmp(1)  := LDI & '0' & x"03";   -- Desta posicao para baixo, é necessário acertar o CTRL
        tmp(2)  := STA & '1' & x"00";
        tmp(3)  := SOMA & '1' & x"00";
        tmp(4)  := SOMA & '1' & x"00";
        tmp(5)  := STA & '1' & x"00";
        tmp(6)  := LDI & '0' & x"04";
        tmp(7)  := STA & '1' & x"0F";
        tmp(8)  := LDA & '1' & x"00";
        tmp(9)  := SUB & '1' & x"0F";
        tmp(10) := STA & '1' & x"00";
--        tmp(11) := "000000000" & x"0";
--        tmp(12) := "000000000" & x"0";
--        tmp(13) := "000000000" & x"0";
--        tmp(14) := "000000000" & x"0";
--        tmp(15) := "000000000" & x"0";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;