-- entity name: g46_7_keyboard_decoder_tst
--
-- Copyright (C) 2016 Carlos Bosco & GuanHao Zhao
-- Version 1.0
-- Author: Carlos Bosco & GuanHao Zhao
-- Date: October 14, 2016

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g46_7_segment_decoder_tst is
end g46_7_segment_decoder_tst;


architecture g46_7_segment_decoder_tst_arc of g46_7_segment_decoder_tst is

signal ASCII_CODE_sig: std_logic_vector(6 downto 0);
signal segments_sig: std_logic_vector(6 downto 0);

component g46_7_segment_decoder is
    port (
	 		ASCII_CODE_IN:  IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
			segments :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
end component;

begin

decoder: g46_7_segment_decoder port map(ASCII_CODE_IN => ASCII_CODE_sig, segments => segments_sig);

STIMULUS:
    process

    begin
        for i in 0 to 128 loop
            ASCII_CODE_sig <= std_logic_vector(to_unsigned(i,7));
            wait for 10 ns;
        end loop;
        wait for 10 ns;
        wait;
    end process;

end g46_7_segment_decoder_tst_arc;
