module Register5bit (
	input [4:0] D,
	input CLk,Load,Clear,
	output reg [4:0] PC
);

	always @(posedge CLk) begin
		if (Clear) begin
			PC <= 5'b00000;
		end else if (Load) begin
			PC <= D;
		end
	end
	
endmodule