module logic_gates(
  input a,b,
  output ya,yb,yc,yd,ye,yf,yg
);
  assign ya=a&b,yb=a|b, yc=~a,yd=~(a&b),ye=~(a|b),yf=a^b,yg=~(a^b);
endmodule
  
  
