module mux4to1_tb;
reg i0, i1, i2, i3;
reg [1:0]s;
wire y;
mux4to1 dut(
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.s(s),
.y(y)
);
initial begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, mux4to1_tb);
        $display("Time | s | i0 i1 i2 i3 | y");
        $monitor("%0t | %b | %b  %b  %b  %b | %b",$time, s, i0, i1, i2, i3, y);

        i0 = 1'b0;
        i1 = 1'b1;
        i2 = 1'b0;
        i3 = 1'b1;

        s = 2'b00; #10;   
        s = 2'b01; #10;
        s = 2'b10; #10;   
        s = 2'b11; #10;  
        $finish;
end 
endmodule

