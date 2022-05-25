`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:21:55
// Design Name: 
// Module Name: conv_28_24
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


module conv_28_24(
    clk,
    reset,
    start_flag,
    in,
    out,
    end_flag
    );
            
    input clk;
    input reset;
    input start_flag;
    input [7055:0] in; //9*28*28=7056
    
    output [8639:0] out; //360*24=8640
    output end_flag;
    
    reg [1259:0] in_0_4; //1260
    reg [1259:0] in_1_5;
    reg [1259:0] in_2_6;
    reg [1259:0] in_3_7;
    reg [1259:0] in_4_8;
    reg [1259:0] in_5_9;
    reg [1259:0] in_6_10;
    reg [1259:0] in_7_11;
    reg [1259:0] in_8_12;
    reg [1259:0] in_9_13;
    reg [1259:0] in_10_14;
    reg [1259:0] in_11_15;
    reg [1259:0] in_12_16;
    reg [1259:0] in_13_17;
    reg [1259:0] in_14_18;
    reg [1259:0] in_15_19;
    reg [1259:0] in_16_20;
    reg [1259:0] in_17_21;
    reg [1259:0] in_18_22;
    reg [1259:0] in_19_23;
    reg [1259:0] in_20_24;
    reg [1259:0] in_21_25;
    reg [1259:0] in_22_26;
    reg [1259:0] in_23_27;
    
    reg [8639:0] out_reg; //8640
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;
    
    wire [359:0] out_0_4;//360
    wire [359:0] out_1_5;
    wire [359:0] out_2_6;
    wire [359:0] out_3_7;
    wire [359:0] out_4_8;
    wire [359:0] out_5_9;
    wire [359:0] out_6_10;
    wire [359:0] out_7_11;
    wire [359:0] out_8_12;
    wire [359:0] out_9_13;
    wire [359:0] out_10_14;
    wire [359:0] out_11_15;
    wire [359:0] out_12_16;
    wire [359:0] out_13_17;
    wire [359:0] out_14_18;
    wire [359:0] out_15_19;
    wire [359:0] out_16_20;
    wire [359:0] out_17_21;
    wire [359:0] out_18_22;
    wire [359:0] out_19_23;
    wire [359:0] out_20_24;
    wire [359:0] out_21_25;
    wire [359:0] out_22_26;
    wire [359:0] out_23_27;
    
    wire [23:0] end_flag_cul;
    
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
            in_8_12 <= 0;
            in_9_13 <= 0;
            in_10_14 <= 0;
            in_11_15 <= 0;
            in_12_16 <= 0;
            in_13_17 <= 0;
            in_14_18 <= 0;
            in_15_19 <= 0;
            in_16_20 <= 0;
            in_17_21 <= 0;
            in_18_22 <= 0;
            in_19_23 <= 0;
            in_20_24 <= 0;
            in_21_25 <= 0;
            in_22_26 <= 0;
            in_23_27 <= 0;
                
        end else if(start_flag) begin
            in_0_4 <= in[7055:5796];
            in_1_5 <= in[6803:5544];
            in_2_6 <= in[6551:5292];
            in_3_7 <= in[6299:5040];
            in_4_8 <= in[6047:4788];
            in_5_9 <= in[5795:4536];
            in_6_10 <= in[5543:4284];
            in_7_11 <= in[5291:4032];
            in_8_12 <= in[5039:3780];
            in_9_13 <= in[4787:3528];
            in_10_14 <= in[4535:3276];
            in_11_15 <= in[4283:3024];
            in_12_16 <= in[4031:2772];
            in_13_17 <= in[3779:2520];
            in_14_18 <= in[3527:2268];
            in_15_19 <= in[3275:2016];
            in_16_20 <= in[3023:1764];
            in_17_21 <= in[2771:1512];
            in_18_22 <= in[2519:1260];
            in_19_23 <= in[2267:1008];
            in_20_24 <= in[2015:756];
            in_21_25 <= in[1763:504];
            in_22_26 <= in[1511:252];
            in_23_27 <= in[1259:0];
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


    conv_28_24_slide slide_0_4(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_0_4),
        .out(out_0_4),
        .end_flag(end_flag_cul[0])
        );
    
    conv_28_24_slide slide_1_5(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_1_5),
        .out(out_1_5),
        .end_flag(end_flag_cul[1])
        );

    conv_28_24_slide slide_2_6(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_2_6),
        .out(out_2_6),
        .end_flag(end_flag_cul[2])
        );

    conv_28_24_slide slide_3_7(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_3_7),
        .out(out_3_7),
        .end_flag(end_flag_cul[3])
        );

    conv_28_24_slide slide_4_8(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_4_8),
        .out(out_4_8),
        .end_flag(end_flag_cul[4])
        );

    conv_28_24_slide slide_5_9(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_5_9),
        .out(out_5_9),
        .end_flag(end_flag_cul[5])
        );

    conv_28_24_slide slide_6_10(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_6_10),
        .out(out_6_10),
        .end_flag(end_flag_cul[6])
        );

    conv_28_24_slide slide_7_11(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_7_11),
        .out(out_7_11),
        .end_flag(end_flag_cul[7])
        );

    conv_28_24_slide slide_8_12(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_8_12),
        .out(out_8_12),
        .end_flag(end_flag_cul[8])
        );

    conv_28_24_slide slide_9_13(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_9_13),
        .out(out_9_13),
        .end_flag(end_flag_cul[9])
        );

    conv_28_24_slide slide_10_14(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_10_14),
        .out(out_10_14),
        .end_flag(end_flag_cul[10])
        );

    conv_28_24_slide slide_11_15(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_11_15),
        .out(out_11_15),
        .end_flag(end_flag_cul[11])
        );

    conv_28_24_slide slide_12_16(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_12_16),
        .out(out_12_16),
        .end_flag(end_flag_cul[12])
        );

    conv_28_24_slide slide_13_17(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_13_17),
        .out(out_13_17),
        .end_flag(end_flag_cul[13])
        );

    conv_28_24_slide slide_14_18(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_14_18),
        .out(out_14_18),
        .end_flag(end_flag_cul[14])
        );

    conv_28_24_slide slide_15_19(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_15_19),
        .out(out_15_19),
        .end_flag(end_flag_cul[15])
        );

    conv_28_24_slide slide_16_20(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_16_20),
        .out(out_16_20),
        .end_flag(end_flag_cul[16])
        );

    conv_28_24_slide slide_17_21(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_17_21),
        .out(out_17_21),
        .end_flag(end_flag_cul[17])
        );

    conv_28_24_slide slide_18_22(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_18_22),
        .out(out_18_22),
        .end_flag(end_flag_cul[18])
        );

    conv_28_24_slide slide_19_23(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_19_23),
        .out(out_19_23),
        .end_flag(end_flag_cul[19])
        );

    conv_28_24_slide slide_20_24(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_20_24),
        .out(out_20_24),
        .end_flag(end_flag_cul[20])
        );

    conv_28_24_slide slide_21_25(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_21_25),
        .out(out_21_25),
        .end_flag(end_flag_cul[21])
        );

    conv_28_24_slide slide_22_26(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_22_26),
        .out(out_22_26),
        .end_flag(end_flag_cul[22])
        );

    conv_28_24_slide slide_23_27(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_23_27),
        .out(out_23_27),
        .end_flag(end_flag_cul[23])
        );
        
    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            out_reg <= 0;
            
        end else if(end_flag_cul == 24'b11111111_11111111_11111111)begin
            end_reg <= 1;
            out_reg <= {out_0_4,
                        out_1_5,
                        out_2_6,
                        out_3_7,
                        out_4_8,
                        out_5_9,
                        out_6_10,
                        out_7_11,
                        out_8_12,
                        out_9_13,
                        out_10_14,
                        out_11_15,
                        out_12_16,
                        out_13_17,
                        out_14_18,
                        out_15_19,
                        out_16_20,
                        out_17_21,
                        out_18_22,
                        out_19_23,
                        out_20_24,
                        out_21_25,
                        out_22_26,
                        out_23_27};

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;
    assign out = out_reg;

endmodule
