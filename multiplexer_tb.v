module testbench();
reg [15:0] a,b,c,d,e,f,g,h,i;
reg [3:0] sel;
wire [15:0] out;

integer j;
MUX mux(a,b,c,d,e,f,g,h,i,sel,out);

initial
begin

  $dumpfile("multiplexer.vcd");
  $dumpvars(0,testbench);
  a=0;
  b=1;
  c=2;
  d=3;
  e=4;
  f=5;
  g=6;
  h=7;
  i=9;
  for(j=0;j<16;j=j+1)
  begin
    sel=j;

    #10
    $display("Output: %d",out);
  end
  
end



endmodule