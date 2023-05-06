`include "../twoXoneMux/twoXoneMux.v"

module fourXoneMux (
    output out,input i3,i2,i1,i0,s1,s0
);
    wire w0,w1;
    twoXoneMux a0(w0,i1,i0,s0);
    twoXoneMux a1(w1,i3,i2,s0);
    twoXoneMux a2(out,w1,w0,s1);
endmodule
