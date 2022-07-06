

module adder (


	//inputs 
	
	input [2:0] pmod,
	
	//output 
	
	output [1:0] led 
	);
	
	wire A; 
	wire B; 
	wire Cin; 
	wire A_xor_B;
	wire A_and_B ; 
	wire AXB_and_Cin;
	
	
	assign A = pmod[2];
	assign B = pmod[1];
	assign Cin = pmod[0];
	
	assign A_xor_B = A ^ B ;
	assign A_and_B = A & B ;
	assign AXB_and_Cin = A_xor_B & Cin ;
	
	assign led[0] = A_xor_B ^ Cin ; 
	assign led[1] = A_and_B | AXB_and_Cin ;
	
endmodule
	
