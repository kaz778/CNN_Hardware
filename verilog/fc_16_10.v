`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:29:17
// Design Name: 
// Module Name: fc_16_10
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


module fc_16_10(
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
    
    `include "weight.vh"
    
    input clk;
    input reset;
    input start_flag;
    input [159:0] in;//10*16=160
    
    output [14:0] out_0;//15    
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
     
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;
 
    wire [9:0] end_flag_cul;//10

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


    neuron_16_10 neuron_0(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_0),
        .bias(fc_16_10_bias[0]),
        .in(in),
        .out(out_0),
        .end_flag(end_flag_cul[0])
        );
    
    neuron_16_10 neuron_1(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_1),
        .bias(fc_16_10_bias[1]),
        .in(in),
        .out(out_1),
        .end_flag(end_flag_cul[1])
        );
        
    neuron_16_10 neuron_2(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_2),
        .bias(fc_16_10_bias[2]),
        .in(in),
        .out(out_2),
        .end_flag(end_flag_cul[2])
        );
    
    neuron_16_10 neuron_3(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_3),
        .bias(fc_16_10_bias[3]),
        .in(in),
        .out(out_3),
        .end_flag(end_flag_cul[3])
        );
    
    neuron_16_10 neuron_4(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_4),
        .bias(fc_16_10_bias[4]),
        .in(in),
        .out(out_4),
        .end_flag(end_flag_cul[4])
        );
    
    neuron_16_10 neuron_5(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_5),
        .bias(fc_16_10_bias[5]),
        .in(in),
        .out(out_5),
        .end_flag(end_flag_cul[5])
        );
    
    neuron_16_10 neuron_6(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_6),
        .bias(fc_16_10_bias[6]),
        .in(in),
        .out(out_6),
        .end_flag(end_flag_cul[6])
        );
    
    neuron_16_10 neuron_7(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_7),
        .bias(fc_16_10_bias[7]),
        .in(in),
        .out(out_7),
        .end_flag(end_flag_cul[7])
        );
    
    neuron_16_10 neuron_8(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_8),
        .bias(fc_16_10_bias[8]),
        .in(in),
        .out(out_8),
        .end_flag(end_flag_cul[8])
        );
    
    neuron_16_10 neuron_9(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_16_10_9),
        .bias(fc_16_10_bias[9]),
        .in(in),
        .out(out_9),
        .end_flag(end_flag_cul[9])
        );
    
    
    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            
        end else if(end_flag_cul == 10'b1111_1111_11)begin
            end_reg <= 1;

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;

endmodule
