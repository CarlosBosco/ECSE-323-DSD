--November 25, 2016
--ECSE 323
--g46_Text_Address_Generator
--Authors: Carlos Bosco & Guan Hao Zhao

LIBRARY IEEE;
LIBRARY lpm;
USE IEEE.std_logic_1164.all; 
USE IEEE.numeric_std.all;
USE lpm.lpm_components.all;

entity g46_Text_Address_Generator is
		port(	ROW      : IN std_logic_vector(9 downto 0); -- line 0 to 599 
				COLUMN   : IN std_logic_vector(9 downto 0); -- column 0 to 799
				font_row : OUT std_logic_vector(3 downto 0); -- 0-15 row address in single character
				font_col : OUT std_logic_vector(2 downto 0);
				text_row : OUT std_logic_vector(4 downto 0);
				text_col : OUT std_logic_vector(5 downto 0)
			);
end g46_Text_Address_Generator;

architecture g46_Text_Address_Generator_arc of g46_Text_Address_Generator is


begin
text_row <= ROW(9 downto 5);
text_col <= COLUMN(9 downto 4);

font_row <= ROW(4 downto 1);
font_col <= COLUMN(3 downto 1);

end g46_Text_Address_Generator_arc;