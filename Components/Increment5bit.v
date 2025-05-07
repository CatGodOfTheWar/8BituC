module Increment5bit(
	input [4:0] D,
	output [4:0] Q
);

	assign Q = D + 1;

endmodule