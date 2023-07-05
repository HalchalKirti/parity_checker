`include "parity.v"
module test ;
  reg clock,a; wire o;
  parity m0 (clock,a,o);
  initial begin
    $dumpfile("parity.vcd");
    $dumpvars(0,test);
    clock = 1'b0;
  end
    always #5 clock = ~clock;
initial
begin 
    #2 a=0;#10 a=1;#10 a=1;#10 a=1;
    #10 a=0;#10 a=1;#10 a=1;#10 a=0;
    #10 a=0;#10 a=1;#10 a=1;#10 a=0;
    #10 $finish;
end
endmodule