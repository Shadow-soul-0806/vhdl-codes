library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity nand_gate_tb is 
end entity;

architecture testing of nand_gate_tb is 

signal a_tb : std_logic;
signal b_tb : std_logic;
signal y_tb : std_logic;

begin 

dut : entity work.nand_gate
port map(
a => a_tb,
b => b_tb,
y => y_tb
);

process

variable result : std_logic;
variable binary : std_logic_vector(1 downto 0 );

begin

for i in 0 to 3 loop

binary := std_logic_vector(to_unsigned(i,2));

a_tb <= binary(1);
b_tb <= binary(0);

wait for 10 ns;

result := a_tb nand b_tb ;

if result = y_tb then 
report "pass" severity note;

else 
report "fail " severity error;



end if;

end loop;

wait;


report "test is done " severity note;

end process;

end architecture;
