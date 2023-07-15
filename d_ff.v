//***RTL CODE FOR D FLIP-FLOP***//

module d_ff(clk,d_in,q,qb);
	input clk,d_in;
	output reg q;
	output qb;
always@(posedge clk)
	begin
		q <= d_in;
	end
assign qb = ~q;
endmodule