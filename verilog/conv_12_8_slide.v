`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:24:34
// Design Name: 
// Module Name: conv_12_8_slide
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module conv_12_8_slide(
    clk,
    reset,
    start_flag,
    in,
    filter,
    out,
    end_flag
    );
    
    input clk;
    input reset;
    input start_flag;
    input [239:0] in; //4*12*5=240
    input [24:0] filter;//25
    
    output [71:0] out; //9*8=72
    output end_flag;
    
    reg [99:0] in_0_4; //100
    reg [99:0] in_1_5;
    reg [99:0] in_2_6;
    reg [99:0] in_3_7;
    reg [99:0] in_4_8;
    reg [99:0] in_5_9;
    reg [99:0] in_6_10;
    reg [99:0] in_7_11;
    
    reg [71:0] out_reg; //72
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;

    wire [8:0] out_0_4;//9
    wire [8:0] out_1_5;
    wire [8:0] out_2_6;
    wire [8:0] out_3_7;
    wire [8:0] out_4_8;
    wire [8:0] out_5_9;
    wire [8:0] out_6_10;
    wire [8:0] out_7_11;
    
    wire [7:0] end_flag_cul;
    
    always @(posedge clk) begin
		if(reset) begin
			count <= 1;
		end else if(start_flag) begin
			count <= 0;
		end else if(count == 1) begin
			count <= count;
		end else if(count < 1) begin
			count <= count + 1;
		end
	end

    
    always @(posedge clk) begin
        if(reset) begin
            in_0_4 <= 0;
            in_1_5 <= 0;
            in_2_6 <= 0;
            in_3_7 <= 0;
            in_4_8 <= 0;
            in_5_9 <= 0;
            in_6_10 <= 0;
            in_7_11 <= 0;
                
        end else if(start_flag) begin
            in_0_4 <= { in[239:220], in[191:172], in[143:124], in[95:76] ,in[47:28]};
            in_1_5 <= { in[235:216], in[187:168], in[139:120], in[91:72] ,in[43:24]};
            in_2_6 <= { in[231:212], in[183:164], in[135:116], in[87:68] ,in[39:20]};
            in_3_7 <= { in[227:208], in[179:160], in[131:112], in[83:64] ,in[35:16]};
            in_4_8 <= { in[223:204], in[175:156], in[127:108], in[79:60] ,in[31:12]};
            in_5_9 <=  {in[219:200], in[171:152], in[123:104], in[75:56] ,in[27:8]};
            in_6_10 <= {in[215:196], in[167:148], in[119:100], in[71:52] ,in[23:4]};
            in_7_11 <= {in[211:192], in[163:144], in[115:96],  in[67:48] ,in[19:0]};
        end
    end
    
	always @( posedge clk ) begin
		if(reset) begin
		    start_flag_cul <= 0;
		end else if(count == 0) begin
			start_flag_cul <= 1;
		end else begin
			start_flag_cul <= 0;
		end
	end


 
    filter_12_8 filter_0_4(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_0_4),
		.filter(filter), 
		.out(out_0_4), 
		.end_flag(end_flag_cul[0])
	);

    filter_12_8 filter_1_5(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_1_5),
		.filter(filter), 
		.out(out_1_5), 
		.end_flag(end_flag_cul[1])
	);
	
    filter_12_8 filter_2_6(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_2_6), 
		.filter(filter), 
		.out(out_2_6), 
		.end_flag(end_flag_cul[2])
	);
	
    filter_12_8 filter_3_7(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_3_7), 
		.filter(filter), 
		.out(out_3_7), 
		.end_flag(end_flag_cul[3])
	);
	
    filter_12_8 filter_4_8(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_4_8), 
		.filter(filter), 
		.out(out_4_8), 
		.end_flag(end_flag_cul[4])
	);
	
    filter_12_8 filter_5_9(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_5_9), 
		.filter(filter), 
		.out(out_5_9), 
		.end_flag(end_flag_cul[5])
	);
	
    filter_12_8 filter_6_10(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_6_10),
		.filter(filter), 
		.out(out_6_10), 
		.end_flag(end_flag_cul[6])
	);
	
    filter_12_8 filter_7_11(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_7_11), 
		.filter(filter), 
		.out(out_7_11), 
		.end_flag(end_flag_cul[7])
	);

    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            out_reg <= 0;
            
        end else if(end_flag_cul == 8'b11111111)begin
            end_reg <= 1;
            out_reg <= {out_0_4, out_1_5, out_2_6, out_3_7, out_4_8, out_5_9, out_6_10, out_7_11};

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;
    assign out = out_reg;

endmodule
