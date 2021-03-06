
module mux8to1B1(C2,C1,C0,I7,I6,I5,I4,I3,I2,I1,I0,O1);

input logic C2, C1, C0, I7, I6, I5, I4, I2, I1, I3, I0;
output logic O1;

	assign O1 = (~C2 & ~C1 & ~C0 & I0) |
		(~C2 & ~C1 & C0 & I1) |
		(~C2 & C1 & C0 & I2) |
		(~C2 & C1 & ~C0 & I3) | 
		(C2 & ~C1 & C0 & I4) |
		(C2 & C1 & ~C0 & I5) |
		(C2 & C1 & C0 & I6) |
		(C2 & ~C1 & ~C0 & I7);
	
	endmodule
