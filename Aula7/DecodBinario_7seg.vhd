library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecodBinario_7Seg is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 4
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of DecodBinario_7seg is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Inicializa os endereços: Falta preencher.
        tmp(0)  := "1000000";
        tmp(1)  := "0000000";
        tmp(2)  := "0000000";
        tmp(3)  := "0000000";
        tmp(4)  := "0000000";
        tmp(5)  := "0000000";
        tmp(6)  := "0000000";
        tmp(7)  := "0000000";
        tmp(8)  := "0000000";
        tmp(9)  := "0000000";
        tmp(10) := "0000000";
        tmp(11) := "0000000";
        tmp(12) := "0000000";
        tmp(13) := "0000000";
        tmp(14) := "0000000";
        tmp(15) := "0000000";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;