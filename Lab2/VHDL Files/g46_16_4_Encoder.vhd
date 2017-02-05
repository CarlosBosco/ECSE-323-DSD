library ieee;
    use ieee.std_logic_1164.all;
    
entity g46_16_4_Encoder is
    port (
			Blocke_Col :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			CODE :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
			ERROR :  OUT  STD_LOGIC
    );
end g46_16_4_Encoder;

architecture behavior of g46_16_4_Encoder is

begin
		 ERROR <= '1' when (Blocke_Col = "0000000000000000") else
		 '0';
			  
		 CODE <=    "0000" when (Blocke_Col(0) = '1') else
                  "0001" when (Blocke_Col(1) = '1') else
                  "0010" when (Blocke_Col(2) = '1') else
                  "0011" when (Blocke_Col (3) = '1') else
                  "0100" when (Blocke_Col (4)= '1') else
                  "0101" when (Blocke_Col (5)= '1') else
                  "0110" when (Blocke_Col (6)= '1') else
                  "0111" when (Blocke_Col (7)= '1') else
                  "1000" when (Blocke_Col (8)= '1') else
                  "1001" when (Blocke_Col (9)= '1') else
                  "1010" when (Blocke_Col (10)= '1') else
                  "1011" when (Blocke_Col (11)= '1') else
                  "1100" when (Blocke_Col (12)= '1') else
                  "1101" when (Blocke_Col (13)= '1') else
                  "1110" when (Blocke_Col (14)= '1') else
                  "1111" when (Blocke_Col (15)= '1') else
						"0000";
						
end behavior;