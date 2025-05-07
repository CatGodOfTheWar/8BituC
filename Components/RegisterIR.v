module RegisterIR (
	input [7:0] D,
	input CLk,Load,Clear,
	output reg [2:0] IR1,
	output reg [4:0] IR2
);

	always @(posedge CLk) begin
		if (Clear) begin
			IR1 <= 3'b000;
			IR2 <= 5'b00000;
		end else if (Load) begin
			IR1 <= D[7:5];
			IR2 <= D[4:0];
		end
	end
	
endmodule