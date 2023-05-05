module fullSubtractor (
    output difference, borrowOut, input a,b,borrowIn
);
    wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9;
    nor n0(w0,a);
    nor n1(w1,b);
    nor n2(w2,borrowIn);
    
    // ? borrowOut 
    and a0(w3,w0,borrowIn);
    and a1(w4,w0,b);
    and a2(w5,b,borrowIn);
    or o0(borrowOut,w3,w4,w5);
    
    // ? difference
    and a3(w6,w0,w1,borrowIn);
    and a4(w7,w0,b,w2);
    and a5(w8,a,w1,w2);
    and a6(w9,a,b,borrowIn);
    or o1(difference,w5,w6,w7,w8);
endmodule