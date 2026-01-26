module decoder(
  input en,a,b,
  output y0,y1,y2,y3
);
  assign y0= en&~a&~b;
  assign y1=en&~a&b;
  assign y2=en&a&~b;
  assign y3=en&a&b;
endmodule


        //or

module decoder(
  input en,a,b,
  output[3:0] y
);
  assign y[0]= en&~a&~b,y[1]=en&~a&b, y[2]=en&a&~b,y[3]=en&a&b;
endmodule






