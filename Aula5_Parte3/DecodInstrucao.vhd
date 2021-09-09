library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DecodInstrucao is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(3 downto 0);
			Saida: out STD_LOGIC_VECTOR(12 downto 0));
end entity;

architecture arch of DecodInstrucao is
begin

	with CodigoBinario (3 downto 0) select
		Saida <= "0000000000000" when "0000", 
				"0000000110010" when "0001", 
				"0000000101010" when "0010", 
				"0000000100010" when "0011", 
				"0000001110000" when "0100",
				"0000000000001" when "0101",
				"0010000000000" when "0110",
				"0010010000000" when "0111",
				"0000000111110" when "1000",
				"1010100000000" when "1001",
				"0101000000000" when "1010",
				"0000000000000" when others;
	
end architecture;