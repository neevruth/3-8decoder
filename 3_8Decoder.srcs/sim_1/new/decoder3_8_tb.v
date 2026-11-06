`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2026 01:14:58 AM
// Design Name: 
// Module Name: decoder3_8_tb
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


module decoder3_8_tb();

reg En,A,B,C;
wire [7:0]F;
integer i;
decoder3_8 DUT(En,A,B,C,F);
initial begin
$display("Time | En | A B C | F"); 
$display("--------------------------------");         
$monitor("%4t |  %b | %b %b %b | %b", $time, En, A, B, C, F);
En = 0; 
A=0;B=0;C=0;#10;
 En=1;
 for(i=0;i<8;i=i+1)begin
 {A,B,C} = i;
 #10;
 end
 end
 
endmodule
