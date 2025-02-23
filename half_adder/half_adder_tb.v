`timescale 1ns / 1ps

module half_adder_tb();
    reg test_a, test_b;
    wire SUM, CARRY;
    
    half_adder dut(.a(test_a), .b(test_b), .sum(SUM), . carry(CARRY));
    
    initial begin 
    test_a = 0;
    test_b = 0;
    # 10
    
    test_a = 0;
    test_b = 1;
    # 10
    
    test_a = 1;
    test_b = 0;
    # 10
    
    test_a = 1;
    test_b = 1;
    # 10
    
    $stop;   
    
    end 
endmodule
