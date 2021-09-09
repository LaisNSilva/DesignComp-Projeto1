library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

-- agora tem CEQ 11 

entity ULASomaSub is
    generic ( larguraDados : natural := 8);
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_0: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal CEQ : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		passa <= entradaB;
		
		CEQ <= "00000001" when (STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB)) = "00000000") else
		       "00000000";
		
      saida <= soma when (seletor = "01") else
					passa when (seletor = "10") else
					CEQ when (seletor = "11") else
				   subtracao;
end architecture;