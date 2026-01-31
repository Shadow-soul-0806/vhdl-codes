library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1 is
    port(
        d : in  std_logic_vector(1 downto 0); 
        s : in  std_logic;                    
        y : out std_logic                     
    );
end entity;

architecture behavioral of mux_2_1 is
begin

    
    with s select
        y <= d(0) when '0',
             d(1) when '1',
             'X'  when others;

end architecture;
