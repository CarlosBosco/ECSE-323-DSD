-- entity name: g46_keyboard_64_to_segment
--
-- Copyright (C) 2016 Carlos Bosco & GuanHao Zhao
-- Version 1.0
-- Author: Carlos Bosco & GuanHao Zhao
-- Date: October 14, 2016

library ieee;
use ieee.std_logic_1164.all;

entity g46_keyboard_64_to_segment is
	port (
			keys: IN std_logic_vector(9 downto 0);
			segments: OUT std_logic_vector(6 downto 0)
	);
end g46_keyboard_64_to_segment;
	

architecture g46_keyboard_64_to_segment_arc of g46_keyboard_64_to_segment is

signal ASCII_CODE_sig: std_LOGIC_VECTOR(6 downto 0);

component g46_keyboard_encoder is
    port (
			keys :  IN  STD_LOGIC_VECTOR(63 DOWNTO 0);
			ASCII_CODE	 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			ERROR : OUT STD_LOGIC
    );
end component;

component g46_7_segment_decoder is
    port (
	 		ASCII_CODE_IN:  IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
			segments :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
end component;


begin

encoder : g46_keyboard_encoder port map(keys => "00000000000000000000000000000000000000"&keys&"0000000000000000", ASCII_CODE => ASCII_CODE_sig);
decoder : g46_7_segment_decoder port map(ASCII_CODE_IN => ASCII_CODE_sig, segments => segments); 


end g46_keyboard_64_to_segment_arc;