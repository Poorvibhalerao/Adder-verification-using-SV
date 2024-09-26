class generator;
  packet p;
  int count;
  mailbox mb;
  
  function new(mailbox mb);
    this.mb=mb;
  endfunction
  
  task main();
    
    repeat(count)
      begin
        p=new();
        p.randomize();
        p.display("generator");
        mb.put(p); 
        #25;
      end
  endtask 
endclass