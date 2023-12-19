`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2023 01:15:15 PM
// Design Name: 
// Module Name: test_pipeline
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


module test_pipeline();
    reg clk, rst;
    reg [4:0] buttons;
    reg [15:0] switches;
    
    OTTER_Wrapper DUT (   
        .clk            (clk),              // 100 MHz clock
        .buttons        (buttons),  
        .switches       (switches),  
        .leds           (),
        .segs           (), 
        .an             ()
    );

    always begin
    #10 clk = ~clk; 
    end  

    initial begin
        clk = 0; switches = 16'h0000;
//        buttons = 5'b01000;
        #11;
        buttons = 5'b00000;
        #400;
        $finish;
    end

endmodule
