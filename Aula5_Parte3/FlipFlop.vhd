library ieee;
use ieee.std_logic_1164.all;

	entity FlipFlop is
		port(
			clock:  in std_logic;
			d:      in std_logic;
			habilita: in std_logic;
			q:     out std_logic:='0'
		);
	end entity;

architecture arch of FlipFlop is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin

	process(clock)
	begin
		if (rising_edge(clock)) then
			if (habilita = '1') then
				q <= d;
			end if;
		end if;
	
end process;

end architecture;