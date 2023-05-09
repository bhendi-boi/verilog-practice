module tFlipFlop (
    output reg q,input t,clock
);
    initial begin
        q <= 0;
    end
    always @(negedge clock) begin
        if(t)
            q <= ~q;
    end
endmodule