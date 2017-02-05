library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g46_lab1_encod_tst is
end g46_lab1_encod_tst;

architecture g46_lab1_encod_arch of g46_lab1_encod_tst is

component g46_16_4_Encoder
	port(
	Blocke_Col : in std_logic_vector(15 downto 0);
	ERROR : out std_logic;
	CODE : out std_logic_vector(3 downto 0)
	);
end component;


signal Blocke_Col : std_logic_vector(15 downto 0);
signal ERROR : std_logic;
signal CODE : std_logic_vector(3 downto 0);


begin
	uut : g46_16_4_Encoder port map( Blocke_Col => Blocke_Col, ERROR => ERROR, CODE => CODE);

	test : process

begin

	Blocke_Col <= "0000000000000000";

	wait for 10 ns;

	Blocke_Col <= "0000000000000001";

	wait for 10 ns;

	Blocke_Col<= "0000000000000010";

	wait for 10 ns;

	Blocke_Col <= "0000000000000100";

	wait for 10 ns;

	Blocke_Col <= "0000000000001000";

	wait for 10 ns;

	Blocke_Col <= "0000000000010000";

	wait for 10 ns;

	Blocke_Col <= "0000000000100000";

	wait for 10 ns;

	Blocke_Col <= "0000000001000000";

	wait for 10 ns;

	Blocke_Col <= "0000000010000000";

	wait for 10 ns;

	Blocke_Col <= "0000000100000000";
	
	wait for 10 ns;

	Blocke_Col <= "0000001000000000";

	wait for 10 ns;

	Blocke_Col <= "0000010000000000";

	wait for 10 ns;

	Blocke_Col <= "0000100000000000";

	wait for 10 ns;

	Blocke_Col <= "0001000000000000";

	wait for 10 ns;

	Blocke_Col <= "0010000000000000";

	wait for 10 ns;

	Blocke_Col <= "0100000000000000";

	wait for 10 ns;

	Blocke_Col <= "1000000000000000";

	wait for 10 ns;

	Blocke_Col <= "0000000000000000";

	
wait;

end process test;

end g46_lab1_encod_arch;