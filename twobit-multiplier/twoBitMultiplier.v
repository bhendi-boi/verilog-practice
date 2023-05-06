`include "../half-adder/halfAdder.v"

module twoBitMultiplier (
    output [3:0] product,input [1:0] a,b
);
    wire w0,w1,w2,w3;
    and a0(product[0],a[0],b[0]);
    and a1(w0,a[0],b[1]);
    and a2(w1,a[1],b[0]);
    halfAdder h0(product[1],w2,w0,w1);
    and a3(w3,a[1],b[1]);
    halfAdder h1(product[2],product[3],w3,w2);
endmodule