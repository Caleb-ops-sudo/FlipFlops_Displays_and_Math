module seven_seg_scanner(
    input div_clock,
    input Reset,
    output [3:0] anode

);
//becuase the anodes on the 7 seg displays are active when low 
assign anode = ~state;

wire[3:0] next;
wire[3:0] state;

State_machinedff Adff(
    .D(next[0]),
    .Q(state[0]),
    .clk(div_clock),
    .Reset(Reset),
    .Default(1'b1)
);
State_machinedff Bdff(
    .D(next[1]),
    .Q(state[1]),
    .clk(div_clock),
    .Reset(Reset),
    .Default(1'b0)
);
State_machinedff Cdff(
    .D(next[2]),
    .Q(state[2]),
    .clk(div_clock),
    .Reset(Reset),
    .Default(1'b0)
);
State_machinedff Ddff(
    .D(next[3]),
    .Q(state[3]),
    .clk(div_clock),
    .Reset(Reset),
    .Default(1'b0)
);

assign next[0] = state[3];
assign next[1] = state[0];
assign next[2] = state[1];
assign next[3] = state[2];



endmodule
