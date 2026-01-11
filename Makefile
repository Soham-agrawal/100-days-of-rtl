TOP = and_gate
RTL = rtl/$(TOP).v
TB  = tb/$(TOP)_tb.v
SIM = simv
VCD = $(TOP).vcd

all: sim

sim:
	iverilog -o $(SIM) $(RTL) $(TB)
	vvp $(SIM)

wave: sim
	gtkwave $(VCD)

clean:
	del /Q simv *.vcd 2>nul
