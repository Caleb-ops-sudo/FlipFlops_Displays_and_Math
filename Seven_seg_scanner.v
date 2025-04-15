module seven_seg_scanner(
    input div_clock,
    output [3:0] anode,
    input Reset
    
);
 wire Slow [3:0];
 

  State_machinedff Adff(
        .Default(1'b0),
        .D(Slow[0]),
        .clk(div_clock),
        .Q(anode[0]),
        .Reset(Reset)
    );

    State_machinedff Bdff(
        .Default(1'b1),
        .D(Slow[1]),
        .clk(div_clock),
        .Q(anode[1]),
        .Reset(Reset)
    );

    State_machinedff Cdff(
        .Default(1'b1),
        .D(Slow[2]),
        .clk(div_clock),
        .Q(anode[2]),
        .Reset(Reset)
    );
    
    State_machinedff Ddff(
       .Default(1'b1),
       .D(Slow[3]),
       .clk(div_clock),
       .Q(anode[3]),
       .Reset(Reset)
        
    );
    


endmodule
