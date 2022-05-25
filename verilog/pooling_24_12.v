`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:22:28
// Design Name: 
// Module Name: pooling_24_12
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


module pooling_24_12(
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
    input [59:0] in;//15*4=60
    
    output [3:0] out;//4
    output end_flag;
    
    reg signed [14:0] in_0;//15
    reg signed [14:0] in_1;
    reg signed [14:0] in_2;
    reg signed [14:0] in_3;
                
    reg signed [14:0] c_0;
    reg signed [14:0] c_1;
                
    reg signed [14:0] max;
    reg signed [14:0] out_reg;
    
    reg [1:0]count;
    reg end_reg;
    
    parameter signed max_c = 15'b000000000000111;
    parameter signed min_c = 15'b000000000000000;
    
    always @( posedge clk ) begin
        if( reset ) begin
		  count <= 3;
		end else if( start_flag ) begin
		  count <= 0;
		end else if( count == 3 ) begin
		  count <= count;
		end else if( count < 3 ) begin
		  count <= count + 1;
		end
	end
    
    always @(posedge clk) begin
        if(reset) begin
            in_0 <= 0;
            in_1 <= 0;
            in_2 <= 0;
            in_3 <= 0;
            
            c_0 <= 0;
            c_1 <= 0;
            
            max <= 0;
            out_reg <= 0;
        end else if (start_flag) begin
            in_0 <= in[59:45];
            in_1 <= in[44:30];
            in_2 <= in[29:15];
            in_3 <= in[14:0];
        end else if(count == 0) begin
            if(in_0 < in_1) begin
                c_0 <= in_1;
            end else begin
                c_0 <= in_0;
            end
            
            if(in_2 < in_3)begin
                c_1 <= in_3;
            end else begin
                c_1 <= in_2;
            end
            
        end else if(count == 1) begin
            if(c_0 < c_1) begin
                max <= c_1;
            end else begin
                max <= c_0;
            end
        end else if(count == 2) begin
            if(max <= min_c) begin
                out_reg <= min_c;
            end else if(max >= max_c) begin
                out_reg <= max_c;
            end else begin
                out_reg <= max;
            end
        end    
    end
    
    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
        end else if(count == 2) begin
            end_reg <= 1;
        end else begin
            end_reg <= 0;
        end
    end
    
    assign out = {out_reg[14], out_reg[2:0]};
    
    assign end_flag = end_reg;
            
endmodule
