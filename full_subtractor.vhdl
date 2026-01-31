library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor is 
port(
a,b,borrow_in : in std_logic;
difference , borrow : out std_logic
);
end entity;

architecture  behaviral of full_subtractor is 

begin

difference <= a xor b xor borrow_in ;
borrow <= ((not a) and borrow_in) or ((not a) and b) or (b and borrow_in );

end architecture ;

