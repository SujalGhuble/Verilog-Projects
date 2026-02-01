`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 17:16:36
// Design Name: 
// Module Name: Half_Adder
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


module Half_Adder(
    input A,
    input B,
    output Sum,
    output Carry
    );
    
    //Data Flow Style
    assign Sum = A ^ B; 
    assign Carry = A & B;
    
    //Gate Level Style
    //xor (Sum, A, B);
    //and (Carry, A, B);
endmodule