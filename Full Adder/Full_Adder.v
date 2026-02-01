`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 17:45:28
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Carry
    );
    
    wire w1, w2, w3;
    
    Half_Adder HA0 (A, B, w1, w2);  //Order based instantiation
    //Half_Adder HA0 (.A(A), .B(B), .Sum(w1), .Carry(w2))  //Name based instantiation
    
    Half_Adder HA1 (w1, Cin, Sum, w3);
    
    or OR1 (Carry, w2, w3);
    
endmodule

