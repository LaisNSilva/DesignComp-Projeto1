library IEEE;
use ieee.std_logic_1164.all;

entity DecodBinario_7Seg is
    port
    (
        -- Input ports
        dadoHex : in  std_logic_vector(3 downto 0);
        apaga   : in  std_logic := '0';
        negativo : in  std_logic := '0';
        overFlow : in  std_logic := '0';
        -- Output ports
        saida7seg : out std_logic_vector(6 downto 0)  -- := (others => '1')
    );
end entity;

architecture comportamento of DecodBinario_7Seg is
   --
   --       0
   --      ---
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---
   --     |   |
   --    4|   |2
   --     |   |
   --      ---
   --       3
   --
    signal rascSaida7seg: std_logic_vector(6 downto 0);
begin
    rascSaida7seg <=    "1000000" when dadoHex="0000" else ---0
                            "1111001" when dadoHex="0001" else ---1
                            "0100100" when dadoHex="0010" else ---2
                            "0110000" when dadoHex="0011" else ---3
                            "0011001" when dadoHex="0100" else ---4
                            "0010010" when dadoHex="0101" else ---5
                            "0000010" when dadoHex="0110" else ---6
                            "1111000" when dadoHex="0111" else ---7
                            "0000000" when dadoHex="1000" else ---8
                            "0010000" when dadoHex="1001" else ---9
                            "0001000" when dadoHex="1010" else ---A
                            "0000011" when dadoHex="1011" else ---B
                            "1000110" when dadoHex="1100" else ---C
                            "0100001" when dadoHex="1101" else ---D
                            "0000110" when dadoHex="1110" else ---E
                            "0001110" when dadoHex="1111" else ---F
                            "1111111"; -- Apaga todos segmentos.

    saida7seg <=     "1100010" when (overFlow='1') else
                            "1111111" when (apaga='1' and negativo='0') else
                            "0111111" when (apaga='0' and negativo='1') else
                            rascSaida7seg;
end architecture;








--library IEEE;
--use IEEE.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity DecodBinario_7Seg is
--   generic (
--          dataWidth: natural := 8;
--          addrWidth: natural := 4
--    );
--   port (
--          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
--          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
--    );
--end entity;
--
--architecture assincrona of DecodBinario_7seg is
--
--  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);
--
--  function initMemory
--        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
--  begin
--      -- Inicializa os endereços: Falta preencher.
--        tmp(0)  := "1000000";
--        tmp(1)  := "0000000";
--        tmp(2)  := "0000000";
--        tmp(3)  := "0000000";
--        tmp(4)  := "0000000";
--        tmp(5)  := "0000000";
--        tmp(6)  := "0000000";
--        tmp(7)  := "0000000";
--        tmp(8)  := "0000000";
--        tmp(9)  := "0000000";
--        tmp(10) := "0000000";
--        tmp(11) := "0000000";
--        tmp(12) := "0000000";
--        tmp(13) := "0000000";
--        tmp(14) := "0000000";
--        tmp(15) := "0000000";
--        return tmp;
--    end initMemory;
--
--    signal memROM : blocoMemoria := initMemory;
--
--begin
--    Dado <= memROM (to_integer(unsigned(Endereco)));
--end architecture;