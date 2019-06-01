library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Morse is
port ( 
clk: in std_logic;
reset: in std_logic;
A :in std_logic;
B:out std_logic_vector(1 downto 0);
L0:out std_logic_vector(6 downto 0);
L1:out std_logic_vector(6 downto 0);
L2:out std_logic_vector(6 downto 0);
L3:out std_logic_vector(6 downto 0);
L4:out std_logic_vector(6 downto 0);
L5:out std_logic_vector(6 downto 0);
clkout: out std_logic
);
end entity;

architecture rtl of Morse is

component Input_Converter_Device is 

port ( 
clk: in std_logic;
reset: in std_logic;
A : in std_logic;
B:out std_logic_vector(1 downto 0);
C:out std_logic_vector(1 downto 0);
clkout: out std_logic
);
end component;


component Finite_State_Machine is 
port ( 
clk: in std_logic;
A :in std_logic_vector(1 downto 0);
B:out std_logic_vector(7 downto 0);
di: out std_logic
);
end component;

component Shift_register is 
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
end component;

signal P: std_logic_vector(1 downto 0);----ICD TO FSM
signal P2: std_logic_vector(1 downto 0);----ICD TO FSM
signal Q: std_logic_vector(7 downto 0);---ascii
signal Q2: std_logic_vector(6 downto 0);---LEDDATA
signal dil: std_logic;---di logic
begin

G1: work.Input_Converter_Device port map(clk,reset,A,P,B,clkout);
G2: work.Finite_State_Machine port map(clk,P,Q,dil);
G3: work.ascii2led port map (Q,Q2);
G4: work.shift_register port map(clk,dil,Q2,L0,L1,L2,L3,L4,L5,reset);


end rtl;