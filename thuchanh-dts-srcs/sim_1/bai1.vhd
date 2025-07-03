----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.07.2025 17:58:10
-- Design Name: 
-- Module Name: bai1 - Behavioral
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

entity bai1 is
    Port ( 
        A : in std_logic;
        B : in std_logic;
        C: in  std_logic;
        F : out std_logic    
    );
end bai1;
    
architecture Behavioral of bai1 is
  
begin
    F <= ((A nor A) nand (B nand C)) nand (B nand C);
end Behavioral;