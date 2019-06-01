library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Finite_State_Machine is
port ( 
clk: in std_logic;
A :in std_logic_vector(1 downto 0);
B:out std_logic_vector(7 downto 0);

di: out std_logic

);

end Finite_State_Machine;

architecture bhv of Finite_State_Machine is
signal state: std_logic_vector(7 downto 0);
signal outsig: std_logic_vector(7 downto 0);
signal insig: std_logic_vector(1 downto 0);
signal send: std_logic:= '0';
begin
--insig<=A;
process(clk)
begin

if(rising_edge(clk)) then
send<='0';
	if(A/="00") then
	
	
	case state is
	when "00000000" =>--START
	
		case A is
		when "01" => --dot
       state<="01000101";--E
		when "10" => --dash
      state<="01010100";--T	
		when others=>
		
	end case;
	
	
	when "01000101" => --E
	------
		case A is
		when "01" => --dot
       state<="01001001";--I
		when "10" => --dash
      state<="01000001";--A
	
	when others=>	
		
	end case;
	-----
	
	
	when "01001001" => --I
	------
		case A is
		when "01" => --dot
       state<="01010011";--S
		when "10" => --dash
      state<="01010101";--U
		
		when others=>
		
	end case;
	-----
	
	
	
	when "01010011" => --S
	
	------
	case A is
		when "01" => --dot
       state<="01001000";--H
		when "10" => --dash
      state<="01010110";--V
		
		when others=>
		
	end case;
	
		------
	
	
	
	
	
	
	when "01001000" => --H
	
	
	------
	case A is
		when "01" => --dot
       state<="00110101";--5	 	
		when "10" => --dash
      state<="00110100";--4
			
		when others=>
		
	end case;
	
		------
	
	
	
	
	
	when "01010110" =>--V
	
	------
	case A is
		when "01" => --dot
       state<="11111111";--NULL
		 
		
		when "10" => --dash
      state<="00110011";--3
	
			
		when others=>
		
	end case;
	
		------
	
	when "01010101" =>--U
	
	------
	case A is
		when "01" => --dot
       state<="01000110";--f
		
		
		when "10" => --dash
      state<="11111110";--NULL2	
			
		when others=>
		
	end case;
	
		------
	when "11111110" =>--NULL2
	
	------
	case A is
		when "01" => --dot
       state<="11111111";--NULL
		
		
		when "10" => --dash
      state<="00110010";--2	
			
		when others=>
		
	end case;
	---------
	
	when "01000001" =>--A
	
	------
	case A is
		when "01" => --dot
       state<="01010010";--R
		
		
		when "10" => --dash
      state<="01010111";--W	
			
		when others=>
		
	end case;
	
	---------
	
	when "01010010" =>--R
	
	------
	case A is
		when "01" => --dot
       state<="01001100";--L
		
		
		when "10" => --dash
      state<="11111111";--NULL	
			
		when others=>
		
	end case;
	
	
	---------
	
		when "01010111" =>--R
	
	------
	case A is
		when "01" => --dot
       state<="01010000";--P
		
		
		when "10" => --dash
      state<="01001010";--J	
			
		when others=>
		
	end case;
	
		---------
	
		when "01001010" =>--J
	
	------
	case A is
		when "01" => --dot
       state<="11111111";--NULL
		
		
		when "10" => --dash
      state<="00110001";--J	
		when others=>
		
	end case;
		
		
			---------
	
		when "01010100" =>--T
	
	------
	case A is
		when "01" => --dot
       state<="01001110";--N
		
		
		when "10" => --dash
      state<="01001101";--M
		when others=>
		
	end case;
			---------
	
	
	
	
		when "01001110" =>--N	
	------
	case A is
		when "01" => --dot
       state<="01000100";--D			
		when "10" => --dash
      state<="01001011";--K
		when others=>
		
	end case;
	------	
		
		when "01000100" =>--D	
	------
	case A is
		when "01" => --dot
       state<="01000010";--B			
		when "10" => --dash
      state<="01011000";--X
		when others=>
		
	end case;
	------
	
	
		when "01000010" =>--B	
	------
	case A is
		when "01" => --dot
       state<="00110110";--6			
		when "10" => --dash
      state<="11111111";--NULL
		when others=>
		
	end case;
	------
	
	when "01001011" =>--K	
	------
	case A is
		when "01" => --dot
       state<="01000011";--C			
		when "10" => --dash
      state<="01011001";--Y
		when others=>
		
	end case;
	------
	
	when "01001101" =>--M	
	------
	case A is
		when "01" => --dot
       state<="01000111";--G			
		when "10" => --dash
      state<="01001111";--O
		when others=>
		
	end case;
	------
	
	
	when "01000111" =>--G	
	------
	case A is
		when "01" => --dot
       state<="01011010";--Z			
		when "10" => --dash
      state<="01010001";--Q
		when others=>
		
	end case;
	------
	
	when "01011010" =>--Z	
	------
	case A is
		when "01" => --dot
       state<="00110111";--7			
		when "10" => --dash
      state<="11111111";--NULL
		when others=>
		
	end case;
	------
	
	
	when "01001111" =>--O	
	------
	case A is
		when "01" => --dot
       state<="11111101";--NULL8			
		when "10" => --dash
      state<="11111011";--NULL9
		when others=>
		
	end case;
	------
	
		when "11111101" =>--NULL8	
	------
	case A is
		when "01" => --dot
       state<="00111000";--8			
		when "10" => --dash
      state<="11111111";--NULL
		when others=>
		
	end case;
		
	------
	when "11111011" =>--NULL9	
	------
	case A is
		when "01" => --dot
       state<="00111001";--9			
		when "10" => --dash
      state<="00110000";--0
	------
	
		when others=>
		
	end case;
	
	
	
	
	
	
	
	when others =>
	 state<="11111111";--NULL
		 
	

	end case;
	
		if (A="11")  then
			outsig<=state;
			state<="00000000";
			send<='1';
		end if;

	end if;

end if;


insig<="00";

end process;


B<=outsig;
di<=send;
end bhv;



