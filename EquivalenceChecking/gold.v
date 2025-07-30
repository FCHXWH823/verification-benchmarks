module add1_gold(input wire a, output wire sum);
assign sum = a + 1'b1;
endmodule

module add2_gold(input wire a, output wire sum);
assign sum = a + 2'b1;
endmodule

module add3_gold(input wire a, input wire b, input wire c, output wire sum);
assign sum = a + b + c;
endmodule
