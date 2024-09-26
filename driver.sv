class driver;
  virtual intf vif;
  mailbox mb;
   packet p;
  
  function new(mailbox mb, virtual intf vif);
    this.mb=mb;
    this.vif=vif;
  endfunction
  
  task main();
    
    forever
      begin
//         packet p;
        @(posedge vif.clk);
        mb.get(p);
        vif.a<=p.a;
        vif.b<=p.b;
//         @(posedge vif.clk);
//         p.out=vif.out;     
//         p.display("driver"); 
        $display("driver");
        $display("a=%0d,b=%0d",p.a,p.b,$time);
      end    
  endtask
  
endclass