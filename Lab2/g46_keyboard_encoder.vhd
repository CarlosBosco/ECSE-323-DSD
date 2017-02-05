-- entity name: g46_keyboard_encoder
--
-- Copyright (C) 2016 Carlos Bosco & GuanHao Zhao
-- Version 1.0
-- Author: Carlos Bosco & GuanHao Zhao
-- Date: October 13, 2016

library ieee;
use ieee.std_logic_1164.all;
    
entity g46_keyboard_encoder is
    port (
			keys :  IN  STD_LOGIC_VECTOR(63 DOWNTO 0);
			ASCII_CODE	 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			ERROR : OUT STD_LOGIC
    );
end g46_keyboard_encoder;


architecture STRUCT of g46_keyboard_encoder is

signal encoded_sig : std_logic_vector(5 downto 0);
signal sig_ERROR : std_LOGIC;

component g46_64_6_encoder is
    port (
			inputs :  IN  STD_LOGIC_VECTOR(63 DOWNTO 0);
			CODE :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
			ERROR :  OUT  STD_LOGIC
    );
end component;
 

begin

keyboard_Encoder : g46_64_6_encoder port map(inputs => keys, CODE => encoded_sig);


ASCII_CODE <=  "010"&encoded_sig(3 downto 0) when (encoded_sig(5 downto 4) = "00") else
					"011"&encoded_sig(3 downto 0) when (encoded_sig(5 downto 4) = "01") else
					"100"&encoded_sig(3 downto 0) when (encoded_sig(5 downto 4) = "10") else
					"101"&encoded_sig(3 downto 0) when (encoded_sig(5 downto 4) = "11") else
					"0000000";

end STRUCT;