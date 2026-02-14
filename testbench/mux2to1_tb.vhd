library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1_tb is
end mux2to1_tb;

architecture Behavioral of mux2to1_tb is
    signal a, b, sel, y : STD_LOGIC;
begin
    uut: entity work.mux2to1
        port map(a => a, b => b, sel => sel, y => y);

    process
    begin
        a <= '0'; b <= '0'; sel <= '0'; wait for 10 ns;
        a <= '1'; b <= '0'; sel <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; sel <= '1'; wait for 10 ns;
        a <= '1'; b <= '1'; sel <= '1'; wait for 10 ns;
        wait;
    end process;
end Behavioral;
