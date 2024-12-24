module Ring_Counter (
    input clk,
    output reg [3:0] ABCD
);
    
    initial begin
        ABCD = 4'b0001;
    end

    always @(posedge clk) begin
        if (ABCD == 4'b1000) begin
            ABCD <= 4'b0001;
        end else begin
            ABCD <= ABCD << 1;
        end
    end
endmodule
