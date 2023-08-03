`include "../t-flipflop/tFlipFlop.v"


module async4BitUpCounter (
    output reg [3:0] out,input clock
);
    wire w0,w1,w2,w3;
    reg w4;
    initial begin
        w4 = 1;
        out[0] = 0;
    end
    tFlipFlop a0(w0,w4,clock);
    tFlipFlop a1(w1,w4,w0);
    tFlipFlop a2(w2,w4,w1);
    tFlipFlop a3(w3,w4,w2);
    always @(*) begin
        out[0] = w0;
        out[1] = w1;
        out[2] = w2;
        out[3] = w3;
    end
endmodule