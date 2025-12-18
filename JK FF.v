module JK_FlipFlop (
    input clk,
    input j,
    input k,
    output reg Q
 
);

    wire J_bar, K_bar, input_to_d;

    assign J_bar = ~j;
    assign K_bar = ~k;
    assign input_to_d = (j & Q) | (K_bar & (~Q));

    always @(posedge clk) begin
        Q <= input_to_d;  
    end

endmodule
