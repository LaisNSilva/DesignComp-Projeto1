library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decod3x8 is
	port (
			ENTRADA : in STD_LOGIC_VECTOR(2 downto 0);
			S0 : out STD_LOGIC;
			S1 : out STD_LOGIC;
			S2 : out STD_LOGIC;
			S3 : out STD_LOGIC;
			S4 : out STD_LOGIC;
			S5 : out STD_LOGIC;
			S6 : out STD_LOGIC;
			S7 : out STD_LOGIC
	);
end entity;

architecture arch of Decod3x8 is
begin

	S0 <= '1' when ENTRADA = "000" else '0';
	S1 <= '1' when ENTRADA = "001" else '0';
	S2 <= '1' when ENTRADA = "010" else '0';
	S3 <= '1' when ENTRADA = "011" else '0';
	S4 <= '1' when ENTRADA = "100" else '0';
	S5 <= '1' when ENTRADA = "101" else '0';
	S6 <= '1' when ENTRADA = "110" else '0';
	S7 <= '1' when ENTRADA = "111" else '0';
			
end architecture;