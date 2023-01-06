module mux1(s,a,b,f);
  input s,a,b;
  output f;
  wire w1,w2,w3;
  
  and(w2,a,w1);
  not(w1,s);
  and(w3,b,s);
  or(f,w2,w3);
  
endmodule

module mux2(A,B,C,D,S1,S0,F);
 input A,B,C,D,S0,S1;
 output F;
  mux1 m0(.a(A),.b(B),.s(S0),.f(w4));
  mux1 m1(.a(C),.b(D),.s(S0),.f(w5));
  mux1 m2(.a(w4),.b(w5),.s(S1),.f(F));
endmodule

module test_bench_second();
  reg _A,_B,_C,_D,_S1,_S0;
  wire _F;
  mux2 m3(.A(_A), .B(_B), .C(_C), .D(_D), .S0(_S0), .S1(_S1), .F(_F));
  initial begin
   _S0=1'b0; _S1=1'b0; _A=1'b1; _B=1'b0; _C=1'b0; _D=1'b0;
   #20
   _S0=1'b1; _S1=1'b0; _A=1'b0; _B=1'b1; _C=1'b0; _D=1'b0;
   #20
   _S0=1'b0; _S1=1'b1; _A=1'b0; _B=1'b0; _C=1'b1; _D=1'b0;
   #20
   _S0=1'b1; _S1=1'b1; _A=1'b0; _B=1'b0; _C=1'b0; _D=1'b1;
   #20
   _S0=1'b0; _S1=1'b0; _A=1'b0; _B=1'b1; _C=1'b1; _D=1'b1;
   #20
   _S0=1'b1; _S1=1'b0; _A=1'b1; _B=1'b0; _C=1'b1; _D=1'b1;
   #20
   _S0=1'b0; _S1=1'b1; _A=1'b1; _B=1'b1; _C=1'b0; _D=1'b1;
   #20
   _S0=1'b1; _S1=1'b1; _A=1'b1; _B=1'b1; _C=1'b1; _D=1'b0;
   
end
endmodule