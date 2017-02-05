LIBRARY IEEE;
LIBRARY lpm;
USE IEEE.std_logic_1164.all; 
USE IEEE.numeric_std.all;
USE lpm.lpm_components.all;


entity g46_VGA is 
	port( clock		: in std_logic; -- 50MHz
			rst 		: in std_logic; -- reset 
			BLANKING : out std_logic; -- blank display when zero 
			ROW      : out unsigned(9 downto 0); -- line 0 to 599 
			COLUMN   : out unsigned(9 downto 0); -- column 0 to 799 
			HSYNC    : out std_logic; -- horizontal sync signal 
			VSYNC	   : out std_logic); -- vertical sync signal 
end g46_VGA;


architecture g46_VGA_arc of g46_VGA is

constant HWIDTH: integer:= 11;
constant VWIDTH: integer:= 10;

signal Hcount: unsigned(HWIDTH-1 downto 0);
signal Vcount: unsigned(VWIDTH-1 downto 0);
signal Hclear: std_logic;
signal Vclear: std_logic;
signal Henable: std_logic := '1';
signal Venable: std_logic;

begin
	
	counterH: lpm_counter
				generic map (LPM_WIDTH => HWIDTH)
				port map (clock => clock, aclr => rst, sclr => Hclear, unsigned(q) => Hcount);
	counterV: lpm_counter
				generic map (LPM_WIDTH => VWIDTH)
				port map (clock => clock, aclr => rst, sclr => Vclear, unsigned(q) => Vcount, cnt_en => Venable);

Venable <= '1' when to_integer(unsigned(Hcount)) = 1040 else
			  '0';
				
BLANKING <= '0' when (((to_integer(unsigned(Vcount))) < 43 OR (to_integer(unsigned(Vcount))) > 642) OR (((to_integer(unsigned(Hcount))) < 176 OR (to_integer(unsigned(Hcount))) > 799) OR ((to_integer(unsigned(Vcount))) < 43 OR (to_integer(unsigned(Vcount))) > 642))) else 
				'1'; -- Blanking is pulled low when Vcount is less than 42 or greater 643 AND when Hcount is less than 176 or greater 976

HSYNC <= '0' when ((to_integer(unsigned(Hcount))) <= 120 OR (to_integer(unsigned(Hcount))) >= 1039) else
			'1'; --Hsync is low for first 120 cycles
			
VSYNC <= '0' when ((to_integer(unsigned(Vcount))) < 6 OR (to_integer(unsigned(Vcount))) > 666) else
			'1'; --Vsync is low for first 6 lines
			
ROW <= "1001010111" when ((to_integer(unsigned(Vcount))) < 43 OR (to_integer(unsigned(Vcount))) > 642) else 
		  Vcount - "00101011"; -- 599 when Vcount is less than 43 or greater than 642
			
COLUMN <= "1100011111" when (((to_integer(unsigned(Hcount))) < 176 OR (to_integer(unsigned(Hcount))) > 1040) OR ((to_integer(unsigned(Vcount))) < 43 OR (to_integer(unsigned(Vcount))) > 642)) else 
			 unsigned(resize(Hcount - "10110000",10)); --799 when Hcount is less than 176 or greater than 1040

Hclear <= '1' when (to_integer(unsigned(Hcount))) = 1040 else
			 '0'; -- Hcount is reset to 0 when it reaches 1040 cycles
			 
Vclear <= '1' when (to_integer(unsigned(Vcount))) = 666 else
			 '0'; -- Vcount is reset to 0 when it reaches 666 lines
			 
sync : process(Venable, Henable) is
begin


end process sync;
end g46_VGA_arc;