module FA_1bit(a,b,cin,cout,sum);
  input a,b,cin;
  output cout, sum;
  xor(sum,cin,a,b);
  and(w1,b,a);
  and(w2,a,cin);
  and(w3,b,cin);
  or(cout,w2,w3,w1);
endmodule
  
module test_FA_1bit();
  reg _a,_b,_cin;
  wire _cout,_sum;

  FA_1bit m0(.cin(_cin),.a(_a),.b(_b), .sum(_sum),.cout(_cout));
  
  initial begin
    _cin=1'b0; _a=1'b0; _b=1'b0;
    #20
    _cin=1'b1; _a=1'b0; _b=1'b0;
    #20
    _cin=1'b0; _a=1'b0; _b=1'b1;
    #20
    _cin=1'b1; _a=1'b0; _b=1'b1;
    #20
    _cin=1'b0; _a=1'b1; _b=1'b0;
    #20
    _cin=1'b1; _a=1'b1; _b=1'b0;
    #20
    _cin=1'b0; _a=1'b1; _b=1'b1;
    #20
    _cin=1'b1; _a=1'b1; _b=1'b1;
  end
endmodule
    