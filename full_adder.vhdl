library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port(
a,b,carry_in : in std_logic;
sum,carry : out std_logic

);
end entity;


architecture structural of full_adder is 


signal s1 : std_logic;
signal c1 : std_logic;
signal c2 : std_logic;



component half_adder
port(
a,b : in std_logic;
sum,carry : out std_logic
);
end component;


component or_gate
port(
a,b : in std_logic;
y : out std_logic
);
end component;

begin 

ha1 : half_adder
port map (
a => a,
b => b,
carry => c1,
sum => s1 
);


ha2 : half_adder
port map (
a => s1,
b => carry_in,
carry => c2,
sum => sum 
);


or1 : or_gate
port map (
a => c1,
b => c2,
y => carry 
);

end architecture;
