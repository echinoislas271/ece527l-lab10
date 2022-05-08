`include "../../syn/netlist/ram_test_netlist.v"

`default_nettype none

module tb_netlist_fifo;
localparam WIDTH = 8;
    localparam RAM_DEPTH = 1024;

    reg [WIDTH-1:0] ram_contents_wr [RAM_DEPTH-1:0];
    reg [WIDTH-1:0] ram_contents_rd [RAM_DEPTH:0];

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
        
        write_data = $fopen("./ram_test.txt");

        $fdisplay(write_data, "- (Pass) *** (Fail)\n");
        $fdisplay(write_data, "Address\t\t\t\tWrite\t|\tRead\t||\tStatus\n");
        for (j = 0; j < 1024; j = j + 1 ) begin
            $fdisplay(write_data, "%3h:\t\t\t%x\t\t|\t\t%x\t||\t%s\n", j, ram_contents_wr[j], ram_contents_rd[j+1], (ram_contents_wr[j] === ram_contents_rd[j+1]) ? "-": "***");
        end

        $fclose(write_data);
        $finish;

    end
    initial begin
       $monitor("WP: %h, RD: %h, COUNT: %h, DIN: %h, DOUT: %h\n", uut.comp.wr_ptr, uut.comp.rd_ptr, uut.comp.count, uut.comp.din, uut.comp.dout); 
    end

    always @(posedge tb_clk) begin
        if (!tb_we_n && tb_oe_n && !uut.comp.cs_n) begin
            ram_contents_wr[uut.comp.wr_ptr] <= tb_din;
        end
    end

    always @(tb_dout) begin
        ram_contents_rd[uut.comp.rd_ptr] <= tb_dout;
    end
    
    initial $vcdpluson;

endmodule
`default_nettype wire