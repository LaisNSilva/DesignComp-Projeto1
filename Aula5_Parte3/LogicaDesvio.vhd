library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicaDesvio is
	port (
			JMP : in std_logic;
			JEQ: in std_logic;
			Flag: in std_logic;
			RET : in std_logic;
			JSR : in std_logic;
			Saida: out std_logic_vector(1 downto 0)
			);
end entity;

architecture arch of LogicaDesvio is
begin

	

		Saida <= "01" when (JMP = '1') else 
				"01" when (JEQ = '1' and Flag = '1') else
				"01" when (JSR = '1') else
				"10" when (RET = '1') else
				"00";
	
end architecture;