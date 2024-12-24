module MY_CLK_DIV2 (
    input clk,
    input rst_n,
    input [3:0] speed,
    output reg div_clk
);

    reg [19:0] cnt;
    reg [19:0] cnt_num;
    parameter input_num = 10000;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 0;
            div_clk <= 0;
            cnt_num <= 20'd1;
        end else begin
            case (speed)
                4'b0000: cnt_num <= 20'd0;
                4'b0001: cnt_num <= 20'd80;
                4'b0010: cnt_num <= 20'd80;
                4'b0011: cnt_num <= 20'd80;
                4'b0100: cnt_num <= 20'd80;
                4'b0101: cnt_num <= 20'd80;
                4'b0110: cnt_num <= 20'd40;
                4'b0111: cnt_num <= 20'd40;
                4'b1000: cnt_num <= 20'd40;
                4'b1001: cnt_num <= 20'd40;
                4'b1010: cnt_num <= 20'd40;
                4'b1011: cnt_num <= 20'd10;
                4'b1100: cnt_num <= 20'd10;
                4'b1101: cnt_num <= 20'd10;
                4'b1110: cnt_num <= 20'd10;
                4'b1111: cnt_num <= 20'd10;
                default: cnt_num <= 20'd0;
            endcase

            if (cnt < cnt_num - 1)
                cnt <= cnt + 1;
            else begin
                cnt <= 0;
                div_clk <= ~div_clk;
            end
        end
    end

endmodule
