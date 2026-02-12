module clk_filter(
input wire clk,
output wire clk_out, clk_out2);

reg [25:0] clk_counter; 

always @(posedge clk) begin
	clk_counter <= clk_counter+1;
end

assign clk_out = clk_counter[25];
assign clk_out2 = clk_counter[23];
endmodule