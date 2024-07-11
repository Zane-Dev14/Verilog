module testDEMUX();
reg s1,s0;
wire i3,i2,i1,i0;
designDEMUX deMux(s1,s0,i3,i2,i1,i0);
initial begin
$display("I0\tI1\tI2\tI3\tS1\tS0\tOutput");
$monitor("%b\t%b\t%b\t%b\t%b\t%b",i0,i1,i2,i3,s1,s0);
$dumpfile("DEMUX.vcd");
$dumpvars(0);
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
end;
endmodule
