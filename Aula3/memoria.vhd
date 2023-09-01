library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 10
    );
   port (
          -- O fato da interface ser do tipo std_logic auxilía na simulação.
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;


architecture assincrona of memoria is
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        -- Inicializa todas as posições da memória com zero:
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços desejados. Os demais endereços conterão o valor zero:
        tmp(0) := x"66"; -- F
        tmp(1) := x"65"; -- E
        tmp(2) := x"6C"; -- L
        tmp(3) := x"69"; -- I
        tmp(4) := x"70"; -- P
        tmp(5) := x"65"; -- E
        tmp(6) := x"20"; -- (espaço)
        tmp(7) := x"63"; -- C
        tmp(8) := x"61"; -- A
        tmp(9) := x"74"; -- T
        tmp(10) := x"61"; -- A
        tmp(11) := x"70"; -- P
        tmp(12) := x"61"; -- A
        tmp(13) := x"6E"; -- N
        tmp(14) := x"6F"; -- O
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;