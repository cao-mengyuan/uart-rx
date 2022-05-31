`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/18 20:48:05
// Design Name: 
// Module Name: counter74x163
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


module counter74x163(
    input clk,clr,LD,EN,
    input [3:0] D,
    output reg [3:0] Q,
    output reg RCO
    );

always @(posedge clk)
    if(!clr | Q == 4'b1111) Q <= 4'b0;
    else if(!LD) Q <= D;
    else if(EN) Q <= Q + 1;
    else Q <= Q;

always @ *
    if(EN && Q == 4'b1111) RCO = 1;
    else RCO = 0;

endmodule
