`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

wire wire1;
wire wire2;

assign wire2=a&b;
assign wire1=wire2|(c&d);
assign out=wire1;
assign out_n=!wire1;






endmodule