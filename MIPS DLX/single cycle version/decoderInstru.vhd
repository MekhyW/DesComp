library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant OP_FUNCT : std_logic_vector(5 downto 0) := "000000"; 

  begin
saida <= "001110100" when opcode = LW else
         "000110010" when opcode = SW else
         "000111000" when opcode = BEQ else
			"100000000" when opcode = JMP else
			"011000001" when opcode = OP_FUNCT else
         "000000000";  -- NOP para os opcodes Indefinidos
end architecture;