module test (
    
);
    reg t,clock;
    wire q;
    tFlipFlop a1(q,t,clock);
    initial begin
        clock=0;
        forever #2 clock = ~clock;  
    end
    initial begin
        t=0;#5
        t=1;#5
        t=0;#5
        t=1;#5
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule