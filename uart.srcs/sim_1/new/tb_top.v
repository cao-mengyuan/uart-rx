`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/31 19:48:06
// Design Name: 
// Module Name: tb_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/20 19:08:30
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb(
    );

// wire [3:0] QQ;//发�?�时�?
wire clk_16,clk_2,clk_4,clk_8;
wire ld1,en1,en2,clr2;
wire [1:0] ns,cs;
wire [3:0] Q1,Q2;
// wire [8:0] ttemp_data,temp_data;
reg clk;

reg ena;
// reg clk_sys;
reg data;
wire [7:0] out_data;
// wire CO1,CO2;
top UUT(
    // .QQ(QQ),
    .clk_16(clk_16),
    .clk_8(clk_8),
    .clk_4(clk_4),
    .clk_2(clk_2),
    .ld1(ld1),
    .en1(en1),
    .en2(en2),
    .clr2(clr2),
    .ns(ns),
    .cs(cs),
    .Q1(Q1),
    .Q2(Q2),
    // .ttemp_data(ttemp_data),
    // .temp_data(temp_data),
    .clk(clk),
    // .CO1       (CO1),
    // .CO2       (CO2),
    .ena(ena),
    // .clk_sys(clk_sys),
    .data(data),
    .out_data(out_data)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    ena = 0;
    data = 1;
    #80 ena = 1;

    #160 data = 0;

    #160 data = 1;
    #160 data = 0;
    #160 data = 1;
    #160 data = 0;

    #160 data = 1;
    #160 data = 1;
    #160 data = 0;
    #160 data = 0;

    #160 data = 1;

    #500 data = 0;

    #160 data = 0;
    #160 data = 0;
    #160 data = 0;
    #160 data = 0;

    #160 data = 1;
    #160 data = 1;
    #160 data = 0;
    #160 data = 1;

    #160 data = 1;


end

endmodule
