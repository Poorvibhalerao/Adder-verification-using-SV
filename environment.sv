`include "packet.sv";
`include "generator.sv";
`include "driver.sv";
`include "monitor.sv";
`include "score_board.sv";

class environment;
  generator gen;
  driver d;
  monitor m;
  mailbox m1;
  mailbox m2;
  score_board s;
  
  virtual intf vif;
  function new(virtual intf vif);
    
  	this.vif=vif;
 	m1=new();
  	m2=new();
    gen=new(m1);
    d=new(m1,vif);
    m=new(m2,vif);
    s=new(m2);
  endfunction
  
  task test();
    fork
      gen.main();
      d.main();
      m.main();
      s.main();
    join_any    
  endtask
  task run();
    test();
    $finish;
  endtask
   
endclass
