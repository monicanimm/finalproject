/*
As you are given it, this ALU only implements Add
  */

module ALU(input logic  [31:0] I1,

	   input logic [31:0] I2,
	   input logic [0] selector1, input logic[0] selector2, input logic[0] selector3,
					    //5 bits
	   output logic [31:0] ALUresult
	   );
	
   logic [31:0] result;

	assign add = I1 + I2;
	assign nor = ~ (I1 | I2);
	assign not = ~(I1);
	assign rolv = 0;
	assign rorv = 0;
	assign bleu = 0;
	
	assign selector1=C0;
	assign selector2=C1;
	assign selector3=C2;
	
	mux8to1B32 mux0(C2,C1,C0,add,nor,not,rolv,rorv,bleu,32'b0,32'b0,result);
   
   assign ALUResult = result;
	
endmodule
