`timescale 1ns / 1ps

module main(
    input X4,
    input X3,
    input X2,
    input X1,
    input X0,
    output F
    );


wire a,b,c,d,e,f,g,h;
xor x1(a,X1,X0);
and a1(b,X1,X0);
decoder2x4 dec(X0,X1,c,_,_,_);
not n1(d,b);
not n2(f,c);
not n3(g,X1);
not n4(h,a);
mux8x3 mux(a,b,c,d,X0,f,g,h,X2,X3,X4,F);
endmodule
