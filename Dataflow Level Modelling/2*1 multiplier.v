module 2*1_mux(input a,b,sel,
               output y
              );
  assign y=(~sel&a|sel&b);
endmodule
