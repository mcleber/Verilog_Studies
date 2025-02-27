`timescale 1ns / 1ps  // Define a escala de tempo para a simulação

module or3(
    input [2:0] a,  // Define um vetor de 3 bits de entrada
    output s        // Define a saída de 1 bit
);

// Atribuição usando o operador OR
assign s = a[0] | a[1] | a[2];  // Faz a operação OR entre os bits a[0], a[1] e a[2]

// Atribuição usando o operador de redução OR
// assign s = |a;  // O operador de redução OR verifica se algum bit de 'a' é 1

// Estrutural: instanciando um gate OR
// or G(s, a[0], a[1], a[2]);  // Porta OR que faz a operação bit a bit entre a[0], a[1] e a[2]

endmodule
