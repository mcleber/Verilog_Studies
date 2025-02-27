`timescale 1ns / 1ps

module t_not_xnyz;
    reg a, b, c;
    wire s, t;

    not_xnyz dut(a, b, c, s);
    not_xnyz uut(.s(t), .x(a),. y(b), .z(c));

    initial begin
        $display("x|y|z||s|t\n-+-+-++-+-");
        $monitor("%b|%b|%b||%b|%b", a, b, c, s, t);
        
        a = 0; b = 0; c = 0;
        #5 a = 0; b = 0; c = 1;
        #5 a = 0; b = 1; c = 0;
        #5 a = 0; b = 1; c = 1;
        #5 a = 1; b = 0; c = 0;
        #5 a = 1; b = 0; c = 1;
        #5 a = 1; b = 1; c = 0;
        #5 a = 1; b = 1; c = 1;
        $finish;
    end
endmodule
