module comparator_tb;

reg  [1:0] a, b;
wire a_gt_b, a_eq_b, a_lt_b;

comparator uut (
    .a(a),
    .b(b),
    .a_gt_b(a_gt_b),
    .a_eq_b(a_eq_b),
    .a_lt_b(a_lt_b)
);

initial begin
    // Waveform dump
    $dumpfile("wave.vcd");
    $dumpvars(0, comparator_tb);

    $display(" a  b | gt eq lt");
    $display("--------------");

    a = 2'b00; b = 2'b10; #10;
    $display("%b %b |  %b  %b  %b", a, b, a_gt_b, a_eq_b, a_lt_b);

    a = 2'b11; b = 2'b01; #10;
    $display("%b %b |  %b  %b  %b", a, b, a_gt_b, a_eq_b, a_lt_b);

    a = 2'b10; b = 2'b10; #10;
    $display("%b %b |  %b  %b  %b", a, b, a_gt_b, a_eq_b, a_lt_b);

    $finish;
end

endmodule
