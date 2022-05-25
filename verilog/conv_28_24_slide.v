`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:21:29
// Design Name: 
// Module Name: conv_28_24_slide
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


module conv_28_24_slide(
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
    input [1259:0] in; //9*28*5=1260
    
    output [359:0] out; //15*24=360
    output end_flag;
    
    reg [224:0] in_0_4; //225
    reg [224:0] in_1_5;
    reg [224:0] in_2_6;
    reg [224:0] in_3_7;
    reg [224:0] in_4_8;
    reg [224:0] in_5_9;
    reg [224:0] in_6_10;
    reg [224:0] in_7_11;
    reg [224:0] in_8_12;
    reg [224:0] in_9_13;
    reg [224:0] in_10_14;
    reg [224:0] in_11_15;
    reg [224:0] in_12_16;
    reg [224:0] in_13_17;
    reg [224:0] in_14_18;
    reg [224:0] in_15_19;
    reg [224:0] in_16_20;
    reg [224:0] in_17_21;
    reg [224:0] in_18_22;
    reg [224:0] in_19_23;
    reg [224:0] in_20_24;
    reg [224:0] in_21_25;
    reg [224:0] in_22_26;
    reg [224:0] in_23_27;
    
    reg [359:0] out_reg; //360
    reg end_reg;
    reg start_flag_cul;
    reg [1:0] count;

    wire [14:0] out_0_4;//15
    wire [14:0] out_1_5;
    wire [14:0] out_2_6;
    wire [14:0] out_3_7;
    wire [14:0] out_4_8;
    wire [14:0] out_5_9;
    wire [14:0] out_6_10;
    wire [14:0] out_7_11;
    wire [14:0] out_8_12;
    wire [14:0] out_9_13;
    wire [14:0] out_10_14;
    wire [14:0] out_11_15;
    wire [14:0] out_12_16;
    wire [14:0] out_13_17;
    wire [14:0] out_14_18;
    wire [14:0] out_15_19;
    wire [14:0] out_16_20;
    wire [14:0] out_17_21;
    wire [14:0] out_18_22;
    wire [14:0] out_19_23;
    wire [14:0] out_20_24;
    wire [14:0] out_21_25;
    wire [14:0] out_22_26;
    wire [14:0] out_23_27;
    
    wire [23:0] end_flag_cul;
    
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
            in_0_4 <= 0;
            in_1_5 <= 0;
            in_2_6 <= 0;
            in_3_7 <= 0;
            in_4_8 <= 0;
            in_5_9 <= 0;
            in_6_10 <= 0;
            in_7_11 <= 0;
            in_8_12 <= 0;
            in_9_13 <= 0;
            in_10_14 <= 0;
            in_11_15 <= 0;
            in_12_16 <= 0;
            in_13_17 <= 0;
            in_14_18 <= 0;
            in_15_19 <= 0;
            in_16_20 <= 0;
            in_17_21 <= 0;
            in_18_22 <= 0;
            in_19_23 <= 0;
            in_20_24 <= 0;
            in_21_25 <= 0;
            in_22_26 <= 0;
            in_23_27 <= 0;
                
        end else if(start_flag) begin
            in_0_4 <= {in[1259:1215], in[1007:963], in[755:711], in[503:459] ,in[251:207]};
            in_1_5 <= {in[1250:1206], in[998:954], in[746:702], in[494:450] ,in[242:198]};
            in_2_6 <= {in[1241:1197], in[989:945], in[737:693], in[485:441] ,in[233:189]};
            in_3_7 <= {in[1232:1188], in[980:936], in[728:684], in[476:432] ,in[224:180]};
            in_4_8 <= {in[1223:1179], in[971:927], in[719:675], in[467:423] ,in[215:171]};
            in_5_9 <= {in[1214:1170], in[962:918], in[710:666], in[458:414] ,in[206:162]};
            in_6_10 <= {in[1205:1161], in[953:909], in[701:657], in[449:405] ,in[197:153]};
            in_7_11 <= {in[1196:1152], in[944:900], in[692:648], in[440:396] ,in[188:144]};
            in_8_12 <= {in[1187:1143], in[935:891], in[683:639], in[431:387] ,in[179:135]};
            in_9_13 <= {in[1178:1134], in[926:882], in[674:630], in[422:378] ,in[170:126]};
            in_10_14 <= {in[1169:1125], in[917:873], in[665:621], in[413:369] ,in[161:117]};
            in_11_15 <= {in[1160:1116], in[908:864], in[656:612], in[404:360] ,in[152:108]};
            in_12_16 <= {in[1151:1107], in[899:855], in[647:603], in[395:351] ,in[143:99]};
            in_13_17 <= {in[1142:1098], in[890:846], in[638:594], in[386:342] ,in[134:90]};
            in_14_18 <= {in[1133:1089], in[881:837], in[629:585], in[377:333] ,in[125:81]};
            in_15_19 <= {in[1124:1080], in[872:828], in[620:576], in[368:324] ,in[116:72]};
            in_16_20 <= {in[1115:1071], in[863:819], in[611:567], in[359:315] ,in[107:63]};
            in_17_21 <= {in[1106:1062], in[854:810], in[602:558], in[350:306] ,in[98:54]};
            in_18_22 <= {in[1097:1053], in[845:801], in[593:549], in[341:297] ,in[89:45]};
            in_19_23 <= {in[1088:1044], in[836:792], in[584:540], in[332:288] ,in[80:36]};
            in_20_24 <= {in[1079:1035], in[827:783], in[575:531], in[323:279] ,in[71:27]};
            in_21_25 <= {in[1070:1026], in[818:774], in[566:522], in[314:270] ,in[62:18]};
            in_22_26 <= {in[1061:1017], in[809:765], in[557:513], in[305:261] ,in[53:9]};
            in_23_27 <= {in[1052:1008], in[800:756], in[548:504], in[296:252] ,in[44:0]};
        end
    end
    
	always @( posedge clk ) begin
		if(reset) begin
		    start_flag_cul <= 0;
		end else if(count == 0) begin
			start_flag_cul <= 1;
		end else begin
			start_flag_cul <= 0;
		end
	end


 
    filter_28_24 filter_0_4(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_0_4), 
		.out(out_0_4), 
		.end_flag(end_flag_cul[0])
	);

    filter_28_24 filter_1_5(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_1_5), 
		.out(out_1_5), 
		.end_flag(end_flag_cul[1])
	);
	
    filter_28_24 filter_2_6(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_2_6), 
		.out(out_2_6), 
		.end_flag(end_flag_cul[2])
	);
	
    filter_28_24 filter_3_7(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_3_7), 
		.out(out_3_7), 
		.end_flag(end_flag_cul[3])
	);
	
    filter_28_24 filter_4_8(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_4_8), 
		.out(out_4_8), 
		.end_flag(end_flag_cul[4])
	);
	
    filter_28_24 filter_5_9(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_5_9), 
		.out(out_5_9), 
		.end_flag(end_flag_cul[5])
	);
	
    filter_28_24 filter_6_10(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_6_10), 
		.out(out_6_10), 
		.end_flag(end_flag_cul[6])
	);
	
    filter_28_24 filter_7_11(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_7_11), 
		.out(out_7_11), 
		.end_flag(end_flag_cul[7])
	);
	
    filter_28_24 filter_8_12(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_8_12), 
		.out(out_8_12), 
		.end_flag(end_flag_cul[8])
	);
	
    filter_28_24 filter_9_13(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_9_13), 
		.out(out_9_13), 
		.end_flag(end_flag_cul[9])
	);
	
    filter_28_24 filter_10_14(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_10_14), 
		.out(out_10_14), 
		.end_flag(end_flag_cul[10])
	);
	
    filter_28_24 filter_11_15(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_11_15), 
		.out(out_11_15), 
		.end_flag(end_flag_cul[11])
	);
	
    filter_28_24 filter_12_16(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_12_16), 
		.out(out_12_16), 
		.end_flag(end_flag_cul[12])
	);
	
    filter_28_24 filter_13_17(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_13_17), 
		.out(out_13_17), 
		.end_flag(end_flag_cul[13])
	);
	
    filter_28_24 filter_14_18(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_14_18), 
		.out(out_14_18), 
		.end_flag(end_flag_cul[14])
	);
	
    filter_28_24 filter_15_19(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_15_19), 
		.out(out_15_19), 
		.end_flag(end_flag_cul[15])
	);
	
    filter_28_24 filter_16_20(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_16_20), 
		.out(out_16_20), 
		.end_flag(end_flag_cul[16])
	);
	
    filter_28_24 filter_17_21(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_17_21), 
		.out(out_17_21), 
		.end_flag(end_flag_cul[17])
	);
	
    filter_28_24 filter_18_22(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_18_22), 
		.out(out_18_22), 
		.end_flag(end_flag_cul[18])
	);
	
    filter_28_24 filter_19_23(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_19_23), 
		.out(out_19_23), 
		.end_flag(end_flag_cul[19])
	);
	
    filter_28_24 filter_20_24(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_20_24), 
		.out(out_20_24), 
		.end_flag(end_flag_cul[20])
	);
	
    filter_28_24 filter_21_25(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_21_25), 
		.out(out_21_25), 
		.end_flag(end_flag_cul[21])
	);
	
    filter_28_24 filter_22_26(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_22_26), 
		.out(out_22_26), 
		.end_flag(end_flag_cul[22])
	);
	
    filter_28_24 filter_23_27(
		.clk(clk), 
		.reset(reset), 
		.start_flag(start_flag_cul), 
		.in(in_23_27), 
		.out(out_23_27), 
		.end_flag(end_flag_cul[23])
	);

    always @(posedge clk) begin
        if(reset) begin
            end_reg <= 0;
            out_reg <= 0;
            
        end else if(end_flag_cul == 24'b11111111_11111111_11111111)begin
            end_reg <= 1;
            out_reg <= {out_0_4,
                        out_1_5,
                        out_2_6,
                        out_3_7,
                        out_4_8,
                        out_5_9,
                        out_6_10,
                        out_7_11,
                        out_8_12,
                        out_9_13,
                        out_10_14,
                        out_11_15,
                        out_12_16,
                        out_13_17,
                        out_14_18,
                        out_15_19,
                        out_16_20,
                        out_17_21,
                        out_18_22,
                        out_19_23,
                        out_20_24,
                        out_21_25,
                        out_22_26,
                        out_23_27};

        end else begin
            end_reg <= 0;
        end
    end
    
    assign end_flag = end_reg;
    assign out = out_reg;

endmodule
