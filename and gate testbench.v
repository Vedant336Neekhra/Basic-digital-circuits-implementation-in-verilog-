module testbench();
reg [1:0] in;
wire out;
integer i;
andgate andgate(in,out);

initial
begin
  $dumpfile("andgate.vcd");
  $dumpvars(0,testbench);
  for(i=0;i<4;i=i+1)
  begin
    in=i;
    #10
  end
end

endmodule