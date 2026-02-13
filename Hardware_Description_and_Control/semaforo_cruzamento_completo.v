module semaforo_cruzamento_otimizado (
    input clk,
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

parameter A_VERDE   = 2'b00,
          A_AMARELO = 2'b01,
          B_VERDE   = 2'b10,
          B_AMARELO = 2'b11;

reg [1:0] state_reg;
reg [3:0] count;

localparam T_VERDE   = 4'd12;
localparam T_AMARELO = 4'd3;

wire pisca;
assign pisca = count[0];

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state_reg <= A_VERDE;
        count <= 0;
    end else begin
        if (count < ((state_reg==A_AMARELO || state_reg==B_AMARELO) ? T_AMARELO : T_VERDE))
            count <= count + 1;
        else begin
            count <= 0;
            case (state_reg)
                A_VERDE:   state_reg <= A_AMARELO;
                A_AMARELO: state_reg <= B_VERDE;
                B_VERDE:   state_reg <= B_AMARELO;
                B_AMARELO: state_reg <= A_VERDE;
            endcase
        end
    end
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
        p_light_A_GREEN = pisca;  // pisca só o verde
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
        p_light_B_GREEN = pisca;  // pisca só o verde
        p_light_B_RED   = 0;      // vermelho desligado
    end else begin
        p_light_B_GREEN = 0;
        p_light_B_RED   = 1;
    end
end

endmodule
