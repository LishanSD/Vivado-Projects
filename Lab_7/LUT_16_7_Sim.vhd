library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LUT_16_7_Sim is
--  Port ( );
end LUT_16_7_Sim;

architecture Behavioral of LUT_16_7_Sim is

COMPONENT LUT_16_7
    PORT( address : IN STD_LOGIC_VECTOR (3 downto 0); 
          data : OUT STD_LOGIC_VECTOR (6 downto 0)); 
END COMPONENT;

SIGNAL address : std_logic_vector (3 downto 0);
SIGNAL data : std_logic_vector (6 downto 0);

begin

UUT: LUT_16_7 PORT MAP(
    address => address, 
    data => data
);

process
begin
 address <= "0011"; -- 4 LSBs of the index number (210339J)
 WAIT FOR 100 ns;
 
 address <= "1010"; -- next 4 LSBs of the index number (210339J)
 WAIT FOR 100 ns; 
 
 address <= "0101"; -- next 4 LSBs of the index number (210339J)
 WAIT FOR 100 ns; 
 
 address <= "0011"; -- next 4 LSBs of the index number (210339J)
 WAIT FOR 100 ns; 
 
 address <= "1100"; -- a random value
 WAIT FOR 100 ns;
 
 address <= "1001"; -- a random value
 WAIT FOR 100 ns;
 
 address <= "1111"; -- a random value
 WAIT FOR 100 ns;
 
 address <= "0010"; -- a random value
 WAIT;
 
end process;

end Behavioral;