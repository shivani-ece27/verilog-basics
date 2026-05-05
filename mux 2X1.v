module mux2x1(
  input wire a,
  input wire b,
  input wire sel,
  output wire y,
);
// 2:1 MUX using ternary operator assign y = sel ? b : a;
endmodule
