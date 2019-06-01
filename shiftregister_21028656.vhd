library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Shift_register is
port ( 
clk: in std_logic;
id: in std_logic;
leddata :in std_logic_vector(6 downto 0);
data2led0 :out std_logic_vector(6 downto 0);
data2led1 :out std_logic_vector(6 downto 0);
data2led2 :out std_logic_vector(6 downto 0);
data2led3 :out std_logic_vector(6 downto 0);
data2led4 :out std_logic_vector(6 downto 0);
data2led5 :out std_logic_vector(6 downto 0);
clear: in std_logic 
);

end Shift_register;

architecture bhv of Shift_register is
signal Q0: std_logic_vector(6 downto 0):="0110110";
signal Q1: std_logic_vector(6 downto 0):="0110110";
signal Q2: std_logic_vector(6 downto 0):="0110110";
signal Q3: std_logic_vector(6 downto 0):="0110110";
signal Q4: std_logic_vector(6 downto 0):="0110110";
signal Q5: std_logic_vector(6 downto 0):="0110110";
begin
process(clk,leddata,id,clear)
begin
if(rising_edge(clk)) then
 if(id='1' and (leddata/= "0110110" or Q5="1111110"))then
 Q5<=Q4;
 Q4<=Q3;
 Q3<=Q2;
 Q2<=Q1;
 Q1<=Q0;
 Q0<=leddata;
 end if;
 if(clear='1')then
 Q5<="1111110";
 Q4<="1111110";
 Q3<="1111110";
 Q2<="1111110";
 Q1<="1111110";
 Q0<="1111110";
 end if;

end if;

end process;
data2led0<=Q0;
data2led1<=Q1;
data2led2<=Q2;
data2led3<=Q3;
data2led4<=Q4;
data2led5<=Q5;

end bhv;
