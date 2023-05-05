module test (
    
);
    reg a,b;
    wire difference,borrow;
    halfSubtractor a1(difference,borrow,a,b);
    initial begin
        a=0;b=0;#1
        a=0;b=1;#1
        a=1;b=0;#1
        a=1;b=1;#1
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule