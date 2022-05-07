`include "../src/TOP_FIFO.v"

module tb_fifo;
    FIFO_TOP uut
    ( 
        .CLK    (),
        .RST    (),
        .DIN    (),
        .WE_N   (),
        .OE_N   (),
        .DOUT   (),
        .FULL   (),
        .EMPTY  ()
);
    
endmodule