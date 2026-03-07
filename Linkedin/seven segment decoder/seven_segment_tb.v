module seven_segemnt_tb;

reg  [3:0] bcd;
wire [6:0] seg;

seven_segment uut (
    .bcd(bcd),
    .seg(seg)
);

initial begin
    $dumpfile("seven_segment.vcd");
    $dumpvars(0, seven_segemnt_tb);

    bcd = 4'b0000; #10;
    bcd = 4'b0001; #10;
    bcd = 4'b0010; #10;
    bcd = 4'b0011; #10;
    bcd = 4'b0100; #10;
    bcd = 4'b0101; #10;
    bcd = 4'b0110; #10;
    bcd = 4'b0111; #10;
    bcd = 4'b1000; #10;
    bcd = 4'b1001; #10;

    $finish;
end

endmodule
