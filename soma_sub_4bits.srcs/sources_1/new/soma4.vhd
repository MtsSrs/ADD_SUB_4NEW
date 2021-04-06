library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity soma4 is
    Port ( a4 : in STD_LOGIC_VECTOR (3 downto 0);
           b4 : in STD_LOGIC_VECTOR (3 downto 0);
           cin4 : in STD_LOGIC;
           s4 : out STD_LOGIC_VECTOR (3 downto 0);
           cout4 : out STD_LOGIC);
end soma4;

architecture Behavioral of soma4 is

signal c_0, c_1, c_2: STD_LOGIC;
signal c1_A, c1_B: std_logic;
-------------------------------------------------------------
component soma1
    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           cin1 : in STD_LOGIC;
           s1 : out STD_LOGIC;
           cout1 : out STD_LOGIC);
end component;
-------------------------------------------------------------
component complemento_1
    Port (  entradaA : in std_logic;
            entradaB : in std_logic;
            saidaA: out std_logic;
            saidaB: out std_logic);
end component;
-------------------------------------------------------------

begin

    sum1: Soma1 port map( a1=>a4(0), b1=>b4(0), cin1 => cin4, s1 => s4(0), cout1 => c_0);
    sum2: Soma1 port map( a1=>a4(1), b1=>b4(1), cin1 => c_0, s1 => s4(1), cout1 => c_1);
    sum3: Soma1 port map( a1=>a4(2), b1=>b4(2), cin1 => c_1, s1 => s4(2), cout1 => c_2);
    sum4: Soma1 port map( a1=>a4(3), b1=>b4(3), cin1 => c_2, s1 => s4(3), cout1 => cout4);

    comple1: complemento_1 port map ( entradaA => a4(0), entradaB => b4(0), saidaA => c1_A, saidaB => c1_B);
    
end Behavioral;
