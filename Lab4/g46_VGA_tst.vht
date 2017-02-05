library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g46_VGA_tst is
end g46_VGA_tst;

architecture g46_VGA_tst_arc of g46_VGA_tst is

signal clk      : std_logic := '1';
signal rst		 : std_logic;
signal BLANKING : std_logic;
signal ROW      :unsigned(9 downto 0); 
signal COLUMN   :unsigned(9 downto 0); 
signal HSYNC    :std_logic; 
signal VSYNC	 :std_logic;

component g46_VGA is 
	port( clock		: in std_logic; -- 50MHz
			rst 		: in std_logic; -- reset 
			BLANKING : out std_logic; -- blank display when zero 
			ROW      : out unsigned(9 downto 0); -- line 0 to 599 
			COLUMN   : out unsigned(9 downto 0); -- column 0 to 799 
			HSYNC    : out std_logic; -- horizontal sync signal 
			VSYNC	   : out std_logic); -- vertical sync signal 
end component;

begin

vga : g46_VGA port map(clock => clk, rst => rst, BLANKING => BLANKING, ROW => ROW, COLUMN => COLUMN, HSYNC => HSYNC, VSYNC => VSYNC);



CLOCK:
clk <=  '0' after 2500 ns when clk = '1' else
        '1' after 2500 ns when clk = '0';

end g46_VGA_tst_arc;