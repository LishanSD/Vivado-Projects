----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2023 09:50:30 PM
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is

COMPONENT D_FF
    PORT( D, Res, Clk : IN STD_LOGIC; 
          Q, Qbar : OUT STD_LOGIC);
END COMPONENT;

SIGNAL D, Res, Clk : std_logic;
SIGNAL Q, Qbar : std_logic;

begin

UUT: D_FF PORT MAP(
    D => D, 
    Res => Res, 
    Clk => Clk, 
    Q => Q,
    Qbar => Qbar
);
 
process
begin
  Clk <= '0';
  Res <= '0';
  D <= '0';
  WAIT FOR 100 ns;
  
  Clk <= '0';
  Res <= '0';
  D <= '1';
  WAIT FOR 100 ns;
  
  Clk <= '0';
  Res <= '1';
  D <= '0';
  WAIT FOR 100 ns;
  
  Clk <= '0';
  Res <= '1';
  D <= '1';
  WAIT FOR 100 ns;
  
  Clk <= '1';
  Res <= '0';
  D <= '0';
  WAIT FOR 100 ns;
  
  Clk <= '1';
  Res <= '0';
  D <= '1';
  WAIT FOR 100 ns;
  
  Clk <= '1';
  Res <= '1';
  D <= '0';
  WAIT FOR 100 ns;
  
  Clk <= '1';
  Res <= '1';
  D <= '1';
  WAIT FOR 100 ns;
  
end process;
 
end Behavioral;