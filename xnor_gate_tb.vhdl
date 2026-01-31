library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity xnor_gate_tb is 
end entity;

architecture testing of xnor_gate_tb is 

    signal a_tb : std_logic;
    signal b_tb : std_logic;
    signal y_tb : std_logic;

begin 

    -- DUT instantiation
    dut : entity work.xnor_gate
    port map (
        a => a_tb,
        b => b_tb,
        y => y_tb
    );

    -- Test process
    process
        variable expected : std_logic;
        variable vec      : std_logic_vector(1 downto 0);
    begin 

        for i in 0 to 3 loop

            -- generate input vector
            vec := std_logic_vector(to_unsigned(i, 2));

            a_tb <= vec(1);
            b_tb <= vec(0);

            -- allow signals to propagate
            wait for 10 ns;

            -- expected output
            expected := a_tb xnor b_tb;

            if expected = y_tb then 
                report "PASS "
                severity note;
            else
                report " FAIL "
                severity error;
            end if;

        end loop;

        report "TESTING COMPLETED SUCCESSFULLY" severity note;
        wait;   -- stop simulation

    end process;

end architecture;
