library ieee;
use ieee.std_logic_1164.all;

entity SomadorRecursivoSimple is (
    generic (
        larguraDados : natural := 32
    );
    port (
        CLK : in std_logic;
        Habilita_A : in std_logic;
        Op : in std_logic;
        Habilita_B : in std_logic;
        Entrada : in std_logic_vector(larguraDados-1 downto 0);
        Saida : out std_logic_vector(larguraDados-1 downto 0)
    );
)
end entity;


architecture rtl of SomadorRecursivoSimple is

    signal saidaRegA, saidaRegB : std_logic_vector(larguraDados-1 downto 0);
    signal saidaULA : std_logic_vector(larguraDados-1 downto 0);

begin

    regA : entity work.registradorGenerico generic map (larguraDados => larguraDados) port map (
        DIN => Entrada,
        DOUT => saidaRegA,
        ENABLE => Habilita_A,
        CLK => CLK
        RST => '0'
    );

    regB : entity work.registradorGenerico generic map (larguraDados => larguraDados) port map (
        DIN => saidaULA,
        DOUT => saidaRegB,
        ENABLE => Habilita_B,
        CLK => CLK
        RST => '0'
    );

    ULA entity work.ULASomaSub generic map (larguraDados => larguraDados) port map (
        entradaA => saidaRegB,
        entradaB => saidaRegA,
        saida => saidaULA,
        operacao => Op
    );

    Saida <= saidaRegB;

end architecture;