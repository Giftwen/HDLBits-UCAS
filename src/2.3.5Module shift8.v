module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]d1;
    wire[7:0]d2;
    wire[7:0]d3;
my_dff8 D0( .clk(clk), .d(d), .q(d1) );
my_dff8 D1( .clk(clk), .d(d1), .q(d2) );
my_dff8 D2( .clk(clk), .d(d2), .q(d3) );
always @(*) begin
    if(sel==2'b00)begin
        q<=d;
    end
    else if(sel==2'b01)begin
        q<=d1;
    end
    else if(sel==2'b10)begin
        q<=d2;
    end
    else if(sel==2'b11)begin
        q<=d3;
    end
end
endmodule