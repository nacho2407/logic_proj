module FifteenIterator(
    input clk,
    input rst_n,
    input en,
    output reg out1,
    output reg out2
);

    parameter CNT_NUM_OUT2 = 15;
    parameter CNT_GAP = 15;

    reg [3:0] cnt_out2;
    reg [7:0] clk_div_cnt;
    reg en_active;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            
            out1 <= 0;
            out2 <= 0;
            cnt_out2 <= 0;
            clk_div_cnt <= 0;
            en_active <= 0;
        end else begin
            if (en) begin
                en_active <= 1;
            end

            if (en_active) begin
                out1 <= 1;

                if (cnt_out2 < CNT_NUM_OUT2) begin
                    if (clk_div_cnt == CNT_GAP - 1) begin
                        clk_div_cnt <= 0;
                        out2 <= 1;
                        cnt_out2 <= cnt_out2 + 1;
                    end else begin
                        clk_div_cnt <= clk_div_cnt + 1;
                        out2 <= 0;
                    end
                end else begin
                    번 반복 완료 후 비활성화
                    en_active <= 0;
                    out1 <= 0;
                    out2 <= 0;
                end
            end else begin
                out1 <= 0;
                out2 <= 0;
            end
        end
    end

endmodule
