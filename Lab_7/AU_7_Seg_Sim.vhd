library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU_7_seg_Sim is
--  Port ( );
end AU_7_seg_Sim;

architecture Behavioral of AU_7_seg_Sim is

component AU_7_seg
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           S_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC;
           Annode : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A, S_LED : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal Annode : STD_LOGIC_VECTOR (3 downto 0) := "1110";
signal S_7Seg : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal RegSel, Clk, Zero, Carry : STD_LOGIC := '0';

begin

UUT : AU_7_seg
    PORT MAP(
        A => A,
        S_LED => S_LED,
        S_7Seg => S_7Seg,
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