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




REG_0 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg0, DOUT => Saida_reg0, ENABLE => Habilita_reg0 , RST => '0', CLK => CLK);
		  
REG_1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg1, DOUT => Saida_reg1, ENABLE => Habilita_reg1 , RST => '0', CLK => CLK); 
		  
REG_2 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg2, DOUT => Saida_reg2, ENABLE => Habilita_reg2 , RST => '0', CLK => CLK); 
		  
REG_3 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (DIN => Entrada_reg3, DOUT => Saida_reg3, ENABLE => Habilita_reg3 , RST => '0', CLK => CLK); 
		  
		  
		  (Entrada_reg0 <= ENTRADA, Habilita_reg0 <= HABILITA, SAIDA <= Saida_reg0) when ENDERECO_REG="00" else
		  (Entrada_reg1 <= ENTRADA, Habilita_reg1 <= HABILITA, SAIDA <= Saida_reg1) when ENDERECO_REG="01" else
		  (Entrada_reg2 <= ENTRADA, Habilita_reg2 <= HABILITA, SAIDA <= Saida_reg2) when ENDERECO_REG="10" else
		  (Entrada_reg3 <= ENTRADA, Habilita_reg3 <= HABILITA, SAIDA <= Saida_reg3) when ENDERECO_REG="11";
		 
		  
		  


    
end architecture;