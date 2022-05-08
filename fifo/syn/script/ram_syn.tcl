set WDIR "/home/users5/ec385912/ECE527LSP22/ece527l-lab10/fifo"

set SYN     "$WDIR/syn"
set SRC     "$WDIR/src"
set GUIDE   "$SYN/guidance"
set LOG     "$SYN/log"
set MAPPED  "$SYN/mapped"
set NETLIST "$SYN/netlist"

#specify SVF output file
set_svf $GUIDE/ram_test.svf

#read in the entire design
read_verilog $SRC/fifo.v
read_verilog $SRC/iolib.v
read_verilog $SRC/TOP_FIFO.v

current_design TOP_FIFO

link

#apply constraints and attributes
create_clock -period 100 [get_ports CLK]
set_clock_uncertainty 1 [get_ports CLK]

#compile the design
compile

#analye and debug the design
report_timing > $LOG/ram_test_timing.rpt
report_area > $LOG/ram_test_area.rpt

#save design database
write_file -format ddc -hierarchy -output $MAPPED/ram_test_synthesized.ddc
write_file -format verilog -hierarchy -output $NETLIST/ram_test_netlist.v

#write sdf file
write_sdf $SYN/sdf_ram_test.sdf

#exit dc shell
exit
