library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(15 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant BNE : std_logic_vector(5 downto 0) := "000101";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant JAL : std_logic_vector(5 downto 0) := "000011";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant LUI : std_logic_vector(5 downto 0) := "001111";
  constant ORI : std_logic_vector(5 downto 0) := "001101";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  constant SLTI : std_logic_vector(5 downto 0) := "001010";
  constant LBU : std_logic_vector(5 downto 0) := "100100";
  constant SB : std_logic_vector(5 downto 0) := "101000";
  constant OP_FUNCT : std_logic_vector(5 downto 0) := "000000"; 

begin

saida <= "0000110010010000" when opcode = LW else
         "0000010010001000" when opcode = SW else
         "0000000011000000" when opcode = BEQ else
			"0000000010100000" when opcode = BNE else
			"0100000000000000" when opcode = JMP else
			"0110100100000000" when opcode = JAL else
			"1000000000000010" when (funct = "001000" and opcode = OP_FUNCT)	else
			"0001100000000010" when opcode = OP_FUNCT else
			"0000110000000000" when opcode = ADDI else
			"0000100110000000" when opcode = LUI else
			"0000110000000001" when opcode = ORI else
			"0000110000000001" when opcode = ANDI else
			"0000110000000000" when opcode = SLTI else
			"0000111000010000" when opcode = LBU else
			"0000010010001100" when opcode = SB else
         "0000000000000000";  -- NOP para os opcodes Indefinidos
			
end architecture;