library ieee;
LIBRARY lpm;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use lpm.lpm_components.all;

entity g46_Breakout_Game is
	port(	clock : in std_logic;
			rst : in std_logic;
			shoot: in std_logic;
			paddle_left: in std_logic;
			paddle_right: in std_logic;
			R, G, B : out std_logic_vector(3 downto 0);
			VSYNC : out std_logic;
			HSYNC : out std_logic;
			life  : in std_logic_vector(2 downto 0) 
			);
end g46_Breakout_Game;

architecture g46_Breakout_Game_arc of g46_Breakout_Game is

signal rst_sig: std_logic;
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
signal life_sig: std_logic_vector(2 downto 0):= "111";
signal level_sig: std_logic_vector(2 downto 0):= "111";
signal score_sig: std_logic_vector(15 downto 0):= "0000000000000000";
signal speed: std_logic_vector(18 downto 0) := "0000000000000000000";
signal counterReset_sig: std_logic;
signal ball_col_sig: std_logic_vector(9 downto 0) := "0000000000";
signal ball_row_sig: std_logic_vector(9 downto 0) := "0000000000";
signal ball_col_start_pos: std_logic_vector(9 downto 0) := "0110010000";--400
signal ball_row_start_pos: std_logic_vector(9 downto 0) := "1000000101";--517
signal paddle_col_sig: std_logic_vector(9 downto 0);
signal paddle_col_start_pos: std_logic_vector(9 downto 0):= "0111010000";
signal paddle_count_enable: std_logic := '0';
signal paddle_count_up: std_logic;
signal vsync_sig: std_logic;
signal ball_size: std_logic_vector(9 downto 0) := "0000001000";
signal ball_visible: std_logic;
signal row_count_up: std_logic := '0';
signal col_count_up: std_logic := '0';
signal ball_col_counter_enable: std_logic := '0';
signal ball_row_counter_enable: std_logic := '0';
signal shoot_ball: std_logic;
signal load_start_pos: std_logic;
signal visible_blocks: std_logic_vector(59 downto 0) := "111111111111111111111111111111111111111111100111100110000100";
signal block_address: std_logic_vector (9 downto 0);
signal newGame: std_logic := '1';

signal test: std_logic_vector(9 downto 0);

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

speedController: lpm_counter
				generic map (LPM_WIDTH => 19)
				port map (clock => clock, sclr => counterReset_sig, q => speed);
				
ball_col_counter: lpm_counter
						generic map (LPM_WIDTH => 10)
						port map (clock => speed(18), sclr => NOT rst, sload => load_start_pos, data => ball_col_start_pos, cnt_en => ball_col_counter_enable, updown => col_count_up, q=> ball_col_sig);
ball_row_counter: lpm_counter
						generic map (LPM_WIDTH => 10)
						port map (clock => speed(18), sclr => NOT rst, sload => load_start_pos, data => ball_row_start_pos, cnt_en => ball_row_counter_enable, updown => row_count_up, q=> ball_row_sig); 
paddle_col_counter: lpm_counter
						generic map(LPM_width => 10)
						port map (clock => speed(18), sclr => NOT rst, sload => load_start_pos, data => paddle_col_start_pos, cnt_en => paddle_count_enable, updown => paddle_count_up, q=> paddle_col_sig);
						
vga1 : g46_VGA port map(clock => clock , rst => NOT rst, std_logic_vector(ROW) => row_sig, std_logic_vector(COLUMN) => column_sig, HSYNC => HSYNC, VSYNC => VSYNC_sig);

text_add_gen: g46_Text_Address_Generator port map(ROW => row_sig, COLUMN => column_sig, font_row => font_row_sig , font_col => font_col_sig, text_row => text_row_sig, text_col => text_col_sig);

rom : fontROM port map(clkA => clock, char_code => char_code_sig, font_col => font_col_clk_sig, font_row => font_row_clk_sig, font_bit => font_bit_sig);

text_gen: g46_Text_Generator port map(text_col => text_col_sig, text_row => text_row_sig, score => score_sig, level => level_sig , life => life_sig , char_code => char_code_sig, char_color => char_color_sig );

life_sig <= life;

VSYNC <= vsync_sig;

shoot_ball <= shoot;


colors: process(clock, font_bit_sig, char_color_sig, text_col_sig, text_row_sig, row_sig, column_sig, ball_col_sig, ball_row_sig)
begin

if (rising_edge(clock)) then
	
	font_row_clk_sig <= font_row_sig;
	font_col_clk_sig <= font_col_sig;
	
	if (NOT shoot_ball = '1') then --if the shoot ball button is pressed
		load_start_pos <= '0'; 
		ball_col_counter_enable <= '1';
		ball_row_counter_enable <= '1';
	else
		if (ball_col_counter_enable = '1' OR ball_row_counter_enable = '1') then --if the ball is already shot and the button is pressed
			load_start_pos <= '0';
		else --if the button hasn't been pressed yet on this life
			ball_col_counter_enable <= '0';
			ball_row_counter_enable <= '0';
			load_start_pos <= '1';
		end if;
	end if;
	
	if(NOT paddle_left = '1') then
		if (to_integer(unsigned(paddle_col_sig)) > 128 + 16) then
			paddle_count_enable <= '1';
			paddle_count_up <= '0';
		else
			paddle_count_enable <= '0';
		end if;
	elsif (NOT paddle_right = '1') then
		if (to_integer(unsigned(paddle_col_sig)) < 783) then
			paddle_count_enable <= '1';
			paddle_count_up <= '1';
		else
			paddle_count_enable <= '0';
		end if;
	else
		paddle_count_enable <= '0';
	end if;
	
	if(NOT rst = '1') then --If Reset button is pressed
		score_sig <= "0000000000000000";
		visible_blocks <= "111111111111111111111111111111111111111111111111111111111111";
		load_start_pos <= '1';
		ball_col_counter_enable <= '0';
		ball_row_counter_enable <= '0';
		col_count_up <= '0';
		row_count_up <= '0';
	end if;
	

	if (font_bit_sig = '1') then --Score Text
		R <= char_color_sig(11 downto 8);
		G <= char_color_sig(7 downto 4);
		B <= char_color_sig(3 downto 0);
	elsif ( --Walls
			(to_integer(unsigned(row_sig)) >= 0 AND to_integer(unsigned(row_sig))<= 15 AND to_integer(unsigned(column_sig)) <= 790 ) OR --Top Wall
			(to_integer(unsigned(column_sig)) >= 0 AND to_integer(unsigned(column_sig)) <= 15 AND to_integer(unsigned(row_sig)) <= 534) OR --Left Wall
			(to_integer(unsigned(column_sig)) >= 783  AND to_integer(unsigned(column_sig)) < 799 AND to_integer(unsigned(row_sig)) <= 534) --Right Wall
		) then
			R <= "1111";
			G <= "1111";
			B <= "1111";
	
	elsif --Ball
			(to_integer(unsigned(ball_row_sig)) >= to_integer(unsigned(ROW_sig))) AND 
			(to_integer(unsigned(ball_row_sig)) <= to_integer(unsigned(ROW_sig)) + 8) AND 
			(to_integer(unsigned(ball_col_sig)) >= to_integer(unsigned(COLUMN_sig))) AND 
			(to_integer(unsigned(ball_col_sig)) <= to_integer(unsigned(COLUMN_sig)) + 8)
		then
			R <= "1111";
			G <= "1111";
			B <= "1111";
			
	elsif --lines
		((to_integer(unsigned(column_sig))) = 16 OR 
		(to_integer(unsigned(column_sig))) = 80 OR 
		(to_integer(unsigned(column_sig))) = 144 OR
		(to_integer(unsigned(column_sig))) = 208 OR
		(to_integer(unsigned(column_sig))) = 272 OR
		(to_integer(unsigned(column_sig))) = 336 OR
		(to_integer(unsigned(column_sig))) = 400 OR
		(to_integer(unsigned(column_sig))) = 464 OR
		(to_integer(unsigned(column_sig))) = 528 OR
		(to_integer(unsigned(column_sig))) = 592 OR
		(to_integer(unsigned(column_sig))) = 656 OR
		(to_integer(unsigned(column_sig))) = 720 OR
		(to_integer(unsigned(column_sig))) = 782 OR
		(to_integer(unsigned(row_sig))) = 64 OR
		(to_integer(unsigned(row_sig))) = 96 OR
		(to_integer(unsigned(row_sig))) = 128 OR
		(to_integer(unsigned(row_sig))) = 160 OR
		(to_integer(unsigned(row_sig))) = 192)AND
		(to_integer(unsigned(row_sig))) <= 192 
		 then
			R <= "0000";
			G <= "0000";
			B <= "0000";
	
	elsif --paddle
			(to_integer(unsigned(paddle_col_sig)) >= to_integer(unsigned(COLUMN_sig))) AND
			(to_integer(unsigned(paddle_col_sig)) <= to_integer(unsigned(COLUMN_sig) + 128)) AND
			(to_integer(unsigned(ROW_sig)) >= 518 AND to_integer(unsigned(ROW_sig)) <= 534)
			then
				R <= "0000";
				G <= "0000";
				B <= "1111";
			
	elsif --blocks
		to_integer(unsigned(text_row_sig)) = 1 then				
				case to_integer(unsigned(text_col_sig)) is
					when 1  to 4  => if visible_blocks(59) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000";	end if;
					when 5  to 8  => if visible_blocks(58) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 9  to 12 => if visible_blocks(57) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 13 to 16 => if visible_blocks(56) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 17 to 20 => if visible_blocks(55) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 21 to 24 => if visible_blocks(54) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 25 to 28 => if visible_blocks(53) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 29 to 32 => if visible_blocks(52) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 33 to 36 => if visible_blocks(51) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 37 to 40 => if visible_blocks(50) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 41 to 44 => if visible_blocks(49) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 45 to 48 => if visible_blocks(48) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;		
					when others => R <= "0000"; G <= "0000"; B <= "0000";
				end case;
		
	elsif to_integer(unsigned(text_row_sig)) = 2 then
				case to_integer(unsigned(text_col_sig)) is
					when 1  to 4  => if visible_blocks(47) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 5  to 8  => if visible_blocks(46) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 9  to 12 => if visible_blocks(45) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 13 to 16 => if visible_blocks(44) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 17 to 20 => if visible_blocks(43) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 21 to 24 => if visible_blocks(42) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 25 to 28 => if visible_blocks(41) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 29 to 32 => if visible_blocks(40) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 33 to 36 => if visible_blocks(39) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 37 to 40 => if visible_blocks(38) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 41 to 44 => if visible_blocks(37) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 45 to 48 => if visible_blocks(36) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;			
					when others => R <= "0000"; G <= "0000"; B <= "0000";
				end case;
				
	elsif to_integer(unsigned(text_row_sig)) = 3 then
				case to_integer(unsigned(text_col_sig)) is
					when 1  to 4  => if visible_blocks(35) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 5  to 8  => if visible_blocks(34) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 9  to 12 => if visible_blocks(33) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 13 to 16 => if visible_blocks(32) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 17 to 20 => if visible_blocks(31) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 21 to 24 => if visible_blocks(30) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 25 to 28 => if visible_blocks(29) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 29 to 32 => if visible_blocks(28) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 33 to 36 => if visible_blocks(27) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 37 to 40 => if visible_blocks(26) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 41 to 44 => if visible_blocks(25) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 45 to 48 => if visible_blocks(24) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;				
					when others => R <= "0000"; G <= "0000"; B <= "0000";
				end case;				
				
	elsif to_integer(unsigned(text_row_sig)) = 4 then
				case to_integer(unsigned(text_col_sig)) is	
					when 1  to 4  => if visible_blocks(23) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 5  to 8  => if visible_blocks(22) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 9  to 12 => if visible_blocks(21) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 13 to 16 => if visible_blocks(20) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 17 to 20 => if visible_blocks(19) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 21 to 24 => if visible_blocks(18) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 25 to 28 => if visible_blocks(17) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 29 to 32 => if visible_blocks(16) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 33 to 36 => if visible_blocks(15) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 37 to 40 => if visible_blocks(14) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 41 to 44 => if visible_blocks(13) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 45 to 48 => if visible_blocks(12) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when others => R <= "0000"; G <= "0000"; B <= "0000";
				end case;
							
	elsif to_integer(unsigned(text_row_sig)) = 5 then
				case to_integer(unsigned(text_col_sig)) is
					when 1  to 4  => if visible_blocks(11) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 5  to 8  => if visible_blocks(10) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 9  to 12 => if visible_blocks(09) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 13 to 16 => if visible_blocks(08) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 17 to 20 => if visible_blocks(07) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 21 to 24 => if visible_blocks(06) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 25 to 28 => if visible_blocks(05) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 29 to 32 => if visible_blocks(04) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 33 to 36 => if visible_blocks(03) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 37 to 40 => if visible_blocks(02) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 41 to 44 => if visible_blocks(01) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when 45 to 48 => if visible_blocks(00) = '1' then R <= "1111";G <= "0000";B <= "0000"; else R <= "0000";G <= "0000";B <= "0000"; end if;
					when others => R <= "0000"; G <= "0000"; B <= "0000";
				end case;

	else --Black space
			R <= "0000";
			G <= "0000";
			B <= "0000";
	end if;
	
	if to_integer(unsigned(ball_col_sig)) = 15 + 8 then --Hits left wall
		col_count_up <= '1';
	elsif to_integer(unsigned(ball_col_sig)) = 783 then -- Hits right wall
		col_count_up <= '0';
	elsif to_integer(unsigned(ball_row_sig)) = 15 + 8 then --Hits top wall
		row_count_up <= '1';
	elsif to_integer(unsigned(ball_row_sig)) = 518 AND  --Hits paddle 
			to_integer(unsigned(paddle_col_sig)) - 128 <= to_integer(unsigned(ball_col_sig)) + 8 AND 
			to_integer(unsigned(paddle_col_sig)) >= to_integer(unsigned(ball_col_sig)) - 8
			then 
				row_count_up <= '0';
	elsif to_integer(unsigned(ball_row_sig)) > 518 then 
		--rst <= '1';
	end if;
	
end if;
end process;

end g46_Breakout_Game_arc;