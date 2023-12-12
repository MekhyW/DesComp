library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity fullAdder is
    port
    (
        C_in, a, b: in  std_logic;
        C_out, soma: out std_logic
    );
end entity;

architecture comportamento of fullAdder is
    begin
        soma <= (C_in xor (a xor b));
		  C_out <= ((C_in and (a xor b)) or (a and b));
end architecture;