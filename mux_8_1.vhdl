library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_8_1 is
port(
d : in std_logic_vector(7 downto 0);
s : in std_logic_vector(2 downto 0);
y : out std_logic
);

end entity;


architecture working of mux_8_1 is

begin 

y <= d(to_integer(unsigned(s)));

end architecture;