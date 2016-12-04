	module mux4(input logic [3:0] d0, d1, d2, d3,
		    input logic [1:0],
		    output logic [3:0] y);
		
		logic [3:0] low, high;
		
		parameter A=6'b1000000;//add 
   		parameter F=6'b100110;//nor
  		parameter H=6'b000100;//not

		mux2 lowmux (d0, d1, s[0], low);
		mux2 highmux (d2, d3, s[0], high);
		mux2 finalmux(low, high, s[1], y);
	endmodule
