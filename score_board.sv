class score_board;
  
  mailbox mb1;
  
  function new(mailbox mb1);
    this.mb1=mb1;
  endfunction
  
  task main();
   packet p;
    repeat(2)
    begin    
      mb1.get(p);
      p.display("scoreboard");
      if(((p.a+p.b)==p.out))
        $display("Matched:a=%0d,b=%0d,out=%0d",p.a,p.b,p.out,$time);
      else
        $display("NOT MATCHED",$time);
    end    
  endtask  
endclass