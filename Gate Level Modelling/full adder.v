module full_adder(input a,b,c,
                  output sum,carry
                 );
                    wire w1,w2,w3;
  xor(sum,a,b,c);
  and(w1,a,c);
  and(w2,b,c);
  and(w3,a,b);
  or(carry,w1,w2,w3);
endmodule
  
