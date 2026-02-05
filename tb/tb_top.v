`timescale 1ns / 1ps

module tb_top;
    
    reg clk, rstn, IN;
    wire OUT;
    
    
    TOP T1(
    .clk(clk),
    .rstn(rstn),
    .A(IN),
    .D(OUT) 
    );
    
    //10ns period 
    initial begin
     clk = 0;
     forever #5 clk = ~clk;
     end
    
    //Simulation
    initial begin
        rstn = 0;
        IN = 0;
        
        #10 
        rstn = 1;
        #10
        IN = 1;
        #15
        IN = 0;
        #50;
        $finish;
    end
endmodule
