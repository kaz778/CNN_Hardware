`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:27:43
// Design Name: 
// Module Name: neuron_32_16
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


module neuron_32_16(
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
    input [31:0] weight;//32
    input bias;//1
    input [127:0] in;//4*16*2=128
    
    output [8:0] out;//9
    output end_flag;
    
    reg signed [3:0] in_0; //4
    reg signed [3:0] in_1;
    reg signed [3:0] in_2;
    reg signed [3:0] in_3;
    reg signed [3:0] in_4;
    reg signed [3:0] in_5;
    reg signed [3:0] in_6;
    reg signed [3:0] in_7;
    reg signed [3:0] in_8;
    reg signed [3:0] in_9;
    reg signed [3:0] in_10;
    reg signed [3:0] in_11;
    reg signed [3:0] in_12;
    reg signed [3:0] in_13;
    reg signed [3:0] in_14;
    reg signed [3:0] in_15;
    reg signed [3:0] in_16;
    reg signed [3:0] in_17;
    reg signed [3:0] in_18;
    reg signed [3:0] in_19;
    reg signed [3:0] in_20;
    reg signed [3:0] in_21;
    reg signed [3:0] in_22;
    reg signed [3:0] in_23;
    reg signed [3:0] in_24;
    reg signed [3:0] in_25;
    reg signed [3:0] in_26;
    reg signed [3:0] in_27;
    reg signed [3:0] in_28;
    reg signed [3:0] in_29;
    reg signed [3:0] in_30;
    reg signed [3:0] in_31;
    
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
    reg weight_16;
    reg weight_17;
    reg weight_18;
    reg weight_19;
    reg weight_20;
    reg weight_21;
    reg weight_22;
    reg weight_23;
    reg weight_24;
    reg weight_25;
    reg weight_26;
    reg weight_27;
    reg weight_28;
    reg weight_29;
    reg weight_30;
    reg weight_31;

    
    reg signed [3:0] w_0;//4
    reg signed [3:0] w_1;
    reg signed [3:0] w_2;
    reg signed [3:0] w_3;
    reg signed [3:0] w_4;
    reg signed [3:0] w_5;
    reg signed [3:0] w_6;
    reg signed [3:0] w_7;
    reg signed [3:0] w_8;
    reg signed [3:0] w_9;
    reg signed [3:0] w_10;
    reg signed [3:0] w_11;
    reg signed [3:0] w_12;
    reg signed [3:0] w_13;
    reg signed [3:0] w_14;
    reg signed [3:0] w_15;
    reg signed [3:0] w_16;
    reg signed [3:0] w_17;
    reg signed [3:0] w_18;
    reg signed [3:0] w_19;
    reg signed [3:0] w_20;
    reg signed [3:0] w_21;
    reg signed [3:0] w_22;
    reg signed [3:0] w_23;
    reg signed [3:0] w_24;
    reg signed [3:0] w_25;
    reg signed [3:0] w_26;
    reg signed [3:0] w_27;
    reg signed [3:0] w_28;
    reg signed [3:0] w_29;
    reg signed [3:0] w_30;
    reg signed [3:0] w_31;
    
    reg signed [8:0] b;//9

    reg [8:0] fc_sum;//9
    
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
			in_16 <= 0;
			in_17 <= 0;
			in_18 <= 0;
			in_19 <= 0;
			in_20 <= 0;
			in_21 <= 0;
			in_22 <= 0;
			in_23 <= 0;
			in_24 <= 0;
			in_25 <= 0;
			in_26 <= 0;
			in_27 <= 0;
			in_28 <= 0;
			in_29 <= 0;
			in_30 <= 0;
			in_31 <= 0;
		  		
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
			weight_16 <= 0;
			weight_17 <= 0;
			weight_18 <= 0;
			weight_19 <= 0;
			weight_20 <= 0;
			weight_21 <= 0;
			weight_22 <= 0;
			weight_23 <= 0;
			weight_24 <= 0;
			weight_25 <= 0;
			weight_26 <= 0;
			weight_27 <= 0;
			weight_28 <= 0;
			weight_29 <= 0;
			weight_30 <= 0;
			weight_31 <= 0;

    
        end else if(start_flag) begin
            in_0 <= in[127:124];              
            in_1 <= in[123:120];              
            in_2 <= in[119:116];              
            in_3 <= in[115:112];              
            in_4 <= in[111:108];              
            in_5 <= in[107:104];              
            in_6 <= in[103:100];              
            in_7 <= in[99:96];              
            in_8 <= in[95:92];              
            in_9 <= in[91:88];              
            in_10 <= in[87:84];             
            in_11 <= in[83:80];             
            in_12 <= in[79:76];             
            in_13 <= in[75:72];             
            in_14 <= in[71:68];             
            in_15 <= in[67:64];             
            in_16 <= in[63:60];              
            in_17 <= in[59:56];              
            in_18 <= in[55:52];              
            in_19 <= in[51:48];              
            in_20 <= in[47:44];              
            in_21 <= in[43:40];              
            in_22 <= in[39:36];              
            in_23 <= in[35:32];              
            in_24 <= in[31:28];              
            in_25 <= in[27:24];              
            in_26 <= in[23:20];             
            in_27 <= in[19:16];             
            in_28 <= in[15:12];             
            in_29 <= in[11:8];             
            in_30 <= in[7:4];             
            in_31 <= in[3:0];             
      
             		                     
            weight_0  <= weight[31];         
            weight_1  <= weight[30];         
            weight_2  <= weight[29];    
            weight_3  <= weight[28];         
            weight_4  <= weight[27];         
            weight_5  <= weight[26];         
            weight_6  <= weight[25];          
            weight_7  <= weight[24];          
            weight_8  <= weight[23];          
            weight_9  <= weight[22];          
            weight_10 <= weight[21];         
            weight_11 <= weight[20];         
            weight_12 <= weight[19];         
            weight_13 <= weight[18];         
            weight_14 <= weight[17];       
            weight_15 <= weight[16];      
            weight_16 <= weight[15];         
            weight_17 <= weight[14];         
            weight_18 <= weight[13];    
            weight_19 <= weight[12];         
            weight_20 <= weight[11];         
            weight_21 <= weight[10];         
            weight_22 <= weight[9];          
            weight_23 <= weight[8];          
            weight_24 <= weight[7];          
            weight_25 <= weight[6];          
            weight_26 <= weight[5];         
            weight_27 <= weight[4];         
            weight_28 <= weight[3];         
            weight_29 <= weight[2];         
            weight_30 <= weight[1];       
            weight_31 <= weight[0];       
 
            
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
            w_16 <= 0;
            w_17 <= 0; 
            w_18 <= 0; 
            w_19 <= 0; 
            w_20 <= 0; 
            w_21 <= 0; 
            w_22 <= 0; 
            w_23 <= 0; 
            w_24 <= 0; 
            w_25 <= 0; 
            w_26 <= 0;
            w_27 <= 0;
            w_28 <= 0;
            w_29 <= 0;
            w_30 <= 0;
            w_31 <= 0;
            
            b <= 0;
            
		end else if (count == 0) begin
		    if(weight_0 == 1) begin
		        w_0 <= in_0;
		    end else begin
		        w_0 <= (in_0 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_1 == 1) begin
		        w_1 <= in_1;
		    end else begin
		        w_1 <= (in_1 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_2 == 1) begin
		        w_2 <= in_2;
		    end else begin
		        w_2 <= (in_2 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_3 == 1) begin
		        w_3 <= in_3;
		    end else begin
		        w_3 <= (in_3 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_4 == 1) begin
		        w_4 <= in_4;
		    end else begin
		        w_4 <= (in_4 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_5 == 1) begin
		        w_5 <= in_5;
		    end else begin
		        w_5 <= (in_5 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_6 == 1) begin
		        w_6 <= in_6;
		    end else begin
		        w_6 <= (in_6 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_7 == 1) begin
		        w_7 <= in_7;
		    end else begin
		        w_7 <= (in_7 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_8 == 1) begin
		        w_8 <= in_8;
		    end else begin
		        w_8 <= (in_8 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_9 == 1) begin
		        w_9 <= in_9;
		    end else begin
		        w_9 <= (in_9 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_10 == 1) begin
		        w_10 <= in_10;
		    end else begin
		        w_10 <= (in_10 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_11 == 1) begin
		        w_11 <= in_11;
		    end else begin
		        w_11 <= (in_11 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_12 == 1) begin
		        w_12 <= in_12;
		    end else begin
		        w_12 <= (in_12 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_13 == 1) begin
		        w_13 <= in_13;
		    end else begin
		        w_13 <= (in_13 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_14 == 1) begin
		        w_14 <= in_14;
		    end else begin
		        w_14 <= (in_14 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_15 == 1) begin
		        w_15 <= in_15;
		    end else begin
		        w_15 <= (in_15 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_16 == 1) begin
		        w_16 <= in_16;
		    end else begin
		        w_16 <= (in_16 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_17 == 1) begin
		        w_17 <= in_17;
		    end else begin
		        w_17 <= (in_17 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_18 == 1) begin
		        w_18 <= in_18;
		    end else begin
		        w_18 <= (in_18 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_19 == 1) begin
		        w_19 <= in_19;
		    end else begin
		        w_19 <= (in_19 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_20 == 1) begin
		        w_20 <= in_20;
		    end else begin
		        w_20 <= (in_20 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_21 == 1) begin
		        w_21 <= in_21;
		    end else begin
		        w_21 <= (in_21 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_22 == 1) begin
		        w_22 <= in_22;
		    end else begin
		        w_22 <= (in_22 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_23 == 1) begin
		        w_23 <= in_23;
		    end else begin
		        w_23 <= (in_23 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_24 == 1) begin
		        w_24 <= in_24;
		    end else begin
		        w_24 <= (in_24 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_25 == 1) begin
		        w_25 <= in_25;
		    end else begin
		        w_25 <= (in_25 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_26 == 1) begin
		        w_26 <= in_26;
		    end else begin
		        w_26 <= (in_26 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_27 == 1) begin
		        w_27 <= in_27;
		    end else begin
		        w_27 <= (in_27 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_28 == 1) begin
		        w_28 <= in_28;
		    end else begin
		        w_28 <= (in_28 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_29 == 1) begin
		        w_29 <= in_29;
		    end else begin
		        w_29 <= (in_29 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_30 == 1) begin
		        w_30 <= in_30;
		    end else begin
		        w_30 <= (in_30 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_31 == 1) begin
		        w_31 <= in_31;
		    end else begin
		        w_31 <= (in_31 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(bias == 1) begin
		        b <= 9'b000000001;
		    end else begin
		        b <= 9'b111111111;
		    end

        end else if(count == 1) begin
            fc_sum  <= {{5{w_0[3]}}, w_0}
                     + {{5{w_1[3]}}, w_1}
                     + {{5{w_2[3]}}, w_2}
                     + {{5{w_3[3]}}, w_3}
                     + {{5{w_4[3]}}, w_4}
                     + {{5{w_5[3]}}, w_5}
                     + {{5{w_6[3]}}, w_6}
                     + {{5{w_7[3]}}, w_7}
                     + {{5{w_8[3]}}, w_8}
                     + {{5{w_9[3]}}, w_9}
                     + {{5{w_10[3]}}, w_10}
                     + {{5{w_11[3]}}, w_11}
                     + {{5{w_12[3]}}, w_12}
                     + {{5{w_13[3]}}, w_13}
                     + {{5{w_14[3]}}, w_14}
                     + {{5{w_15[3]}}, w_15}
                     + {{5{w_16[3]}}, w_16}        
                     + {{5{w_17[3]}}, w_17}        
                     + {{5{w_18[3]}}, w_18}        
                     + {{5{w_19[3]}}, w_19}        
                     + {{5{w_20[3]}}, w_20}        
                     + {{5{w_21[3]}}, w_21}        
                     + {{5{w_22[3]}}, w_22}        
                     + {{5{w_23[3]}}, w_23}        
                     + {{5{w_24[3]}}, w_24}        
                     + {{5{w_25[3]}}, w_25}        
                     + {{5{w_26[3]}}, w_26}        
                     + {{5{w_27[3]}}, w_27}        
                     + {{5{w_28[3]}}, w_28}        
                     + {{5{w_29[3]}}, w_29}        
                     + {{5{w_30[3]}}, w_30}        
                     + {{5{w_31[3]}}, w_31}
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
