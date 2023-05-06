module test (
    
);
    reg i1,i0;
    wire o3,o2,o1,o0;
    twoXfourDecoder a1(o3,o2,o1,o0,i1,i0);
    initial begin
        i1 = 0;i0 = 0;#1
        i1 = 0;i0 = 1;#1
        i1 = 1;i0 = 0;#1
        i1 = 1;i0 = 1;#1
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule