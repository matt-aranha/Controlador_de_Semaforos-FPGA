//divisor de clock
module clk_filter(
input wire clk,
output wire clk_out, clk_out2);

reg [26:0] clk_counter; //contador para o clock

always @(posedge clk) begin
	clk_counter <= clk_counter+1;
end

assign clk_out = clk_counter[25]; //clock 1: temporizador (~1Hz)
assign clk_out2 = clk_counter[24]; //clock 2: blinker (~2Hz)
endmodule
