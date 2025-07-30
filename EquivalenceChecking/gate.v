// Module add1: 1-bit input, output is a + 1 (LSB)
module add1_gate (
input wire a,
output wire sum
);
assign sum = ~a; // Adding 1 flips the bit
endmodule

// Module add2: 2-bit input, output is LSB of a + 1
module add2_gate (
input wire [1:0] a,
output wire sum
);
// LSB of (a + 1) is equivalent to ~a[0]
assign sum = ~a[0];
endmodule

// Module add3: 3 single-bit inputs, sum LSB of a + b + c
module add3_gate (
input wire a,
input wire b,
input wire c,
output wire sum
);
// XOR of all bits gives sum modulo 2
assign sum = a ^ b ^ c;
endmodule

