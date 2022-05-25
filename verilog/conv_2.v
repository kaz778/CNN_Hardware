`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/31 15:50:16
// Design Name: 
// Module Name: conv_2
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


module conv_2(
    clk,
    reset,
    start_flag,
    in,
    out,
    end_flag
    );
        
    `include"weight.vh"
        
    input clk;
    input reset;
    input start_flag;
    input [575:0] in; //4*12*12=576
    
    output [255:0] out; //256
    output end_flag;
    
    reg start_flag_cul;
    reg [1:0] count;
    reg [255:0] out_reg;//256
    reg end_reg;
    
    wire [63:0] out_1;//64
    wire [63:0] out_2;
    wire [63:0] out_3;
    wire [63:0] out_4;
    wire [3:0] end_flag_cul;
    
    
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


    conv_module conv_1(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in),
        .filter(filter_12_8_1),
        .out(out_1),
        .end_flag(end_flag_cul[0])
        );

    conv_module conv_2(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in),
        .filter(filter_12_8_2),
        .out(out_2),
        .end_flag(end_flag_cul[1])
        );

    conv_module conv_3(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in),
        .filter(filter_12_8_3),
        .out(out_3),
        .end_flag(end_flag_cul[2])
        );

    conv_module conv_4(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in),
        .filter(filter_12_8_4),
        .out(out_4),
        .end_flag(end_flag_cul[3])
        );

    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            out_reg <= 0;
            
        end else if(end_flag_cul == 4'b1111)begin
            end_reg <= 1;
            out_reg <= {out_1, out_2, out_3, out_4};

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;
    assign out = out_reg;

endmodule
