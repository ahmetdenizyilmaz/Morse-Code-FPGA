library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
 
entity Clock_Divider is
port 
( clk,reset: in std_logic;
clock_out: out std_logic
);
end Clock_Divider;
 
architecture bhv of Clock_Divider is
 
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
 
process(clk,reset)
begin
if(reset='0') then
count<=1;
tmp<='0';
elsif(clk'event and clk='1') then
count <=count+1;
if (count = 25000000) then -- 50MHZ/25000000 = 2hz
tmp <= NOT tmp;
count <= 1;
end if;
end if;
clock_out <= tmp;
end process;
 
end bhv;
------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Input_Converter is
port ( 
clk: in std_logic;
A : in std_logic;
B:out std_logic_vector(1 downto 0);
C:out std_logic_vector(1 downto 0)
);

end Input_Converter;

architecture bhv of Input_Converter is
signal countt: integer:=1;
signal idlecount: integer:=1;
signal tmp : std_logic := '0';
signal pretmp : std_logic := '0';
signal outsig: std_logic_vector(1 downto 0);
signal outsigdata: std_logic_vector(1 downto 0);
constant  TIMEUNIT50m :integer := 25000000;
 
begin

process(A,clk)
begin
if(rising_edge(clk)) then
outsig<="00";
	if(A='0') then
		countt<=countt+1;
		idlecount<=0;
	else
		if(idlecount>TIMEUNIT50m) then
			outsig<="11";
			outsigdata<="11";
			idlecount<=0;
		else
			idlecount<=idlecount+1;
		end if;

		if(countt>TIMEUNIT50m) then
			outsig<="10";
			outsigdata<="10";
		elsif (countt>5000) then
			outsig<="01";
			outsigdata<="01";
		end if;
		countt<=0;
	end if;
end if;
     

end process;

B<=outsig;
C<=outsigdata;
end bhv;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Input_Converter_Device is
port ( 
clk: in std_logic;
reset: in std_logic;
A : in std_logic;
B:out std_logic_vector(1 downto 0);
C:out std_logic_vector(1 downto 0);
clkout: out std_logic
);
end entity;

architecture rtl of Input_Converter_Device is

component Input_Converter is 

port ( 
clk: in std_logic;
A : in std_logic;
B:out std_logic_vector(1 downto 0);
C:out std_logic_vector(1 downto 0)


);


end component;	


component Clock_Divider is 
 port 
( clk,reset: in std_logic;
clock_out: out std_logic
);
end component;

begin 
G1: Clock_Divider port map(clk,reset,clkout);
G2: Input_Converter port map(clk,A,B,C);


end rtl;