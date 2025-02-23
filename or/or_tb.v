`timescale 1ns / 1ps

module tb_or3;
    // Declaração dos sinais
    reg tb_a, tb_b, tb_c;  // Registros para os sinais de entrada
    wire s;                // Sinal de saída

    // Instanciação do DUT (Device Under Test)
    or3 dut (.a({tb_a, tb_b, tb_c}), .s(s));

    // Bloco inicial de teste
    initial begin
        // Exibe o cabeçalho da tabela
        $display("a | b | c || s");
        $display("-+-+-+-+-+");
        
        // Inicializa os sinais
        tb_a = 0; tb_b = 0; tb_c = 0;
        
        // Atribui valores aos sinais com delay
        #5 tb_a = 0; tb_b = 0; tb_c = 0;
        #5 tb_a = 0; tb_b = 0; tb_c = 1;
        #5 tb_a = 0; tb_b = 1; tb_c = 0;
        #5 tb_a = 0; tb_b = 1; tb_c = 1;
        #5 tb_a = 1; tb_b = 0; tb_c = 0;
        #5 tb_a = 1; tb_b = 0; tb_c = 1;
        #5 tb_a = 1; tb_b = 1; tb_c = 0;
        #5 tb_a = 1; tb_b = 1; tb_c = 1;

        // Finaliza a simulação
        $finish;
    end

    // Monitoramento dos sinais
    initial begin
        $monitor("%b | %b | %b || %b", tb_a, tb_b, tb_c, s);
    end
endmodule
