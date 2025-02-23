module and3 (
    input a, 
    input b, 
    input c, 
    output s
);

// Atribuição contínua usando o operador &
assign s = a & b & c;

// Alternativa em Verilog estrutural
// Instanciando a primitiva básica
// and U1 (s, a, b, c);

endmodule
