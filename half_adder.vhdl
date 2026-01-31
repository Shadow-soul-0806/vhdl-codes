library ieee;
use ieee.std_logic_1164.all;

entity half_adder is 
port(

a,b : in std_logic;
sum,carry : out std_logic

);
end entity;

architecture structural of half_adder is 


component xor_gate
port(
a,b : in std_logic;
y : out std_logic

);

end component;


component and_gate 
port(
a,b : in std_logic;
y : out std_logic

);
end component;

begin 

sum_block : xor_gate 
port map (
a => a,
b => b,
y => sum
);

carry_block : and_gate
port map (
a => a,
b => b,
y => carry

);

end architecture;