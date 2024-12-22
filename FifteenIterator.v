module FifteenIterator(
    input clk,
    input rst_n,
    input en,
    output reg out1,
    output reg out2
);

    parameter CNT_NUM_OUT2 = 15; // 반복 횟수
    parameter CNT_GAP = 30;     // 간격

    reg [3:0] cnt_out2;         // 반복 카운터
    reg [7:0] clk_div_cnt;      // 분주 카운터
    reg en_active;              // 활성화 플래그
    reg en_done;                // 한 번 동작 완료 플래그

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // 초기화 상태
            out1 <= 0;
            out2 <= 0;
            cnt_out2 <= 0;
            clk_div_cnt <= 0;
            en_active <= 0;
            en_done <= 0; // 동작 완료 플래그 초기화
        end else begin
            if (en && !en_done) begin
                en_active <= 1; // en 신호가 들어오면 활성화
            end

            if (en_active) begin
                out1 <= 1; // 활성화된 동안 out1은 항상 1

                if (cnt_out2 < CNT_NUM_OUT2) begin
                    if (clk_div_cnt == CNT_GAP - 1) begin
                        clk_div_cnt <= 0;          // 분주 카운터 리셋
                        out2 <= 1;                // out2 신호 출력
                        cnt_out2 <= cnt_out2 + 1; // 반복 카운트 증가
                    end else begin
                        clk_div_cnt <= clk_div_cnt + 1; // 분주 카운트 증가
                        out2 <= 0;                     // 간격 동안 0 유지
                    end
                end else begin
                    // 15번 반복 완료 후 비활성화
                    en_active <= 0;
                    en_done <= 1; // 동작 완료 플래그 설정
                    out1 <= 0;
                    out2 <= 0;
                    cnt_out2 <= 0; // 반복 카운터 초기화
                    clk_div_cnt <= 0; // 분주 카운터 초기화
                end
            end else begin
                if (!en) begin
                    en_done <= 0; // en 신호가 다시 들어오면 동작 재개 가능
                end
                out1 <= 0;
                out2 <= 0;
            end
        end
    end

endmodule
