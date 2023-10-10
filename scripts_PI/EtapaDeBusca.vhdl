library ieee;
use ieee.std_logic_1164.all;

entity EtapaDeBusca is (
    generic (
        larguraDados : natural := 32
    );
    port (
        CLK : in std_logic;
        selecaoPC : in std_logic;
        enderecoDesvio : in std_logic_vector(larguraDados-1 downto 0);
        enderecoMemoria : out std_logic_vector(larguraDados-1 downto 0);
    );
)
end entity;


architecture arquitetura of EtapaDeBusca is

    signal proxPC : std_logic_vector(larguraDados-1 downto 0);
    signal saidaPC : std_logic_vector(larguraDados-1 downto 0);
    signal saidaSomaConstante : std_logic_vector(larguraDados-1 downto 0);
    constant constanteSoma : std_logic_vector(larguraDados-1 downto 0) := x"00000001";

begin

    MUX : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados) port map (
        entradaA_MUX => enderecoDesvio,
        entradaB_MUX => saidaSomaConstante,
        seletor_MUX => selecaoPC,
        saida_MUX => proxPC
    );

    PC : entity work.registradorGenerico generic map (larguraDados => larguraDados) port map (
        DIN => proxPC,
        DOUT => saidaPC,
        ENABLE => '1',
        CLK => CLK
        RST => '0'
    );

    incrementaPC : entity work.ULASomaSub generic map (larguraDados => larguraDados) port map (
        entradaA => saidaPC,
        entradaB => constanteSoma,
        saida => saidaSomaConstante,
        operacao => '1'
    );

    enderecoMemoria <= saidaPC;

end architecture;