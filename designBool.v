module boole(input a,b,c,output y);
wire p1,p2,p3;
assign y=p1+p2+p3;
and(p1,a,b);
and(p2,b,c);
and(p3,a,c);
endmodule
