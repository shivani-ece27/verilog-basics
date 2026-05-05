module mux2X1_tb;
  reg a ,b , sel;
  wire y;
  mux2X1 dut(.a(a), .b(b), .sel(sel), .y(y));
  initial begin
    $monitor("Time=%0t sel=%b a=%b b=%b y=%b", $time,sel,a, b, y);
    a=0; b=1; sel=0; #10; //y=0
    a=0; b=1; sel=1; #10; //y=1
    a=1; b=0; sel=0; #10; //y=1
    a=1; b=0; sel=1; #10; //y=0
    $finish;
  end
endmodule
