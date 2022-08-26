module test(
    input clk,
    input rst,
    input data,
    output reg out 
);

always @(posedge clk or rst) begin

    if(rst)begin
        out <= 0;
    end
    else begin
        out <= data;
    end
end:

endmodule