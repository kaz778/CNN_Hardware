`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:23:34
// Design Name: 
// Module Name: maxpooling_24_12
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


module maxpooling_24_12(
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
    input [8639:0] in;//15*24*24=8640
    
    output [575:0] out;//4*12*12=576
    output end_flag;
    
    reg [720:0] in_0_1  ;    //720
    reg [720:0] in_2_3  ;
    reg [720:0] in_4_5  ;
    reg [720:0] in_6_7  ;
    reg [720:0] in_8_9  ;
    reg [720:0] in_10_11;
    reg [720:0] in_12_13;
    reg [720:0] in_14_15;
    reg [720:0] in_16_17;
    reg [720:0] in_18_19;
    reg [720:0] in_20_21;
    reg [720:0] in_22_23;

    reg [575:0] out_reg; //576
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;
    
    wire [47:0] out_0_1; //48
    wire [47:0] out_2_3;  
    wire [47:0] out_4_5;  
    wire [47:0] out_6_7;  
    wire [47:0] out_8_9;  
    wire [47:0] out_10_11;
    wire [47:0] out_12_13;
    wire [47:0] out_14_15;
    wire [47:0] out_16_17;
    wire [47:0] out_18_19;
    wire [47:0] out_20_21;
    wire [47:0] out_22_23;
    
    wire [11:0] end_flag_cul;
    
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
            in_0_1   <= 0;
            in_2_3   <= 0;
            in_4_5   <= 0;
            in_6_7   <= 0;
            in_8_9   <= 0;
            in_10_11 <= 0;
            in_12_13 <= 0;
            in_14_15 <= 0;
            in_16_17 <= 0;
            in_18_19 <= 0;
            in_20_21 <= 0;
            in_22_23 <= 0;
                            
        end else if(start_flag) begin
            in_0_1   <= in[8639:7920];
            in_2_3   <= in[7919:7200];
            in_4_5   <= in[7199:6480];
            in_6_7   <= in[6479:5760];
            in_8_9   <= in[5759:5040];
            in_10_11 <= in[5039:4320];
            in_12_13 <= in[4319:3600];
            in_14_15 <= in[3599:2880];
            in_16_17 <= in[2879:2160];
            in_18_19 <= in[2159:1440];
            in_20_21 <= in[1439:720];
            in_22_23 <= in[719:0];
            
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


    maxpooling_24_12_slide slide_0_1(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_0_1),
        .out(out_0_1),
        .end_flag(end_flag_cul[0])
        );
    
     maxpooling_24_12_slide slide_2_3(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_2_3),
        .out(out_2_3),
        .end_flag(end_flag_cul[1])
        );
    
    maxpooling_24_12_slide slide_4_5(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_4_5),
        .out(out_4_5),
        .end_flag(end_flag_cul[2])
        );
    
    maxpooling_24_12_slide slide_6_7(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_6_7),
        .out(out_6_7),
        .end_flag(end_flag_cul[3])
        );
    
    maxpooling_24_12_slide slide_8_9(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_8_9),
        .out(out_8_9),
        .end_flag(end_flag_cul[4])
        );
    
    maxpooling_24_12_slide slide_10_11(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_10_11),
        .out(out_10_11),
        .end_flag(end_flag_cul[5])
        );
    
    maxpooling_24_12_slide slide_12_13(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_12_13),
        .out(out_12_13),
        .end_flag(end_flag_cul[6])
        );
    
    maxpooling_24_12_slide slide_14_15(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_14_15),
        .out(out_14_15),
        .end_flag(end_flag_cul[7])
        );
    
    maxpooling_24_12_slide slide_16_17(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_16_17),
        .out(out_16_17),
        .end_flag(end_flag_cul[8])
        );
    
    maxpooling_24_12_slide slide_18_19(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_18_19),
        .out(out_18_19),
        .end_flag(end_flag_cul[9])
        );
    
    maxpooling_24_12_slide slide_20_21(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_20_21),
        .out(out_20_21),
        .end_flag(end_flag_cul[10])
        );
    
    maxpooling_24_12_slide slide_22_23(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_22_23),
        .out(out_22_23),
        .end_flag(end_flag_cul[11])
        );
    
       
    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            out_reg <= 0;
            
        end else if(end_flag_cul == 12'b1111_1111_1111)begin
            end_reg <= 1;
            out_reg <= {out_0_1, out_2_3, out_4_5, out_6_7, out_8_9, out_10_11, out_12_13, out_14_15, out_16_17, out_18_19, out_20_21, out_22_23};

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;
    assign out = out_reg;

endmodule