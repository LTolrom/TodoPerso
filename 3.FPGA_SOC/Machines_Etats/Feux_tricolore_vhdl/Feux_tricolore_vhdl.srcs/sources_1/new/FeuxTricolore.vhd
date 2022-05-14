library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Feux_tricolore is
    Port ( CLK : in STD_LOGIC; --Clock
           P : in STD_LOGIC; --Capteur pression
           N : out STD_LOGIC_VECTOR (2 downto 0); -- feux national "rouge,orange,vert"
           C : out STD_LOGIC_VECTOR (2 downto 0));-- feux communal "rouge,orange,vert"
end Feux_tricolore;

architecture Behavioral of Feux_tricolore is
type type_etat is (Etat0,Etat1,Etat2,Etat3,Etat4,Etat5,Etat6);
signal etat: type_Etat;

begin

process(CLK) is
variable  div : integer:=0;
begin 

if rising_edge (CLK) then
div:=div+1;

    case etat is
When Etat0 => if P ='1' then
            etat<=etat1;
            div:=0;
         else
            Etat<=etat0;
         end if;
When Etat1=> if div=5 then
            Etat <=Etat2;
            div:=0;
         else
            Etat<=Etat1;
         end if;
When Etat2=> if div=5 then
            div:=0;
            Etat<=Etat3 ;
         else 
            Etat<=Etat2;
         end if;
When Etat3=> if div=10 then
            div:=0;
            Etat<=Etat4 ;
         else
     
            Etat<=Etat3;
         end if;
When Etat4=> if div=5 then
            div:=0;
            Etat <=Etat5;

         else
            Etat<=Etat4;
         end if;
When Etat5=> if div=5 then
            div:=0;
            Etat <=Etat6;
         else
            Etat<=Etat5;
         end if;
 When Etat6=> if div=10 then
            div:=0;
            Etat <=Etat0;
         else
            Etat<=Etat6;
         end if;
  end case;
 end if;
end process;

process(etat)

begin
    case etat is
        when Etat0=>
            N <="001";
            C <="100";
        when Etat1=>
            N <="010";
            C <="100";
        when Etat2=>
            N <="100";
            C <="100";
        when Etat3=>
            N <="100";
            C <="001";
        when Etat4=>
            N <="100";
            C <="010";
        when Etat5=>
            N <="100";
            C <="100";
        when Etat6=>
            N <="001";
            C <="100";
         
end case ;
end process;
end Behavioral;




