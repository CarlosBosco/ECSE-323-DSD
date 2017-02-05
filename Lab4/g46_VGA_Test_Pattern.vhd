library ieee;
LIBRARY lpm;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use lpm.lpm_components.all;

entity g46_VGA_Test_Pattern is
	port(	clock : in std_logic;
			rst : in std_logic;
			R, G, B : out std_logic_vector(3 downto 0);
			VSYNC : out std_logic;
			HSYNC : out std_logic;
			life  : in std_logic_vector(2 downto 0);
			level : in std_logic_vector(2 downto 0)
			);
end g46_VGA_Test_Pattern;

architecture g46_VGA_Test_Pattern_arc of g46_VGA_Test_Pattern is

signal blanking_sig: std_logic;
signal column_sig: std_logic_vector(9 downto 0);
signal row_sig: std_logic_vector (9 downto 0);
signal font_row_sig: std_logic_vector(3 downto 0);
signal font_col_clk_sig: std_logic_vector(2 downto 0);
signal font_row_clk_sig: std_logic_vector(3 downto 0);
signal font_col_sig: std_logic_vector(2 downto 0);
signal text_row_sig: std_logic_vector(4 downto 0);
signal text_col_sig: std_logic_vector(5 downto 0);
signal char_code_sig: std_logic_vector(6 downto 0);
signal char_color_sig: std_logic_vector(11 downto 0);
signal font_bit_sig: std_logic;
signal life_sig: std_logic_vector(2 downto 0);
signal level_sig: std_logic_vector(2 downto 0);
signal score_sig: std_logic_vector(15 downto 0);
signal counterReset_sig: std_logic;
signal scoreCount: std_logic_vector(26 downto 0);


component g46_VGA is 
	port( clock		: in std_logic; -- 50MHz
			rst 		: in std_logic; -- reset 
			BLANKING : out std_logic; -- blank display when zero 
			ROW      : out unsigned(9 downto 0); -- line 0 to 599 
			COLUMN   : out unsigned(9 downto 0); -- column 0 to 799 
			HSYNC    : out std_logic; -- horizontal sync signal 
			VSYNC	   : out std_logic); -- vertical sync signal 
end component;

component g46_Text_Generator is 
	port(	text_col 	: in std_logic_vector(5 downto 0);--from address generator
			text_row 	: in std_logic_vector(4 downto 0);-- from address generator
			score    	: in std_logic_vector(15 downto 0); --sequential 16bit binary inputs
			level    	: in std_logic_vector(2 downto 0); -- sequential BCD inputs
			life     	: in std_logic_vector(2 downto 0); -- sequential BCD inputs
			char_code  	: out std_logic_vector(6 downto 0); -- 7-bit ASCII character code
			char_color 	: out std_logic_vector(11 downto 0) -- 12-bit R G B code 
		);
end component;

component g46_Text_Address_Generator is
	port(	ROW      : IN std_logic_vector(9 downto 0); -- line 0 to 599 
			COLUMN   : IN std_logic_vector(9 downto 0); -- column 0 to 799
			font_row : OUT std_logic_vector(3 downto 0); -- 0-15 row address in single character
			font_col : OUT std_logic_vector(2 downto 0);
			text_row : OUT std_logic_vector(4 downto 0);
			text_col : OUT std_logic_vector(5 downto 0)
			);
end component;

component fontROM is
	generic(
		addrWidth: integer := 11;
		dataWidth: integer := 8
	);
	port(
		clkA: in std_logic;
		char_code : in std_logic_vector(6 downto 0); -- 7-bit ASCII character code
		font_row : in std_logic_vector(3 downto 0); -- 0-15 row address in single character
		font_col : in std_logic_vector(2 downto 0); -- 0-7 column address in single character
		font_bit : out std_logic -- pixel value at the given row and column for the selected character code
	);
end component;


begin

counterS: lpm_counter
				generic map (LPM_WIDTH => 27)
				port map (clock => clock, aclr => counterReset_sig, q => scoreCount);

vga1 : g46_VGA port map(clock => clock , rst => NOT rst, BLANKING => blanking_sig, std_logic_vector(ROW) => row_sig, std_logic_vector(COLUMN) => column_sig, HSYNC => HSYNC, VSYNC => VSYNC);

text_add_gen: g46_Text_Address_Generator port map(ROW => row_sig, COLUMN => column_sig, font_row => font_row_sig , font_col => font_col_sig, text_row => text_row_sig, text_col => text_col_sig);

rom : fontROM port map(clkA => clock, char_code => char_code_sig, font_col => font_col_clk_sig, font_row => font_row_clk_sig, font_bit => font_bit_sig);

text_gen: g46_Text_Generator port map(text_col => text_col_sig, text_row => text_row_sig, score => score_sig , level => level_sig , life => life_sig , char_code => char_code_sig, char_color => char_color_sig );

life_sig <= life;

colors: process(clock)
begin


if (rising_edge(clock)) then
	if (counterReset_sig = '1')then
		counterReset_sig <= '0';
	end if;
	
	if scoreCount = "10111110101111000010000000" then
		score_sig <= score_sig + 1;
		level_sig <= level_sig + 1;
		if level_sig = "111" then
			level_sig <= "000";
		end if;
		counterReset_sig <= '1';
	end if;

	font_row_clk_sig <= font_row_sig;
	font_col_clk_sig <= font_col_sig;
	
	if (font_bit_sig = '1') then
		R <= char_color_sig(11 downto 8);
		G <= char_color_sig(7 downto 4);
		B <= char_color_sig(3 downto 0);
	else
		R <= "0000";
		G <= "0000";
		B <= "0000";
	end if;
end if;
end process;
end g46_VGA_Test_Pattern_arc;