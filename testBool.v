module bool_tb();
reg a,b,c;
wire y;
boole uut(.a(a),.b(b),.c(c),.y(y));
initial begin
$display("A\tB\tC\tY");
$monitor("%b\t%b\t%b\t%b",a,b,c,y);
$dumpfile("bool.vcd");
$dumpvars(1);
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
end;
endmodule
