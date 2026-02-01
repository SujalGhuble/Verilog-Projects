`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 17:51:48
// Design Name: 
// Module Name: Full_Adder_DF
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


module Full_Adder_DF(
    input A,
    input B,
    input Cin,
    output Sum,
    output Carry
    );
    
    assign Sum = A ^ B ^ Cin;
    assign Carry = (A & B) | (B & Cin) | (Cin & A);
endmodule
