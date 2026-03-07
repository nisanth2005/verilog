module mux4to1_gate (
    input I0, I1, I2, I3,
    input S1, S0,
    output Y
);

wire S1_bar, S0_bar;
wire w1, w2, w3, w4;

// NOT gates
not (S1_bar, S1);
not (S0_bar, S0);

// AND gates
and (w1, I0, S1_bar, S0_bar);
and (w2, I1, S1_bar, S0);
and (w3, I2, S1, S0_bar);
and (w4, I3, S1, S0);

// OR gate
or (Y, w1, w2, w3, w4);

endmodule