module full_adder(
  input a,b,c,
  output sum,carry
);
  assign sum=a^b^c,carry=a&b|b&c|a&c;
endmodule
