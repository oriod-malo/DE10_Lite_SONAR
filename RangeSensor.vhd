library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RangeSensor is
	port
	(
		fpgaclk		  	: 	in std_logic;
		pulse	  			: 	in std_logic;
		o_trigger	  	:	out std_logic;
		o_distance		: 	out std_logic_vector (9 downto 0)
	);
end entity;

architecture behavioral of RangeSensor is

component Distance_Calculation is
	port
	(
		clk		  					: in std_logic;
		calculation_rst	  		: in std_logic;
		pulse	  						: in std_logic;
		distance		  				: out std_logic_vector (9 downto 0)
	);
end component;

component TriggerGenerator is
	port
	(
		clk		  					: in std_logic;
		trigger	  					: out std_logic
	);

end component;

signal triggout : std_logic;
signal distanceout: std_logic_vector (9 downto 0);

begin 

trigger_gen : TriggerGenerator port map (
	clk =>fpgaclk,
	trigger=>triggout
);

pulsewidth : Distance_Calculation port map (
	clk =>fpgaclk,
	calculation_rst => triggout,
	pulse=>pulse,
	distance=>distanceout
);

o_trigger<= triggout;
o_distance<= distanceout;

end behavioral;
