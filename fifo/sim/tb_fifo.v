module tb_fifo;

    reg [7:0] ram_contents_wr [1023:0];
    reg [7:0] ram_contents_rd [1024:0];
    reg [7:0] ram_addresses [1024:0];

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
    integer j;
    integer write_data;

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
        
        write_data = $fopen("./ram_test.txt");

        $fdisplay(write_data, "- (Pass) *** (Fail)\n");
        $fdisplay(write_data, "Address\t\t\t\tWrite\t|\tRead\t||\tStatus\n");
        for (j = 0; j < 1024; j = j + 1 ) begin
            $fdisplay(write_data, "%3h:\t\t\t%x\t\t|\t\t%x\t||\t%s\n", j, ram_contents_wr[j], ram_contents_rd[j+1], (ram_contents_wr[j] === ram_contents_rd[j+1]) ? "-": "***");
        end

        $fclose(write_data);
        $finish;

    end

    always @(posedge tb_clk) begin
        if (!tb_we_n && tb_oe_n && !uut.comp.cs_n) begin
            ram_contents_wr[uut.comp.wr_ptr] <= tb_din;
        end
    end

    always @(posedge tb_clk) begin
        if (tb_we_n && !tb_oe_n && !uut.comp.cs_n) begin
            ram_contents_rd[uut.comp.rd_ptr] <= tb_dout;
        end
    end

`ifdef iverilog
    initial begin
        $dumpfile("tb_fifo.vcd");
        $dumpvars(0, tb_fifo);
    end
`endif


`ifndef iverilog
    initial $vcdpluson;
`endif
    
endmodule
