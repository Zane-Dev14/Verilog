module designMUX(input i0,i1,i2,i3,s1,s0,output y);
assign y=(i0&~s1&~s0)+(i1&~s1&s0)+(i2&s1&~s0)+(i3&s1&s0);
endmodule
