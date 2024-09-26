class packet;
  
  rand int a;
  rand int b;
  
  int out;
 
  
  function void display(string name);
    $display("%s",name);
    $display("a=%0d,b=%0d,out=%0d",a,b,out,$time);   
  endfunction
  
  constraint c1{a>0 && a<50;};
  constraint c2{b>0 && b<50;};
  
endclass