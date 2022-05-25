`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:24:53
// Design Name: 
// Module Name: conv_12_8
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


module conv_12_8(
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
    input [575:0] in; //4*12*12=576
    input [24:0] filter;//25
    
    output [575:0] out; //9*8*8=576
    output end_flag;
    
    reg [239:0] in_0_4; //240
    reg [239:0] in_1_5;
    reg [239:0] in_2_6;
    reg [239:0] in_3_7;
    reg [239:0] in_4_8;
    reg [239:0] in_5_9;
    reg [239:0] in_6_10;
    reg [239:0] in_7_11;
    
    reg [575:0] out_reg; //576
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;
    
    wire [71:0] out_0_4;//72
    wire [71:0] out_1_5;
    wire [71:0] out_2_6;
    wire [71:0] out_3_7;
    wire [71:0] out_4_8;
    wire [71:0] out_5_9;
    wire [71:0] out_6_10;
    wire [71:0] out_7_11;
    
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
            in_0_4 <= in[575:336];
            in_1_5 <= in[527:288];
            in_2_6 <= in[479:240];
            in_3_7 <= in[431:192];
            in_4_8 <= in[383:144];
            in_5_9 <= in[335:96];
            in_6_10 <= in[287:48];
            in_7_11 <= in[239:0];
        end
    end
    
	always @(posedge clk) begin
		if(reset) begin
			start_flag_cul <= 0;
		end else if(count == 0) begin
			start_flag_cul <= 1;
		end else begin
			start_flag_cul <= 0;
		end
	end


    conv_12_8_slide slide_0_4(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_0_4),
        .filter(filter),
        .out(out_0_4),
        .end_flag(end_flag_cul[0])
        );
    
    conv_12_8_slide slide_1_5(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_1_5),
        .filter(filter),
        .out(out_1_5),
        .end_flag(end_flag_cul[1])
        );

    conv_12_8_slide slide_2_6(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_2_6),
        .filter(filter),
        .out(out_2_6),
        .end_flag(end_flag_cul[2])
        );

    conv_12_8_slide slide_3_7(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_3_7),
        .filter(filter),
        .out(out_3_7),
        .end_flag(end_flag_cul[3])
        );

    conv_12_8_slide slide_4_8(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_4_8),
        .filter(filter),
        .out(out_4_8),
        .end_flag(end_flag_cul[4])
        );

    conv_12_8_slide slide_5_9(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_5_9),
        .filter(filter),
        .out(out_5_9),
        .end_flag(end_flag_cul[5])
        );

    conv_12_8_slide slide_6_10(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_6_10),
        .filter(filter),
        .out(out_6_10),
        .end_flag(end_flag_cul[6])
        );

    conv_12_8_slide slide_7_11(
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
