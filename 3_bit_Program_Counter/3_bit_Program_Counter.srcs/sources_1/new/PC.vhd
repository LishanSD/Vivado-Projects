----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 03:42:33 PM
-- Design Name: 
-- Module Name: PC - Behavioral
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

entity PC is
    Port ( Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end PC;

architecture Behavioral of PC is

 component D_FF 
 port ( 
 D : in STD_LOGIC; 
 Res: in STD_LOGIC; 
 Clk : in STD_LOGIC; 
 Q : out STD_LOGIC; 
 Qbar : out STD_LOGIC); 
 end component; 
 
 signal D0, D1, D2 : std_logic; 
 signal Q0, Q1, Q2 : std_logic;

begin

 D0 <= not Q0; 
 D1 <= ((not Q1) and Q0) or (Q1 and (not Q0)); 
 D2 <= ((not Q1) and Q2) or (Q0 and Q1 and (not Q2)) or (Q2 and Q1 and (not Q0)); 
 
 D_FF0 : D_FF 
 port map ( 
 D => D0, 
 Res => Res, 
 Clk => Clk, 
 Q => Q0);
  
 D_FF1 : D_FF 
 port map (
 D => D1, 
 Res => Res, 
 Clk => Clk, 
 Q => Q1); 
 
 D_FF2 : D_FF 
 port map (
 D => D2, 
 Res => Res, 
 Clk => Clk, 
 Q => Q2);
 
Q(0) <= Q0; 
Q(1) <= Q1;
Q(2) <= Q2;

end Behavioral;
