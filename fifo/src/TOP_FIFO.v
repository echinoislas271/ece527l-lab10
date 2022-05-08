`timescale 1ns/1ps

module FIFO_TOP( 
input               CLK,
input               RST_N,
input [7:0]   DIN,
input               WE_N,
input               OE_N,
output [7:0]  DOUT,
output              FULL,
output              EMPTY
);

wire        clk_i;
wire        rst_i;
wire        we_n_i;
wire        oe_n_i;
wire [7:0]  din_i;

wire [7:0]  dout_o;
wire        full_o;
wire        empty_o;

I1025_NS CLK_PAD (
    .PADIO  (CLK),
    .DOUT   (clk_i),
    .R_EN   (1'b1) 
);

I1025_NS RST_PAD (
    .PADIO  (RST_N),
    .DOUT   (rst_i),
    .R_EN   (1'b1) 
);

I1025_NS WE_N_PAD (
    .PADIO  (WE_N),
    .DOUT   (we_n_i),
    .R_EN   (1'b1) 
);

I1025_NS OE_N_PAD (
    .PADIO  (OE_N),
    .DOUT   (oe_n_i),
    .R_EN   (1'b1) 
);

genvar  i;

generate
    for (i = 0; i<8; i = i+1) begin: DIN_GEN
        I1025_NS DIN_PAD (
            .PADIO  (DIN[i]),
            .DOUT   (din_i[i]),
            .R_EN   (1'b1) 
        );
    end
endgenerate

D12I1025_NS FULL_PAD (
    .PADIO(FULL),
    .DIN(full_o),
    .EN (1'b1) 
);

D12I1025_NS EMPTY_PAD (
    .PADIO(EMPTY),
    .DIN(empty_o),
    .EN (1'b1) 
);

genvar  j;

generate
    for (j = 0; j<8; j = j+1) begin: DOUT_GEN
        D12I1025_NS DOUT_PAD (
            .PADIO(DOUT[j]),
            .DIN(dout_o[j]),
            .EN (1'b1) 
        );
    end
endgenerate

fifo comp (
    .clk    (clk_i),
    .rst_n    (rst_i),
    .din    (din_i),
    .we_n   (we_n_i),
    .oe_n   (oe_n_i),
    .dout   (dout_o),
    .full   (full_o),
    .empty  (empty_o)
);


endmodule
