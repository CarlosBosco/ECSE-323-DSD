library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g46_VGA_Test_Pattern is
	port(	clock : in std_logic;
			rst : in std_logic;
			R, G, B : out std_logic_vector(3 downto 0);
			VSYNC : out std_logic;
			HSYNC : out std_logic);
end g46_VGA_Test_Pattern;

architecture g46_VGA_Test_Pattern_arc of g46_VGA_Test_Pattern is

signal blanking_sig: std_logic;
signal column_sig: unsigned(9 downto 0);
signal row_sig: unsigned (9 downto 0);


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

vga1 : g46_VGA port map(clock => clock, rst => rst, BLANKING => blanking_sig, ROW => row_sig, COLUMN => column_sig, HSYNC => HSYNC, VSYNC => VSYNC);

colors: process(column_sig)
begin

if (to_integer(unsigned(column_sig)) >= 0 AND to_integer(unsigned(column_sig)) <100) then
	R <= "1111";
	G <= "1111";
	B <= "1111";
	
elsif (to_integer(unsigned(column_sig)) >= 100 AND to_integer(unsigned(column_sig)) <200) then
	R <= "1111";
	G <= "1111";
	B <= "0000";
elsif (to_integer(unsigned(column_sig)) >= 200 AND to_integer(unsigned(column_sig)) <300) then
	R <= "0000";
	G <= "1111";
	B <= "1111";
elsif (to_integer(unsigned(column_sig)) >= 300 AND to_integer(unsigned(column_sig)) <400) then
	R <= "0000";
	G <= "1111";
	B <= "0000";
elsif (to_integer(unsigned(column_sig)) >= 400 AND to_integer(unsigned(column_sig)) <500) then
	R <= "1111";
	G <= "0000";
	B <= "1111";
elsif (to_integer(unsigned(column_sig)) >= 500 AND to_integer(unsigned(column_sig)) <600) then
	R <= "1111";
	G <= "0000";
	B <= "0000";
elsif (to_integer(unsigned(column_sig)) >= 600 AND to_integer(unsigned(column_sig)) <700) then
	R <= "0000";
	G <= "0000";
	B <= "1111";
--elsif (to_integer(unsigned(column_sig)) >= 700 AND to_integer(unsigned(column_sig)) <800) then
	--R <= "0000";
	--G <= "0000";
	--B <= "0000";
else
	R <= "0000";
	G <= "0000";
	B <= "0000";
end if;
end process;
end g46_VGA_Test_Pattern_arc;