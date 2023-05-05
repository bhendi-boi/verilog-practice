module test ();
    reg a,b,borrowIn;
    wire difference, borrowOut;
    fullSubtractor a1(difference,borrowOut,a,b,borrowIn);
    initial begin
        a=0;b=0;borrowIn=0;#1
        a=0;b=0;borrowIn=1;#1
        a=0;b=1;borrowIn=0;#1
        a=0;b=1;borrowIn=1;#1
        a=1;b=0;borrowIn=0;#1
        a=1;b=0;borrowIn=1;#1
        a=1;b=1;borrowIn=0;#1
        a=1;b=1;borrowIn=1;#1
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule