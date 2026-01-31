library ieee;
use ieee.std_logic_1164.all;

entity indirect_or is 
port(

a,b : in std_logic;
y : out std_logic

);
end entity;


architecture structural of indirect_or is 

signal or_output: std_logic;

	component or_gate
	port(
	a,b : in std_logic;
	y : out std_logic

	);
	end component;

	
	component not_gate
	port (

	a : in std_logic;
	y : out std_logic

	);
	end component;

begin 

 first_block : or_gate
 port map (
 
 a => a,
 b => b,
 y => or_output
 
 );
 
 second_block : not_gate
 port map (
 
 a => or_output,
 y => y
 
 );

end architecture;