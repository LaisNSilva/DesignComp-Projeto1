library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DecodInstrucao is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(3 downto 0);
			Saida: out STD_LOGIC_VECTOR(5 downto 0));
end entity;

architecture arch of DecodInstrucao is
begin

	with CodigoBinario (3 downto 0) select
		Saida <= "000000" when "0000", 
				"011010" when "0001", 
				"010110" when "0010", 
				"010010" when "0011", 
				"111000" when "0100",
				"001001" when "0101",
				"000000" when others;
	
end architecture;