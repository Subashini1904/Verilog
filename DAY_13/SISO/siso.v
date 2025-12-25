module siso(
input clk,
input rst,
input serial_in,
output serial_out
);
reg q0, q1, q2, q3;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q0 <= 0;
            q1 <= 0;
            q2 <= 0;
            q3 <= 0;
        end else begin
            q0 <= serial_in; 
            q1 <= q0;
            q2 <= q1;
            q3 <= q2;
        end
    end
    assign serial_out = q3;
endmodule


//OUTPUT//
Time=0 | In=0 | Out=0
Time=20 | In=1 | Out=0
Time=30 | In=0 | Out=0
Time=40 | In=1 | Out=0
Time=55 | In=1 | Out=1
Time=65 | In=1 | Out=0
