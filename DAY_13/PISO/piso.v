module piso_dff (
input clk,
input rst,
input load,
input [3:0] parallel_in,
output serial_out
);
reg q0, q1, q2, q3;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        q0 <= 0;
        q1 <= 0;
        q2 <= 0;
        q3 <= 0;
    end
    else if (load) begin
        q0 <= parallel_in[0];
        q1 <= parallel_in[1];
        q2 <= parallel_in[2];
        q3 <= parallel_in[3];
    end
    else begin
        q3 <= q2;
        q2 <= q1;
        q1 <= q0;
        q0 <= 1'b0;   
    end
end
assign serial_out = q3; 
endmodule



//OUTPUT//
Time=0 Load=0 Parallel=0000 Serial_out=0
Time=20 Load=1 Parallel=1011 Serial_out=0
Time=25 Load=1 Parallel=1011 Serial_out=1
Time=30 Load=0 Parallel=1011 Serial_out=1
Time=35 Load=0 Parallel=1011 Serial_out=0
Time=45 Load=0 Parallel=1011 Serial_out=1
Time=65 Load=0 Parallel=1011 Serial_out=0
