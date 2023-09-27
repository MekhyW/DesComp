library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlagIgual is
    generic (
        larguraDados : natural := 8
    );
    port (DIN : in std_logic_vector(larguraDados-1 downto 0);
       DOUT : out std_logic;
       ENABLE : in std_logic;
       CLK,RST : in std_logic
        );
end entity;

architecture comportamento of FlagIgual is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            DOUT <= '0';    -- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        DOUT <= NOT (DIN(7) OR DIN(6) OR DIN(5) OR DIN(4) OR DIN(3) OR DIN(2) OR DIN(1) OR DIN(0));
                end if;
            end if;
        end if;
    end process;
end architecture;