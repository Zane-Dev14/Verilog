module designFS(input a,b,bin,output d,bout);
assign diff1=a^b;
xor(d,diff1,bin);
assign diff2=~a&b;
assign bout=diff2+(~diff1&bin);
endmodule;
