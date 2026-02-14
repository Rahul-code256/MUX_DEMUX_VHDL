library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1to2 is
    Port (
        d : in STD_LOGIC;
        sel : in STD_LOGIC;
        y0 : out STD_LOGIC;
        y1 : out STD_LOGIC
    );
end demux1to2;

architecture Behavioral of demux1to2 is
begin
    y0 <= d when sel = '0' else '0';
    y1 <= d when sel = '1' else '0';
end Behavioral;
