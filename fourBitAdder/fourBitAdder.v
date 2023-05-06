`include "../full-adder/fullAdder.v"
module 
    fourBitAdder (
    output [3:0] sum,output carryOut,input[3:0] a,b,input carryIn
);
    wire w0,w1,w2;
    fullAdder f0(sum[0],w0,a[0],b[0],carryIn);
    fullAdder f1(sum[1],w1,a[1],b[1],w0);
    fullAdder f2(sum[2],w2,a[2],b[2],w1);
    fullAdder f3(sum[3],carryOut,a[3],b[3],w2);

endmodule