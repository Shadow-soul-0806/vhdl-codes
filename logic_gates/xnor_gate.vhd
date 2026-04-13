library ieee;
use ieee.std_logic_1164.all;

entity xnor_gate is 
port(

	a,b : in std_logic;
	y : out std_logic

);
end xnor_gate;

architecture dataflow of xnor_gate is 
begin 

	y <=  not (a xor b) ;

end dataflow;
