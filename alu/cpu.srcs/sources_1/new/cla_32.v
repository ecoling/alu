`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/24 15:21:19
// Design Name: 
// Module Name: cla_32
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


module cla_32(
input [31:0] a,
input [31:0] b,
input ci,
output [31:0] s,
output co
    );
    wire g_out,p_out;
    cla32 cla(a,c,ci,g_out,p_out,s);
    assign co=g_out|p_out&ci;
endmodule
