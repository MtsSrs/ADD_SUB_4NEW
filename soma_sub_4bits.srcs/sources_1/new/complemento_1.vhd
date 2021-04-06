library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity complemento_1 is
    Port (  entradaA : in std_logic;
            entradaB : in std_logic;
            saidaA: out std_logic;
            saidaB: out std_logic);
end complemento_1;

architecture Behavioral of complemento_1 is

begin

saidaA <= not entradaA;
saidaB <= not entradaB;
end Behavioral;
