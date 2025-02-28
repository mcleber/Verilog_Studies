`timescale 1ns / 1ps

`include "ripple_carry_adder.v"

module tb_ripple_carry_adder;
    reg[3:0] a, b;
    reg cin;
    wire[4:0] s;
    integer i, j;
    
    adder4 dut(a, b, cin, s[3:0], s[4]);
    
    initial  begin
        $dumpvars(1);
        $display("a + b + cin = {cout, s}");
        $monitor("%d + %d + %3b = %7d", a, b, cin, s);
        
        for (i = 1; i < 512; i = i + 25)
            begin
                cin = i[0];
                b = i[4:1];
                a = i[8:5];
                #5;
            end 
            $finish;
           end
endmodule
