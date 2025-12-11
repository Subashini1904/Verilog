module bcd_adder_tb;
reg  [3:0] a, b;
reg        cin;
wire [3:0] sum;
wire       cout;
bcd_adder dut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);
initial begin
    $dumpfile("bcd_adder.vcd");
    $dumpvars(0, bcd_adder_tb);
    $monitor("time=%0t | a=%b (%0d)  b=%b (%0d)  cin=%b | sum=%b (%0d) cout=%b", $time, a, a, b, b, cin, sum, sum, cout);
    a = 4'd3; b = 4'd4; cin = 0; #10;  
    a = 4'd5; b = 4'd5; cin = 0; #10;
    a = 4'd9; b = 4'd1; cin = 0; #10; 
    a = 4'd8; b = 4'd9; cin = 1; #10;  
    a = 4'd4; b = 4'd6; cin = 0; #10;  
    $finish;
end
endmodule

