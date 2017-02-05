-- entity name: g46_7_segment_decoder
--
-- Copyright (C) 2016 Carlos Bosco & GuanHao Zhao
-- Version 1.0
-- Author: Carlos Bosco & GuanHao Zhao
-- Date: October 13, 2016

library ieee;
use ieee.std_logic_1164.all;
    
entity g46_7_segment_decoder is
    port (
	 		ASCII_CODE_IN:  IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
			segments :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
end g46_7_segment_decoder;


architecture g46_7_segment_decoder_arc of g46_7_segment_decoder is

begin
	
with ASCII_CODE_IN select 
	
segments 	<=    "1000000" when "0110000",--0
                  "1111001" when "0110001",--1
						"0100100" when "0110010",--2
						"0000110" when "0110011",--3
						"1001100" when "0110100",--4
						"0100100" when "0110101",--5
						"1100000" when "0110110",--6
						"0001111" when "0110111",--7
						"0000000" when "0111000",--8
				   	"0001100" when "0111001",--9
						
						
					"0001000" when "1000001",--a
					"1100000" when "1000010",--b
					"0110001" when "1000011",--c
					"1000010" when "1000100",--d
					"0110000" when "1000101",--e

					"0111000" when "1000110",--f
   				"0100001" when "1000111",--g
					"1101000" when "1001000",--h
					"1001111" when "1001001",--i
					"1000011" when "1001010",--j
			
					"1111000" when "1001011",--k
					"1110001" when "1001100",--l
					"0001001" when "1001101",--m
					"0101011" when "1001110",--n
					"0000001" when "1001111",--o
			
					"0011000" when "1010000",--p
					"1100010" when "1010001",--q
					"0111001" when "1010010",--r
					"0100100" when "1010011",--s
					"1110000" when "1010100",--t
				
					"1000001" when "1010101",--u
					"1001101" when "1010110",--v
					"1100011" when "1010111",--w
					"1001000" when "1011000",--x
					"1000100" when "1011001",--y
					"0010010" when "1011010",--z
					"1111111" when others;
				   
					
end g46_7_segment_decoder_arc;