module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [15:0]sum1;
    wire [15:0]sum2;
    wire cout;
    //wire [15:0]cout;
    assign sum = {sum2,sum1};
   // add1 Ui( .a(a[0]), .b(b[0]), .cin(1'b0), .sum(sum1[0]), .cout(cout[0]) );
   /* generate
		genvar i;
		for (i=1; i<16; i = i+1) begin: add1
			add1 Ui( .a(a[i]), .b(b[i]), .cin(cout[i-1]), .sum(sum1[i]), .cout(cout[i]) );
		end
	endgenerate*/
    add16 A0(.a(a[15:0]),.b(b[15:0]),.sum(sum1),.cin(1'b0),.cout(cout));
    add16 A1(.a(a[31:16]),.b(b[31:16]),.sum(sum2),.cin(cout),.cout());
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

assign {cout,sum} =a+b+cin;
 

endmodule