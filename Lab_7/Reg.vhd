
entity Reg is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Reg;

architecture Behavioral of Reg is

begin

process (Clk) 
begin
    if (rising_edge(Clk)) then 
        if En = '1' then 
            Q <= D;
        end if;
    end if;
end process;

end Behavioral;


AU_7_Seg.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU_7_seg is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           S_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC;
           Annode : out STD_LOGIC_VECTOR (3 downto 0));
end AU_7_seg;

architecture Behavioral of AU_7_seg is

component AU
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;

component LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal address0 : STD_LOGIC_VECTOR (3 downto 0);

begin

AU_0 : AU
    PORT MAP(
        A => A,
        RegSel => RegSel,
        Clk => Clk,
        S => address0,
        Zero => Zero,
        Carry => Carry
    );
   
LUT_16_7_0 : LUT_16_7
    PORT MAP(
        address => address0,
        data => S_7Seg 
    );

S_LED <= address0;
Annode <= "1110";

end Behavioral;