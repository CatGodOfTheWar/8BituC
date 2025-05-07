module SRAM8bitx32(
	input wire [7:0] D,
    input wire [4:0] Address,
    input wire WE,
    input wire CLK,
    output reg [7:0] Q
);
    (* ram_init_file = "mem.mif" *) reg [7:0] mem [0:31];  
    
    always @(posedge CLK) begin 
		if(!WE) begin 
			Q <= mem[Address];
		end else begin
			mem[Address] <= D;
		end	
	end
endmodule
