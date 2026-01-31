library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_16_1_tb is 
end entity;

architecture testing of mux_16_1_tb is 

signal d_tb : std_logic_vector (15 downto 0);
signal s_tb : std_logic_vector (3 downto 0);
signal y_tb : std_logic;


begin

dut : entity work.mux_16_1
port map (

d => d_tb,
s => s_tb,
y => y_tb

);

	
	process
	
	variable result : std_logic ;
	
	begin
	
	d_tb <= "1111111100000000";
	
	for i in 0 to 15 loop
	
	s_tb <= std_logic_vector(to_unsigned (i,4));
	
	wait for 10 ns;
	
	result := d_tb(i);
	
	if result = y_tb then
	report " pass " severity note;
	
	else 
	report " fail " severity error;
	
	end if;
	
	end loop;

wait ;

end process;



end architecture;
