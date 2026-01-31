library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity not_gate_tb is 
end entity;

architecture testing of not_gate_tb is 

signal a_tb : std_logic;
signal y_tb : std_logic;


begin 

dut : entity work.not_gate
port map (
a => a_tb,
y => y_tb
);

process

variable result : std_logic;
variable binary : std_logic_vector(0 downto 0);

begin


for i in 0 to 1 loop 

binary := std_logic_vector(to_unsigned(i,1));

a_tb <= binary(0);

wait for 10 ns;

result := not a_tb ;

if result = y_tb then
report "pass" severity note;

else 
report "fail" severity error;

end if;

end loop;

report "test is done " severity note;

wait;

end process;
end architecture;
