`timescale 1ns / 1ps

module and3_tb();
    reg tb_a, tb_b, tb_c;
    wire s;
    
    // Instância do módulo and3
    and3 dut(.a(tb_a), .b(tb_b), .c(tb_c), .s(s));
  
    initial begin
        // Gera a saída de dump para visualização
        $dumpvars(0);
        
        // Testando todas as combinações possíveis
        #5 tb_a = 0; tb_b = 0; tb_c = 0;
        #5 tb_a = 0; tb_b = 0; tb_c = 1;
        #5 tb_a = 0; tb_b = 1; tb_c = 0;
        #5 tb_a = 0; tb_b = 1; tb_c = 1;
        #5 tb_a = 1; tb_b = 0; tb_c = 0;
        #5 tb_a = 1; tb_b = 0; tb_c = 1;
        #5 tb_a = 1; tb_b = 1; tb_c = 0;
        #5 tb_a = 1; tb_b = 1; tb_c = 1;
        
        $finish;
    end 
endmodule

