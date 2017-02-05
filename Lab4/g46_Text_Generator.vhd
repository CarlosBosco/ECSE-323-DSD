library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity g46_Text_Generator is 
port(
text_col : in std_logic_vector(5 downto 0);--from address generator
text_row : in std_logic_vector(4 downto 0);-- from address generator
score : in std_logic_vector(15 downto 0); --sequential 16bit binary inputs
level :in std_logic_vector(2 downto 0); -- sequential BCD inputs
life : in std_logic_vector(2 downto 0); -- sequential BCD inputs

char_code : out std_logic_vector(6 downto 0); -- 7-bit ASCII character code
char_color : out std_logic_vector(11 downto 0) -- 12-bit R G B code 
);
end g46_Text_Generator;

architecture g46_Text_Generator_arc of g46_Text_Generator is

signal score_BCD_sig: std_logic_vector(19 downto 0) := "00000000000000000000";

function to_bcd( bin: std_logic_vector((15) downto 0)) return std_logic_vector is 
	variable i: integer :=0;
	variable j: integer :=1;
	variable bcd: std_logic_vector((19) downto 0) :=(others =>'0');
	variable bint:std_logic_vector((15) downto 0) := bin;
	
	begin
	for i in 0 to 15 loop--repeat 16 times (once for each input bit).
		bcd((19) downto 1):= bcd((18) downto 0); --shift the bcdbits.
		bcd(0) :=bint(15);
		
		bint((15) downto 1):= bint((14) downto 0); --shift the input bits.
		bint(0) := '0';
		
		loop1: for j in 1 to 5 loop --for each BCD digit add 3 if it is greater than 4.
			if(i< 15 and bcd(((4*j)-1) downto((4*j)-4)) > "0100") then
				bcd(((4*j)-1) downto((4*j)-4)) :=
				std_logic_vector(unsigned(bcd(((4*j)-1) downto((4*j)-4))) + "0011");
			end if;
		end loop loop1; --no ADD3 is done on the last loop iteration (just shifting)
	end loop;
	return bcd; --this produces the value that is returned by the function
end to_bcd;


begin

score_BCD_sig <= to_bcd(score);

process(text_col, life, score_BCD_sig, level, text_row)
begin
 --we need to take code form last part of VHDL L4 to convert 'score(16bits)' to 'score(5bits)' using BCD stuff 
	if to_integer(unsigned(text_row)) = 17 then --bottom line
		case text_col is --Static Text
			when "000000" => char_code <= "1010011"; char_color <= "111100000000";--s
			when "000001" => char_code <= "1000011"; char_color <= "111100000000";--c
			when "000010" => char_code <= "1001111"; char_color <= "111100000000";--o
			when "000011" => char_code <= "1010010"; char_color <= "111100000000";--r
			when "000100" => char_code <= "1000101"; char_color <= "111100000000";--e
			when "000101" => char_code <= "0111010"; char_color <= "111100000000";--:
			when "000110" => char_code <= "0100000"; char_color <= "000000000000";--blank
			when "000111" => char_code <= "011"&score_BCD_sig(19 downto 16); char_color <= "111111111111";--BCD 10000s
			when "001000" => char_code <= "011"&score_BCD_sig(15 downto 12); char_color <= "111111111111";--BCD 1000s
			when "001001" => char_code <= "011"&score_BCD_sig(11 downto 8); char_color <= "111111111111";--BCD 100s
			when "001010" => char_code <= "011"&score_BCD_sig(7 downto 4); char_color <= "111111111111";--BCD 10s
			when "001011" => char_code <= "011"&score_BCD_sig(3 downto 0); char_color <= "111111111111";--BCD 1s
			when "001100" => char_code <= "0100000"; char_color <= "000000000000";--blank
			when "001101" => char_code <= "0100000"; char_color <= "000000000000";--blank
			when "001110" => char_code <= "1001100"; char_color <= "111111110000";--l
			when "001111" => char_code <= "1000101"; char_color <= "111111110000";--e
			when "010000" => char_code <= "1010110"; char_color <= "111111110000";--v
			when "010001" => char_code <= "1000101"; char_color <= "111111110000";--e
			when "010010" => char_code <= "1001100"; char_color <= "111111110000";--l
			when "010011" => char_code <= "0111010"; char_color <= "111111110000";--:
			when "010100" => char_code <= "0110"&level; char_color <= "111111110000";--Level
			when "010101" => char_code <= "0100000"; char_color <= "000000000000";--blank
			when "010110" => char_code <= "0100000"; char_color <= "000000000000";--blank
			when "010111" => if (life >= "001") then char_code <= "0000011"; char_color <= "111101101011"; else char_code <= "0100000"; char_color <= "111101101011"; end if;--
			when "011000" => if (life >= "010") then char_code <= "0000011"; char_color <= "111101101011"; else char_code <= "0100000"; char_color <= "111101101011"; end if;--
			when "011001" => if (life >= "011") then char_code <= "0000011"; char_color <= "111101101011"; else char_code <= "0100000"; char_color <= "111101101011"; end if;
			when "011010" => if (life >= "100") then char_code <= "0000011"; char_color <= "111101101011"; else char_code <= "0100000"; char_color <= "111101101011"; end if;
			when "011011" => if (life >= "101") then char_code <= "0000011"; char_color <= "111101101011"; else char_code <= "0100000"; char_color <= "111101101011"; end if;
			when "011100" => if (life >= "110") then char_code <= "0000011"; char_color <= "111101101011"; else char_code <= "0100000"; char_color <= "111101101011"; end if;
			when "011101" => if (life = "111") then char_code <= "0000011";  char_color <= "111101101011"; else char_code <= "0100000"; char_color <= "111101101011"; end if;
			when others => char_code <= "0100000"; char_color <= "111101101011"; 
			end case;
	else char_code <= "0100000"; char_color <= "111101101011"; 
	end if;
end process;
end g46_Text_Generator_arc;