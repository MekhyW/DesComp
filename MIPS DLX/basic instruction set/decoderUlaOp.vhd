library ieee;
use ieee.std_logic_1164.all;

entity decoderUlaOp is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderUlaOp is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";

  begin
saida <= "0010" when opcode = LW else
         "0010" when opcode = SW else
         "0110" when opcode = BEQ else
         "0000";  -- NOP para os opcodes Indefinidos
end architecture;