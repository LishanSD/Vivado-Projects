----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2023 09:59:19 AM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is

COMPONENT Mux_8_to_1
    PORT(  S : IN STD_LOGIC_VECTOR (2 downto 0);
           D : IN STD_LOGIC_VECTOR (7 downto 0);
           EN : IN STD_LOGIC;
           Y : OUT STD_LOGIC);
END COMPONENT;
SIGNAL S : std_logic_vector (2 downto 0);
SIGNAL D : std_logic_vector (7 downto 0);
SIGNAL EN : std_logic;
SIGNAL Y : std_logic;

begin
UUT: Mux_8_to_1 PORT MAP(
    S => S,
    D => D,
    EN => EN,
    Y => Y
);
process
begin
    D(0) <= '1'; -- D(0) to D(7) are the 8 LSBs of the index number (210339) 
    D(1) <= '1';
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '0';
    D(5) <= '1';
    D(6) <= '0';
    D(7) <= '1';
    S(2) <= '0'; 
    S(1) <= '0';
    S(0) <= '0';
    EN <= '1';
    WAIT FOR 100 ns;
    
    D(0) <= '1'; 
    D(1) <= '1';
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '0';
    D(5) <= '1';
    D(6) <= '0';
    D(7) <= '1';   
    S(2) <= '0'; 
    S(1) <= '0';
    S(0) <= '1';
    EN <= '1';
    WAIT FOR 100 ns;
    
    D(0) <= '1'; 
    D(1) <= '1';
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '0';
    D(5) <= '1';
    D(6) <= '0';
    D(7) <= '1';
    S(2) <= '0'; 
    S(1) <= '1';
    S(0) <= '0';
    EN <= '1';
    WAIT FOR 100 ns;
    
    D(0) <= '1'; 
    D(1) <= '1';
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '0';
    D(5) <= '1';
    D(6) <= '0';
    D(7) <= '1';    
    S(2) <= '0'; 
    S(1) <= '1';
    S(0) <= '1';
    EN <= '1';
    WAIT FOR 100 ns;
    
    D(0) <= '1'; 
    D(1) <= '1';
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '0';
    D(5) <= '1';
    D(6) <= '0';
    D(7) <= '1'; 
    S(2) <= '1'; 
    S(1) <= '0';
    S(0) <= '0';
    EN <= '1';
    WAIT FOR 100 ns;
    
    D(0) <= '1'; 
    D(1) <= '1';
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '0';
    D(5) <= '1';
    D(6) <= '0';
    D(7) <= '1';  
    S(2) <= '1'; 
    S(1) <= '0';
    S(0) <= '1';
    EN <= '1';
    WAIT FOR 100 ns;
    
    D(0) <= '1'; 
    D(1) <= '1';
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '0';
    D(5) <= '1';
    D(6) <= '0';
    D(7) <= '1';   
    S(2) <= '1'; 
    S(1) <= '1';
    S(0) <= '0';
    EN <= '1';
    WAIT FOR 100 ns;
    
    D(0) <= '1'; 
    D(1) <= '0';
    D(2) <= '1';
    D(3) <= '1';
    D(4) <= '0';
    D(5) <= '0';
    D(6) <= '1';
    D(7) <= '1';
    S(2) <= '1';
    S(1) <= '1';
    S(0) <= '1';
    EN <= '1';
    WAIT;     
end process;
end Behavioral;

