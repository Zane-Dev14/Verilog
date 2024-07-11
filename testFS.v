module testFS();
reg a,b,bin;
wire d,bout;
designFS fs(a,b,bin,d,bout);
initial begin
$display("A\tB\tBorrow In\tDifference\tBorrow Out");
$monitor("%b\t%b\t%b\t%b\t%b",a,b,bin,d,bout);
$dumpfile("FS.vcd");
$dumpvars(1);
a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;
end;
endmodule
