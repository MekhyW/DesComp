library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity ula_1bit_msb is
    port
    (
        slt, inverte_a, inverte_b, a, b, c_in : in  std_logic;
		  sel : in std_logic_vector(1 downto 0);
        c_out, resultado, overflow_slt: out std_logic
    );
end entity;

architecture comportamento of ula_1bit_msb is

signal adder_result, muxA_OUT, muxB_OUT : std_logic;

begin


mux_inverte_b :  entity work.mux2x1
        port map( entradaA_MUX => b,
                 entradaB_MUX =>  not b,
                 seletor_MUX => inverte_b,
                 saida_MUX => muxB_OUT);
					  
					  
mux_inverte_a :  entity work.mux2x1
        port map( entradaA_MUX => a,
                 entradaB_MUX =>  not a,
                 seletor_MUX => inverte_a,
                 saida_MUX => muxA_OUT);
					 
adder : entity work.fullAdder port map(C_in => c_in, a => muxA_OUT, b => muxB_OUT, C_out => c_out, soma => adder_result); 
	 

mux_resultado : entity work.muxGenerico4x1 port map (
				  entradaA_MUX => muxA_OUT and muxB_OUT,
				  entradaB_MUX => muxA_OUT or muxB_OUT,
				  entradac_MUX => adder_result,
				  entradaD_MUX => slt,
				  seletor_MUX => sel,
				  saida_MUX => resultado);

overflow_slt <= (c_in xor c_out) xor adder_result; 
	 
end architecture;