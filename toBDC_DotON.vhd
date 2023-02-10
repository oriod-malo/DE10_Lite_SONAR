library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity toBDC_DotON is
	port 
	(
		i_bcd : in std_logic_vector(3 downto 0);
		o_seg : out std_logic_vector(7 downto 0));
		
end toBDC_DotON;

architecture rtl of toBDC_DotON is
begin
	comb_proc: process(i_bcd)
	begin
		case i_bcd is
				when "0000" =>
				o_seg <= "01000000"; ---0
				when "0001" =>
				o_seg <= "01111001"; ---1
				when "0010" =>
				o_seg <= "00100100"; ---2
				when "0011" =>
				o_seg <= "00110000"; ---3
				when "0100" =>
				o_seg <= "00011001"; ---4
				when "0101" =>
				o_seg <= "00010010"; ---5
				when "0110" =>
				o_seg <= "00000010"; ---6
				when "0111" =>
				o_seg <= "01111000"; ---7
				when "1000" =>
				o_seg <= "00000000"; ---8
				when "1001" =>
				o_seg <= "00010000"; ---9
				when others =>
				o_seg <= "00000000"; ---null
		end case;
	
	end process comb_proc;

end rtl;