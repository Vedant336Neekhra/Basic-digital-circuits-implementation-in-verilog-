module four_digit_bcd_adder (
    input [15:0] a_4digit, 
    input [15:0] b_4digit, 
    input cin,             
    output cout,
    output [15:0] sum_4digit 
);

    wire [3:0] c; 
    bcd_fadd bcd1 (.a(a_4digit[3:0]), .b(b_4digit[3:0]), .cin(cin), .cout(c[0]), .sum(sum_4digit[3:0]));
    bcd_fadd bcd2 (.a(a_4digit[7:4]), .b(b_4digit[7:4]), .cin(c[0]), .cout(c[1]), .sum(sum_4digit[7:4]));
    bcd_fadd bcd3 (.a(a_4digit[11:8]), .b(b_4digit[11:8]), .cin(c[1]), .cout(c[2]), .sum(sum_4digit[11:8]));
    bcd_fadd bcd4 (.a(a_4digit[15:12]), .b(b_4digit[15:12]), .cin(c[2]), .cout(cout), .sum(sum_4digit[15:12]));

endmodule
