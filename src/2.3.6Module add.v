module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum1;
    wire [31:0]sum2;
    wire cout;
    assign sum = {sum2,sum1};
    add16 A0(.a(a[15:0]),.b(b[15:0]),.sum(sum1),.cin(1'b0),.cout(cout));
    add16 A1(.a(a[31:16]),.b(b[31:16]),.sum(sum2),.cin(cout),.cout());
endmodule
