module Control(ins, memWrite, regWriteEnable, alu4, alu3, alu2, alu1, alu0);

   input logic [31:0] ins;
   output logic [0:0] memWrite, regWriteEnable, alu4, alu3, alu2, alu1, alu0;


   logic [0:0] lw, sw;

   
   assign lw = ins[31] & ~ins[30] & ~ins[29] & ~ins[28] & ins[27] & ins[26];
   assign sw = ins[31] & ~ins[30] & ins[29] & ~ins[28] & ins[27] & ins[26];
   
   
   assign alu0 = rolv | rorv;
   assign alu1 = nor | bleu;
   assign alu2 = not | nor | rorv;
   
   //assign alu3 = 1'b0;
   //assign alu4 = 1'b0;
   // or statements, encode each bit to mean a certain instruction.
   // add: 00001
   // nor: 00011
   // 
  // assign add = alu4 & ~alu3 & ~alu2 & alu1 & ~alu0; 
  /* assign add= ins[31] & ~ins[30] & ~ins[29] & ~ins[28] & ~ins[27] & ~ins[26];
   assign nor = ins[31] & ~ins[30] & ~ins[29] & ins[28] & ins[27] & ~ins[26];
   assign not= ~ins[31] & ~ins[30] & ~ins[29] & ins[28] & ~ins[27] & ~ins[26];
   assign bleu= ~ins[31] & ins[30] & ~ins[29] & ~ins[28] & ~ins[27] & ~ins[26];
   assign rolv=  ~ins[31] & ~ins[30] & ~ins[29] & ~ins[28] & ~ins[27] & ~ins[26];
   assign rorv=  ~ins[31] & ~ins[30] & ~ins[29] & ~ins[28] & ins[27] & ~ins[26];*/
   
   assign regWriteEnable = lw;

   //You need to change this to implement sw
   assign memWrite = sw;
   

   endmodule
