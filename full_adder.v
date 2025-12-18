module FA(    input a, b, cin,
output cout, sum );

assign cout= (b&cin)|(a&cin)|(a&b);
assign sum =a^b^cin;

endmodule



