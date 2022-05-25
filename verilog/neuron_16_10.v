`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:28:40
// Design Name: 
// Module Name: neuron_16_10
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


module neuron_16_10(
    clk,
    reset,
    start_flag,
    weight,
    bias,
    in,
    out,
    end_flag
    );
        
    input clk;
    input reset;
    input start_flag;
    input [15:0] weight;//16
    input bias;//1
    input [159:0] in;//10*16=160
    
    output [14:0] out;//15
    output end_flag;
    
    reg signed [9:0] in_0;//10
    reg signed [9:0] in_1;
    reg signed [9:0] in_2;
    reg signed [9:0] in_3;
    reg signed [9:0] in_4;
    reg signed [9:0] in_5;
    reg signed [9:0] in_6;
    reg signed [9:0] in_7;
    reg signed [9:0] in_8;
    reg signed [9:0] in_9;
    reg signed [9:0] in_10;
    reg signed [9:0] in_11;
    reg signed [9:0] in_12;
    reg signed [9:0] in_13;
    reg signed [9:0] in_14;
    reg signed [9:0] in_15;
    
    reg weight_0;//1
    reg weight_1;
    reg weight_2;
    reg weight_3;
    reg weight_4;
    reg weight_5;
    reg weight_6;
    reg weight_7;
    reg weight_8;
    reg weight_9;
    reg weight_10;
    reg weight_11;
    reg weight_12;
    reg weight_13;
    reg weight_14;
    reg weight_15;
    
    reg signed [9:0] w_0;//10
    reg signed [9:0] w_1;
    reg signed [9:0] w_2;
    reg signed [9:0] w_3;
    reg signed [9:0] w_4;
    reg signed [9:0] w_5;
    reg signed [9:0] w_6;
    reg signed [9:0] w_7;
    reg signed [9:0] w_8;
    reg signed [9:0] w_9;
    reg signed [9:0] w_10;
    reg signed [9:0] w_11;
    reg signed [9:0] w_12;
    reg signed [9:0] w_13;
    reg signed [9:0] w_14;
    reg signed [9:0] w_15;
    
    reg signed [14:0] b;//15

    reg [14:0] fc_sum;//15
    
    reg [1:0]count;
    reg end_reg;
    
        always @( posedge clk ) begin
        if( reset ) begin
		  count <= 2;
		end else if( start_flag ) begin
		  count <= 0;
		end else if( count == 2 ) begin
		  count <= count;
		end else if( count < 2 ) begin
		  count <= count + 1;
		end
	end

    always @(posedge clk) begin
        if(reset) begin
			in_0 <= 0;
			in_1 <= 0;
			in_2 <= 0;
			in_3 <= 0;
			in_4 <= 0;
			in_5 <= 0;
			in_6 <= 0;
			in_7 <= 0;
			in_8 <= 0;
			in_9 <= 0;
			in_10 <= 0;
			in_11 <= 0;
			in_12 <= 0;
			in_13 <= 0;
			in_14 <= 0;
			in_15 <= 0;
		  		
			weight_0 <= 0;
			weight_1 <= 0;
			weight_2 <= 0;
			weight_3 <= 0;
			weight_4 <= 0;
			weight_5 <= 0;
			weight_6 <= 0;
			weight_7 <= 0;
			weight_8 <= 0;
			weight_9 <= 0;
			weight_10 <= 0;
			weight_11 <= 0;
			weight_12 <= 0;
			weight_13 <= 0;
			weight_14 <= 0;
			weight_15 <= 0;
    
        end else if(start_flag) begin
            in_0 <= in[159:150];              
            in_1 <= in[149:140];              
            in_2 <= in[139:130];              
            in_3 <= in[129:120];              
            in_4 <= in[119:110];              
            in_5 <= in[109:100];              
            in_6 <= in[99:90];              
            in_7 <= in[89:80];              
            in_8 <= in[79:70];              
            in_9 <= in[69:60];              
            in_10 <= in[59:50];             
            in_11 <= in[49:40];             
            in_12 <= in[39:30];             
            in_13 <= in[29:20];             
            in_14 <= in[19:10];             
            in_15 <= in[9:0];             
             		                     
            weight_0  <= weight[15];         
            weight_1  <= weight[14];         
            weight_2  <= weight[13];    
            weight_3  <= weight[12];         
            weight_4  <= weight[11];         
            weight_5  <= weight[10];         
            weight_6  <= weight[9];          
            weight_7  <= weight[8];          
            weight_8  <= weight[7];          
            weight_9  <= weight[6];          
            weight_10 <= weight[5];         
            weight_11 <= weight[4];         
            weight_12 <= weight[3];         
            weight_13 <= weight[2];         
            weight_14 <= weight[1];       
            weight_15 <= weight[0];       
            
        end
    end
    
    always @(posedge clk) begin
        if(reset) begin
            fc_sum <= 0;
            
            w_0 <= 0;
            w_1 <= 0; 
            w_2 <= 0; 
            w_3 <= 0; 
            w_4 <= 0; 
            w_5 <= 0; 
            w_6 <= 0; 
            w_7 <= 0; 
            w_8 <= 0; 
            w_9 <= 0; 
            w_10 <= 0;
            w_11 <= 0;
            w_12 <= 0;
            w_13 <= 0;
            w_14 <= 0;
            w_15 <= 0;
            
            b <= 0;
            
		end else if (count == 0) begin
		    if(weight_0 == 1) begin
		        w_0 <= in_0;
		    end else begin
		        w_0 <= (in_0 ^ 10'b1111111111) + 10'b0000000001;
		    end

		    if(weight_1 == 1) begin
		        w_1 <= in_1;
		    end else begin
		        w_1 <= (in_1 ^ 10'b1111111111) + 10'b0000000001;
		    end

		    if(weight_2 == 1) begin
		        w_2 <= in_2;
		    end else begin
		        w_2 <= (in_2 ^ 10'b1111111111) + 10'b0000000001;
		    end

		    if(weight_3 == 1) begin
		        w_3 <= in_3;
		    end else begin
		        w_3 <= (in_3 ^ 10'b1111111111) + 10'b0000000001;
		    end

		    if(weight_4 == 1) begin
		        w_4 <= in_4;
		    end else begin
		        w_4 <= (in_4 ^ 10'b1111111111) + 10'b0000000001;
		    end

		    if(weight_5 == 1) begin
		        w_5 <= in_5;
		    end else begin
		        w_5 <= (in_5 ^ 10'b1111111111) + 10'b0000000001;
		    end

		    if(weight_6 == 1) begin
		        w_6 <= in_6;
		    end else begin
		        w_6 <= (in_6 ^ 10'b1111111111) + 10'b0000000001;
		    end

		    if(weight_7 == 1) begin
		        w_7 <= in_7;
		    end else begin
		        w_7 <= (in_7 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_8 == 1) begin
		        w_8 <= in_8;
		    end else begin
		        w_8 <= (in_8 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_9 == 1) begin
		        w_9 <= in_9;
		    end else begin
		        w_9 <= (in_9 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_10 == 1) begin
		        w_10 <= in_10;
		    end else begin
		        w_10 <= (in_10 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_11 == 1) begin
		        w_11 <= in_11;
		    end else begin
		        w_11 <= (in_11 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_12 == 1) begin
		        w_12 <= in_12;
		    end else begin
		        w_12 <= (in_12 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_13 == 1) begin
		        w_13 <= in_13;
		    end else begin
		        w_13 <= (in_13 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_14 == 1) begin
		        w_14 <= in_14;
		    end else begin
		        w_14 <= (in_14 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(weight_15 == 1) begin
		        w_15 <= in_15;
		    end else begin
		        w_15 <= (in_15 ^ 10'b1111111111) + 10'b0000000001;
		    end
		    
		    if(bias == 1) begin
		        b <= 15'b000000000000001;
		    end else begin
		        b <= 15'b111111111111111;
		    end
		    
        end else if(count == 1) begin
            fc_sum  <= {{5{w_0[9]}}, w_0}
                     + {{5{w_1[9]}}, w_1}
                     + {{5{w_2[9]}}, w_2}
                     + {{5{w_3[9]}}, w_3}
                     + {{5{w_4[9]}}, w_4}
                     + {{5{w_5[9]}}, w_5}
                     + {{5{w_6[9]}}, w_6}
                     + {{5{w_7[9]}}, w_7}
                     + {{5{w_8[9]}}, w_8}
                     + {{5{w_9[9]}}, w_9}
                     + {{5{w_10[9]}}, w_10}
                     + {{5{w_11[9]}}, w_11}
                     + {{5{w_12[9]}}, w_12}
                     + {{5{w_13[9]}}, w_13}
                     + {{5{w_14[9]}}, w_14}
                     + {{5{w_15[9]}}, w_15}
                     + b;        
		end
	end
	
	assign out = fc_sum;
	
	always @(posedge clk) begin
		if( reset ) begin
			end_reg <= 0;
		end else if( count == 1 ) begin
			end_reg <= 1;
		end else begin
			end_reg <= 0;
		end
	end
	
	assign end_flag = end_reg;
		
endmodule
