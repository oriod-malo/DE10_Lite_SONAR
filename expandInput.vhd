library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity expandInput is
	generic(
	i_N:positive :=10;
	o_N:positive := 19);
	
	port(
	i_val : in std_logic_vector(i_N-1 downto 0);
	o_val : out std_logic_vector(o_N-1 downto 0));
end expandInput;

architecture rtl of expandInput is
	begin
	o_val (i_N-1 downto 0) <= i_val;
	o_val (o_N-1 downto i_N) <= (others =>'0');
end rtl;