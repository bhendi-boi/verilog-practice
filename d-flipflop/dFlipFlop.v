module dFlipFlop (
    output reg q,qnot,input d,clock
);  
    always @(negedge clock) begin
        q <= d;
        qnot <= ~d;
    end
    
endmodule