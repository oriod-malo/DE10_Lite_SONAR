## Generated SDC file "Radar_FPGA.sdc"

## Copyright (C) 2016  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

## DATE    "Fri Feb 10 17:56:13 2023"

##
## DEVICE  "10M50DAF484C6GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {i_CLK} -period 20.000 -waveform { 0.000 10.000 } [get_ports {i_CLK}]
create_clock -name {i_echo} -period 20.000 -waveform { 0.000 10.000 } [get_ports {i_echo}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {i_echo}] -rise_to [get_clocks {i_CLK}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {i_echo}] -fall_to [get_clocks {i_CLK}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {i_echo}] -rise_to [get_clocks {i_CLK}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {i_echo}] -fall_to [get_clocks {i_CLK}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {i_CLK}] -rise_to [get_clocks {i_echo}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {i_CLK}] -fall_to [get_clocks {i_echo}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {i_CLK}] -rise_to [get_clocks {i_CLK}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {i_CLK}] -fall_to [get_clocks {i_CLK}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {i_CLK}] -rise_to [get_clocks {i_echo}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {i_CLK}] -fall_to [get_clocks {i_echo}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {i_CLK}] -rise_to [get_clocks {i_CLK}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {i_CLK}] -fall_to [get_clocks {i_CLK}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {i_CLK}]  3.000 [get_ports {KEY[1]}]
set_input_delay -add_delay -min -clock [get_clocks {i_CLK}]  2.000 [get_ports {KEY[1]}]
set_input_delay -add_delay -max -clock [get_clocks {i_CLK}]  3.000 [get_ports {i_CLK}]
set_input_delay -add_delay -min -clock [get_clocks {i_CLK}]  2.000 [get_ports {i_CLK}]
set_input_delay -add_delay -max -clock [get_clocks {i_CLK}]  3.000 [get_ports {i_echo}]
set_input_delay -add_delay -min -clock [get_clocks {i_CLK}]  2.000 [get_ports {i_echo}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_B[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_B[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_B[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_B[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_B[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_B[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_B[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_B[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_G[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_G[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_G[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_G[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_G[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_G[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_G[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_G[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_HS}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_HS}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_R[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_R[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_R[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_R[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_R[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_R[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_R[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_R[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {VGA_VS}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {VGA_VS}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {o_trig}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {o_trig}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[4]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[4]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[5]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[5]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[6]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[6]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD0[7]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD0[7]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[4]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[4]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[5]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[5]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[6]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[6]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD1[7]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD1[7]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[4]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[4]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[5]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[5]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[6]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[6]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD2[7]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD2[7]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[4]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[4]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[5]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[5]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[6]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[6]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD3[7]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD3[7]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[4]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[4]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[5]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[5]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[6]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[6]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD4[7]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD4[7]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[0]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[0]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[1]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[1]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[2]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[2]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[3]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[3]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[4]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[4]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[5]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[5]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[6]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[6]}]
set_output_delay -add_delay -max -clock [get_clocks {i_CLK}]  2.000 [get_ports {outputBCD5[7]}]
set_output_delay -add_delay -min -clock [get_clocks {i_CLK}]  1.000 [get_ports {outputBCD5[7]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

