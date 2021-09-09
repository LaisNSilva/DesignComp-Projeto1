library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicaDesvio is
	port (
			SelMuxPC : in std_logic_vector(1 downto 0);
			JEQ: in std_logic;
			Flag: in std_logic;
			RET : in std_logic;
			JSR : in std_logic;
			Saida: out std_logic_vector(1 downto 0)
			);
end entity;

architecture arch of LogicaDesvio is
begin

	

		Saida <= "01" when (SelMuxPC = "01") else 
				"01" when (JEQ = '1') else
				"01" when (Flag = '1') else
				"01" when (JSR = '1') else
				"10" when (RET = '1') else
				"00";
	
end architecture;