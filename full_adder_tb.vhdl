library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end entity;

architecture tb of full_adder_tb is

    -- DUT signals
    signal a_tb     : std_logic := '0';
    signal b_tb     : std_logic := '0';
    signal cin_tb   : std_logic := '0';
    signal sum_tb   : std_logic;
    signal carry_tb : std_logic;

    -- DUT component
    component full_adder
        port(
            a, b, carry_in : in  std_logic;
            sum, carry     : out std_logic
        );
    end component;

begin

    -- DUT instantiation
    DUT : full_adder
        port map(
            a        => a_tb,
            b        => b_tb,
            carry_in => cin_tb,
            sum      => sum_tb,
            carry    => carry_tb
        );

    -- Stimulus process
    stim_proc : process
    begin

        report "Starting Full Adder Testbench..." severity note;

        -- 000
        a_tb <= '0'; b_tb <= '0'; cin_tb <= '0';
        wait for 10 ns;
        assert (sum_tb='0' and carry_tb='0')
            report "ERROR: 000 failed" severity error;

        -- 001
        a_tb <= '0'; b_tb <= '0'; cin_tb <= '1';
        wait for 10 ns;
        assert (sum_tb='1' and carry_tb='0')
            report "ERROR: 001 failed" severity error;

        -- 010
        a_tb <= '0'; b_tb <= '1'; cin_tb <= '0';
        wait for 10 ns;
        assert (sum_tb='1' and carry_tb='0')
            report "ERROR: 010 failed" severity error;

        -- 011
        a_tb <= '0'; b_tb <= '1'; cin_tb <= '1';
        wait for 10 ns;
        assert (sum_tb='0' and carry_tb='1')
            report "ERROR: 011 failed" severity error;

        -- 100
        a_tb <= '1'; b_tb <= '0'; cin_tb <= '0';
        wait for 10 ns;
        assert (sum_tb='1' and carry_tb='0')
            report "ERROR: 100 failed" severity error;

        -- 101
        a_tb <= '1'; b_tb <= '0'; cin_tb <= '1';
        wait for 10 ns;
        assert (sum_tb='0' and carry_tb='1')
            report "ERROR: 101 failed" severity error;

        -- 110
        a_tb <= '1'; b_tb <= '1'; cin_tb <= '0';
        wait for 10 ns;
        assert (sum_tb='0' and carry_tb='1')
            report "ERROR: 110 failed" severity error;

        -- 111
        a_tb <= '1'; b_tb <= '1'; cin_tb <= '1';
        wait for 10 ns;
        assert (sum_tb='1' and carry_tb='1')
            report "ERROR: 111 failed" severity error;

        report "ALL FULL ADDER TESTS PASSED SUCCESSFULLY!" severity note;

        wait; -- stop simulation
    end process;

end architecture;
