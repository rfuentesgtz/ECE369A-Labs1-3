`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 
// Module - InstructionMemory_tb.v
// Description - Test the 'InstructionMemory_tb.v' module.
////////////////////////////////////////////////////////////////////////////////

module InstructionMemory_tb(); 

    wire [31:0] Instruction;

    reg [31:0] Address;

	InstructionMemory u0(
		.Address(Address),
        .Instruction(Instruction)
	);
    //do a for loop, and increment address by 4 every 2 nano-seconds. 
    initial begin
        for (i = 0; i < 127; ++i)
		$display("memory[i]: ", memory[i]);
	    #2;
     end 
endmodule

