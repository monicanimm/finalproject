
module mux8to1B4 (input logic C2, input logic C1, input logic C0, input logic [7:4] I7, input logic [7:4] I6, input logic [7:4] I5, input logic [7:4] I4, input logic [3:0] I3, 
	input logic[3:0] I2, input logic [3:0] I1, 
	input logic [3:0] I0, output logic [3:0] O);

	integer i;
	
	mux8to1B1 m0(C2,C1,C0,I7[0],I6[0],I5[0],I4[0],I3[0],I2[0],I1[0],I0[0],O[0]);
	mux8to1B1 m1(C2,C1,C0,I7[1],I6[1],I5[1],I4[1],I3[1],I2[1],I1[1],I0[1],O[1]);
	mux8to1B1 m2(C2,C1,C0,I7[2],I6[2],I5[2],I4[2],I3[2],I2[2],I1[2],I0[2],O[2]);
	mux8to1B1 m3(C2,C1,C0,I7[3],I6[3],I5[3],I4[3],I3[3],I2[3],I1[3],I0[3],O[3]);
	mux8to1B1 m4(C2,C1,C0,I7[4],I6[4],I5[4],I4[4],I3[4],I2[4],I1[4],I0[4],O[4]);
	mux8to1B1 m5(C2,C1,C0,I7[5],I6[5],I5[5],I4[5],I3[5],I2[5],I1[5],I0[5],O[5]);
	mux8to1B1 m6(C2,C1,C0,I7[6],I6[6],I5[6],I4[6],I3[6],I2[6],I1[6],I0[6],O[6]);
	mux8to1B4 m7(C2,C1,C0,I7[7],I6[7],I5[7],I4[7],I3[7],I2[7],I1[7],I0[7],O[7]);
	


endmodule
