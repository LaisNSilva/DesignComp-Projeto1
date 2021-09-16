ibrary IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decod3x8 is
	port (
			E1 : in  STD_LOGIC;
			E2 : in  STD_LOGIC;
			E0 : in  STD_LOGIC;
			S0 : out STD_LOGIC_VECTOR(4 downto 0));
			S1 : out STD_LOGIC_VECTOR(4 downto 0));
			S2 : out STD_LOGIC_VECTOR(4 downto 0));
			S3 : out STD_LOGIC_VECTOR(4 downto 0));
			S4 : out STD_LOGIC_VECTOR(4 downto 0));
			S5 : out STD_LOGIC_VECTOR(4 downto 0));
			S6 : out STD_LOGIC_VECTOR(4 downto 0));
			S7 : out STD_LOGIC_VECTOR(4 downto 0));
			S8 : out STD_LOGIC_VECTOR(4 downto 0))
			
end entity;

architecture arch of DecodInstrucao is
begin

	with CodigoBinario (3 downto 0) select
		
	
end architecture;