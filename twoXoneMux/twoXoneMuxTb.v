module test (
    
);  
    reg i1,i0,s0;
    wire out;
    twoXoneMux a1(out,i1,i0,s0);
    initial begin
        i1=0;i0=0;s0=0;#1
        i1=0;i0=0;s0=1;#1
        i1=0;i0=1;s0=0;#1
        i1=0;i0=1;s0=1;#1
        i1=1;i0=0;s0=0;#1
        i1=1;i0=0;s0=1;#1
        i1=1;i0=1;s0=0;#1
        i1=1;i0=1;s0=1;#1
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule