module gatetb();
reg a,b;
wire c,d,e,f,g,h,i;
gate mygate(.a(a),.b(b),.OR(c),.AND(d),.NAND(e),.NOR(f),.NOT(g),.XOR(h),.XNOR(i));
initial begin
$display("a\tb\tOR\tAND\tNAND\tNOR\tNOT\tXOR\tXNOR\n");
$monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",a,b,c,d,e,f,g,h,i);
$dumpfile("test.vcd");
$dumpvars;
a=0;b=0;
#10;
a=0;b=1;
#10;
a=1;b=0;
#10;
a=1;b=1;
#10;
a=0;b=0;
#10;
end
endmodule
