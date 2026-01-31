library ieee;
use ieee.std_logic_1164.all;

entity half_subtractor is
port(
a,b : in std_logic;
difference,borrow : out std_logic
);
end entity;

architecture structural of half_subtractor is 

signal w :std_logic;

begin 

dut1 :entity work.xor_gate 
port map (
a => a,
b => b,
y => difference
);

dut2 : entity work.not_gate
port map (
a => a,
y => w
);

dut3 :entity work.and_gate
port map (
a => w,
b => b,
y => borrow
);

end architecture;
