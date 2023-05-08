`timescale 1ns/1ns
module test (
    
);
    reg d=0,clock=0;
    wire q,qnot;
    initial begin
        clock=0;
        forever #2 clock = ~clock;  
    end 
    dFlipFlop a1(q,qnot,d,clock);
    initial begin
        d=0;#5
        d=1;#5
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule