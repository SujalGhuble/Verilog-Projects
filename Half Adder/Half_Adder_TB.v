`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 17:19:04
// Design Name: 
// Module Name: Half_Adder_TB
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


module Half_Adder_TB;
	reg A, B;
	wire Sum, Carry;
	integer i;

	Half_Adder DUT (A, B, Sum, Carry);

	initial
		begin
			{A, B} = 0;
		end

	initial
		begin
			for (i=0 ; i<4 ; i = i+1)
				begin
					{A, B} = i;
					#10;  //delay element
				end
			#20 $finish;
		end			
	
	initial
		$monitor ("Values of A=%b, B=%b, Sum=%b, Carry=%b",A, B, Sum, Carry);
endmodule

