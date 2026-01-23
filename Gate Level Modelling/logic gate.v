module logic_gates(input a,b,
                output ya,yb,yc,yd,ye,yf,yg);
  and(ya,a,b);
  or(yb,a,b);
  not(yc,a);
  nand(yd,a,b);
  nor(ye,a,b);
  xor(yf,a,b);
  xnor(yg,a,b);
endmodule
  
