module top
#(
    parameter DIVIDE_BY = 17 // Use this when passing in to your clock div!
    // The test bench will set it appropriately for testing
)
(
    input [7:0] sw, // A and B
    input clk, // 100 MHz board clock
    input btnC, // Reset
    output [3:0] an, // 7seg anodes
    output [6:0] seg // 7seg segments
);

wire div_clk_out;
wire [3:0] anode_out;
wire [3:0] a_val;
wire [3:0] b_val;
wire [3:0] sum_out;
wire [3:0] diff_out;

clock_div #(.DIVIDE_BY(DIVIDE_BY)) dividerclk(
.clock(clk),
.reset(btnC),
.div_clock(div_clk_out)
);


seven_seg_scanner seg_scanner (
.div_clock(div_clk_out),
.Reset(btnC),
.anode(anode_out)

);

assign a_val = sw[3:0];
assign b_val = sw[7:4];


math_block maths (
.A(a_val),
.B(b_val),
.AplusB(sum_out),
.AminusB(diff_out)


);

seven_seg_decoder seven_seg (
.A(a_val),
.B(b_val),
.AplusB(sum_out),
.AminusB(diff_out),
.anode(anode_out),
.segs(seg)


);



assign an = anode_out;










    // Instantiate the clock divider...
    // ... wire it up to the scanner
    // ... wire the scanner to the decoder

    // Wire up the math block into the decoder

    // Do not forget to wire up resets!!

endmodule
