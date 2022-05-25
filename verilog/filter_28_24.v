`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:21:01
// Design Name: 
// Module Name: filter_28_24
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


module filter_28_24(
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
    input [224:0] in;   //9*5*5=225
    
    output [14:0] out; //15
    output end_flag;
    
    reg signed [8:0] in_0;//9
    reg signed [8:0] in_1;
    reg signed [8:0] in_2;
    reg signed [8:0] in_3;
    reg signed [8:0] in_4;
    reg signed [8:0] in_5;
    reg signed [8:0] in_6;
    reg signed [8:0] in_7;
    reg signed [8:0] in_8;
    reg signed [8:0] in_9;
    reg signed [8:0] in_10;
    reg signed [8:0] in_11;
    reg signed [8:0] in_12;
    reg signed [8:0] in_13;
    reg signed [8:0] in_14;
    reg signed [8:0] in_15;
    reg signed [8:0] in_16;
    reg signed [8:0] in_17;
    reg signed [8:0] in_18;
    reg signed [8:0] in_19;
    reg signed [8:0] in_20;
    reg signed [8:0] in_21;
    reg signed [8:0] in_22;
    reg signed [8:0] in_23;
    reg signed [8:0] in_24;
    
    reg [24:0] filter;//1*25=25
    
    reg filter_0;//1
    reg filter_1;
    reg filter_2;
    reg filter_3;
    reg filter_4;
    reg filter_5;
    reg filter_6;
    reg filter_7;
    reg filter_8;
    reg filter_9;
    reg filter_10;
    reg filter_11;
    reg filter_12;
    reg filter_13;
    reg filter_14;
    reg filter_15;
    reg filter_16;
    reg filter_17;
    reg filter_18;
    reg filter_19;
    reg filter_20;
    reg filter_21;
    reg filter_22;
    reg filter_23;
    reg filter_24;
    
    reg signed [8:0] f_0;//9
    reg signed [8:0] f_1;
    reg signed [8:0] f_2;
    reg signed [8:0] f_3;
    reg signed [8:0] f_4;
    reg signed [8:0] f_5;
    reg signed [8:0] f_6;
    reg signed [8:0] f_7;
    reg signed [8:0] f_8;
    reg signed [8:0] f_9;
    reg signed [8:0] f_10;
    reg signed [8:0] f_11;
    reg signed [8:0] f_12;
    reg signed [8:0] f_13;
    reg signed [8:0] f_14;
    reg signed [8:0] f_15;
    reg signed [8:0] f_16;
    reg signed [8:0] f_17;
    reg signed [8:0] f_18;
    reg signed [8:0] f_19;
    reg signed [8:0] f_20;
    reg signed [8:0] f_21;
    reg signed [8:0] f_22;
    reg signed [8:0] f_23;
    reg signed [8:0] f_24;
 
    reg signed [14:0] filter_sum;//15
    
    reg [1:0] count;
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
			
			filter_0 <= 0;
			filter_1 <= 0;
			filter_2 <= 0;
			filter_3 <= 0;
			filter_4 <= 0;
			filter_5 <= 0;
			filter_6 <= 0;
			filter_7 <= 0;
			filter_8 <= 0;
			filter_9 <= 0;
			filter_10 <= 0;
			filter_11 <= 0;
			filter_12 <= 0;
			filter_13 <= 0;
			filter_14 <= 0;
			filter_15 <= 0;
			filter_16 <= 0;
			filter_17 <= 0;
			filter_18 <= 0;
			filter_19 <= 0;
			filter_20 <= 0;
			filter_21 <= 0;
			filter_22 <= 0;
			filter_23 <= 0;
			filter_24 <= 0;
			
			filter <= filter_28_24;
            
        end else if(start_flag) begin
            in_0 <=  in[224:216];
			in_1 <=  in[215:207];
			in_2 <=  in[206:198];
			in_3 <=  in[197:189];
			in_4 <=  in[188:180];
			in_5 <=  in[179:171];
			in_6 <=  in[170:162];
			in_7 <=  in[161:153];
			in_8 <=  in[152:144];
			in_9 <=  in[143:135];
			in_10 <= in[134:126];
			in_11 <= in[125:117];
			in_12 <= in[116:108];
			in_13 <= in[107:99];
			in_14 <= in[98:90];
			in_15 <= in[89:81];
			in_16 <= in[80:72];
			in_17 <= in[71:63];
			in_18 <= in[62:54];
			in_19 <= in[53:45];
			in_20 <= in[44:36];
			in_21 <= in[35:27];
			in_22 <= in[26:18];
			in_23 <= in[17:9];
			in_24 <= in[8:0];

			filter_0 <=  filter[24];
			filter_1 <=  filter[23];
			filter_2 <=  filter[22];
			filter_3 <=  filter[21];
			filter_4 <=  filter[20];
			filter_5 <=  filter[19];
			filter_6 <=  filter[18];
			filter_7 <=  filter[17];
			filter_8 <=  filter[16];
			filter_9 <=  filter[15];
			filter_10 <= filter[14];
			filter_11 <= filter[13];
			filter_12 <= filter[12];
			filter_13 <= filter[11];
			filter_14 <= filter[10];
			filter_15 <= filter[9];
			filter_16 <= filter[8];
			filter_17 <= filter[7];
			filter_18 <= filter[6];
			filter_19 <= filter[5];
			filter_20 <= filter[4];
			filter_21 <= filter[3];
			filter_22 <= filter[2];
			filter_23 <= filter[1];
			filter_24 <= filter[0];
        end                     
    end
    
    always @(posedge clk) begin
        if(reset) begin
            filter_sum <= 0;
            
            f_0 <= 0;
			f_1 <= 0;
			f_2 <= 0;
			f_3 <= 0;
			f_4 <= 0;
			f_5 <= 0;
			f_6 <= 0;
			f_7 <= 0;
			f_8 <= 0;
			f_9 <= 0;
			f_10 <= 0;
			f_11 <= 0;
			f_12 <= 0;
			f_13 <= 0;
			f_14 <= 0;
			f_15 <= 0;
			f_16 <= 0;
			f_17 <= 0;
			f_18 <= 0;
			f_19 <= 0;
			f_20 <= 0;
			f_21 <= 0;
			f_22 <= 0;
			f_23 <= 0;
			f_24 <= 0;
			
		end else if (count == 0) begin
		    if(filter_0 == 1) begin
		        f_0 <= in_0;
		    end else begin
		        f_0 <= (in_0 ^ 9'b111111111) + 9'b000000001;
		    end

		    if(filter_1 == 1) begin
		        f_1 <= in_1;
		    end else begin
		        f_1 <= (in_1 ^ 9'b111111111) + 9'b000000001;
		    end

		    if(filter_2 == 1) begin
		        f_2 <= in_2;
		    end else begin
		        f_2 <= (in_2 ^ 9'b111111111) + 9'b000000001;
		    end

		    if(filter_3 == 1) begin
		        f_3 <= in_3;
		    end else begin
		        f_3 <= (in_3 ^ 9'b111111111) + 9'b000000001;
		    end

		    if(filter_4 == 1) begin
		        f_4 <= in_4;
		    end else begin
		        f_4 <= (in_4 ^ 9'b111111111) + 9'b000000001;
		    end

		    if(filter_5 == 1) begin
		        f_5 <= in_5;
		    end else begin
		        f_5 <= (in_5 ^ 9'b111111111) + 9'b000000001;
		    end

		    if(filter_6 == 1) begin
		        f_6 <= in_6;
		    end else begin
		        f_6 <= (in_6 ^ 9'b111111111) + 9'b000000001;
		    end

		    if(filter_7 == 1) begin
		        f_7 <= in_7;
		    end else begin
		        f_7 <= (in_7 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_8 == 1) begin
		        f_8 <= in_8;
		    end else begin
		        f_8 <= (in_8 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_9 == 1) begin
		        f_9 <= in_9;
		    end else begin
		        f_9 <= (in_9 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_10 == 1) begin
		        f_10 <= in_10;
		    end else begin
		        f_10 <= (in_10 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_11 == 1) begin
		        f_11 <= in_11;
		    end else begin
		        f_11 <= (in_11 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_12 == 1) begin
		        f_12 <= in_12;
		    end else begin
		        f_12 <= (in_12 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_13 == 1) begin
		        f_13 <= in_13;
		    end else begin
		        f_13 <= (in_13 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_14 == 1) begin
		        f_14 <= in_14;
		    end else begin
		        f_14 <= (in_14 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_15 == 1) begin
		        f_15 <= in_15;
		    end else begin
		        f_15 <= (in_15 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_16 == 1) begin
		        f_16 <= in_16;
		    end else begin
		        f_16 <= (in_16 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_17 == 1) begin
		        f_17 <= in_17;
		    end else begin
		        f_17 <= (in_17 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_18 == 1) begin
		        f_18 <= in_18;
		    end else begin
		        f_18 <= (in_18 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_19 == 1) begin
		        f_19 <= in_19;
		    end else begin
		        f_19 <= (in_19 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_20 == 1) begin
		        f_20 <= in_20;
		    end else begin
		        f_20 <= (in_20 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_21 == 1) begin
		        f_21 <= in_21;
		    end else begin
		        f_21 <= (in_21 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_22 == 1) begin
		        f_22 <= in_22;
		    end else begin
		        f_22 <= (in_22 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_23 == 1) begin
		        f_23 <= in_23;
		    end else begin
		        f_23 <= (in_23 ^ 9'b111111111) + 9'b000000001;
		    end
		    
		    if(filter_24 == 1) begin
		        f_24 <= in_24;
		    end else begin
		        f_24 <= (in_24 ^ 9'b111111111) + 9'b000000001;
		    end
		    
        end else if(count == 1) begin
            filter_sum  <= {{6{f_0[8]}},   f_0}
                         + {{6{f_1[8]}},   f_1}
                         + {{6{f_2[8]}},   f_2}
                         + {{6{f_3[8]}},   f_3}
                         + {{6{f_4[8]}},   f_4}
                         + {{6{f_5[8]}},   f_5}
                         + {{6{f_6[8]}},   f_6}
                         + {{6{f_7[8]}},   f_7}
                         + {{6{f_8[8]}},   f_8}
                         + {{6{f_9[8]}},   f_9}
                         + {{6{f_10[8]}}, f_10}
                         + {{6{f_11[8]}}, f_11}
                         + {{6{f_12[8]}}, f_12}
                         + {{6{f_13[8]}}, f_13}
                         + {{6{f_14[8]}}, f_14}
                         + {{6{f_15[8]}}, f_15}
                         + {{6{f_16[8]}}, f_16}
                         + {{6{f_17[8]}}, f_17}
                         + {{6{f_18[8]}}, f_18}
                         + {{6{f_19[8]}}, f_19}
                         + {{6{f_20[8]}}, f_20}
                         + {{6{f_21[8]}}, f_21}
                         + {{6{f_22[8]}}, f_22}
                         + {{6{f_23[8]}}, f_23}
                         + {{6{f_24[8]}}, f_24};        
		end
	end
	
	assign out = filter_sum;
	
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