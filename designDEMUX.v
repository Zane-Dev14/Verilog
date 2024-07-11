module designDEMUX(input s1,s0,output i3,i2,i1,i0);
assign i3=s1&s0;
assign i2=s1&~s0;
assign i1=~s1&s0;
assign i0=~s1&~s0;
endmodule
