module testFA();
reg a,b,cin;
wire s,cout;
designFA uut(.a(a),.b(b),.cin(cin),.s(s),.cout);
initial begin
$display("A\tB\tCin\tSum\tCout");
$monitor("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
$dumpfile("FA.vcd");
$dumpvars(1);
a=0;b=0;cin=0;#10;
a=0;b=0;cin=1;#10;
a=0;b=1;cin=0;#10;
a=0;b=1;cin=1;#10;
a=1;b=0;cin=0;#10;
a=1;b=0;cin=1;#10;
a=1;b=1;cin=0;#10;
a=1;b=1;cin=1;#10;
end;
endmodule
