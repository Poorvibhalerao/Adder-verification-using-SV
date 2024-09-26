class monitor;
  virtual intf vif;
  mailbox mb1;
  
  function new(mailbox mb1,virtual intf vif);
    this.mb1=mb1;
    this.vif=vif;
  endfunction
  
  task main();
   
    repeat(2)
      begin
       
        packet p;
        wait (!vif.reset);
        @(posedge vif.clk);
        p=new();
      	p.a=vif.a;
      	p.b=vif.b;
        @(posedge vif.clk);
     	p.out=vif.out;
      	mb1.put(p);
      	p.display("monitor");  
      end         
  endtask
  
endclass