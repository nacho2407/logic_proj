module piano(
    input clk,
    input rst,
    input [9:0] in_bits,
    output reg divided_clk
);

    reg [31:0] counter;
    reg [31:0] divisor;

    always @(*) begin
        case (in_bits)
            10'b0000000001: divisor = 5727; // Low F
            10'b0000000010: divisor = 5102; // Low G
            10'b0000000100: divisor = 4545; // Low A
            10'b0000001000: divisor = 4049; // Low B
            10'b0000010000: divisor = 3823; // C
            10'b0000100000: divisor = 3406; // D
            10'b0001000000: divisor = 3034; // E
            10'b0010000000: divisor = 2864; // F
            10'b0100000000: divisor = 2551; // G
            10'b1000000000: divisor = 1911; // High C
            default: divisor = 175;
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            divided_clk <= 0;
        end else begin
            if (counter >= (divisor - 1)) begin
                counter <= 0;
                divided_clk <= ~divided_clk;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
