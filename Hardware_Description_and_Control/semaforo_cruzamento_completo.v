module semaforo_cruzamento_otimizado (
    input clk,
	input clk_blinker,
    input reset,
    input botao_A,
    input botao_B,
    output reg light_A_GREEN,
    output reg light_A_YELLOW,
    output reg light_A_RED,
    output reg light_B_GREEN,
    output reg light_B_YELLOW,
    output reg light_B_RED,
    output reg p_light_A_GREEN,
    output reg p_light_A_RED,
    output reg p_light_B_GREEN,
    output reg p_light_B_RED
);

//Definição dos estados
parameter A_VERDE   = 2'b00,  
          A_AMARELO = 2'b01,
          B_VERDE   = 2'b10,
          B_AMARELO = 2'b11;

reg [1:0] state_reg, state_next;
reg [3:0] count;

localparam T_VERDE   = 4'd12;
localparam T_AMARELO = 4'd3;

wire pisca;
assign pisca = count[0];
	//inicialização do semáforo
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state_reg <= A_VERDE;
            count <= 0;
        end else begin //mudança dos estados
            if (count < (state_reg[0] ? T_AMARELO : T_VERDE)) begin
                count <= count + 1;
                // Se apertar o botão, acelera o fim do verde
                if (botao_A && state_reg == A_VERDE && count < (T_VERDE-1)) count <= T_VERDE;
                if (botao_B && state_reg == B_VERDE && count < (T_VERDE-1)) count <= T_VERDE;
            end else begin
                state_reg <= state_next;
                count <= 0;
            end
        end
    end
	 
	 always @(*) begin
        case (state_reg) //definição do próximo estado baseado no atual
            A_VERDE:   state_next = A_AMARELO;
            A_AMARELO: state_next = B_VERDE;
            B_VERDE:   state_next = B_AMARELO;
            B_AMARELO: state_next = A_VERDE;
            default:   state_next = A_VERDE;
        endcase
    end

always @(*) begin
    // ===== Carros =====
    light_A_GREEN  = (state_reg == A_VERDE);
    light_A_YELLOW = (state_reg == A_AMARELO);
    light_A_RED    = (state_reg == B_VERDE || state_reg == B_AMARELO);

    light_B_GREEN  = (state_reg == B_VERDE);
    light_B_YELLOW = (state_reg == B_AMARELO);
    light_B_RED    = (state_reg == A_VERDE || state_reg == A_AMARELO);

    // ===== Pedestres =====
    // Pedestre A
    if (state_reg == B_VERDE) begin
        p_light_A_GREEN = 1;
        p_light_A_RED   = 0;
    end else if (state_reg == B_AMARELO) begin
        p_light_A_GREEN = clk_blinker;  // pisca só o verde de pedestre
        p_light_A_RED   = 0;      // vermelho desligado
    end else begin
        p_light_A_GREEN = 0;
        p_light_A_RED   = 1;
    end

    // Pedestre B
    if (state_reg == A_VERDE) begin
        p_light_B_GREEN = 1;
        p_light_B_RED   = 0;
    end else if (state_reg == A_AMARELO) begin
        p_light_B_GREEN = clk_blinker;  // pisca só o verde pisca só o verde de pedestre
        p_light_B_RED   = 0;      // vermelho desligado
    end else begin
        p_light_B_GREEN = 0;
        p_light_B_RED   = 1;
    end
end

endmodule
