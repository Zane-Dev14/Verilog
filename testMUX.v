module testMUX();
reg i0,i1,i2,i3,s1,s0;
wire y;
designMUX muxx(i0,i1,i2,i3,s1,s0,y);
initial begin
$display("I0\tI1\tI2\tI3\tS1\tS0\tOutput");
$monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b",i0,i1,i2,i3,s1,s0,y);
$dumpfile("MUX.vcd");
$dumpvars(0);
        i0 = 0; i1 = 0; i2 = 0; i3 = 0; s1 = 0; s0 = 0;
i0=1;s1=0;s0=0;#10;
i1=1;s1=0;s0=1;#10;
i2=1;s1=1;s0=0;#10;
i3=1;s1=1;s0=1;#10;
end
endmodule;
