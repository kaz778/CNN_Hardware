`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:20:25
// Design Name: 
// Module Name: CNN
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


module CNN(
    clk,
    reset,
    start_flag,
    in,
    out_0,
    out_1,
    out_2,
    out_3,
    out_4,
    out_5,
    out_6,
    out_7,
    out_8,
    out_9,
    end_flag
    );
        
    input clk;
    input reset;
    input start_flag;
    input [7055:0] in;//7056

    output [14:0] out_0; //15
    output [14:0] out_1; 
    output [14:0] out_2; 
    output [14:0] out_3; 
    output [14:0] out_4; 
    output [14:0] out_5; 
    output [14:0] out_6; 
    output [14:0] out_7; 
    output [14:0] out_8; 
    output [14:0] out_9;   
    
    output end_flag;
    
    reg [1:0] count;
    reg start_flag_cul;
    
    wire [8639:0] line_1;//8640
    wire [575:0] line_2;//576
    wire [255:0] line_3;//256
    wire [159:0] line_4;//160
    
    wire flag_1;    
    wire flag_2;
    wire flag_3;
    wire flag_4;
    
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
			start_flag_cul <= 0;
		end else if(count == 0) begin
			start_flag_cul <= 1;
		end else begin
			start_flag_cul <= 0;
		end
	end


    conv_28_24 conv_1(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in),
        .out(line_1),
        .end_flag(flag_1)
        );

    maxpooling_24_12 pool_1(
        .clk(clk),
        .reset(reset),
        .start_flag(flag_1),
        .in(line_1),
        .out(line_2),
        .end_flag(flag_2)
        );

    conv_2 conv_2(
        .clk(clk),
        .reset(reset),
        .start_flag(flag_2),
        .in(line_2),
        .out(line_3),
        .end_flag(flag_3)
        );
        
    fc_64_16 fc_1(
        .clk(clk),
        .reset(reset),
        .start_flag(flag_3),
        .in(line_3),
        .out(line_4),
        .end_flag(flag_4)
        );

    fc_16_10 fc_2(
        .clk(clk),
        .reset(reset),
        .start_flag(flag_4),
        .in(line_4),
        .out_0(out_0),
        .out_1(out_1),
        .out_2(out_2),
        .out_3(out_3),
        .out_4(out_4),
        .out_5(out_5),
        .out_6(out_6),
        .out_7(out_7),
        .out_8(out_8),
        .out_9(out_9),
        .end_flag(end_flag)
        );
        
endmodule
