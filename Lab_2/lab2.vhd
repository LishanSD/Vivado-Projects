-- Company: 
-- Engineer: Lishan
-- 
-- Create Date: 03/07/2023 01:41:56 PM
-- Design Name: 
-- Module Name: Lab2 - Behavioral
-- Project Name: 
-- Target Devices: BASYS 3
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab2 is
    Port ( g0 : in STD_LOGIC;
           g1 : in STD_LOGIC;
           g2 : in STD_LOGIC;
           g : out STD_LOGIC;
           a : out STD_LOGIC;
           r : out STD_LOGIC);
end Lab2;

architecture Behavioral of Lab2 is

begin
    g <= g2 AND g1 AND g0;
    a <= (g2 AND g1 AND (NOT g0)) OR (g2 AND (NOT g1) AND g0) OR ((NOT g2) AND g1 AND g0);
    r <= ((NOT g2) AND (NOT g1)) OR ((NOT g2) AND (NOT g0)) OR ((NOT g1) AND (NOT g0));


end Behavioral;