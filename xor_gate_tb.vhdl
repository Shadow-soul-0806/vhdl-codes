library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity xor_gate_tb is 
end entity;

architecture testing of xor_gate_tb is 


signal a_tb :std_logic;
signal b_tb : std_logic;
signal y_tb : std_logic;


begin 

uut : entity work.xor_gate

port map (

a => a_tb,
b => b_tb,
y => y_tb
);

process 

variable expected : std_logic;

begin

for i in 0 to 3 loop 

a_tb <= std_logic(to_unsigned(i,2)(1));
b_tb <= std_logic(to_unsigned(i,2)(0));

wait for 10 ns;

expected := a_tb xor b_tb ;

assert (y_tb = expected ) report "testing fail " severity error;

if y_tb = expected then
report "PASS" severity note;
end if;

end loop;


wait ;

end process;


end architecture ;


