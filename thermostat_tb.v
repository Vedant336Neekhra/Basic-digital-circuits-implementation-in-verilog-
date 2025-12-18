module testbench();
reg too_cold;
reg too_hot;
reg fan_on;
reg mode;
wire fan;
wire heater;
wire aircon;
integer i;
thermostat_module thermostat_module(too_cold,too_hot,mode,fan_on,heater,aircon,fan);

    initial
    begin
        $dumpfile("thermostat.vcd");
        $dumpvars(0,testbench);

        for(i=0;i<16;i=i+1)
        begin
            {mode,too_hot,too_cold,fan_on}=i;
            #10
            $display("heater: ",heater);
            $display("ac: ",aircon);
            $display("fan: ",fan) ;
        end
    end



endmodule