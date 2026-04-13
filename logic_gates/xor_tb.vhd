library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity xor_tb is 
end xor_tb;


architecture simulation of xor_tb is 

	signal a_tb,b_tb,y_tb : std_logic;

	component xor_gate
	port(

	a,b : in std_logic;
	y : out std_logic
	);
	
	end component ;



begin

	dut : xor_gate 
	port map (
	
	a => a_tb ,
	b => b_tb ,
	y => y_tb 

	);



	process 
	
	begin 
        
	for i in 0 to 3 loop

	a_tb <= std_logic(to_unsigned(i,2)(1));
	b_tb <= std_logic(to_unsigned(i,2)(0));

	wait for 20 ps;

	end loop;
	
	wait;
	
	end process;

end simulation;

