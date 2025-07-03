library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai1 is
end tb_bai1;

architecture Behavioral of tb_bai1 is
    component bai1
        Port ( 
            A : in std_logic;
            B : in std_logic;
            C : in std_logic;
            F : out std_logic    
        );
    end component;

    signal A_tb, B_tb, C_tb : std_logic := '0';
    signal F_tb : std_logic;

begin
    uut: bai1 port map (
        A => A_tb,
        B => B_tb,
        C => C_tb,
        F => F_tb
    );

    stimulus: process
    begin
        -- Test case 1: A=0, B=0, C=0
        A_tb <= '0'; B_tb <= '0'; C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 2: A=0, B=0, C=1
        A_tb <= '0'; B_tb <= '0'; C_tb <= '1';
        wait for 10 ns;
        
        -- Test case 3: A=0, B=1, C=0
        A_tb <= '0'; B_tb <= '1'; C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 4: A=0, B=1, C=1
        A_tb <= '0'; B_tb <= '1'; C_tb <= '1';
        wait for 10 ns;
        
        -- Test case 5: A=1, B=0, C=0
        A_tb <= '1'; B_tb <= '0'; C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 6: A=1, B=0, C=1
        A_tb <= '1'; B_tb <= '0'; C_tb <= '1';
        wait for 10 ns;
        
        -- Test case 7: A=1, B=1, C=0
        A_tb <= '1'; B_tb <= '1'; C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 8: A=1, B=1, C=1
        A_tb <= '1'; B_tb <= '1'; C_tb <= '1';
        wait for 10 ns;
        
     
    end process;

end Behavioral;