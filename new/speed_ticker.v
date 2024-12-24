module speed_ticker (
    input wire clk,
    input wire rst,
    input wire [3:0] speed,
    input wire dist_0,
    input wire dist_1,
    input wire dist_2,
    output reg out
);

    reg [5:0] counter;
    reg enable;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            out <= 0;
            enable <= 0;
        end
        else begin
            if ((speed == 0) || ((dist_0 == 0) && (dist_1 == 0) && (dist_2 == 0))) begin
                out <= 0;
                counter <= 0;
                enable <= 0;
            end
            else begin
                counter <= counter + 1;

                case (1'b1) 
                    dist_0: begin
                        if      (speed >= 4 && counter == 10) enable <= 1;
                        else if (speed >= 2 && counter == 15) enable <= 1;
                        else if (speed >= 1 && counter == 20) enable <= 1;
                        else enable <= 0;
                    end
                    dist_1: begin
                        if      (speed >= 8 && counter == 10) enable <= 1;
                        else if (speed >= 4 && counter == 15) enable <= 1;
                        else if (speed >= 2 && counter == 20) enable <= 1;
                        else if (speed >= 1 && counter == 25) enable <= 1;
                        else enable <= 0;
                    end
                    dist_2: begin
                        if      (speed >= 12 && counter == 10) enable <= 1;
                        else if (speed >= 8 && counter == 15) enable <= 1;
                        else if (speed >= 4 && counter == 20) enable <= 1;
                        else if (speed >= 2 && counter == 25) enable <= 1;
                        else if (speed >= 1 && counter == 30) enable <= 1;
                        else enable <= 0;
                    end
                    default: enable <= 0;
                endcase

                if (enable) begin
                    out <= 1;
                    counter <= 0;
                end
                else begin
                    out <= 0;
                end
            end
        end
    end

endmodule
