module twoXoneMux (
    output out,input i1,i0,s0
);
    wire w0,w1,w2;
    nor n0(w0,s0);

    and a0(w1,w0,i0);
    and a1(w2,s0,i1);
    or o0(out,w1,w2);
endmodule