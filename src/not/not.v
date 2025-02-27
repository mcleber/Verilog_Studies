`timescale 1ns / 1ps

module not_xnyz(
    input x, y, z,
    output sr
    );
    
    // declaramos um fio e o atribumos
    wire not_y;
    assign not_y = !y;
    
    // atribuição usando o operador ^~
    assign s = ~(x & not_y & z);
       
endmodule
