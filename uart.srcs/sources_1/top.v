`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/18 20:41:04
// Design Name: 
// Module Name: top
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


module top(
    //output reg [3:0] QQ,//发送时钟
    output reg clk_16,clk_2,clk_4,clk_8,
    output reg ld1,en1,en2,clr2,
    output [1:0] ns,cs,
    output [3:0] Q1,Q2,


    input ena,
    input clk,
    input data,
    output [7:0] out_data
    );

// reg clk = 1'b0;
// parameter N = 1;
// reg [N-1:0] regN;
// always @(posedge clk_) begin
//     regN <= regN + 1;
//     if(regN[N-1]) clk <= ~clk; 
//     else clk <= clk;
// end



wire [3:0] Q_16;
wire RCO_16;
// reg clk_16,clk_2;
wire LD1,EN1,EN2,CLR2;
//wire [3:0] Q1;

always @(posedge clk)begin
    clk_16 <= Q_16[3];
    clk_2 <= Q_16[0];
    clk_4 <= Q_16[1];
    clk_8 <= Q_16[2];
    ld1 <= LD1;
    en1 <= EN1;
    en2 <= EN2;
    clr2 <= CLR2; 
end

state_change state(
    .ns(ns),
    .cs(cs),

    .clk(clk),
    .ena(ena),
    .data(data),
    .CO1(CO1),
    .CO2(CO2),
    .LD1(LD1),
    .EN1(EN1),
    .EN2(EN2),
    .CLR2(CLR2)
);


counter74x163 divider16(
    .clk(clk),
    .clr(1'b1),
    .LD(1'b1),
    .EN(ena),
    .D(4'b0), //input 
    .Q(Q_16),
    .RCO(RCO_16)
);

counter74x163 counter1(
    .clk(clk),
    .clr(1'b1),
    .LD(LD1),
    .EN(EN1),
    .D(4'b1000), //input 
    .Q(Q1),
    .RCO(CO1)
);

counter74x163 counter2(
    .clk(clk_16),
    .clr(CLR2),
    .LD(1'b1),
    .EN(EN2),
    .D(4'b0000), //input 
    .Q(Q2),
    .RCO()
);
reg CO2;
always @(posedge clk)
    CO2 <= Q2[3];

wire [7:0] temp_data;

shift_register shift(
    .clk(clk_16),
    .data(data),
    .clr(1'b1),
    .Q(temp_data)
);

tri_state ts(
    .clk(clk),
    .ena(cs[1] & ~cs[0] & data),
    .Q(temp_data),
    .Q_o(out_data)
);

// always @(posedge clk)
//     QQ <= Q_16;

// Q_16[3]:16分频，发送时钟
// Q_16[0]:2分频，采样时钟



endmodule
