library ieee;
use ieee.std_logic_1164.all;

entity decoderUlaFunct is
  port ( funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderUlaFunct is

  constant op_and  : std_logic_vector(5 downto 0) := "100100";
  constant op_or  : std_logic_vector(5 downto 0) := "100101";
  constant op_add : std_logic_vector(5 downto 0) := "100000";
  constant op_sub : std_logic_vector(5 downto 0) := "100010";
  constant op_slt : std_logic_vector(5 downto 0) := "101010";
  constant op_nor : std_logic_vector(5 downto 0) := "101001";
  constant op_jr : std_logic_vector(5 downto 0) := "001000";

  begin
saida <= "0000" when funct = op_and else
         "0001" when funct = op_or else
         "0010" when funct = op_add else
			"0110" when funct = op_sub else
			"0111" when funct = op_slt else
			"1100" when funct = op_nor else
			"0000" when funct = op_jr else
         "0000";  -- NOP para os opcodes Indefinidos
end architecture;