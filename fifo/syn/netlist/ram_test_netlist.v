/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat May  7 20:39:37 2022
/////////////////////////////////////////////////////////////
`timescale 1ns/1ps

module I1025_NS_0 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX4_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_11 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_10 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX2_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_9 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX4_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_8 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_7 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_6 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_5 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_4 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_3 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_2 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module I1025_NS_1 ( PADIO, VSS, VDDIO, VDD, R_EN, VSSIO, DOUT );
  input PADIO, R_EN;
  output DOUT;
  inout VSS,  VDDIO,  VDD,  VSSIO;

  tri   DOUT;

  TNBUFFX1_RVT DOUT_tri ( .A(PADIO), .EN(R_EN), .Y(DOUT) );
endmodule


module D12I1025_NS_0 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_9 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_8 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_7 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_6 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_5 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_4 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_3 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_2 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module D12I1025_NS_1 ( PADIO, VSS, EN, VDDIO, VDD, VSSIO, DIN );
  input EN, DIN;
  inout PADIO,  VSS,  VDDIO,  VDD,  VSSIO;

  tri   PADIO;

  TNBUFFX1_RVT PADIO_tri ( .A(DIN), .EN(EN), .Y(PADIO) );
endmodule


module fifo_DW01_inc_0 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  HADDX1_RVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[10]), .A2(A[10]), .Y(SUM[10]) );
endmodule


module fifo_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module fifo_DW01_inc_2 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module fifo ( clk, rst_n, din, we_n, oe_n, dout, full, empty );
  input [7:0] din;
  output [7:0] dout;
  input clk, rst_n, we_n, oe_n;
  output full, empty;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N33, N34, N35, N36,
         N37, N38, N39, N40, N41, N42, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n23, n25, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n41, n42, n43, n44, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n21, n22, n24,
         n26, n27, n28, n40, n45, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n96, n97, n98;
  wire   [10:0] count;
  wire   [9:0] wr_ptr;
  wire   [9:0] rd_ptr;
  wire   [9:0] address;
  tri   clk;
  tri   rst_n;
  tri   [7:0] din;
  tri   we_n;
  tri   oe_n;

  SRAM1RW1024x8 r1 ( .I(din), .O(dout), .A(address), .CE(clk), .CSB(n21), 
        .WEB(we_n), .OEB(oe_n) );
  NOR4X1_RVT U14 ( .A1(n37), .A2(n38), .A3(n25), .A4(N73), .Y(full) );
  AO22X1_RVT U33 ( .A1(n29), .A2(rd_ptr[9]), .A3(N42), .A4(n27), .Y(n47) );
  AO22X1_RVT U34 ( .A1(n29), .A2(rd_ptr[8]), .A3(N41), .A4(n26), .Y(n48) );
  AO22X1_RVT U35 ( .A1(n29), .A2(rd_ptr[7]), .A3(N40), .A4(n27), .Y(n49) );
  AO22X1_RVT U36 ( .A1(n29), .A2(rd_ptr[6]), .A3(N39), .A4(n26), .Y(n50) );
  AO22X1_RVT U37 ( .A1(n29), .A2(rd_ptr[5]), .A3(N38), .A4(n27), .Y(n51) );
  AO22X1_RVT U38 ( .A1(n29), .A2(rd_ptr[4]), .A3(N37), .A4(n26), .Y(n52) );
  AO22X1_RVT U39 ( .A1(n29), .A2(rd_ptr[3]), .A3(N36), .A4(n27), .Y(n53) );
  AO22X1_RVT U40 ( .A1(n29), .A2(rd_ptr[2]), .A3(N35), .A4(n26), .Y(n54) );
  AO22X1_RVT U41 ( .A1(n29), .A2(rd_ptr[0]), .A3(N33), .A4(n27), .Y(n55) );
  AO22X1_RVT U42 ( .A1(n29), .A2(rd_ptr[1]), .A3(N34), .A4(n26), .Y(n56) );
  AO22X1_RVT U43 ( .A1(n30), .A2(wr_ptr[9]), .A3(N16), .A4(n22), .Y(n57) );
  AO22X1_RVT U44 ( .A1(n30), .A2(wr_ptr[8]), .A3(N15), .A4(n22), .Y(n58) );
  AO22X1_RVT U45 ( .A1(n30), .A2(wr_ptr[7]), .A3(N14), .A4(n22), .Y(n59) );
  AO22X1_RVT U46 ( .A1(n30), .A2(wr_ptr[6]), .A3(N13), .A4(n22), .Y(n60) );
  AO22X1_RVT U47 ( .A1(n30), .A2(wr_ptr[5]), .A3(N12), .A4(n22), .Y(n61) );
  AO22X1_RVT U48 ( .A1(n30), .A2(wr_ptr[4]), .A3(N11), .A4(n22), .Y(n62) );
  AO22X1_RVT U49 ( .A1(n30), .A2(wr_ptr[3]), .A3(N10), .A4(n22), .Y(n63) );
  AO22X1_RVT U50 ( .A1(n30), .A2(wr_ptr[2]), .A3(N9), .A4(n22), .Y(n64) );
  AO22X1_RVT U51 ( .A1(n30), .A2(wr_ptr[1]), .A3(N8), .A4(n22), .Y(n65) );
  AO22X1_RVT U52 ( .A1(n30), .A2(wr_ptr[0]), .A3(N7), .A4(n22), .Y(n66) );
  NAND2X0_RVT U56 ( .A1(rst_n), .A2(n34), .Y(n33) );
  NAND3X0_RVT U57 ( .A1(n35), .A2(n97), .A3(rst_n), .Y(n31) );
  NAND3X0_RVT U58 ( .A1(count[8]), .A2(count[7]), .A3(count[9]), .Y(n38) );
  NAND4X0_RVT U59 ( .A1(count[2]), .A2(n23), .A3(count[3]), .A4(n39), .Y(n37)
         );
  AND3X1_RVT U60 ( .A1(count[5]), .A2(count[4]), .A3(count[6]), .Y(n39) );
  AND3X1_RVT U62 ( .A1(n36), .A2(n98), .A3(we_n), .Y(n34) );
  NAND2X0_RVT U63 ( .A1(n41), .A2(n23), .Y(n36) );
  NAND2X0_RVT U64 ( .A1(count[10]), .A2(n41), .Y(n35) );
  AND4X1_RVT U65 ( .A1(N73), .A2(n25), .A3(n42), .A4(n43), .Y(n41) );
  NOR3X0_RVT U66 ( .A1(count[5]), .A2(count[6]), .A3(n44), .Y(n43) );
  OR3X1_RVT U67 ( .A1(count[8]), .A2(count[9]), .A3(count[7]), .Y(n44) );
  NOR3X0_RVT U68 ( .A1(count[3]), .A2(count[4]), .A3(count[2]), .Y(n42) );
  fifo_DW01_inc_0 add_70 ( .A(count), .SUM({N71, N70, N69, N68, N67, N66, N65, 
        N64, N63, N62, N61}) );
  fifo_DW01_inc_1 add_57 ( .A(rd_ptr), .SUM({N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33}) );
  fifo_DW01_inc_2 add_42 ( .A(wr_ptr), .SUM({N16, N15, N14, N13, N12, N11, N10, 
        N9, N8, N7}) );
  DFFX1_RVT \count_reg[6]  ( .D(n71), .CLK(clk), .Q(count[6]) );
  DFFX1_RVT \count_reg[5]  ( .D(n70), .CLK(clk), .Q(count[5]) );
  DFFX1_RVT \count_reg[4]  ( .D(n69), .CLK(clk), .Q(count[4]) );
  DFFX1_RVT \count_reg[3]  ( .D(n68), .CLK(clk), .Q(count[3]) );
  DFFX1_RVT \count_reg[2]  ( .D(n67), .CLK(clk), .Q(count[2]) );
  DFFX1_RVT \count_reg[7]  ( .D(n72), .CLK(clk), .Q(count[7]) );
  DFFX1_RVT \count_reg[8]  ( .D(n73), .CLK(clk), .Q(count[8]) );
  DFFX1_RVT \count_reg[9]  ( .D(n74), .CLK(clk), .Q(count[9]), .QN(n86) );
  DFFX1_RVT \wr_ptr_reg[5]  ( .D(n61), .CLK(clk), .Q(wr_ptr[5]), .QN(n5) );
  DFFX1_RVT \wr_ptr_reg[4]  ( .D(n62), .CLK(clk), .Q(wr_ptr[4]), .QN(n6) );
  DFFX1_RVT \wr_ptr_reg[3]  ( .D(n63), .CLK(clk), .Q(wr_ptr[3]), .QN(n7) );
  DFFX1_RVT \wr_ptr_reg[2]  ( .D(n64), .CLK(clk), .Q(wr_ptr[2]), .QN(n8) );
  DFFX1_RVT \wr_ptr_reg[1]  ( .D(n65), .CLK(clk), .Q(wr_ptr[1]), .QN(n9) );
  DFFX1_RVT \wr_ptr_reg[0]  ( .D(n66), .CLK(clk), .Q(wr_ptr[0]), .QN(n10) );
  DFFX1_RVT \wr_ptr_reg[6]  ( .D(n60), .CLK(clk), .Q(wr_ptr[6]), .QN(n4) );
  DFFX1_RVT \rd_ptr_reg[6]  ( .D(n50), .CLK(clk), .Q(rd_ptr[6]), .QN(n14) );
  DFFX1_RVT \rd_ptr_reg[5]  ( .D(n51), .CLK(clk), .Q(rd_ptr[5]), .QN(n15) );
  DFFX1_RVT \rd_ptr_reg[4]  ( .D(n52), .CLK(clk), .Q(rd_ptr[4]), .QN(n16) );
  DFFX1_RVT \rd_ptr_reg[3]  ( .D(n53), .CLK(clk), .Q(rd_ptr[3]), .QN(n17) );
  DFFX1_RVT \rd_ptr_reg[2]  ( .D(n54), .CLK(clk), .Q(rd_ptr[2]), .QN(n18) );
  DFFX1_RVT \rd_ptr_reg[1]  ( .D(n56), .CLK(clk), .Q(rd_ptr[1]), .QN(n19) );
  DFFX1_RVT \rd_ptr_reg[0]  ( .D(n55), .CLK(clk), .Q(rd_ptr[0]), .QN(n20) );
  DFFX1_RVT \wr_ptr_reg[7]  ( .D(n59), .CLK(clk), .Q(wr_ptr[7]), .QN(n3) );
  DFFX1_RVT \rd_ptr_reg[7]  ( .D(n49), .CLK(clk), .Q(rd_ptr[7]), .QN(n13) );
  DFFX1_RVT \count_reg[1]  ( .D(n75), .CLK(clk), .Q(count[1]), .QN(n25) );
  DFFX1_RVT \count_reg[0]  ( .D(n77), .CLK(clk), .Q(count[0]), .QN(N73) );
  DFFX1_RVT \wr_ptr_reg[8]  ( .D(n58), .CLK(clk), .Q(wr_ptr[8]), .QN(n2) );
  DFFX1_RVT \rd_ptr_reg[8]  ( .D(n48), .CLK(clk), .Q(rd_ptr[8]), .QN(n12) );
  DFFX1_RVT \wr_ptr_reg[9]  ( .D(n57), .CLK(clk), .Q(wr_ptr[9]), .QN(n1) );
  DFFX1_RVT \rd_ptr_reg[9]  ( .D(n47), .CLK(clk), .Q(rd_ptr[9]), .QN(n11) );
  DFFX1_RVT \count_reg[10]  ( .D(n76), .CLK(clk), .Q(count[10]), .QN(n23) );
  AO222X1_RVT U3 ( .A1(N71), .A2(n94), .A3(N83), .A4(n24), .A5(n32), .A6(
        count[10]), .Y(n76) );
  AO222X1_RVT U4 ( .A1(N61), .A2(n94), .A3(N73), .A4(n24), .A5(count[0]), .A6(
        n32), .Y(n77) );
  AO222X1_RVT U5 ( .A1(N62), .A2(n94), .A3(N74), .A4(n24), .A5(count[1]), .A6(
        n32), .Y(n75) );
  AO222X1_RVT U6 ( .A1(N70), .A2(n94), .A3(N82), .A4(n24), .A5(count[9]), .A6(
        n32), .Y(n74) );
  AO222X1_RVT U7 ( .A1(N69), .A2(n94), .A3(N81), .A4(n24), .A5(count[8]), .A6(
        n32), .Y(n73) );
  AO222X1_RVT U8 ( .A1(N68), .A2(n94), .A3(N80), .A4(n24), .A5(count[7]), .A6(
        n32), .Y(n72) );
  AO222X1_RVT U9 ( .A1(N63), .A2(n22), .A3(N75), .A4(n26), .A5(count[2]), .A6(
        n32), .Y(n67) );
  AO222X1_RVT U10 ( .A1(N64), .A2(n22), .A3(N76), .A4(n27), .A5(count[3]), 
        .A6(n32), .Y(n68) );
  AO222X1_RVT U11 ( .A1(N65), .A2(n94), .A3(N77), .A4(n26), .A5(count[4]), 
        .A6(n32), .Y(n69) );
  AO222X1_RVT U12 ( .A1(N66), .A2(n94), .A3(N78), .A4(n27), .A5(count[5]), 
        .A6(n32), .Y(n70) );
  AO222X1_RVT U13 ( .A1(N67), .A2(n94), .A3(N79), .A4(n24), .A5(count[6]), 
        .A6(n32), .Y(n71) );
  AOI21X1_RVT U15 ( .A1(n35), .A2(n97), .A3(n34), .Y(n21) );
  NBUFFX2_RVT U16 ( .A(n96), .Y(n24) );
  NBUFFX2_RVT U17 ( .A(n96), .Y(n26) );
  NBUFFX2_RVT U18 ( .A(n96), .Y(n27) );
  NBUFFX2_RVT U19 ( .A(n94), .Y(n22) );
  AND2X1_RVT U20 ( .A1(n29), .A2(n31), .Y(n32) );
  INVX1_RVT U21 ( .A(n33), .Y(n96) );
  INVX1_RVT U22 ( .A(n31), .Y(n94) );
  NBUFFX2_RVT U23 ( .A(n46), .Y(n40) );
  NBUFFX2_RVT U24 ( .A(n46), .Y(n28) );
  AND2X1_RVT U25 ( .A1(rst_n), .A2(n33), .Y(n29) );
  AND2X1_RVT U26 ( .A1(rst_n), .A2(n31), .Y(n30) );
  OAI22X1_RVT U27 ( .A1(n10), .A2(n40), .A3(n20), .A4(oe_n), .Y(address[0]) );
  OAI22X1_RVT U28 ( .A1(n28), .A2(n1), .A3(oe_n), .A4(n11), .Y(address[9]) );
  OAI22X1_RVT U29 ( .A1(n40), .A2(n2), .A3(oe_n), .A4(n12), .Y(address[8]) );
  OAI22X1_RVT U30 ( .A1(n28), .A2(n3), .A3(oe_n), .A4(n13), .Y(address[7]) );
  OAI22X1_RVT U31 ( .A1(n40), .A2(n4), .A3(oe_n), .A4(n14), .Y(address[6]) );
  OAI22X1_RVT U32 ( .A1(n28), .A2(n5), .A3(oe_n), .A4(n15), .Y(address[5]) );
  OAI22X1_RVT U53 ( .A1(n40), .A2(n6), .A3(oe_n), .A4(n16), .Y(address[4]) );
  OAI22X1_RVT U54 ( .A1(n28), .A2(n7), .A3(oe_n), .A4(n17), .Y(address[3]) );
  OAI22X1_RVT U55 ( .A1(n40), .A2(n8), .A3(oe_n), .A4(n18), .Y(address[2]) );
  OAI22X1_RVT U61 ( .A1(n28), .A2(n9), .A3(oe_n), .A4(n19), .Y(address[1]) );
  OR2X1_RVT U69 ( .A1(n98), .A2(we_n), .Y(n46) );
  OR2X1_RVT U70 ( .A1(count[1]), .A2(count[0]), .Y(n78) );
  OR2X1_RVT U71 ( .A1(n78), .A2(count[2]), .Y(n79) );
  OR2X1_RVT U72 ( .A1(n79), .A2(count[3]), .Y(n80) );
  OR2X1_RVT U73 ( .A1(n80), .A2(count[4]), .Y(n81) );
  OR2X1_RVT U74 ( .A1(n81), .A2(count[5]), .Y(n82) );
  OR2X1_RVT U75 ( .A1(n82), .A2(count[6]), .Y(n83) );
  OR2X1_RVT U76 ( .A1(n83), .A2(count[7]), .Y(n84) );
  NOR2X0_RVT U77 ( .A1(n84), .A2(count[8]), .Y(n85) );
  NAND2X0_RVT U78 ( .A1(n85), .A2(n86), .Y(n45) );
  XNOR2X1_RVT U79 ( .A1(n45), .A2(count[10]), .Y(N83) );
  AO21X1_RVT U80 ( .A1(count[1]), .A2(count[0]), .A3(n87), .Y(N74) );
  AO21X1_RVT U81 ( .A1(count[2]), .A2(n78), .A3(n88), .Y(N75) );
  AO21X1_RVT U82 ( .A1(count[3]), .A2(n79), .A3(n89), .Y(N76) );
  AO21X1_RVT U83 ( .A1(count[4]), .A2(n80), .A3(n90), .Y(N77) );
  AO21X1_RVT U84 ( .A1(count[5]), .A2(n81), .A3(n91), .Y(N78) );
  AO21X1_RVT U85 ( .A1(count[6]), .A2(n82), .A3(n92), .Y(N79) );
  AO21X1_RVT U86 ( .A1(count[7]), .A2(n83), .A3(n93), .Y(N80) );
  AO21X1_RVT U87 ( .A1(count[8]), .A2(n84), .A3(n85), .Y(N81) );
  XNOR2X1_RVT U88 ( .A1(n86), .A2(n85), .Y(N82) );
  INVX1_RVT U89 ( .A(n78), .Y(n87) );
  INVX1_RVT U90 ( .A(n79), .Y(n88) );
  INVX1_RVT U91 ( .A(n80), .Y(n89) );
  INVX1_RVT U92 ( .A(n81), .Y(n90) );
  INVX1_RVT U93 ( .A(n82), .Y(n91) );
  INVX1_RVT U94 ( .A(n83), .Y(n92) );
  INVX1_RVT U95 ( .A(n84), .Y(n93) );
  INVX1_RVT U96 ( .A(n36), .Y(empty) );
  INVX1_RVT U97 ( .A(n46), .Y(n97) );
  INVX1_RVT U98 ( .A(oe_n), .Y(n98) );
endmodule


module TOP_FIFO ( CLK, RST_N, DIN, WE_N, OE_N, DOUT, FULL, EMPTY );
  input [7:0] DIN;
  output [7:0] DOUT;
  input CLK, RST_N, WE_N, OE_N;
  output FULL, EMPTY;
  wire   full_o, empty_o;
  wire   [7:0] dout_o;
  tri   [7:0] DOUT;
  tri   FULL;
  tri   EMPTY;
  tri   clk_i;
  tri   rst_i;
  tri   we_n_i;
  tri   oe_n_i;
  tri   [7:0] din_i;

  I1025_NS_0 CLK_PAD ( .PADIO(CLK), .R_EN(1'b1), .DOUT(clk_i) );
  I1025_NS_11 RST_PAD ( .PADIO(RST_N), .R_EN(1'b1), .DOUT(rst_i) );
  I1025_NS_10 WE_N_PAD ( .PADIO(WE_N), .R_EN(1'b1), .DOUT(we_n_i) );
  I1025_NS_9 OE_N_PAD ( .PADIO(OE_N), .R_EN(1'b1), .DOUT(oe_n_i) );
  I1025_NS_8 \DIN_GEN[0].DIN_PAD  ( .PADIO(DIN[0]), .R_EN(1'b1), .DOUT(
        din_i[0]) );
  I1025_NS_7 \DIN_GEN[1].DIN_PAD  ( .PADIO(DIN[1]), .R_EN(1'b1), .DOUT(
        din_i[1]) );
  I1025_NS_6 \DIN_GEN[2].DIN_PAD  ( .PADIO(DIN[2]), .R_EN(1'b1), .DOUT(
        din_i[2]) );
  I1025_NS_5 \DIN_GEN[3].DIN_PAD  ( .PADIO(DIN[3]), .R_EN(1'b1), .DOUT(
        din_i[3]) );
  I1025_NS_4 \DIN_GEN[4].DIN_PAD  ( .PADIO(DIN[4]), .R_EN(1'b1), .DOUT(
        din_i[4]) );
  I1025_NS_3 \DIN_GEN[5].DIN_PAD  ( .PADIO(DIN[5]), .R_EN(1'b1), .DOUT(
        din_i[5]) );
  I1025_NS_2 \DIN_GEN[6].DIN_PAD  ( .PADIO(DIN[6]), .R_EN(1'b1), .DOUT(
        din_i[6]) );
  I1025_NS_1 \DIN_GEN[7].DIN_PAD  ( .PADIO(DIN[7]), .R_EN(1'b1), .DOUT(
        din_i[7]) );
  D12I1025_NS_0 FULL_PAD ( .PADIO(FULL), .EN(1'b1), .DIN(full_o) );
  D12I1025_NS_9 EMPTY_PAD ( .PADIO(EMPTY), .EN(1'b1), .DIN(empty_o) );
  D12I1025_NS_8 \DOUT_GEN[0].DOUT_PAD  ( .PADIO(DOUT[0]), .EN(1'b1), .DIN(
        dout_o[0]) );
  D12I1025_NS_7 \DOUT_GEN[1].DOUT_PAD  ( .PADIO(DOUT[1]), .EN(1'b1), .DIN(
        dout_o[1]) );
  D12I1025_NS_6 \DOUT_GEN[2].DOUT_PAD  ( .PADIO(DOUT[2]), .EN(1'b1), .DIN(
        dout_o[2]) );
  D12I1025_NS_5 \DOUT_GEN[3].DOUT_PAD  ( .PADIO(DOUT[3]), .EN(1'b1), .DIN(
        dout_o[3]) );
  D12I1025_NS_4 \DOUT_GEN[4].DOUT_PAD  ( .PADIO(DOUT[4]), .EN(1'b1), .DIN(
        dout_o[4]) );
  D12I1025_NS_3 \DOUT_GEN[5].DOUT_PAD  ( .PADIO(DOUT[5]), .EN(1'b1), .DIN(
        dout_o[5]) );
  D12I1025_NS_2 \DOUT_GEN[6].DOUT_PAD  ( .PADIO(DOUT[6]), .EN(1'b1), .DIN(
        dout_o[6]) );
  D12I1025_NS_1 \DOUT_GEN[7].DOUT_PAD  ( .PADIO(DOUT[7]), .EN(1'b1), .DIN(
        dout_o[7]) );
  fifo comp ( .clk(clk_i), .rst_n(rst_i), .din(din_i), .we_n(we_n_i), .oe_n(
        oe_n_i), .dout(dout_o), .full(full_o), .empty(empty_o) );
endmodule

