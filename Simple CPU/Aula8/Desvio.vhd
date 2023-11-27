library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Desvio is
    generic (
        larguraDados : natural := 1
    );
    port (
		 JMP : in std_logic;
		 RET : in std_logic;
		 JSR : in std_logic;
		 JEQ : in std_logic;
		 FlagIgual : in std_logic;
       SAIDA : out std_logic_vector (1 downto 0)
        );
end entity;

architecture comportamento of Desvio is
begin
	
	SAIDA <= "10" when RET else
				"01" when (JMP OR JSR OR (JEQ AND FlagIgual)) else
				"00";

end architecture;