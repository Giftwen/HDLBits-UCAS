module top_module( 
    input [31:0] in,
    output [31:0] out );//

    // assign out[31:24] = ...;
wire [7:0]a1=in[31:24];
wire [7:0]a2=in[23:16];
wire [7:0]a3=in[15:8];
wire [7:0]a4=in[7:0];

assign out[31:24] = a4;
assign out[23:16] = a3;
assign out[15:8] = a2;
assign out[7:0] = a1;



endmodule
