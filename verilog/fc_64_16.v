`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/30 04:30:45
// Design Name: 
// Module Name: fc_64_16
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


module fc_64_16(
    clk,
    reset,
    start_flag,
    in,
    out,
    end_flag
    );
    
    `include "weight.vh"
    
    input clk;
    input reset;
    input start_flag;
    input [255:0] in;//4*16*4=256
    
    output [159:0] out;//10*16=160   
    output end_flag;
     
    wire [9:0] out_0;//10
    wire [9:0] out_1;
    wire [9:0] out_2;
    wire [9:0] out_3;
    wire [9:0] out_4;
    wire [9:0] out_5;
    wire [9:0] out_6;
    wire [9:0] out_7;
    wire [9:0] out_8;
    wire [9:0] out_9;
    wire [9:0] out_10;     
    wire [9:0] out_11;
    wire [9:0] out_12;
    wire [9:0] out_13;
    wire [9:0] out_14;
    wire [9:0] out_15;
 
    reg [159:0] out_reg;//160
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;
 
    wire [15:0] end_flag_cul;//16

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


    neuron_64_16 neuron_0(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_0),
        .bias(fc_64_16_bias[0]),
        .in(in),
        .out(out_0),
        .end_flag(end_flag_cul[0])
        );
    
    neuron_64_16 neuron_1(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_1),
        .bias(fc_64_16_bias[1]),
        .in(in),
        .out(out_1),
        .end_flag(end_flag_cul[1])
        );
        
    neuron_64_16 neuron_2(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_2),
        .bias(fc_64_16_bias[2]),
        .in(in),
        .out(out_2),
        .end_flag(end_flag_cul[2])
        );
    
    neuron_64_16 neuron_3(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_3),
        .bias(fc_64_16_bias[3]),
        .in(in),
        .out(out_3),
        .end_flag(end_flag_cul[3])
        );
    
    neuron_64_16 neuron_4(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_4),
        .bias(fc_64_16_bias[4]),
        .in(in),
        .out(out_4),
        .end_flag(end_flag_cul[4])
        );
    
    neuron_64_16 neuron_5(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_5),
        .bias(fc_64_16_bias[5]),
        .in(in),
        .out(out_5),
        .end_flag(end_flag_cul[5])
        );
    
    neuron_64_16 neuron_6(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_6),
        .bias(fc_64_16_bias[6]),
        .in(in),
        .out(out_6),
        .end_flag(end_flag_cul[6])
        );
    
    neuron_64_16 neuron_7(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_7),
        .bias(fc_64_16_bias[7]),
        .in(in),
        .out(out_7),
        .end_flag(end_flag_cul[7])
        );
    
    neuron_64_16 neuron_8(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_8),
        .bias(fc_64_16_bias[8]),
        .in(in),
        .out(out_8),
        .end_flag(end_flag_cul[8])
        );
    
    neuron_64_16 neuron_9(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_9),
        .bias(fc_64_16_bias[9]),
        .in(in),
        .out(out_9),
        .end_flag(end_flag_cul[9])
        );
    
    neuron_64_16 neuron_10(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_10),
        .bias(fc_64_16_bias[10]),
        .in(in),
        .out(out_10),
        .end_flag(end_flag_cul[10])
        );

    neuron_64_16 neuron_11(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_11),
        .bias(fc_64_16_bias[11]),
        .in(in),
        .out(out_11),
        .end_flag(end_flag_cul[11])
        );

    neuron_64_16 neuron_12(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_12),
        .bias(fc_64_16_bias[12]),
        .in(in),
        .out(out_12),
        .end_flag(end_flag_cul[12])
        );

    neuron_64_16 neuron_13(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_13),
        .bias(fc_64_16_bias[13]),
        .in(in),
        .out(out_13),
        .end_flag(end_flag_cul[13])
        );

    neuron_64_16 neuron_14(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_14),
        .bias(fc_64_16_bias[14]),
        .in(in),
        .out(out_14),
        .end_flag(end_flag_cul[14])
        );

    neuron_64_16 neuron_15(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .weight(fc_64_16_15),
        .bias(fc_64_16_bias[15]),
        .in(in),
        .out(out_15),
        .end_flag(end_flag_cul[15])
        );

    
    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            out_reg <= 0;
            
        end else if(end_flag_cul == 16'b11111_11111_11111_1)begin
            end_reg <= 1;
            out_reg <= {out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7, out_8, out_9, out_10, out_11, out_12, out_13, out_14, out_15};

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;       
    assign out = out_reg;

endmodule
