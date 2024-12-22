module SixteenIterator (
    input wire clk,       // 입력 클럭
    input wire rst_n,     // 리셋 신호 (active low)
    input wire start,     // 동작 시작 신호
    output reg out        // 출력 신호 (1을 16번 출력)
);

    reg [3:0] counter;    // 4-bit 카운터
    reg active;           // 활성 상태 플래그

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 4'b0000;  // 리셋 시 카운터 초기화
            out <= 1'b0;        // 출력 초기화
            active <= 1'b0;     // 활성 상태 초기화
        end else begin
            if (start && !active) begin
                // 신호 시작 시 활성화 및 초기화
                active <= 1'b1;
                counter <= 4'b0000;
                out <= 1'b1;
            end else if (active) begin
                if (counter < 4'b1111) begin
                    // 16번 동안 카운터 증가 및 출력 유지
                    counter <= counter + 1;
                    out <= 1'b1;
                end else begin
                    // 16번 완료 후 비활성화
                    counter <= 4'b0000;  // 카운터 초기화
                    active <= 1'b0;      // 활성 상태 비활성화
                    out <= 1'b0;         // 출력 0
                end
            end else begin
                // 비활성 상태 유지
                out <= 1'b0;
            end
        end
    end

endmodule
