library ieee;
use ieee.std_logic_1164.all;

entity mux8x1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entradaA_MUX, entradaB_MUX, entradaC_MUX, entradaD_MUX, entradaE_MUX, entradaF_MUX, entradaG_MUX, entradaH_MUX 
	 : in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic_vector(2 downto 0);
    saida_MUX : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of mux8x1 is
  begin
    saida_MUX <= entradaA_MUX when (seletor_MUX = "000") else 
	 entradaB_MUX when (seletor_MUX = "001") else
	 entradaC_MUX when (seletor_MUX = "010") else
	 entradaD_MUX when (seletor_MUX = "011") else
	 entradaE_MUX when (seletor_MUX = "100") else
	 entradaF_MUX when (seletor_MUX = "101") else
	 entradaG_MUX when (seletor_MUX = "110") else
	 entradaH_MUX;
end architecture;