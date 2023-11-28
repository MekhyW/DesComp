library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity ula is
    port
    (
        a, b: in  std_logic_vector(31 downto 0);
        ULActrl: in std_logic_vector(3 downto 0);
		  resultado: out std_logic_vector(31 downto 0);
		  zero: out std_logic 
    );
end entity;

architecture comportamento of ula is

signal c_out : std_logic_vector(31 downto 0);

signal overflow_slt : std_logic;


begin

ula_0: entity work.ula_1bit port map(
		 slt => overflow_slt,
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(0),
		 b => b(0),
		 sel => ULActrl(1 downto 0),
		 c_in => ULActrl(2),
		 c_out => c_out(0),
		 resultado => resultado(0)
);

ula_1: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(1),
		 b => b(1),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(0),
		 c_out => c_out(1),
		 resultado => resultado(1)
);

ula_2: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(2),
		 b => b(2),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(1),
		 c_out => c_out(2),
		 resultado => resultado(2)
);

ula_3: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(3),
		 b => b(3),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(2),
		 c_out => c_out(3),
		 resultado => resultado(3)
);

ula_4: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(4),
		 b => b(4),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(3),
		 c_out => c_out(4),
		 resultado => resultado(4)
);

ula_5: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(5),
		 b => b(5),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(4),
		 c_out => c_out(5),
		 resultado => resultado(5)
);
 
ula_6: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(6),
		 b => b(6),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(5),
		 c_out => c_out(6),
		 resultado => resultado(6)
);

ula_7: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(7),
		 b => b(7),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(6),
		 c_out => c_out(7),
		 resultado => resultado(7)
);

ula_8: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(8),
		 b => b(8),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(7),
		 c_out => c_out(8),
		 resultado => resultado(8)
);

ula_9: entity work.ula_1bit port map(
		 slt => '0',
		 inverte_a => ULActrl(3),
		 inverte_b => ULActrl(2),
		 a => a(9),
		 b => b(9),
		 sel => ULActrl(1 downto 0),
		 c_in => c_out(8),
		 c_out => c_out(9),
		 resultado => resultado(9)
);

ula_10: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(10),
		  b => b(10),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(9),
		  c_out => c_out(10),
		  resultado => resultado(10)
);

ula_11: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(11),
		  b => b(11),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(10),
		  c_out => c_out(11),
		  resultado => resultado(11)
);

ula_12: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(12),
		  b => b(12),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(11),
		  c_out => c_out(12),
		  resultado => resultado(12)
);

ula_13: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(13),
		  b => b(13),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(12),
		  c_out => c_out(13),
		  resultado => resultado(13)
);

ula_14: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(14),
		  b => b(14),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(13),
		  c_out => c_out(14),
		  resultado => resultado(14)
);

ula_15: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(15),
		  b => b(15),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(14),
		  c_out => c_out(15),
		  resultado => resultado(15)
);

ula_16: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(16),
		  b => b(16),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(15),
		  c_out => c_out(16),
		  resultado => resultado(16)
);

ula_17: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(17),
		  b => b(17),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(16),
		  c_out => c_out(17),
		  resultado => resultado(17)
);

ula_18: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(18),
		  b => b(18),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(17),
		  c_out => c_out(18),
		  resultado => resultado(18)
);

ula_19: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(19),
		  b => b(19),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(18),
		  c_out => c_out(19),
		  resultado => resultado(19)
);

ula_20: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(20),
		  b => b(20),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(19),
		  c_out => c_out(20),
		  resultado => resultado(20)
);

ula_21: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(21),
		  b => b(21),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(20),
		  c_out => c_out(21),
		  resultado => resultado(21)
);

ula_22: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(22),
		  b => b(22),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(21),
		  c_out => c_out(22),
		  resultado => resultado(22)
);

ula_23: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(23),
		  b => b(23),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(22),
		  c_out => c_out(23),
		  resultado => resultado(23)
);

ula_24: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(24),
		  b => b(24),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(23),
		  c_out => c_out(24),
		  resultado => resultado(24)
);

ula_25: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(25),
		  b => b(25),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(24),
		  c_out => c_out(25),
		  resultado => resultado(25)
);

ula_26: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(26),
		  b => b(26),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(25),
		  c_out => c_out(26),
		  resultado => resultado(26)
);

ula_27: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(27),
		  b => b(27),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(26),
		  c_out => c_out(27),
		  resultado => resultado(27)
);

ula_28: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(28),
		  b => b(28),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(27),
		  c_out => c_out(28),
		  resultado => resultado(28)
);

ula_29: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(29),
		  b => b(29),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(28),
		  c_out => c_out(29),
		  resultado => resultado(29)
);

ula_30: entity work.ula_1bit port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  a => a(30),
		  b => b(30),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(29),
		  c_out => c_out(30),
		  resultado => resultado(30)
);

ula_31: entity work.ula_1bit_msb port map(
		  slt => '0',
		  inverte_a => ULActrl(3),
		  inverte_b => ULActrl(2),
		  overflow_slt => overflow_slt,
		  a => a(31),
		  b => b(31),
		  sel => ULActrl(1 downto 0),
		  c_in => c_out(30),
		  c_out => c_out(31),
		  resultado => resultado(31)
);

zero <= '1' when resultado = "00000000000000000000000000000000" else
		  '0';
   
end architecture;