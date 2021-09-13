library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlop is
    generic (
        larguraDados : natural := 8
    );
    port (DIN : in std_logic;
       DOUT : out std_logic;
       ENABLE : in std_logic;
		 RST : in std_logic;
       CLK: in std_logic
        );
end entity;

architecture comportamento of FlipFlop is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            DOUT <= '0';    -- Código reconfigurável.
        else
			-- At a clock edge, if asynchronous signals have not taken priority,
			-- respond to the appropriate synchronous signal.
			-- Check for synchronous reset, then synchronous load.
			-- If none of these takes precedence, update the register output
			-- to be the register input.
			if (rising_edge(CLK)) then
				 if (ENABLE = '1') then
							DOUT <= DIN;
				 end if;
			end if;
        end if;
    end process;
end architecture;




--library ieee;
--use ieee.std_logic_1164.all;
--
--	entity FlipFlop is
--		port(
--			clock:  in std_logic;
--			d:      in std_logic;
--			habilita: in std_logic;
--			q:     out std_logic:='0'
--		);
--	end entity;
--
--architecture arch of FlipFlop is
--  -- Aqui declaramos sinais (fios auxiliares)
--  -- e componentes (outros módulos) que serao
--  -- utilizados nesse modulo.
--
--begin
--
--	process(clock)
--	begin
--		if (rising_edge(clock)) then
--			if (habilita = '1') then
--				q <= d;
--			end if;
--		end if;
--	
--end process;
--
--end architecture;