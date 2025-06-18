module tb_Dmux; 
  reg i; 
  reg [1:0] s; 
  wire [3:0] y; 
 Dmux uut (.i(i),  .s(s),  .y(y)); 
  initial  
  begin 
   i = s=0; 
   #50; 
  end 
  always 
  begin 
   #100; 
   i=$random; 
   s=$random; 
  end     
endmodule 

//- The testbench initializes the inputs (i and s) to 0 at the beginning.
// Every 100 time units, random values are assigned to i and s.
//The Demultiplexer module processes the input and activates one of the four outputs (y[0] to y[3]).
//The testbench runs indefinitely, generating diverse input values
