module binadder_tb;

reg  [3:0] A, B;
reg        Cin;
wire [3:0] Sum;
wire       Cout;

binadder uut (A, B, Cin, Sum, Cout);
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, binadder_tb);
    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10 A = 4'b0101; B = 4'b0011; Cin = 0;
    #10 A = 4'b1111; B = 4'b0001; Cin = 0;
    #10 A = 4'b1010; B = 4'b0101; Cin = 1;
    #10 $finish;
end

endmodule
