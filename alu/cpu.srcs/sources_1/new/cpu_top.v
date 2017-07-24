`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/21 13:31:18
// Design Name: 
// Module Name: cpu_top
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


module cpu_top(
output [31:0] r,
output z
    );
    reg [31:0] a,b;
    wire [31:0] r;
    reg [3:0] aluc;
    wire z;
    
    initial
    begin
    a=4'b0100;
    b=4'b0010;
    aluc=4'b0000;
    #5 aluc=4'b0100;
    #5 aluc=4'b0101;
    #5 aluc=4'b0001;
    end
   
    
    alu add(a,b,aluc,r,z);
endmodule
