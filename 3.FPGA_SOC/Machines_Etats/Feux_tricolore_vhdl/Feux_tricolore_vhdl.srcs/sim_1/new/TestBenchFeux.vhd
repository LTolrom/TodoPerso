----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2022 19:09:56
-- Design Name: 
-- Module Name: TestBenchFeux - Behavioral
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

entity TestBenchFeux is
end TestBenchFeux ;

architecture Behavioral of TestBenchFeux is


Component Feux_tricolore
Port ( CLK : in STD_LOGIC;
           P : in STD_LOGIC;
           N : out STD_LOGIC_VECTOR (2 downto 0); -- feux national "rouge,orange,vert"
           C : out STD_LOGIC_VECTOR (2 downto 0));
end Component;


--input
Signal CLK : STD_LOGIC :='0';
Signal P : STD_LOGIC :='0';
--Output
Signal N : STD_LOGIC_VECTOR (2 downto 0) :="000";
Signal C : STD_LOGIC_VECTOR (2 downto 0) :="000";

begin
utt : Feux_tricolore port map(
        CLK=>CLK,
        P=>P,
        N=>N ,
        C=>C );
        
 --stimulus process
 clock_process: process
begin
    clk <= '0';
    wait for 10 NS;
    clk <= '1';
    wait for 10 NS;
end process;
 stim_proc: process
 begin
wait for 100ns;
 P<='1';
 wait for 15ns;
 P<='0'; 
 wait for 1000ns;
 end process;
 
  



end Behavioral;