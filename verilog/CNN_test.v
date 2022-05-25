`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/24 23:30:08
// Design Name: 
// Module Name: CNN_test
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


module CNN_test();
    reg clk;
    reg reset;
    reg start_flag;
    reg [7055:0] in;//7056

    wire [14:0] out_0;//15
    wire [14:0] out_1;
    wire [14:0] out_2;
    wire [14:0] out_3;
    wire [14:0] out_4;
    wire [14:0] out_5;
    wire [14:0] out_6;
    wire [14:0] out_7;
    wire [14:0] out_8;
    wire [14:0] out_9;
    
    wire end_flag;
    
    CNN net(
        .clk(clk),
        .reset(reset),
        .start_flag(start_flag),
        .in(in),
        .out_0(out_0),
        .out_1(out_1),
        .out_2(out_2),
        .out_3(out_3),
        .out_4(out_4),
        .out_5(out_5),
        .out_6(out_6),
        .out_7(out_7),
        .out_8(out_8),
        .out_9(out_9),        
        .end_flag(end_flag)
        );
        
    `include "mnist.vh"
            
    parameter RATE = 20;
    
    always begin
        clk = 0; #(RATE/2);
        clk = 1; #(RATE/2);
    end
    
    initial begin
        clk = 0;
        start_flag = 0;
        
        #100
        
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_0};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
		
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_1};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);

        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_2};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);

        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_3};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
		
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_4};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_5};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_6};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_7};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_8};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_9};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_10};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_11};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_12};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_13};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_14};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_15};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_16};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_17};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_18};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_19};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_20};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_21};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_22};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_23};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_24};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_25};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_26};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_27};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_28};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_29};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_30};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_31};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_32};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_33};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_34};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_35};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_36};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_37};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_38};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_39};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_40};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_41};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_42};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_43};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_44};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_45};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_46};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_47};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_48};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_49};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_50};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_51};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_52};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_53};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_54};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_55};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_56};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_57};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_58};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_59};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_60};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_61};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_62};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_63};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_64};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_65};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_66};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_67};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_68};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_69};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_70};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_71};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_72};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_73};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_74};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_75};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_76};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_77};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_78};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_79};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_80};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_81};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_82};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_83};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_84};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_85};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_86};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_87};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_88};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_89};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_90};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_91};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_92};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_93};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_94};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_95};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_96};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_97};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_98};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
        repeat(5) @(posedge clk);
		repeat(1) @(posedge clk);
		reset = 1;
        in = {data_99};
		repeat(1) @(posedge clk);
		reset = 0;
		start_flag = 1;
		repeat(1) @(posedge clk);
		start_flag = 0;
		repeat(75) @(posedge clk);
	
		$finish;
	end
	
//	    initial begin
//        clk = 0;
//        reset = 1;
//        start_flag = 0;
        
//        in = {data_0};

//        #100
        
//        repeat(5) @(posedge clk);
//		repeat(1) @(posedge clk);
//		reset = 0;
//		start_flag = 1;
//		repeat(1) @(posedge clk);
//		start_flag = 0;
//		repeat(100) @(posedge clk);
//		$finish;
//	end

endmodule
