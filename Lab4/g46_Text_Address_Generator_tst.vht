LIBRARY IEEE;
LIBRARY lpm;
USE IEEE.std_logic_1164.all; 
USE IEEE.numeric_std.all;
USE lpm.lpm_components.all;

entity g46_Text_Address_Generator_tst is
end g46_Text_Address_Generator_tst;

architecture g46_Text_Address_Generator_tst_arc of g46_Text_Address_Generator_tst is

constant HWIDTH: integer:= 10;
constant VWIDTH: integer:= 10;

signal ROW_sig : std_logic_vector(9 downto 0);
signal COL_sig : std_logic_vector(9 downto 0);
signal font_row_sig : std_logic_vector(3 downto 0);
signal font_col_sig : std_logic_vector(2 downto 0);
signal text_row_sig : std_logic_vector(4 downto 0);
signal text_col_sig : std_logic_vector(5 downto 0);


signal rst: std_logic := '0';
signal clk: std_logic := '1';
signal Hcount: unsigned(HWIDTH-1 downto 0);
signal Vcount: unsigned(VWIDTH-1 downto 0);
signal Hclear: std_logic;
signal Vclear: std_logic;
signal Henable: std_logic := '1';
signal Venable: std_logic;

component g46_Text_Address_Generator is
		port(	ROW      : IN std_logic_vector(9 downto 0); -- line 0 to 599 
				COLUMN   : IN std_logic_vector(9 downto 0); -- column 0 to 799
				font_row : OUT std_logic_vector(3 downto 0); -- 0-15 row address in single character
				font_col : OUT std_logic_vector(2 downto 0);
				text_row : OUT std_logic_vector(4 downto 0);
				text_col : OUT std_logic_vector(5 downto 0)
			);
end component;


begin
	
	counterH: lpm_counter
				generic map (LPM_WIDTH => HWIDTH)
				port map (clock => clk, aclr => rst, sclr => Hclear, unsigned(q) => Hcount);
	counterV: lpm_counter
				generic map (LPM_WIDTH => VWIDTH)
				port map (clock => clk, aclr => rst, sclr => Vclear, unsigned(q) => Vcount, cnt_en => Venable);


address : g46_Text_Address_Generator port map(ROW => ROW_sig, COLUMN => COL_sig, font_row => font_row_sig, font_col => font_col_sig, text_row => text_row_sig, text_col => text_col_sig);


CLOCK:
clk <=  '0' after 2500 ns when clk = '1' else
        '1' after 2500 ns when clk = '0';
COL_sig <= std_logic_vector(Hcount);

ROW_sig <= std_logic_vector(Vcount);

Hclear <= '1' when (to_integer(unsigned(Hcount))) =  800 else
			 '0'; -- 
			 
Vclear <= '1' when (to_integer(unsigned(Vcount))) = 600 else
			 '0'; --
			 
			 
Venable <= '1' when to_integer(unsigned(Hcount)) = 800 else
			  '0';
	
end g46_Text_Address_Generator_tst_arc;