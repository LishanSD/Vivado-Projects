----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 03:56:26 PM
-- Design Name: 
-- Module Name: PC_sim - Behavioral
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

entity PC_sim is
--  Port ( );
end PC_sim;

architecture Behavioral of PC_sim is

COMPONENT PC
    PORT( Res, Clk : IN STD_LOGIC; 
          Q : OUT STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;

SIGNAL Res, Clk : std_logic;
SIGNAL Q : std_logic_vector(2 downto 0);

begin

UUT: PC PORT MAP( 
    Res => Res,
    Clk => Clk,
    Q => Q
);

process
begin
    Clk <= '0';
    WAIT FOR 5ns;

    Clk <= '1';
    WAIT FOR 5ns;
end process;

process
begin
    Res <= '1';
    WAIT FOR 100ns;

    Res <= '0';
    WAIT FOR 500ns;
    
    WAIT;    
end process;

end Behavioral;
