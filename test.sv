`include "environment.sv"

program test(intf int_f);
  environment env;
  initial begin
  env=new(int_f);
  env.gen.count=2;
  env.run();
  end
endprogram