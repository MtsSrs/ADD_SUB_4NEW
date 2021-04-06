library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity soma1 is
    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           cin1 : in STD_LOGIC;
           s1 : out STD_LOGIC;
           cout1 : out STD_LOGIC);
end soma1;

architecture Behavioral of soma1 is

begin

    s1 <= a1 xor b1 xor cin1;
    cout1 <= (a1 and b1) or (a1 and cin1) or (b1 and cin1);

end Behavioral;
