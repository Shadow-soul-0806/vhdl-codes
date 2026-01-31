library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is 
end entity;

architecture testing of half_adder_tb is 


signal a_tb : std_logic ;
signal b_tb : std_logic ;
signal sum_tb : std_logic;
signal carry_tb : std_logic;



component half_adder
port(
a,b : in std_logic;
sum,carry : out std_logic
);

end component;


begin 

testing_block : half_adder

port map(

a => a_tb,
b => b_tb,
sum => sum_tb,
carry => carry_tb

);

process 
begin 

a_tb <= '0';
b_tb <= '0';
wait for 10 ns ;
 
a_tb <= '0';
b_tb <= '1';
wait for 10 ns ;
 
a_tb <= '1';
b_tb <= '0';
wait for 10 ns ;
 
a_tb <= '1';
b_tb <= '1';
wait for 10 ns ;

wait ;

end process;

end architecture;


 



