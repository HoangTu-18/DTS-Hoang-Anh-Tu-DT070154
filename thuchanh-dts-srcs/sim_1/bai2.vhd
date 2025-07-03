----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.07.2025 18:25:07
-- Design Name: 
-- Module Name: bai2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bai2 is
    Port ( 
        A : in std_logic;
        B : in std_logic;
        C: in  std_logic;
        F : out std_logic   
    );
end bai2;

architecture Behavioral of bai2 is

begin
    F <=  (C nor (A nor (B nor B)))nor((A nor A) nor B);
end Behavioral;