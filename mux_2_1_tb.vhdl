library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_2_1_tb is 
end entity;

architecture testing of mux_2_1_tb is

signal d_tb : std_logic_vector(1 downto 0);
signal s_tb : std_logic;
signal y_tb : std_logic;

begin

dut : entity work.mux_2_1
port map(
d => d_tb,
s => s_tb,
y => y_tb

);


process

variable result : std_logic;

begin 

d_tb <= "01";

for i in 0 to 1 loop

if i = 0 then
 s_tb <= '0';
else 
 s_tb <= '1';

end if;


wait for 10 ns;

result := d_tb(i);


if y_tb = result then 
report "pass" severity note;

else 
report "fail" severity error;

end if ;

end loop;

wait ;

end process;

end architecture;