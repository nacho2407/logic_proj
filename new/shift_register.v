module shift_register #(
    parameter WIDTH = 5,
    parameter INIT_VALUE = 1
)(
    input wire clk,
    input wire rst,
    output reg [WIDTH-1:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= INIT_VALUE;
        end
        else if (q[WIDTH-1] == 1'b1) begin
            q <= INIT_VALUE;
        end
        else begin
            q <= {q[WIDTH-2:0], 1'b0};
        end
    end

endmodule
