module halfAdder (
    output sum,carry, input a,b
);
    xor x0(sum,a,b);
    and a0(carry,a,b);
endmodule