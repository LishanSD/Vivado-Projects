----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2023 08:14:56 AM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is

COMPONENT Decoder_3_to_8
    PORT(  I : IN STD_LOGIC_VECTOR (2 downto 0);
           EN : IN STD_LOGIC;
           Y : OUT STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

SIGNAL I : std_logic_vector (2 downto 0);
SIGNAL EN : std_logic;
SIGNAL Y : std_logic_vector (7 downto 0);

begin

UUT: Decoder_3_to_8 PORT MAP(
    I => I,
    EN => EN,
    Y => Y
);

process
begin
    I(2) <= '0';
    I(1) <= '1';
    I(0) <= '1';
    EN <= '1';
    WAIT FOR 100 ns;
    
    I(2) <= '0';
    I(1) <= '1';
    I(0) <= '1';
    EN <= '0';
    WAIT FOR 100 ns;
     
    I(2) <= '1';
    I(1) <= '0';
    I(0) <= '0';
    EN <= '1';
    WAIT FOR 100 ns;
    
    I(2) <= '1';
    I(1) <= '0';
    I(0) <= '0';
    EN <= '0';
    WAIT FOR 100 ns;
     
    I(2) <= '1';
    I(1) <= '1';
    I(0) <= '0';
    EN <= '1';
    WAIT FOR 100 ns; 
    
    I(2) <= '1';
    I(1) <= '1';
    I(0) <= '0';
    EN <= '0';
    WAIT FOR 100 ns;     
    
    I(2) <= '0';
    I(1) <= '1';
    I(0) <= '0';
    EN <= '1';
    WAIT FOR 100 ns;
    
    I(2) <= '0';
    I(1) <= '1';
    I(0) <= '0';
    EN <= '0';
    WAIT;
     
end process;

end Behavioral;