`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/31 15:42:42
// Design Name: 
// Module Name: conv_module
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


module conv_module(
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
    
    output [63:0] out; //64
    output end_flag;
    
    reg start_flag_cul;
    reg [1:0] count;
    
    wire [575:0] line;//576
    
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


    conv_12_8 conv(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in),
        .filter(filter),
        .out(line),
        .end_flag(flag)
        );

    maxpooling_8_4 pool(
        .clk(clk),
        .reset(reset),
        .start_flag(flag),
        .in(line),
        .out(out),
        .end_flag(end_flag)
        );

endmodule
