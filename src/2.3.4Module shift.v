module top_module ( input clk, input d, output q );
wire d1,d2;
my_dff D0( .clk(clk), .d(d), .q(d1) );
my_dff D1( .clk(clk), .d(d1), .q(d2) );
my_dff D2( .clk(clk), .d(d2), .q(q) );
endmodule
