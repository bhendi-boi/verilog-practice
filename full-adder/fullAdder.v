module fullAdder (
    output sum,carryOut, input a,b,carryIn
);
    wire w0,w1,w2,w3;
    xor x0(w0,a,b);
    xor x1(sum,carryIn,w0);
    and a0(w1,a,b);
    and a1(w2,b,carryIn);
    and a2(w3,carryIn,a);
    or o0(carryOut,w1,w2,w3);
endmodule