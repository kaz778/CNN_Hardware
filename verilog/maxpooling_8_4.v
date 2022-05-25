`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:26:23
// Design Name: 
// Module Name: maxpooling_8_4
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


module maxpooling_8_4(
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
    input [575:0] in;//9*8*8=576
    
    output [63:0] out;//4*4*4=64
    output end_flag;
        
    reg [143:0] in_0_1  ;    //144
    reg [143:0] in_2_3  ;
    reg [143:0] in_4_5  ;
    reg [143:0] in_6_7  ;

    reg [63:0] out_reg; //64
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;
    
    wire [15:0] out_0_1; //16
    wire [15:0] out_2_3;  
    wire [15:0] out_4_5;  
    wire [15:0] out_6_7;  
    
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
            in_0_1   <= 0;
            in_2_3   <= 0;
            in_4_5   <= 0;
            in_6_7   <= 0;
                            
        end else if(start_flag) begin
            in_0_1   <= in[575:432];
            in_2_3   <= in[431:288];
            in_4_5   <= in[287:144];
            in_6_7   <= in[143:0];
            
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


    maxpooling_8_4_slide slide_0_1(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_0_1),
        .out(out_0_1),
        .end_flag(end_flag_cul[0])
        );
    
     maxpooling_8_4_slide slide_2_3(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_2_3),
        .out(out_2_3),
        .end_flag(end_flag_cul[1])
        );
    
    maxpooling_8_4_slide slide_4_5(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_4_5),
        .out(out_4_5),
        .end_flag(end_flag_cul[2])
        );
    
    maxpooling_8_4_slide slide_6_7(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag_cul),
        .in(in_6_7),
        .out(out_6_7),
        .end_flag(end_flag_cul[3])
        );    
       
    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            out_reg <= 0;
            
        end else if(end_flag_cul == 4'b1111)begin
            end_reg <= 1;
            out_reg <= {out_0_1, out_2_3, out_4_5, out_6_7};

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;
    assign out = out_reg;

endmodule
