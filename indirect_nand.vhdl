library ieee;
use ieee.std_logic_1164.all;

entity indirect_nand is 
port(

a,b : in std_logic;
y : out std_logic

);
end entity;

architecture structural of indirect_nand is 

signal and_output : std_logic;

component and_gate 
port(
a,b : in std_logic;
y : out std_logic
);
end component;

component not_gate
port(
a : in std_logic;
y : out std_logic
);
end component;

begin 

 first_block : and_gate
 port map (
 
 a => a,
 b => b,
 y => and_output
 
 );
 
 second_block : not_gate
 port map (
 
 a => and_output,
 y => y
 
 );
 
 end architecture;
 