library IEEE;
use IEEE.std_logic_1164.all;
entity adder_1_bit is
			port ( A, B  :in std_logic_vector (7 downto 0);
					 Cin 	 :in std_logic;
					 Y		 :out std_logic_vector (7 downto 0);
					 Cout	 :out std_logic);
end adder_1_bit;

