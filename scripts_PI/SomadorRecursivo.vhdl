library ieee;
use ieee.std_logic_1164.all;

entity SomadorRecursivo is (
    generic (
        larguraDados : natural := 32
    );
    port (
        CLK : in std_logic;
        Habilita_A : in std_logic;
        Selec : in std_logic;
        Op : in std_logic;
        Habilita_B : in std_logic;
        Entrada : in std_logic_vector(larguraDados-1 downto 0);
        Saida : out std_logic_vector(larguraDados-1 downto 0)
    );
)
end entity;


architecture rtl of SomadorRecursivo is

    signal saidaRegA, saidaRegB : std_logic_vector(larguraDados-1 downto 0);
    signal saidaMUX : std_logic_vector(larguraDados-1 downto 0);
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

    MUX : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados) port map (
        entradaA_MUX => saidaRegB,
        entradaB_MUX => saidaRegA,
        seletor_MUX => Selec,
        saida_MUX => saidaMUX
    );

    ULA entity work.ULASomaSub generic map (larguraDados => larguraDados) port map (
        entradaA => saidaMUX,
        entradaB => saidaRegA,
        saida => saidaULA,
        operacao => Op
    );

    Saida <= saidaRegB;

end architecture;