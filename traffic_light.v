`define Y_RDELAY 3 //Delays

`define R_GDELAY 2

//input,output ports

module traffic_light(input x, clear, clk,

outputreg [1:0] highway, cross_road);

//2-bit output for 3 states of signal

//green,yellow,red

parameter red = 2'b00, yellow = 2'b01, green = 2'b10; //state
defination

parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 =
3'b100;

reg [2:0] pstate, nstate; //Internal state
variables

  always @(posedgeclk) //state machine using moore

begin

if(clear)

pstate<= s0;

else

pstate<= nstate;

end

always @(pstate)

begin

highway = green;

cross_road = red;

case (pstate)

s0 : ;

s1: highway = yellow;

s2: highway = red;

s3: begin

highway = red;

cross_road = green;

end s4: begin

highway = red;

cross_road = yellow;

end

endcase

end

always @(pstate or x)

begin

case (pstate)

s0: if(x)

nstate<= s1;

else

nstate<= s0;

s1: begin

repeat(`Y_RDELAY) @(posedgeclk);

nstate<= s2;

end

s2: begin

repeat(`R_GDELAY) @(posedgeclk);

nstate<= s3;

end

s3: if(x)

nstate<= s3;

else

nstate<= s4;

s4: begin

repeat(`Y_RDELAY)
@(posedgeclk);

nstate<= s0;

end

default :nstate<= s0;

endcase

end

endmodule
