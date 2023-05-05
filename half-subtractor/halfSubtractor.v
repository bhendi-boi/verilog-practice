module halfSubtractor (
    output difference,borrow,input a,b
);
    wire w0;
    xor x0(difference,a,b);
    nor n0(w0,b);
    and a0(borrow,a,w0);
endmodule