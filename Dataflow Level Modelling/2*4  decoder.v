module decoder(
  input en,a,b,
  output y0,y1,y2,y3
);
  assign y0= en&~a&~b;
  assign y1=en&~a&b;
  assign y2=en&a&~b;
  assign y3=en&a&b;
endmodule
