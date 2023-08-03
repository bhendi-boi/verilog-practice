`timescale 1ns/1ns
module test (
    
);
    reg clock;
    wire  reg [3:0] out;
    async4BitUpCounter a1(out,clock);
    initial begin
        clock=1;
        forever #2 clock = ~clock;  
    end
    initial begin
        #2000
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule