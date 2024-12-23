module n_comp (
    input wire [3:0] a,    // 첫 번째 4비트 입력
    input wire [3:0] b,    // 두 번째 4비트 입력
    output wire gt,        // a > b 신호
    output wire eq,        // a == b 신호
    output wire lt         // a < b 신호
);

    // 비교 연산 수행
    assign gt = (a > b) ? 1'b1 : 1'b0;  // a가 b보다 크면 gt = 1
    assign eq = (a == b) ? 1'b1 : 1'b0; // a와 b가 같으면 eq = 1
    assign lt = (a < b) ? 1'b1 : 1'b0;  // a가 b보다 작으면 lt = 1

endmodule
