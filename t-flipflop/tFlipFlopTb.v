module test (
    
);
    reg t,clock;
    wire q;
    tFlipFlop a1(q,t,clock);
    initial begin
        clock=1;
        forever #2 clock = ~clock;  
    end
    initial begin
        t = 1;
    end
    initial begin
        #200
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule