--
-- entity name: g46_64_6_Encoder
--
-- Copyright (C) 2016 Carlos Bosco & Guanhao Zhao
-- Version 1.0
-- Author: Carlos Bosco & Guanhao Zhao
-- Date: October 6, 2016

library ieee;
use ieee.std_logic_1164.all;
    
entity g46_64_6_encoder is
    port (
			inputs :  IN  STD_LOGIC_VECTOR(63 DOWNTO 0);
			CODE :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
			ERROR :  OUT  STD_LOGIC
    );
end g46_64_6_encoder;


architecture STRUCT of g46_64_6_encoder is

signal ERROR0 : std_logic;
signal ERROR1 : std_logic;
signal ERROR2 : std_logic;
signal ERROR3 : std_logic;
signal CODE0 : std_logic_vector(3 downto 0);
signal CODE1 : std_logic_vector(3 downto 0);
signal CODE2 : std_logic_vector(3 downto 0);
signal CODE3 : std_logic_vector(3 downto 0);


component g46_16_4_Encoder
	port(
	Blocke_Col : in std_logic_vector(15 downto 0);
	ERROR : out std_logic;
	CODE : out std_logic_vector(3 downto 0)
	);
end component;


begin
Encoder_0_15  : g46_16_4_Encoder port map(Blocke_Col => inputs(15 DOWNTO 0) , ERROR => ERROR0 ,  CODE => CODE0);
Encoder_16_31 : g46_16_4_Encoder port map(Blocke_Col => inputs(31 DOWNTO 16), ERROR => ERROR1 ,  CODE => CODE1);
Encoder_32_47 : g46_16_4_Encoder port map(Blocke_Col => inputs(47 DOWNTO 32), ERROR => ERROR2 ,  CODE => CODE2);
Encoder_48_63 : g46_16_4_Encoder port map(Blocke_Col => inputs(63 DOWNTO 48), ERROR => ERROR3 ,  CODE => CODE3);

generate_test : process (ERROR0,ERROR1,ERROR2,ERROR3,CODE0,CODE1,CODE2,CODE3)

begin
if (ERROR0 = '0') then
	CODE <= "00"&CODE0;
elsif (ERROR1 = '0')then
	CODE <= "01"&CODE1;
elsif (ERROR2 = '0')then
	CODE <= "10"&CODE2;
elsif (ERROR3 = '0')then
	CODE <= "11"&CODE3;
else
	CODE <= "111111";
end if;
	
end process generate_test;


ERROR <= ERROR0 and ERROR1 and ERROR2 and ERROR3;
end STRUCT;