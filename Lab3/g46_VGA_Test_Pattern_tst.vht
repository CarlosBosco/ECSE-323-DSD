library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g46_VGA_Test_Pattern_tst is
end g46_VGA_Test_Pattern_tst;

architecture g46_VGA_Test_Pattern_tst_arc of g46_VGA_Test_Pattern_tst is

signal clk      : std_logic := '1';
signal rst		 : std_logic;
signal R      	 :std_logic_vector(3 downto 0);
signal G        :std_logic_vector(3 downto 0);
signal B        :std_logic_vector(3 downto 0); 
signal HSYNC    :std_logic; 
signal VSYNC	 :std_logic; 


component g46_VGA_Test_Pattern is
	port(	clock : in std_logic;
			rst : in std_logic;
			R, G, B : out std_logic_vector(3 downto 0);
			VSYNC : out std_logic;
			HSYNC : out std_logic);
end component;

begin

colorbar: g46_VGA_Test_Pattern port map(clock => clk, rst => rst, R => R, G => G, B => B, VSYNC => VSYNC, HSYNC => HSYNC);

CLOCK:
clk <=  '0' after 2500 ns when clk = '1' else
        '1' after 2500 ns when clk = '0';

end g46_VGA_Test_Pattern_tst_arc;