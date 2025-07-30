module top_wrapper(input clk, input rst, input wire a, input wire b, input wire c, output wire sum);

add3_gold a3g(.*);
add3_gate a3(.*);

endmodule
