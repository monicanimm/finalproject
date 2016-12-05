
module mux8to1B8 (input logic C2, input logic C1, input logic C0, input logic [7:0] I7, input logic [7:0] I6, input logic [7:0] I5, input logic [7:0] I4, input logic [7:0] I3, 
	input logic[7:0] I2, input logic [7:0] I1, 
	input logic [7:0] I0, output logic [7:0] O);

	integer i;
	
	mux8to1B4 m0(C2,C1,C0,I7[3:0],I6[3:0],I5[3:0],I4[3:0],I3[3:0],I2[3:0],I1[3:0],I0[3:0],O[3:0]);
	mux8to1B4 m1(C2,C1,C0,I7[7:4],I6[7:4],I5[7:4],I4[7:4],I3[7:4],I2[7:4],I1[7:4],I0[7:4],O[7:4]);
	


endmodule
