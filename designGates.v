module gate(input a,b,output OR,AND,NAND,NOR,NOT,XOR,XNOR);
or(OR,a,b);
and(AND,a,b);
nand(NAND,a,b);
nor(NOR,a,b);
not(NOT,a);
xor(XOR,a,b);
xnor(XNOR,a,b);
endmodule
