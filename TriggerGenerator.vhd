library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TriggerGenerator is 
	port ( clk : in STD_LOGIC;
			 Trigger : out STD_LOGIC);
end TriggerGenerator;

architecture RTL of TriggerGenerator is
	component Counter is
		generic(N : POSITIVE := 10);
		port( clk : in STD_LOGIC;
				enable : in STD_LOGIC;
				reset : in STD_LOGIC;
				counter_output : out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;

signal ResetCounter : STD_LOGIC;
signal outputCounter : STD_LOGIC_VECTOR(23 downto 0);

begin
	trigg : Counter generic map(24) port map(clk,'1',resetCounter,outputCounter);
	
	process(clk)
	
		constant ms250 :std_logic_vector (23 downto 0):= "101111101011110000100000";
		constant ms250add100us :std_logic_vector (23 downto 0):= "101111101100111110101000";
		begin
				if  (outputCounter > ms250 and outputCounter < ms250add100us) then
						Trigger <= '1';
				else
						Trigger <= '0';
				end if;
				
				if (outputCounter =ms250add100us or outputCounter ="XXXXXXXXXXXXXXXXXXXXXXXX" ) then
						ResetCounter <= '0';
				else
						ResetCounter <='1';
				end if;
	end process;
end RTL;
