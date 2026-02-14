library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1to2_tb is
end demux1to2_tb;

architecture Behavioral of demux1to2_tb is
    signal d, sel, y0, y1 : STD_LOGIC;
begin
    uut: entity work.demux1to2
        port map(d => d, sel => sel, y0 => y0, y1 => y1);

    process
    begin
        d <= '0'; sel <= '0'; wait for 10 ns;
        d <= '1'; sel <= '0'; wait for 10 ns;
        d <= '1'; sel <= '1'; wait for 10 ns;
        d <= '0'; sel <= '1'; wait for 10 ns;
        wait;
    end process;
end Behavioral;
