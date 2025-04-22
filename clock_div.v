module clock_div
#(
    parameter DIVIDE_BY = 17
)

(
    input clock,
    input reset,
    output div_clock
    
  );
wire clk_out[DIVIDE_BY - 1:0];


dff dff0 (
.reset(reset),
.clock(clock),
.D(NotQ),
.Q(clk_out[0])

);

dff dff1 (
.reset(reset),
.clock(clk_out[0]),
.D(NotQ),
.Q(clk_out[1])

);

dff dff2 (
.reset(reset),
.clock(clk_out[1]),
.D(NotQ),
.Q(clk_out[2])

);

dff dff3 (
.reset(reset),
.clock(clk_out[2]),
.D(NotQ),
.Q(clk_out[3])

);

dff dff4 (
.reset(reset),
.clock(clk_out[3]),
.D(NotQ),
.Q(clk_out[4])

);

dff dff5 (
.reset(reset),
.clock(clk_out[4]),
.D(NotQ),
.Q(clk_out[5])

);

dff dff6 (
.reset(reset),
.clock(clk_out[5]),
.D(NotQ),
.Q(clk_out[6])

);

dff dff7 (
.reset(reset),
.clock(clk_out[6]),
.D(NotQ),
.Q(clk_out[7])

);

dff dff8 (
.reset(reset),
.clock(clk_out[8]),
.D(NotQ),
.Q(clk_out[9])

);

dff dff9 (
.reset(reset),
.clock(clk_out[9]),
.D(NotQ),
.Q(clk_out[10])

);

dff dff10 (
.reset(reset),
.clock(clk_out[10]),
.D(NotQ),
.Q(clk_out[11])

);

dff dff11 (
.reset(reset),
.clock(clk_out[11]),
.D(NotQ),
.Q(clk_out[12])

);

dff dff12 (
.reset(reset),
.clock(clk_out[12]),
.D(NotQ),
.Q(clk_out[13])

);

dff dff13 (
.reset(reset),
.clock(clk_out[13]),
.D(NotQ),
.Q(clk_out[14])

);

dff dff14 (
.reset(reset),
.clock(clk_out[14]),
.D(NotQ),
.Q(clk_out[15])

);

dff dff15 (
.reset(reset),
.clock(clk_out[15]),
.D(NotQ),
.Q(clk_out[16])

);

dff dff16 (
.reset(reset),
.clock(clk_out[16]),
.D(NotQ),
.Q(div_clk)

);


endmodule
