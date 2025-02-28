`timescale 1ns / 1ps

`include "full_adder.v"

// 4 bits adder
module ripple_carry_adder(
    input [width-1:0] a, b, 
    input cin,
    output [width-1:0] s,
    output cout
);

    parameter width = 8; //largura padrão
    wire [width:0] c;

    genvar i;
    generate 
        for(i = 0; i < width; i = i + 1)
            full_adder bit(a[i], b[i], c[i], s[i], c[i+1]);
    endgenerate 

    assign c[0] = cin;
    assign cout = c[width];

endmodule

