module test ();
    reg a,b,carryIn;
    wire sum,carryOut;
    fullAdder a1(sum,carryOut,a,b,carryIn);
    initial begin
        a=0;b=0;carryIn=0;#1
        a=0;b=0;carryIn=1;#1
        a=0;b=1;carryIn=0;#1
        a=0;b=1;carryIn=1;#1
        a=1;b=0;carryIn=0;#1
        a=1;b=0;carryIn=1;#1
        a=1;b=1;carryIn=0;#1
        a=1;b=1;carryIn=1;#1
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule