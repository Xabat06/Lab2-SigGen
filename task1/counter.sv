module counter #(
    parameter WIDTH = 8
)(
    // interface signals
    input logic clk, // clock
    input logic rst, // reset
    input logic en, // counter enable
    input logic [WIDTH-1:0] incr, // addition increment
    output logic [WIDTH-1:0] count // count output
);

always_ff @ (posedge clk or posedge rst)  // asynchronous reset
    if (rst) count <= 0;
    else if (en) count <= count + incr;

endmodule
