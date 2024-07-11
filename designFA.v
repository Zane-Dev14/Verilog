module designFA(input a,b,cin,output s,cout);
wire p1,p2,p3;
assign p1=a^b;
assign p3=a&b;
assign s=p1^cin;
assign p2=p1&cin;
assign cout=p3+p2;
endmodule;
