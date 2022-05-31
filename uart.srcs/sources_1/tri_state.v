`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/19 16:33:58
// Design Name: 
// Module Name: tri_state
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


module tri_state(
    input ena,
    input clk,
    input [7:0] Q,
    output reg [7:0] Q_o
    );
always @(posedge clk)
    if(ena) Q_o <= Q;
    //else Q_o <= 8'bz;
endmodule
