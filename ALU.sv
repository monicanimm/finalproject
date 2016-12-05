/*
As you are given it, this ALU only implements Add
  */

module ALU(input logic  [31:0] I1,

	   input logic [31:0] I2,
	   input logic [5:0] Selector,//5 bits
	   output logic [31:0] O
	   );
	
   logic [31:0] result;

   //parameter A=6'b1000000;//add 
   //parameter F=6'b100110;//nor
   //parameter H=6'b000100;//not
		//rolv
	//rorv
	//bleu

 
   /*case(Selector)
     A: result=I1+I2;
     F: result=I1 ~| I2;
     H: result=~I1;
   endcase; // case (Selector)*/
   //need to set up a multiplexer
	assign add = I1 + I2;
	assign nor = ~ (I1 | I2);
	assign not = ~(I1);
	assign rolv = 0;
	assign rorv = 0;
	assign bleu = 0;
   mux4to1B5 
   
    
   //assign sum = I1 + I2;
   
   assign O = result;
	
endmodule
