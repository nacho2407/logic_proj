module MY_CLK_DIV (
    input clk,
    input rst_n,
    input [3:0] speed,
    output reg div_clk
);
    reg [19:0] cnt;
    reg [19:0] cnt_num;
	 parameter input_num = 1000000;
	 
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 0;
            div_clk <= 0;
            cnt_num <= 20'd1;
        end else if (speed == 4'b0000) begin
            cnt_num <= 20'd0;
            div_clk <= 0;
        end else begin
            cnt_num <= (input_num >> speed);
            if (cnt < cnt_num - 1)
                cnt <= cnt + 1;
            else begin
                cnt <= 0;
                div_clk <= ~div_clk;
            end
        end
    end
endmodule
