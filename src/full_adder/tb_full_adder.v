`timescale 1ns / 1ps

`include "full_adder.v"

module tb_full_adder;
    reg a, b, cin;
    wire s, cout;
    integer i;
    
    full_adder dut(a, b, cin, s, cout);
    
    initial begin 
    $dumpvars(1);
    $display("i                        ...3210||a|b|c||c|s");
    $monitor("%3b||%b|%b|%b||%b|%b", i, a, b, cin, cout, s);
    
    for(i = 0; i < 8; i = i + 1)
        begin
            cin = i[0];
            b = i[1];
            a = i[2];
            #5;
        end
        $finish;
        
    end 

endmodule
