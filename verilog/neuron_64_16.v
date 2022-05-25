`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/30 04:10:42
// Design Name: 
// Module Name: neuron_64_16
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


module neuron_64_16(
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
    input [63:0] weight;//64
    input bias;//1
    input [255:0] in;//4*4*4*4=256
    
    output [9:0] out;//10
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
    reg signed [3:0] in_32;
    reg signed [3:0] in_33;
    reg signed [3:0] in_34;
    reg signed [3:0] in_35;
    reg signed [3:0] in_36;
    reg signed [3:0] in_37;
    reg signed [3:0] in_38;
    reg signed [3:0] in_39;
    reg signed [3:0] in_40;
    reg signed [3:0] in_41;
    reg signed [3:0] in_42;
    reg signed [3:0] in_43;
    reg signed [3:0] in_44;
    reg signed [3:0] in_45;
    reg signed [3:0] in_46;
    reg signed [3:0] in_47;
    reg signed [3:0] in_48;
    reg signed [3:0] in_49;
    reg signed [3:0] in_50;
    reg signed [3:0] in_51;
    reg signed [3:0] in_52;
    reg signed [3:0] in_53;
    reg signed [3:0] in_54;
    reg signed [3:0] in_55;
    reg signed [3:0] in_56;
    reg signed [3:0] in_57;
    reg signed [3:0] in_58;
    reg signed [3:0] in_59;
    reg signed [3:0] in_60;
    reg signed [3:0] in_61;
    reg signed [3:0] in_62;
    reg signed [3:0] in_63;



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
    reg weight_32;
    reg weight_33;
    reg weight_34;
    reg weight_35;
    reg weight_36;
    reg weight_37;
    reg weight_38;
    reg weight_39;
    reg weight_40;
    reg weight_41;
    reg weight_42;
    reg weight_43;
    reg weight_44;
    reg weight_45;
    reg weight_46;
    reg weight_47;
    reg weight_48;
    reg weight_49;
    reg weight_50;
    reg weight_51;
    reg weight_52;
    reg weight_53;
    reg weight_54;
    reg weight_55;
    reg weight_56;
    reg weight_57;
    reg weight_58;
    reg weight_59;
    reg weight_60;
    reg weight_61;
    reg weight_62;
    reg weight_63;

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
    reg signed [3:0] w_32;
    reg signed [3:0] w_33;
    reg signed [3:0] w_34;
    reg signed [3:0] w_35;
    reg signed [3:0] w_36;
    reg signed [3:0] w_37;
    reg signed [3:0] w_38;
    reg signed [3:0] w_39;
    reg signed [3:0] w_40;
    reg signed [3:0] w_41;
    reg signed [3:0] w_42;
    reg signed [3:0] w_43;
    reg signed [3:0] w_44;
    reg signed [3:0] w_45;
    reg signed [3:0] w_46;
    reg signed [3:0] w_47;    
    reg signed [3:0] w_48;    
    reg signed [3:0] w_49;    
    reg signed [3:0] w_50;    
    reg signed [3:0] w_51;    
    reg signed [3:0] w_52;    
    reg signed [3:0] w_53;    
    reg signed [3:0] w_54;    
    reg signed [3:0] w_55;    
    reg signed [3:0] w_56;    
    reg signed [3:0] w_57;    
    reg signed [3:0] w_58;    
    reg signed [3:0] w_59;    
    reg signed [3:0] w_60;    
    reg signed [3:0] w_61;    
    reg signed [3:0] w_62;    
    reg signed [3:0] w_63;    
    
    reg signed [9:0] b;//10

    reg [9:0] fc_sum;//10
    
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
			in_32 <= 0;
			in_33 <= 0;
			in_34 <= 0;
			in_35 <= 0;
			in_36 <= 0;
			in_37 <= 0;
			in_38 <= 0;
			in_39 <= 0;
			in_40 <= 0;
			in_41 <= 0;
			in_42 <= 0;
			in_43 <= 0;
			in_44 <= 0;
			in_45 <= 0;
			in_46 <= 0;
			in_47 <= 0;
			in_48 <= 0;
			in_49 <= 0;
			in_50 <= 0;
			in_51 <= 0;
			in_52 <= 0;
			in_53 <= 0;
			in_54 <= 0;
			in_55 <= 0;
			in_56 <= 0;
			in_57 <= 0;
			in_58 <= 0;
			in_59 <= 0;
			in_60 <= 0;
			in_61 <= 0;
			in_62 <= 0;
			in_63 <= 0;
		  		
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
			weight_32 <= 0;
			weight_33 <= 0;
			weight_34 <= 0;
			weight_35 <= 0;
			weight_36 <= 0;
			weight_37 <= 0;
			weight_38 <= 0;
			weight_39 <= 0;
			weight_40 <= 0;
			weight_41 <= 0;
			weight_42 <= 0;
			weight_43 <= 0;
			weight_44 <= 0;
			weight_45 <= 0;
			weight_46 <= 0;
			weight_47 <= 0;
			weight_48 <= 0;
			weight_49 <= 0;
			weight_50 <= 0;
			weight_51 <= 0;
			weight_52 <= 0;
			weight_53 <= 0;
			weight_54 <= 0;
			weight_55 <= 0;
			weight_56 <= 0;
			weight_57 <= 0;
			weight_58 <= 0;
			weight_59 <= 0;
			weight_60 <= 0;
			weight_61 <= 0;
			weight_62 <= 0;
			weight_63 <= 0;
    
        end else if(start_flag) begin
            in_0  <= in[255:252];              
            in_1  <= in[251:248];              
            in_2  <= in[247:244];              
            in_3  <= in[243:240];              
            in_4  <= in[239:236];              
            in_5  <= in[235:232];              
            in_6  <= in[231:228];              
            in_7  <= in[227:224];              
            in_8  <= in[223:220];              
            in_9  <= in[219:216];              
            in_10 <= in[215:212];             
            in_11 <= in[211:208];             
            in_12 <= in[207:204];             
            in_13 <= in[203:200];             
            in_14 <= in[199:196];             
            in_15 <= in[195:192];             
            in_16 <= in[191:188];       
            in_17 <= in[187:184];       
            in_18 <= in[183:180];       
            in_19 <= in[179:176];       
            in_20 <= in[175:172];       
            in_21 <= in[171:168];       
            in_22 <= in[167:164];       
            in_23 <= in[163:160];       
            in_24 <= in[159:156];       
            in_25 <= in[155:152];       
            in_26 <= in[151:148];      
            in_27 <= in[147:144];      
            in_28 <= in[143:140];      
            in_29 <= in[139:136];     
            in_30 <= in[135:132];    
            in_31 <= in[131:128];   
            in_32 <= in[127:124];    
            in_33 <= in[123:120];    
            in_34 <= in[119:116];    
            in_35 <= in[115:112];    
            in_36 <= in[111:108];    
            in_37 <= in[107:104];    
            in_38 <= in[103:100];    
            in_39 <= in[99:96];      
            in_40 <= in[95:92];      
            in_41 <= in[91:88];      
            in_42 <= in[87:84];      
            in_43 <= in[83:80];      
            in_44 <= in[79:76];      
            in_45 <= in[75:72];      
            in_46 <= in[71:68];      
            in_47 <= in[67:64];      
            in_48 <= in[63:60];      
            in_49 <= in[59:56];      
            in_50 <= in[55:52];      
            in_51 <= in[51:48];      
            in_52 <= in[47:44];      
            in_53 <= in[43:40];      
            in_54 <= in[39:36];      
            in_55 <= in[35:32];      
            in_56 <= in[31:28];      
            in_57 <= in[27:24];      
            in_58 <= in[23:20];      
            in_59 <= in[19:16];      
            in_60 <= in[15:12];      
            in_61 <= in[11:8];       
            in_62 <= in[7:4];        
            in_63 <= in[3:0];        
             		                     
            weight_0  <= weight[63];         
            weight_1  <= weight[62];         
            weight_2  <= weight[61];    
            weight_3  <= weight[60];         
            weight_4  <= weight[59];         
            weight_5  <= weight[58];         
            weight_6  <= weight[57];          
            weight_7  <= weight[56];          
            weight_8  <= weight[55];          
            weight_9  <= weight[54];          
            weight_10 <= weight[53];         
            weight_11 <= weight[52];         
            weight_12 <= weight[51];         
            weight_13 <= weight[50];         
            weight_14 <= weight[49];       
            weight_15 <= weight[48];      
            weight_16 <= weight[47];   
            weight_17 <= weight[46];   
            weight_18 <= weight[45]; 
            weight_19 <= weight[44];   
            weight_20 <= weight[43];   
            weight_21 <= weight[42];   
            weight_22 <= weight[41];   
            weight_23 <= weight[40];   
            weight_24 <= weight[39];   
            weight_25 <= weight[38];   
            weight_26 <= weight[37];  
            weight_27 <= weight[36];  
            weight_28 <= weight[35];  
            weight_29 <= weight[34];  
            weight_30 <= weight[33]; 
            weight_31 <= weight[32]; 
            weight_32 <= weight[31]; 
            weight_33 <= weight[30]; 
            weight_34 <= weight[29]; 
            weight_35 <= weight[28]; 
            weight_36 <= weight[27]; 
            weight_37 <= weight[26]; 
            weight_38 <= weight[25]; 
            weight_39 <= weight[24]; 
            weight_40 <= weight[23]; 
            weight_41 <= weight[22]; 
            weight_42 <= weight[21]; 
            weight_43 <= weight[20]; 
            weight_44 <= weight[19]; 
            weight_45 <= weight[18]; 
            weight_46 <= weight[17]; 
            weight_47 <= weight[16]; 
            weight_48 <= weight[15]; 
            weight_49 <= weight[14]; 
            weight_50 <= weight[13]; 
            weight_51 <= weight[12]; 
            weight_52 <= weight[11]; 
            weight_53 <= weight[10]; 
            weight_54 <= weight[9];  
            weight_55 <= weight[8];  
            weight_56 <= weight[7];  
            weight_57 <= weight[6];  
            weight_58 <= weight[5];  
            weight_59 <= weight[4];  
            weight_60 <= weight[3];  
            weight_61 <= weight[2];  
            weight_62 <= weight[1];  
            weight_63 <= weight[0];  
            
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
            w_32 <= 0;
            w_33 <= 0;
            w_34 <= 0;
            w_35 <= 0;
            w_36 <= 0;
            w_37 <= 0;
            w_38 <= 0;
            w_39 <= 0;
            w_40 <= 0;
            w_41 <= 0;
            w_42 <= 0;
            w_43 <= 0;
            w_44 <= 0;
            w_45 <= 0;
            w_46 <= 0;
            w_47 <= 0;
            w_48 <= 0;
            w_49 <= 0;
            w_50 <= 0;
            w_51 <= 0;
            w_52 <= 0;
            w_53 <= 0;
            w_54 <= 0;
            w_55 <= 0;
            w_56 <= 0;
            w_57 <= 0;
            w_58 <= 0;
            w_59 <= 0;
            w_60 <= 0;
            w_61 <= 0;
            w_62 <= 0;
            w_63 <= 0;

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
		    
		    if(weight_32 == 1) begin
		        w_32 <= in_32;
		    end else begin
		        w_32 <= (in_32 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_33 == 1) begin
		        w_33 <= in_33;
		    end else begin
		        w_33 <= (in_33 ^ 4'b1111) + 4'b0001;
		    end

		    if(weight_34 == 1) begin
		        w_34 <= in_34;
		    end else begin
		        w_34 <= (in_34 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_35 == 1) begin
		        w_35 <= in_35;
		    end else begin
		        w_35 <= (in_35 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_36 == 1) begin
		        w_36 <= in_36;
		    end else begin
		        w_36 <= (in_36 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_37 == 1) begin
		        w_37 <= in_37;
		    end else begin
		        w_37 <= (in_37 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_38 == 1) begin
		        w_38 <= in_38;
		    end else begin
		        w_38 <= (in_38 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_39 == 1) begin
		        w_39 <= in_39;
		    end else begin
		        w_39 <= (in_39 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_40 == 1) begin
		        w_40 <= in_40;
		    end else begin
		        w_40 <= (in_40 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_41 == 1) begin
		        w_41 <= in_41;
		    end else begin
		        w_41 <= (in_41 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_42 == 1) begin
		        w_42 <= in_42;
		    end else begin
		        w_42 <= (in_42 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_43 == 1) begin
		        w_43 <= in_43;
		    end else begin
		        w_43 <= (in_43 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_44 == 1) begin
		        w_44 <= in_44;
		    end else begin
		        w_44 <= (in_44 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_45 == 1) begin
		        w_45 <= in_45;
		    end else begin
		        w_45 <= (in_45 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_46 == 1) begin
		        w_46 <= in_46;
		    end else begin
		        w_46 <= (in_46 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_47 == 1) begin
		        w_47 <= in_47;
		    end else begin
		        w_47 <= (in_47 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_48 == 1) begin
		        w_48 <= in_48;
		    end else begin
		        w_48 <= (in_48 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_49 == 1) begin
		        w_49 <= in_49;
		    end else begin
		        w_49 <= (in_49 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_50 == 1) begin
		        w_50 <= in_50;
		    end else begin
		        w_50 <= (in_50 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_51 == 1) begin
		        w_51 <= in_51;
		    end else begin
		        w_51 <= (in_51 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_52 == 1) begin
		        w_52 <= in_52;
		    end else begin
		        w_52 <= (in_52 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_53 == 1) begin
		        w_53 <= in_53;
		    end else begin
		        w_53 <= (in_53 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_54 == 1) begin
		        w_54 <= in_54;
		    end else begin
		        w_54 <= (in_54 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_55 == 1) begin
		        w_55 <= in_55;
		    end else begin
		        w_55 <= (in_55 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_56 == 1) begin
		        w_56 <= in_56;
		    end else begin
		        w_56 <= (in_56 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_57 == 1) begin
		        w_57 <= in_57;
		    end else begin
		        w_57 <= (in_57 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_58 == 1) begin
		        w_58 <= in_58;
		    end else begin
		        w_58 <= (in_58 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_59 == 1) begin
		        w_59 <= in_59;
		    end else begin
		        w_59 <= (in_59 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_60 == 1) begin
		        w_60 <= in_60;
		    end else begin
		        w_60 <= (in_60 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_61 == 1) begin
		        w_61 <= in_61;
		    end else begin
		        w_61 <= (in_61 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_62 == 1) begin
		        w_62 <= in_62;
		    end else begin
		        w_62 <= (in_62 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(weight_63 == 1) begin
		        w_63 <= in_63;
		    end else begin
		        w_63 <= (in_63 ^ 4'b1111) + 4'b0001;
		    end
		    
		    if(bias == 1) begin
		        b <= 10'b0000000001;
		    end else begin
		        b <= 10'b1111111111;
		    end

        end else if(count == 1) begin
            fc_sum  <= {{6{w_0[3]}}, w_0}
                     + {{6{w_1[3]}}, w_1}
                     + {{6{w_2[3]}}, w_2}
                     + {{6{w_3[3]}}, w_3}
                     + {{6{w_4[3]}}, w_4}
                     + {{6{w_5[3]}}, w_5}
                     + {{6{w_6[3]}}, w_6}
                     + {{6{w_7[3]}}, w_7}
                     + {{6{w_8[3]}}, w_8}
                     + {{6{w_9[3]}}, w_9}
                     + {{6{w_10[3]}}, w_10}
                     + {{6{w_11[3]}}, w_11}
                     + {{6{w_12[3]}}, w_12}
                     + {{6{w_13[3]}}, w_13}
                     + {{6{w_14[3]}}, w_14}
                     + {{6{w_15[3]}}, w_15}
                     + {{6{w_16[3]}}, w_16}        
                     + {{6{w_17[3]}}, w_17}        
                     + {{6{w_18[3]}}, w_18}        
                     + {{6{w_19[3]}}, w_19}        
                     + {{6{w_20[3]}}, w_20}        
                     + {{6{w_21[3]}}, w_21}        
                     + {{6{w_22[3]}}, w_22}        
                     + {{6{w_23[3]}}, w_23}        
                     + {{6{w_24[3]}}, w_24}        
                     + {{6{w_25[3]}}, w_25}        
                     + {{6{w_26[3]}}, w_26}        
                     + {{6{w_27[3]}}, w_27}        
                     + {{6{w_28[3]}}, w_28}        
                     + {{6{w_29[3]}}, w_29}        
                     + {{6{w_30[3]}}, w_30}        
                     + {{6{w_31[3]}}, w_31}
                     + {{6{w_32[3]}}, w_32}
                     + {{6{w_33[3]}}, w_33}
                     + {{6{w_34[3]}}, w_34}
                     + {{6{w_35[3]}}, w_35}
                     + {{6{w_36[3]}}, w_36}
                     + {{6{w_37[3]}}, w_37}
                     + {{6{w_38[3]}}, w_38}
                     + {{6{w_39[3]}}, w_39}
                     + {{6{w_40[3]}}, w_40}
                     + {{6{w_41[3]}}, w_41}
                     + {{6{w_42[3]}}, w_42}
                     + {{6{w_43[3]}}, w_43}
                     + {{6{w_44[3]}}, w_44}
                     + {{6{w_45[3]}}, w_45}
                     + {{6{w_46[3]}}, w_46}
                     + {{6{w_47[3]}}, w_47}                     
                     + {{6{w_48[3]}}, w_48}                     
                     + {{6{w_49[3]}}, w_49}                     
                     + {{6{w_50[3]}}, w_50}                     
                     + {{6{w_51[3]}}, w_51}                     
                     + {{6{w_52[3]}}, w_52}                     
                     + {{6{w_53[3]}}, w_53}                     
                     + {{6{w_54[3]}}, w_54}                     
                     + {{6{w_55[3]}}, w_55}                     
                     + {{6{w_56[3]}}, w_56}                     
                     + {{6{w_57[3]}}, w_57}                     
                     + {{6{w_58[3]}}, w_58}                     
                     + {{6{w_59[3]}}, w_59}                     
                     + {{6{w_60[3]}}, w_60}                     
                     + {{6{w_61[3]}}, w_61}                     
                     + {{6{w_62[3]}}, w_62}   
                     + {{6{w_63[3]}}, w_63}                     
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
