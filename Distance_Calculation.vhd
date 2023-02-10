library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity Distance_Calculation is
	Port(	clk : in STD_LOGIC;
			calculation_rst : in STD_LOGIC;
			pulse : in STD_LOGIC;
			distance : out STD_LOGIC_VECTOR(9 downto 0));
end Distance_Calculation;

architecture RTL of Distance_Calculation is
	component Counter is
		generic(N : POSITIVE := 19);
		port( clk : in STD_LOGIC;
				enable : in STD_LOGIC;
				reset : in STD_LOGIC;
				counter_output : out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;

signal Pulse_width: STD_LOGIC_VECTOR(21 downto 0);

begin
CounterPulse : Counter generic map(22) port map(clk,pulse,not calculation_rst,Pulse_width);

Distance_calculation : process(clk,pulse)

								variable Result : integer;
								variable multiplier : STD_LOGIC_VECTOR(23 downto 0);
								
								begin
								
								-- I want mm = pulse_time * 100 // 582
								
								-- to express in centimeters expression should be multiplied by 20 and divided by 1000 (divided by 500)
								-- I want to express that in milimeters so got to divide by 10.
								
								if(pulse = '0') then
										multiplier := Pulse_width * "11";
										
										Result := to_integer(unsigned(multiplier(23 downto 13)));
										
										if (Result > 458) then
										
											distance <= "1111111111";
											
										else
										
											distance <= STD_LOGIC_VECTOR(to_unsigned(Result,10));
											
										end if;
	
								end if;
								
end process Distance_calculation;

end RTL;