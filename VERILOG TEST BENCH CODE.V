module test_4_bit;
reg [3:0] A, B;
reg C0;
wire [3:0] S;
wire C4;

four_bit_adder dut(A, B, C0, S, C4);

initial begin
A = 4'b0011; B = 4'b0011; C0 = 1'b0;
#10;
A = 4'b1011; B = 4'b0011; C0 = 1'b1;
#10;
A = 4'b1111; B = 4'b1111; C0 = 1'b1;
#10;
#50 $finish;
end
endmodule
