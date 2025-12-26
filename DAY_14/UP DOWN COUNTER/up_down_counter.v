module up_down_counter (
input clk,
input rst,
input up_down,
output reg [3:0] count
);
always @(posedge clk) begin
    if (rst)
        count <= 4'b0000;
    else if (up_down)
        count <= count + 1;   
    else
        count <= count - 1;  
end
endmodule

//OUTPUT//
Time=0 up_down=1 count=xxxx
Time=5 up_down=1 count=0000
Time=15 up_down=1 count=0001
Time=25 up_down=1 count=0010
Time=35 up_down=1 count=0011
Time=45 up_down=1 count=0100
Time=55 up_down=1 count=0101
Time=60 up_down=0 count=0101
Time=65 up_down=0 count=0100
Time=75 up_down=0 count=0011
Time=85 up_down=0 count=0010
Time=95 up_down=0 count=0001
