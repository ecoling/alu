`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/24 15:35:37
// Design Name: 
// Module Name: mux4x32
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


module mux4x32(
input [31:0] a0,
input [31:0] a1,
input [31:0] a2,
input [31:0] a3,
input [1:0] s,
output [31:0] y
    );
    function [31:0] select;
    input [31:0] a0,a1,a2,a3;
    input [1:0] s;
    case(s)
    2'b00: select=a0;
    2'b01: select=a1;
    2'b10: select=a2;
    2'b11: select=a3;
    endcase
    endfunction
    assign y=select(a0,a1,a2,a3,s);
endmodule
