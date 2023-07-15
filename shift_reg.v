// *** RTL CODE FOR SISO (Serial-In-Serial-Out) Register Using Dff ***//

`timescale 1ns / 1ps

module shift_reg(clk,d,q);

        input d,clk;
        output q;
        wire q1,q2,q3;
        
        d_ff F1(clk,d,q1);
        d_ff F2(clk,q1,q2);
        d_ff F3(clk,q2,q3);
        d_ff F4(clk,q3,q);
      
endmodule