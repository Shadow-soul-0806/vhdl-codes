library ieee;
use ieee.std_logic_1164.all;

entity or_tb is
end or_tb;

architecture simulation of or_tb is

	signal a_tb,b_tb : std_logic;
	signal y_tb : std_logic;

	begin 
 
	dut : entity work.or_gate

	port map (
         a => a_tb,
	 b => b_tb,
	 y => y_tb
	);

	process 
	begin

	 a_tb <= '0' ; b_tb <= '0';
	 wait for 10 ps;
    
	 a_tb <= '1' ; b_tb <= '0';
	 wait for 10 ps;

	 a_tb <= '0' ; b_tb <= '1';
	 wait for 10 ps;

	 a_tb <= '1' ; b_tb <= '1';
	 wait for 10 ps;
	 
	 
	 wait ;
	 
	 end process;

	end simulation;
