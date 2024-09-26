
module adder(clk, reset,a,b,out);
  input clk,reset;
  input int a;
  input int b;
  output int out;
  
  always @(posedge clk or posedge reset)
    begin
      
     if(reset)
      out <= 0;
     else
      out <= a+b;
    end
  
endmodule
  
