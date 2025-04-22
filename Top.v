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



clock_div divclk ( 

.Reset(btnC),
.clock(clk)
.div_clock(





);

    // Instantiate the clock divider...
    // ... wire it up to the scanner
    // ... wire the scanner to the decoder

    // Wire up the math block into the decoder




module top
#(
parameter DIVIDE_BY = 17 // Use this when passing in to your clock div!
// The test bench will set it to 2 when testing
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

// Instantiate the clock divider
clock_div #(
.DIVIDE_BY(DIVIDE_BY)
) clk_divider (
.clock(clk),
.reset(btnC),
.div_clock(div_clk_out)
);

// Instantiate the segment scanner
seven_seg_scanner seg_scanner (
.div_clock(div_clk_out),
.reset(btnC),
.anode(anode_out)

);

// Extract A and B values from switches
assign a_val = sw[3:0];
assign b_val = sw[7:4];

// Instantiate the math block
math_block math_unit (
.A(a_val),
.B(b_val),
.AplusB(sum_out),
.AminusB(diff_out)
);

// Instantiate the segment decoder
seven_seg_decoder seg_decoder (
.A(a_val),
.B(b_val),
.AplusB(sum_out),
.AminusB(diff_out),
.anode(anode_out),
.segs(seg)
);

// Output assignments
assign an = anode_out;

endmodule

    // Do not forget to wire up resets!!

endmodule
