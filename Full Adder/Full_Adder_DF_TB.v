`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 17:54:06
// Design Name: 
// Module Name: Full_Adder_DF_TB
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


module Full_Adder_DF_TB;
	reg A, B, Cin;
	wire Sum, Carry;
	integer i;

	Full_Adder_DF DUT (A, B, Cin, Sum, Carry);

	initial
		begin
			{A, B, Cin} = 0;
		end

	initial
		begin
			for (i=0 ; i<8 ; i = i+1)
				begin
					{A, B, Cin} = i;
					#10;  //delay element
				end
			#20 $finish;
		end			
	
	initial
		$monitor ("Values of A=%b, B=%b, Cin=%b, Sum=%b, Carry=%b",A, B, Cin, Sum, Carry);
endmodule
