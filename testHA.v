module testHA();
reg a,b;
wire s,c;
HADesign uut(.a(a),.b(b),.s(s),.c(c));
initial begin
$display("A\tB\tSum\tCout");
$monitor("%b\t%b\t%b\t%b",a,b,s,c);
$dumpfile("HA.vcd");
$dumpvars();
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end
endmodule;
