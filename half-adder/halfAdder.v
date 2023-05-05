module halfAdder (
    output sum,carry, input a,b
);
    assign carry = a & b;
    assign sum = a ^ b;
endmodule