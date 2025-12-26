module ring_counter_dff (
input clk,
input rst,
output reg q0, q1, q2, q3
);
always @(posedge clk) begin
    if (rst) begin
        q0 <= 1'b1;   
        q1 <= 1'b0;
        q2 <= 1'b0;
        q3 <= 1'b0;
    end
    else begin
        q3 <= q2;
        q2 <= q1;
        q1 <= q0;
        q0 <= q3;    
    end
end
endmodule


//OUTPUT//
Time=0 Q3Q2Q1Q0=xxxx
Time=5 Q3Q2Q1Q0=0001
Time=15 Q3Q2Q1Q0=0010
Time=25 Q3Q2Q1Q0=0100
Time=35 Q3Q2Q1Q0=1000
Time=45 Q3Q2Q1Q0=0001
Time=55 Q3Q2Q1Q0=0010
Time=65 Q3Q2Q1Q0=0100
Time=75 Q3Q2Q1Q0=1000
Time=85 Q3Q2Q1Q0=0001
Time=95 Q3Q2Q1Q0=0010
Time=105 Q3Q2Q1Q0=0100
