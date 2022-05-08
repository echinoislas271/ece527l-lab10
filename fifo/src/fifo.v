`timescale 1ns/1ps

module fifo #(

parameter WIDTH = 8,
parameter ADDR_WIDTH = 10,
parameter RAM_DEPTH = (1 << ADDR_WIDTH)
)( 

input clk,
input rst_n,
input [WIDTH-1:0] din,
input we_n,
input oe_n,

output [WIDTH-1:0] dout,
output full,
output empty

);

reg [ADDR_WIDTH-1:0] wr_ptr, rd_ptr, address;
reg [ADDR_WIDTH:0] count;

reg cs_n;

// asigns empty flag based on counter
assign empty = (count == 0) ? 1: 0;

// asigns full flag based on counter
assign full = (count == RAM_DEPTH-1) ? 1: 0;

// write pointer update
always @(posedge clk) begin
    // if reset is asserted reset write pointer and count
    if (!rst_n) begin
        wr_ptr <= 0;
        count <= 0;
    end
    else begin
        // increment write point and coutner
        if ( !we_n && oe_n && count != RAM_DEPTH) begin
            wr_ptr <= wr_ptr + 1;
            count <= count + 1;
        end    
    end
    
end

// read pointer update
always @(posedge clk) begin
    // if reset is asserted reset read pointer
    if (!rst_n) begin
        rd_ptr <= 0;
    end
    else begin
        // increment write point and decrement coutner
        if ( we_n && !oe_n && count != 0) begin
            rd_ptr <= rd_ptr + 1;
            count <= count - 1;
        end
    end
end

// combinational ram address update
always @(*) begin
    if (!oe_n) begin
        address = rd_ptr;
    end
    else if (!we_n) begin
        address = wr_ptr;
    end
    else begin
        address = 0;
    end
end

// combinational ram chip select
always @(*) begin
    if (we_n && !oe_n && count != 0 || !we_n && oe_n && count != RAM_DEPTH) cs_n <= 0;
    else cs_n <= 1;
end

SRAM1RW1024x8 r1 (
. CE ( clk ),
. WEB ( we_n ),
. OEB ( oe_n ),
. CSB ( cs_n ),
. A ( address ),
. I ( din ),
. O ( dout ));

    
endmodule
