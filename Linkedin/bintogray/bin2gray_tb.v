`timescale 1ns/1ps
module bin2gray_tb;
    reg  [3:0] b;
    wire [3:0] g;
    bintogray dut (.b(b),.g(g) );
    initial begin
        $dumpfile("bin2gray.vcd");
        $dumpvars(0, bin2gray_tb);
        b = 4'b0000; #10;   //0 
        b = 4'b0001; #10;   //1 
        b = 4'b0010; #10;   //2
        b = 4'b0011; #10;   //3
        b = 4'b0100; #10;   //4
        b = 4'b0101; #10;   //5
        b = 4'b0110; #10;   //6
        b = 4'b0111; #10;   //7
        b = 4'b1000; #10;   //8
        b=  4'b1001;#10 ;   //9
        b =4'b1010; #10;    //10-A
        b=4'b1011; #10;     //11-B
        b=4'b1100;#10;      //12-C
        b=4'b1101; #10;     //13-D
        b=4'b1110; #10;     //14-E
        b=4'b1111; #10;     //15-F

        $finish;
    end

endmodule
