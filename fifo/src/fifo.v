`timescale 1ns/1ps

module fifo #(

parameter WIDTH = 8,
parameter DEPTH = 1024

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

reg [9:0] wr_ptr, rd_ptr, address, count;

reg cs_n;

assign empty = (count == 0) ? 1: 0;
assign full = (count == DEPTH-1) ? 1: 0;

always @(posedge clk) begin
    if (!rst_n) begin
        wr_ptr <= 0;
        count <= 0;
    end
    else begin
        if ( !we_n && oe_n && !full) begin
            wr_ptr <= wr_ptr + 1;
            count <= count + 1;
        end    
    end
    
end

always @(posedge clk) begin
    if (!rst_n) begin
        rd_ptr <= 0    ;
    end
    else begin
        if ( we_n && !oe_n && !empty) begin
            rd_ptr <= rd_ptr + 1;
            count <= count - 1;
        end
    end
end

always @(*) begin
    if (!oe_n) begin
        address = rd_ptr;
        cs_n = 0;
    end
    else if (!we_n) begin
        address = wr_ptr;
        cs_n = 0;
    end
    else begin
        address = 0;
        cs_n = 1;
    end
end

always @(*) begin
    if (we_n && !oe_n && !empty || !we_n && oe_n && !full) cs_n <= 0;
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
