`include "interface.sv";
`include "test.sv";

module tb;
  bit clk;
  bit reset;
  
  always #5 clk <= ~clk;
  
  initial begin
    reset=1;
    #5 reset=0;
    #50 $finish;
  end
  intf in(clk,reset);
  test t1(in);
  adder adder_inst(.clk(in.clk),.reset(in.reset),.out(in.out),.a(in.a),.b(in.b));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end 
endmodule
