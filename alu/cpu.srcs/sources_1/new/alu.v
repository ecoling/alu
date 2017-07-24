`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/24 09:05:00
// Design Name: 
// Module Name: alu
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

//this is a alu module ,
//aluc[3:0]:x000=add,x100=sub,x001=and,x101=or,x010=xor,
//x110=lui,0011=sll,0111=srl,1111=sra
module alu(
input [31:0] a,
input [31:0] b,
input [3:0] aluc,
output [31:0] r,
output z
    );
    
    wire [31:0] d_and=a&b;
    wire [31:0] d_or=a|b;
    wire [31:0] d_xor=a^b;
    wire [31:0] d_lui={b[15:0],16'h0};
    wire [31:0] d_and_or=aluc[2]?d_or:d_and;
    wire [31:0] d_xor_lui=aluc[2]?d_lui:d_xor;
    wire [31:0] d_as;
    wire [31:0] d_sh;
    
    addsub32 as32(a,b,aluc[2],d_as);
    shift shifter(b,a[4:0],aluc[2],aluc[3],d_sh);
    mux4x32 select(d_as,d_and_or,d_xor_lui,d_sh,aluc[1:0],r);
    assign z=~|r;
    
endmodule
