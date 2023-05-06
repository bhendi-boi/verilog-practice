`timescale 1ns/1ns
module test (
    
);
    reg [1:0] a,b;
    wire [3:0] product;
    twoBitMultiplier a1(product,a,b);
    initial begin
        a = 0;b = 0;#1
        a = 0;b = 1;#1
        a = 0;b = 2;#1
        a = 0;b = 3;#1
        a = 1;b = 0;#1
        a = 1;b = 1;#1
        a = 1;b = 2;#1
        a = 1;b = 3;#1
        a = 2;b = 0;#1
        a = 2;b = 1;#1
        a = 2;b = 2;#1
        a = 2;b = 3;#1
        a = 3;b = 0;#1
        a = 3;b = 1;#1
        a = 3;b = 2;#1
        a = 3;b = 3;#1
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule