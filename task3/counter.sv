module counter #(
    parameter WIDTH = 8
)(
    // interface signals
    input logic clk, // clock
    input logic rst, // reset
    input logic wr_en, // counter enable
    input logic rd_en,
    output logic [WIDTH-1:0] count // count output
);

always_ff @ (posedge clk or posedge rst)  // asynchronous reset
    if (rst) count <= 0;
    else if (wr_en && rd_en) count <= count + 1;

endmodule
