`timescale 1ns / 1ps

module flipflop(
    input wire clk,
    input wire rstn,
    input wire I,
    output reg O
    );
    
    always @ (posedge clk or negedge rstn)begin
        if(!rstn) O <= 1'd0;
        else      O <= I;
    end
   
endmodule
