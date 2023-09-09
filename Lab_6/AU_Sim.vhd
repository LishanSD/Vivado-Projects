library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU_Sim is
--  Port ( );
end AU_Sim;

architecture Behavioral of AU_Sim is
component AU
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;

signal A, S : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal RegSel, Clk, Zero, Carry : STD_LOGIC := '0';

begin
UUT : AU
    PORT MAP(
        A => A,
        S => S,
        RegSel => RegSel,
        Clk => Clk,
        Zero => Zero,
        Carry => Carry            
    );
    
process
begin
    Clk <= NOT(Clk);
    wait for 2ns;
end process;

process
begin
    RegSel <= '1';
    A <= "0011"; -- 4 LSBs of the index number (210339J)
    wait for 92ns;
    
    RegSel <= '0';
    A <= "1010"; -- next 4 LSBs of the index number (210339J)
    wait for 96ns;
    
    RegSel <= '0';
    A <= "0101"; -- next 4 LSBs of the index number (210339J)
    wait for 96ns;
    
    RegSel <= '0';
    A <= "0011"; -- next 4 LSBs of the index number (210339J)
    wait for 96ns;
    
    RegSel <= '0';
    A <= "1001"; -- a random value
    wait for 96ns;
    
    RegSel <= '0';
    A <= "1111"; -- a random value
    wait for 96ns;
    
    RegSel <= '0';
    A <= "0001"; -- a random value
    wait for 96ns;
    
    RegSel <= '0';
    A <= "1110"; -- a random value
    wait for 96ns;
    
    RegSel <= '0';
    A <= "0110"; -- a random value
    wait;
end process;
end Behavioral;