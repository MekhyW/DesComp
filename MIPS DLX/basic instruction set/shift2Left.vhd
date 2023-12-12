library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity shift2Left is
	 generic ( larguraDados : natural := 32);
    port
    (
        entrada: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of shift2Left is
    begin
        saida(1 downto 0) <= "00";
		  saida((larguraDados-1) downto 2) <= entrada((larguraDados-3) downto 0);
end architecture;