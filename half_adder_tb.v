module testbench();

reg a,b;
wire cout,sum;
integer i;
HA ha(a,b,cout,sum);

initial
begin
  $dumpfile("half_adder.vcd");
  $dumpvars(0,testbench);
  for(i=0;i<4;i=i+1)
  begin
    {a,b}=i;
    #10
    $display("sum: %b,carry: %b",sum,cout);
  end
end

endmodule