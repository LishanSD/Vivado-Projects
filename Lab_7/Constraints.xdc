## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports Clk]
	set_property IOSTANDARD LVCMOS33 [get_ports Clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports Clk]

## Switches
set_property PACKAGE_PIN V17 [get_ports {A[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]
set_property PACKAGE_PIN V16 [get_ports {A[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]
set_property PACKAGE_PIN W16 [get_ports {A[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]
set_property PACKAGE_PIN W17 [get_ports {A[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]
set_property PACKAGE_PIN R2 [get_ports {RegSel}]
        set_property IOSTANDARD LVCMOS33 [get_ports {RegSel}]


## LEDs
set_property PACKAGE_PIN U16 [get_ports {S_LED[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_LED[0]}]
set_property PACKAGE_PIN E19 [get_ports {S_LED[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_LED[1]}]
set_property PACKAGE_PIN U19 [get_ports {S_LED[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_LED[2]}]
set_property PACKAGE_PIN V19 [get_ports {S_LED[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_LED[3]}]
set_property PACKAGE_PIN P1 [get_ports {Carry}]
        set_property IOSTANDARD LVCMOS33 [get_ports {Carry}]
set_property PACKAGE_PIN L1 [get_ports {Zero}]
        set_property IOSTANDARD LVCMOS33 [get_ports {Zero}]


##7 segment display
set_property PACKAGE_PIN W7 [get_ports {S_7Seg[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_7Seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {S_7Seg[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_7Seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {S_7Seg[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_7Seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {S_7Seg[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_7Seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {S_7Seg[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_7Seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {S_7Seg[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_7Seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {S_7Seg[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {S_7Seg[6]}]

#set_property PACKAGE_PIN V7 [get_ports dp]
	#set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {Annode[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Annode[0]}]
set_property PACKAGE_PIN U4 [get_ports {Annode[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Annode[1]}]
set_property PACKAGE_PIN V4 [get_ports {Annode[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Annode[2]}]
set_property PACKAGE_PIN W4 [get_ports {Annode[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Annode[3]}]