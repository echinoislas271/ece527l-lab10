`include "../../syn/netlist/ram_test_netlist.v"

`default_nettype none
`timescale  1ns/1ps

module tb_netlist_fifo;
localparam WIDTH = 8;
    localparam RAM_DEPTH = 1024;

    reg                 tb_clk;
    reg                 tb_rst_n;
    reg                 tb_we_n;
    reg                 tb_oe_n;
    reg     [WIDTH-1:0] tb_din;

    wire    [WIDTH-1:0] tb_dout;
    wire                tb_full;
    wire                tb_empty;

    TOP_FIFO uut
    ( 
        .CLK    (tb_clk),
        .RST_N  (tb_rst_n),
        .DIN    (tb_din),
        .WE_N   (tb_we_n),
        .OE_N   (tb_oe_n),
        .DOUT   (tb_dout),
        .FULL   (tb_full),
        .EMPTY  (tb_empty)
    );

    initial begin
        $sdf_annotate("../../syn/sdf_ram_test.sdf", uut);
    end


    localparam CLK_PERIOD = 100;
    
    initial begin
        tb_clk = 0;
        tb_rst_n = 0;
        tb_we_n = 1;
        tb_oe_n = 1;
        forever begin
            #(CLK_PERIOD/2) tb_clk = ~tb_clk;
        end
    end

    integer i;
    integer j;
    integer write_data;

    initial begin
        #(CLK_PERIOD + CLK_PERIOD/4) tb_rst_n <= 1;
        for (i = 0; i < ( (RAM_DEPTH*2) + 50); i = i + 1 ) begin
            if (i < RAM_DEPTH+6) begin
                #(CLK_PERIOD) tb_din <= i;
                tb_we_n <= 0;
            end
            else begin
                tb_we_n <= 1;
                #(CLK_PERIOD) tb_oe_n <= 0;
            end
        end

    end

    initial $monitor("WR: %b, OE: %b, DIN: %h | DOUT: %h, EMPTY: %b, FULL: %b", tb_we_n, tb_oe_n, tb_din, tb_dout, tb_empty, tb_full);
    
    initial $vcdpluson;

endmodule
`default_nettype wire