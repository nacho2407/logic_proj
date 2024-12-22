module stt_name (
    input [5:0] total_loc,
	 input [3:0] section_loc,
    output reg [127:0] out_ascii // 128-bit output for 16 characters (8 bits each)
);

    always @(*) begin
        // Initialize the output with spaces
        out_ascii = 128'b0;
		  
		  if (section_loc[1] | section_loc[2]) begin
					out_ascii[127:120] = 8'h20; // 공백
					out_ascii[119:112] = 8'h20; // 공백
					out_ascii[111:104] = 8'h20; // 공백
					out_ascii[103:96]  = 8'h20; // 공백
					out_ascii[95:88]   = 8'h20; // 공백
					out_ascii[87:80]   = 8'h20; // 공백
					out_ascii[79:72]   = 8'h20; // 공백
					out_ascii[71:64]   = 8'h20; // 공백
					out_ascii[63:56]   = 8'h20; // 공백
					out_ascii[55:48]   = 8'h20; // 공백
					out_ascii[47:40]   = 8'h20; // 공백
					out_ascii[39:32]   = 8'h20; // 공백
					out_ascii[31:24]   = 8'h20; // 공백
					out_ascii[23:16]   = 8'h20; // 공백
					out_ascii[15:8]    = 8'h20; // 공백
					out_ascii[7:0]     = 8'h20; // 공
		  end
		  else begin

			  if (total_loc[0] & section_loc[0]) begin
					out_ascii[127:120] = 8'h4E; // 'N'
					out_ascii[119:112] = 8'h6F; // 'o'
					out_ascii[111:104] = 8'h70; // 'p'
					out_ascii[103:96]  = 8'h6F; // 'o'
					out_ascii[95:88]   = 8'h20; // 공백
					out_ascii[87:80]   = 8'h20; // 공백
					out_ascii[79:72]   = 8'h20; // 공백
					out_ascii[71:64]   = 8'h20; // 공백
					out_ascii[63:56]   = 8'h20; // 공백
					out_ascii[55:48]   = 8'h20; // 공백
					out_ascii[47:40]   = 8'h20; // 공백
					out_ascii[39:32]   = 8'h20; // 공백
					out_ascii[31:24]   = 8'h20; // 공백
					out_ascii[23:16]   = 8'h20; // 공백
					out_ascii[15:8]    = 8'h20; // 공백
					out_ascii[7:0]     = 8'h20; // 공백
			  end
			  if ((total_loc[0] & section_loc[3]) | (total_loc[1] & section_loc[0])) begin
					out_ascii[127:120] = 8'h50; // 'P'
					out_ascii[119:112] = 8'h75; // 'u'
					out_ascii[111:104] = 8'h73; // 's'
					out_ascii[103:96]  = 8'h61; // 'a'
					out_ascii[95:88]   = 8'h6E; // 'n'
					out_ascii[87:80]   = 8'h20; // 공백
					out_ascii[79:72]   = 8'h4E; // 'N'
					out_ascii[71:64]   = 8'h61; // 'a'
					out_ascii[63:56]   = 8'h74; // 't'
					out_ascii[55:48]   = 8'h27; // '''
					out_ascii[47:40]   = 8'h6C; // 'l'
					out_ascii[39:32]   = 8'h20; // 공백
					out_ascii[31:24]   = 8'h55; // 'U'
					out_ascii[23:16]   = 8'h69; // 'i'
					out_ascii[15:8]    = 8'h6E; // 'n'
					out_ascii[7:0]     = 8'h76; // 'v'
			  end
			  if ((total_loc[1] & section_loc[3]) | (total_loc[2] & section_loc[0])) begin
					out_ascii[127:120] = 8'h44; // 'D'
					out_ascii[119:112] = 8'h6F; // 'o'
					out_ascii[111:104] = 8'h6E; // 'n'
					out_ascii[103:96]  = 8'h67; // 'g'
					out_ascii[95:88]   = 8'h6E; // 'n'
					out_ascii[87:80]   = 8'h61; // 'a'
					out_ascii[79:72]   = 8'h65; // 'e'
					out_ascii[71:64]   = 8'h20; // 공백
					out_ascii[63:56]   = 8'h20; // 공백
					out_ascii[55:48]   = 8'h20; // 공백
					out_ascii[47:40]   = 8'h20; // 공백
					out_ascii[39:32]   = 8'h20; // 공백
					out_ascii[31:24]   = 8'h20; // 공백
					out_ascii[23:16]   = 8'h20; // 공백
					out_ascii[15:8]    = 8'h20; // 공백
			  end
			  if ((total_loc[2] & section_loc[3]) | (total_loc[3] & section_loc[0])) begin
					out_ascii[127:120] = 8'h59; // 'Y'
					out_ascii[119:112] = 8'h65; // 'e'
					out_ascii[111:104] = 8'h6F; // 'o'
					out_ascii[103:96]  = 8'h6E; // 'n'
					out_ascii[95:88]   = 8'h73; // 's'
					out_ascii[87:80]   = 8'h61; // 'a'
					out_ascii[79:72]   = 8'h6E; // 'n'
					out_ascii[71:64]   = 8'h20; // 공백
					out_ascii[63:56]   = 8'h20; // 공백
					out_ascii[55:48]   = 8'h20; // 공백
					out_ascii[47:40]   = 8'h20; // 공백
					out_ascii[39:32]   = 8'h20; // 공백
					out_ascii[31:24]   = 8'h20; // 공백
					out_ascii[23:16]   = 8'h20; // 공백
					out_ascii[15:8]    = 8'h20; // 공백
			  end
			  if ((total_loc[3] & section_loc[3]) | (total_loc[4] & section_loc[0])) begin
					out_ascii[127:120] = 8'h53; // 'S'
					out_ascii[119:112] = 8'h65; // 'e'
					out_ascii[111:104] = 8'h6F; // 'o'
					out_ascii[103:96]  = 8'h6D; // 'm'
					out_ascii[95:88]   = 8'h79; // 'y'
					out_ascii[87:80]   = 8'h65; // 'e'
					out_ascii[79:72]   = 8'h6F; // 'o'
					out_ascii[71:64]   = 8'h6E; // 'n'
					out_ascii[63:56]   = 8'h20; // 공백
					out_ascii[55:48]   = 8'h20; // 공백
					out_ascii[47:40]   = 8'h20; // 공백
					out_ascii[39:32]   = 8'h20; // 공백
					out_ascii[31:24]   = 8'h20; // 공백
					out_ascii[23:16]   = 8'h20; // 공백
					out_ascii[15:8]    = 8'h20; // 공백
			  end
			  if (total_loc[5]) begin
					out_ascii[127:120] = 8'h44; // 'D'
					out_ascii[119:112] = 8'h61; // 'a'
					out_ascii[111:104] = 8'h64; // 'd'
					out_ascii[103:96]  = 8'h61; // 'a'
					out_ascii[95:88]   = 8'h65; // 'e'
					out_ascii[87:80]   = 8'h70; // 'p'
					out_ascii[79:72]   = 8'h6F; // 'o'
					out_ascii[71:64]   = 8'h20; // 공백
					out_ascii[63:56]   = 8'h42; // 'B'
					out_ascii[55:48]   = 8'h65; // 'e'
					out_ascii[47:40]   = 8'h61; // 'a'
					out_ascii[39:32]   = 8'h63; // 'c'
					out_ascii[31:24]   = 8'h68; // 'h'
					out_ascii[23:16]   = 8'h20; // 공백
					out_ascii[15:8]    = 8'h20; // 공백
					out_ascii[7:0]     = 8'h20; // 공백
			  end
			  end
    end

endmodule
