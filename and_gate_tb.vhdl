library ieee;
use ieee.std_logic_1164.all;

entity and_gate_tb is 
end entity;

architecture structural of and_gate_tb is 

component and_gate
port(

a,b : in std_logic;
y :out std_logic

);
end component;

signal a_tb ,b_tb,y_tb : std_logic;

begin 

testbench_and : and_gate
port map (

a => a_tb ,
b => b_tb,
y => y_tb

);
	process begin 
	
	a_tb <= '0';
	b_tb <= '0';
	wait for 10 ns;
	
	a_tb <= '0';
	b_tb <= '1';
	wait for 10 ns;
	
	a_tb <= '1';
	b_tb <= '0';
	wait for 10 ns;
	
	a_tb <= '1';
	b_tb <= '1';
	wait for 10 ns;
	
	wait;
    assert false report "simulation is done ";	

	end process;
	

end architecture;
	