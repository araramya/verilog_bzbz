module D(out, a, b, c);
output out;
input a, b, c;
wire e;
and a1(e, a, b);
or  o1(out, e, c);
endmodule

module testbench;
wire OUT,A,B,C;
assign A = 0;
assign B = 0;
assign C  = 1;
D u_D(.out(OUT), .a(A ), .b(B), .c(C));

`ifndef  VCD_DUMP_EN
	`define VCD_DUMP_EN
	initial begin
		$dumpfile("exm_1.vcd"); 
		$dumpvars(0, testbench);
	end
`endif
endmodule
