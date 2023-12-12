library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in std_logic_vector(3 downto 0);
		zero : out std_logic;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      saida <= soma when (seletor(0) = '1') else 
					subtracao;
		zero <= not (saida(7) or saida(6) or saida(5) or saida(4) or saida(3) or saida(2) or saida(1) or saida(0));
end architecture;