module test (
    
);
    reg [3:0] a,b;
    reg carryIn;
    wire [3:0] sum;
    wire carryOut;
    alu a1(sum,carryOut,a,b,carryIn);
    initial begin
        a = 10; b = 10; carryIn=0; #10
        a = 10; b = 10; carryIn = 1; #10
        $finish;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,a1);
    end
endmodule