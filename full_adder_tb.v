module testbench();

reg a,b,cin;
wire cout,sum;

FA fa(a,b,cin,cout,sum);
integer i;
initial
begin
  $dumpfile("full_adder.vcd");
  $dumpvars(0,testbench);
  for(i=0;i<8;i=i+1)
  begin
    {a,b,cin}=i;
    #10
    $display("sum: %b,carry: %b",sum,cout);
  end


end

endmodule