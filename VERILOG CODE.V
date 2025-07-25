module four_bit_adder(A, B, C0, S, C4);
input [3:0] A, B;
input C0;
output [3:0] S;
output C4;
wire C1, C2, C3;
full_adder fa0 (A[0], B[0], C0, S[0], C1);
full_adder fa1 (A[1], B[1], C1, S[1], C2);
full_adder fa2 (A[2], B[2], C2, S[2], C3);
full_adder fa3 (A[3], B[3], C3, S[3], C4);
endmodule

module full_adder(A, B, CIN, S, COUT);
input A, B, CIN;
output S, COUT;
assign S = A ^ B ^ CIN;
assign COUT = (A & B) | (CIN & (A ^ B));
endmodule
