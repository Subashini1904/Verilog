module partselect_tb;
 reg  [7:0] data;
 wire [3:0] partout;
 partselect dut (
 .data(data),
 .partout(partout)
 );
 initial begin
     $monitor("Time=%0t | data=%b | partout=%b", $time, data, partout);
        data = 8'b00000000; #10;
        data = 8'b11110000; #10;
        data = 8'b10101111; #10;
        data = 8'b01010000; #10;
 end
endmodule

