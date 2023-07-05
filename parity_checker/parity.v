module parity (
    clk,in,out
);
    input clk,in;
    output reg out;
    reg evodd;
    parameter EVEN = 0, ODD = 1 ;
    always @(posedge clk) 
    case (evodd)
      EVEN : begin 
        out <=in ? 1:0;
        evodd <= in ? ODD: EVEN;   
    end
    ODD : begin 
        out <=in ? 0:1;
        evodd <= in ? EVEN : ODD;   
    end
        default: evodd <=EVEN;
    endcase
endmodule