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
  constant BNE : std_logic_vector(5 downto 0) := "000101";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant LUI : std_logic_vector(5 downto 0) := "001111";
  constant ORI : std_logic_vector(5 downto 0) := "001101";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  constant SLTI : std_logic_vector(5 downto 0) := "001010";
  constant LBU : std_logic_vector(5 downto 0) := "100100";
  constant SB : std_logic_vector(5 downto 0) := "101000";

  begin
saida <= "0010" when opcode = LW else
         "0010" when opcode = SW else
         "0110" when opcode = BEQ else
			"0110" when opcode = BNE else
			"0010" when opcode = ADDI else
			"0000" when opcode = LUI else
			"0001" when opcode = ORI else
			"0000" when opcode = ANDI else
			"0111" when opcode = SLTI else
			"0010" when opcode = LBU else
			"0010" when opcode = SB else
         "0000";  -- NOP para os opcodes Indefinidos
end architecture;