`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/18 21:39:49
// Design Name: 
// Module Name: state_change
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


module state_change(
    output reg [1:0] cs,ns,

    input clk,
    input ena,
    input data,
    input CO1,
    input CO2,
    output reg LD1,
    output reg EN1,
    output reg EN2,
    output reg CLR2
    );

parameter [1:0]
    s0 = 2'b00,
    s1 = 2'b01,
    s2 = 2'b11,
    s3 = 2'b10;

//reg [1:0] cs,ns;

always @(posedge clk)
    if(ena) cs <= ns;
    else cs <= s0;

always @(data, cs) begin
    case(cs)
        s0: 
            if(data == 1'b0) ns = s1;
            else ns = s0;
        s1:
            if(CO1 == 1'b0) ns = s1;
            else if(data == 1'b0) ns = s2;
            else ns = s0;
        s2:
            if(CO2 == 1'b0) ns = s2;
            else ns = s3;
        s3:
            if(data == 1'b0) ns = s3;
            else ns = s0;
    endcase
end


// output LD1,
// output EN1,
// output EN2,
// output CLR2

always @(posedge clk) begin
    LD1 <= (cs[1] | data | (cs[0] & (~CO1)));
    EN1 <= (~cs[1]) & (~data) | (~cs[1] & cs[0] & ~CO1) | (cs[0] & cs[1] & ~CO2);
    CLR2 <= ~(~cs[1] & ~cs[0]);
    EN2 <= (~cs[1] & cs[0] & (~data) & CO1) | (cs[1] & cs[0] & (~CO2));
end

endmodule
