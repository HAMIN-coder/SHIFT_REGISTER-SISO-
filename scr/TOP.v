`timescale 1ns / 1ps


module TOP(
    input wire clk,
    input wire rstn,
    input wire A,
    output wire D 
    );
    
    wire B,C;
    
    flipflop U0( .clk(clk), .rstn(rstn), .I(A), .O(B));
    flipflop U1( .clk(clk), .rstn(rstn), .I(B), .O(C));
    flipflop U2( .clk(clk), .rstn(rstn), .I(C), .O(D));
    
    
endmodule
