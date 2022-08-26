module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0]sum1;
    wire [31:0]sum2;
    wire cout;
    assign sum = {sum2,sum1};
    add16 A0(.a(a[15:0]),.b(b[15:0]^{16{sub}}),.sum(sum1),.cin(sub),.cout(cout));
    add16 A1(.a(a[31:16]),.b(b[31:16]^{16{sub}}),.sum(sum2),.cin(cout),.cout());
endmodule