`include "../fourBitAdder/fourBitAdder.v"
module alu (
    output[3:0] sum, output carryOut, input[3:0] a,b, input carryIn
);
    wire [3:0] w;
    xor(w[0],b[0],carryIn);
    xor(w[1],b[1],carryIn);
    xor(w[2],b[2],carryIn);
    xor(w[3],b[3],carryIn);
    fourBitAdder f1(sum,carryOut,a,w,carryIn);

endmodule