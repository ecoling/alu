`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/24 15:27:41
// Design Name: 
// Module Name: shift
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


module shift(
input [31:0] d,
input [4:0] sa,
input right,
input arith,
output [31:0] sh
    );
    reg [31:0] sh;
    always @(*)
    begin
    if(!right)
     begin
     sh=d<<sa;
     end
    else
    begin
     if(!arith)
       begin
       sh=d>>sa;
       end
      else
       begin
       sh=$signed(d)>>>sa;
       end
    end
    end
endmodule
