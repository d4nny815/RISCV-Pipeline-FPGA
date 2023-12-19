module multiplier_32bit (
    input [31:0] a,
    input [31:0] b,
    output reg [63:0] product
    );

integer i;

always @(a, b) begin
    product = 0;

    for (i = 0; i < 32; i = i + 1) begin
        if (b[i] == 1'b1) begin
            product = product + (a << i);
        end
    end
end

endmodule