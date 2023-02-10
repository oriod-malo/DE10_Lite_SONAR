library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ultrasonic is
	port(
	CLOCK	: in	std_logic;
	o_OUT	: out	std_logic_vector(7 downto 0);
	TRIG	: out	std_logic;
	ECHO	: in	std_logic);
	
end ultrasonic;

architecture rtl of ultrasonic is

signal microseconds	: std_logic;
signal counter			: std_logic_vector(17 downto 0);
signal s_out			: std_logic_vector(7 downto 0);
signal trigger			: std_logic;

begin
	
	process(CLOCK)
	variable count0: integer range 0 to 7;
	begin
		if rising_edge(CLOCK) then
			if count0 = 5 then
				count0 := 0;
			else
				count0 := count0 + 1;
			end if;
			if count0 = 0 then
				microseconds <= not microseconds;
			end if;
		end if;
	end process;
	
	process(microseconds)
	variable count1: integer range 0 to 262143;
	begin
		if rising_edge(microseconds) then
			if count1 = 0 then
				counter <= "000000000000000000";
				trigger <= '1';
			elsif count1 = 10 then
				trigger <= '0';
			end if;
			if ECHO = '1' then
				counter <= counter + 1;
			end if;
			if count1 = 249999 then
				count1 := 0;
			else
				count1 := count1 + 1;
			end if;
		end if;
	end process;
	
	process(ECHO)
	begin
		if falling_edge(ECHO) then
			if counter < 291 then
				s_out <= "11111111";
			elsif counter < 581 then
				s_out <= "11111110";
			elsif counter < 871 then
				s_out <= "11111100";
			elsif counter < 1161 then
				s_out <= "11111000";
			elsif counter < 1451 then
				s_out <= "11110000";
			elsif counter < 1741 then
				s_out <= "11100000";
			elsif counter < 2031 then
				s_out <= "11000000";
			elsif counter < 2321 then
				s_out <= "10000000";
			else
				s_out <= "00000000";
			end if;
		end if;
	end process;
	
	o_OUT <= s_out;
	TRIG <= trigger;
	
end rtl;