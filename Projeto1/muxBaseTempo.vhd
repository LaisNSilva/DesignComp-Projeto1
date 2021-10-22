library ieee;
use ieee.std_logic_1164.all;

entity muxBaseTempo is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entradaA_MUX, entradaB_MUX : in natural;
    seletor_MUX : in std_logic;
    saida_MUX : out natural
  );
end entity;

architecture comportamento of muxBaseTempo is
  begin
    saida_MUX <= entradaB_MUX when (seletor_MUX = '1') else entradaA_MUX;
end architecture;