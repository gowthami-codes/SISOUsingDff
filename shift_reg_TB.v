// *** TB CODE FOR SISO (Serial-In-Serial-Out) Register Using Dff ***//

`timescale 1ns / 1ps

module tb_shift_reg;

        reg d,clk;
        wire q;
        
        shift_reg dut(.clk(clk),.d(d),.q(q));
        
        initial 
        begin
        clk = 0;
        forever #5 clk = ~clk;
        end
        
        initial 
        begin
        d = 1;
        #10;
        d = 0;
        #10;
        d = 1;
        #10;
        d = 0;
        #10;
        end
        
        initial 
        begin
            $monitor("clk = %b,d = %b,q = %b",clk,d,q);
            #100;
            $finish;
        end
endmodule