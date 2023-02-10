-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity clockdivider is

	port
	(
		clk		  : in std_logic;
		enable	  : in std_logic;
		reset	  : in std_logic;
		dataclk	  : out std_logic_vector (15 downto 0)
		
	);

end entity;

architecture rtl of clockdivider is
begin 
	process(clk,reset)
		variable count : std_logic_vector (15 downto 0):= (others =>'0');
		begin 
			if reset = '1' then 
				count := (others=>'0');
			elsif  clk'event  and clk = '1' then 
				if enable = '1' then 
				count:= count +1;
				end if ;
			end if;
			
			dataclk <= count; 
	end process;

end rtl;
