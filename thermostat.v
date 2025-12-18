

module  thermostat_module(input too_cold,input too_hot,input mode,
input fan_on,output heater,output aircon,output fan);
assign heater = too_cold & mode;
//reg not_mode=!mode
assign aircon = too_hot & (~mode);
assign fan = fan_on | ((~fan_on)&(~mode)&too_hot) | ((~fan_on)&too_cold&mode);





endmodule

