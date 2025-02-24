`timescale 1ns / 1ps

module literal_values();

    // reg variables can hold values, which persist until they are changed by an explicit assignment.
    reg [7:0] my_var;
    
    // All the assignments are gruped in an "initial" procedures
    initial begin
    my_var = 8'd137;                   // 137 in decimal
    $display("my_var = %d", my_var);
    
    my_var = 8'h89;                    // 137 in hexadecimal
    $display("my_var = %x", my_var);
    
    my_var = 8'b1000_1001;             // 137 in binary
    $display("my_var = %b", my_var);
    
    my_var = 8'o211;                   // 137 in octal
    $display("my_var = %o", my_var);
    
    my_var = 8'hz1;                    // zzzz_0001 ; zzzz high impedance
    $display("my_var = %b", my_var);
    
    my_var = 8'b1;                     // 8 bit variable gets 1 bit value
    $display("my_var = %b", my_var);
    
    my_var = 8'b1111_1111_0000;        // 8 bit variable gets 12 bit value
    $display("my_var = %b", my_var);

    end

endmodule
