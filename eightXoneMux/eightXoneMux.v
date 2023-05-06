`include "../fourXoneMux/fourXoneMux.v"

module eightXoneMux (
    output out,input i7,i6,i5,i4,i3,i2,i1,i0,s2,s1,s0
);
    wire w0,w1,w2;
    fourXoneMux a0(w0,i3,i2,i1,i0,s1,s0);
    fourXoneMux a1(w1,i7,i6,i5,i4,s1,s0);
    twoXoneMux a2(out,w1,w0,s2);
endmodule