library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Banco_Registradores is
    generic (
        larguraDados : natural := 8
    );
    port (
	    ENDERECO_REG : in std_logic_vector(1 downto 0);
       ENTRADA : in std_logic_vector(larguraDados-1 downto 0);
       HABILITA : in std_logic;
		 RST : in std_logic;
       CLK: in std_logic;
		 SAIDA : out std_logic_vector(larguraDados-1 downto 0)
        );
end entity;

architecture comportamento of Banco_Registradores is

	signal Entrada_reg0 : std_logic_vector (larguraDados-1 downto 0);
	signal Habilita_reg0: std_logic;
	signal Saida_reg0 : std_logic_vector (larguraDados-1 downto 0);
	signal Entrada_reg1 : std_logic_vector (larguraDados-1 downto 0);
	signal Habilita_reg1: std_logic;
	signal Saida_reg1 : std_logic_vector (larguraDados-1 downto 0);
	signal Entrada_reg2 : std_logic_vector (larguraDados-1 downto 0);
	signal Habilita_reg2: std_logic;
	signal Saida_reg2 : std_logic_vector (larguraDados-1 downto 0);
	signal Entrada_reg3 : std_logic_vector (larguraDados-1 downto 0);
	signal Habilita_reg3: std_logic;
	signal Saida_reg3 : std_logic_vector (larguraDados-1 downto 0);
	
begin

Entrada_reg0 <= ENTRADA when ENDERECO_REG="00";
Entrada_reg1 <= ENTRADA when ENDERECO_REG="01";
Entrada_reg2 <= ENTRADA when ENDERECO_REG="10"; 
Entrada_reg3 <= ENTRADA when ENDERECO_REG="11";

Habilita_reg0 <= HABILITA when ENDERECO_REG="00";	  
Habilita_reg1 <= HABILITA when ENDERECO_REG="01";
Habilita_reg2 <= HABILITA when ENDERECO_REG="10";
Habilita_reg3 <= HABILITA when ENDERECO_REG="11";



REG_0 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg0, DOUT => Saida_reg0, ENABLE => Habilita_reg0 , RST => '0', CLK => CLK);
		  
REG_1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg1, DOUT => Saida_reg1, ENABLE => Habilita_reg1 , RST => '0', CLK => CLK); 
		  
REG_2 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg2, DOUT => Saida_reg2, ENABLE => Habilita_reg2 , RST => '0', CLK => CLK); 
		  
REG_3 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg3, DOUT => Saida_reg3, ENABLE => Habilita_reg3 , RST => '0', CLK => CLK); 
		  		  

with ENDERECO_REG (1 downto 0) select
		SAIDA <= Saida_reg0 when "00", 
				Saida_reg1 when "01", 
				Saida_reg2 when "10", 
				Saida_reg3 when others;

			
end architecture;