module Mux2to1 (
	input [4:0] A0,
	input [4:0] A1,
	input Addr,
	output [4:0] Q 
);

	assign Q = Addr ? A1 : A0;

endmodule 