module tb_fifo;

    reg             tb_clk;
    reg             tb_rst_n;
    reg             tb_we_n;
    reg             tb_oe_n;
    reg     [7:0]   tb_din;

    wire    [7:0]   tb_dout;
    wire            tb_full;
    wire            tb_empty;

    FIFO_TOP uut
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

    localparam CLK_PERIOD = 10;
    
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
    initial begin
        #(CLK_PERIOD + CLK_PERIOD/4) tb_rst_n <= 1;
        for (i = 0;i < ( (1024*2) + 50) ;i = i + 1 ) begin
            if (i < 1030) begin
                #(CLK_PERIOD) tb_din <= i;
                tb_we_n <= 0;
            end
            else begin
                tb_we_n <= 1;
                #(CLK_PERIOD) tb_oe_n <= 0;
            end
        end
        $finish ;
    end

    initial begin
        $dumpfile("tb_fifo.vcd");
        $dumpvars(0, tb_fifo);
    end
    
endmodule