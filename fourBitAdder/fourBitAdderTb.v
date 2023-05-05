module test (
    
);
    reg [3:0] a,b;
    reg carryIn;
    wire [3:0] sum;
    wire carryOut;
    fourBitAdder a1(sum,carryOut,a,b,carryIn);
    initial begin
        a=0;b=0;carryIn=0;#1
        a=10;b=10;carryIn=0;#1
        a=15;b=15;carryIn=0;#1
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
    
endmodule