module twoXfourDecoder (
    output o3,o2,o1,o0,input i1,i0
);
    wire w0,w1;
    nor n0(w0,i0);
    nor n1(w1,i1);
    and a0(o0,w0,w1);
    and a1(o1,i0,w1);
    and a2(o2,w0,i1);
    and a3(o3,i0,i1);
endmodule