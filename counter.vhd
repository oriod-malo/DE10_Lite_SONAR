library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
	generic(n : POSITIVE := 10);
	port( clk : in STD_LOGIC;
			enable : in STD_LOGIC;
			reset : in STD_LOGIC;
			counter_output : out STD_LOGIC_VECTOR(n-1 downto 0));
end Counter;

architecture RTL of Counter is

signal count : STD_LOGIC_VECTOR(n-1 downto 0);

begin
process (clk,reset)

	begin
	if(reset = '0') then
		count <= (others =>'0');
	elsif(rising_edge(clk)) then
		if(enable = '1') then
			count <= count + 1;
		end if;
	
	end if;
end process;

counter_output <= count;

end RTL;