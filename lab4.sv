`timescale 1ns / 1ps


module lab4(
  input [1:0] a,
  input [1:0] b,
  output logic R,G,B 
    );
always_comb 
begin
     R= ((~a[0]) & (~a[1])) | (b[0] & b[1]) | ((~a[0]) & b[0]) | ((~a[0]) & b[1]) | ((~a[1]) & b[0]);
     G = ((~a[0]) & b[0]) | (a[1] & (~b[1])) | (a[0] & (~b[0])) | ((~a[1]) & b[1]);
     B = (a[0] & a[1]) | ((~b[0]) & (~b[1])) | (a[0] & ~b[1]) | (a[1] & (~b[0])) | (a[0] & (~b[0]));
end

endmodule

