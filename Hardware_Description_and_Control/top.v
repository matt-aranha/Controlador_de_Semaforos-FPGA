module top(
inout [31:0] GPIO_0,
input CLOCK_50);

wire clock_filtrado;

clk_filter clock_filter(CLOCK_50, clock_filtrado);


semaforo_cruzamento_completo semaforo(
	.clk(clock_filtrado),
	.reset(GPIO_0[0]),
	.botao_A(GPIO_0[1]),
	.botao_B(GPIO_0[2]),
	.light_A_GREEN(GPIO_0[12]),
	.light_A_YELLOW(GPIO_0[13]),
	.light_A_RED(GPIO_0[14]),
	.light_B_GREEN(GPIO_0[20]),
	.light_B_YELLOW(GPIO_0[21]),
	.light_B_RED(GPIO_0[22]),
	.p_light_A_GREEN(GPIO_0[16]),
	.p_light_A_RED(GPIO_0[17]),
	.p_light_B_GREEN(GPIO_0[24]),
	.p_light_B_RED(GPIO_0[25]),
	
);
endmodule
