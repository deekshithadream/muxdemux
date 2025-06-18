module Dmux(input i, 
     input [1:0] s, 
     output reg [3:0] y); 
 always@(i,s) 
  begin 
  y=0; 
   case (s) 
    2'b00 : y[0] = i; 
    2'b01 : y[1] = i; 
    2'b10 : y[2] = i; 
    2'b11 : y[3] = i; 
   endcase 
  end 
endmodule

// The selector s determines which output (y[0] to y[3]) receives the input signal i.
// Only one output line is active at a time, meaning the demultiplexer is useful in routing data or signals in communication systems,
/  digital circuits, and memory access.
