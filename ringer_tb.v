module testbench();
reg ring ;
reg vibrate_mode;
wire ringer;
wire motor;
integer i;

initial
begin

    $dumpfile("ringer.vcd");
    $dumpvars(0,testbench);
    for(i=0;i<4;i=i+1)
    begin
      {ring,vibrate_mode}=i;

        #10
        $display("Ringer: ",ringer);
        $display("motor: ",motor);
    end
end

ringer_module ringer_module(ring,vibrate_mode,ringer,motor);

endmodule