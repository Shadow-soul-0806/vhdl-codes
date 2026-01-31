library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_4_1 is 
port(
d : in std_logic_vector(3 downto 0);
s : in std_logic_vector (1 downto 0 );
y : out std_logic 
);
end entity;

architecture working of mux_4_1 is

begin 

	process(d,s) 

	begin 

	case s is 

	when "00" => y <= d(0);
	when "01" => y <= d(1);
	when "10" => y <= d(2);
	when "11" => y <= d(3);
	when others => y <= '0';

	end case;

	end process;

end architecture;
