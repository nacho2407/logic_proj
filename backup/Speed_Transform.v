module Speed_Transform (
    input [3:0] binary_in,
    output reg [3:0] tens,
    output reg [3:0] ones
);
    reg [7:0] product;

    always @(*) begin
        product = binary_in * 5;
        tens = product / 10;
        ones = product % 10;
    end
endmodule
