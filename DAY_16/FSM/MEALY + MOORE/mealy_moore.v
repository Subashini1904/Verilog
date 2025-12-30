module seq_10101_mealy_moore (
input clk,
input rst,
input x,
output reg z_mealy,
output reg z_moore
);
reg [2:0] m_state, m_next;
parameter M0 = 3'b000,
          M1 = 3'b001, 
          M2 = 3'b010, 
          M3 = 3'b011,
          M4 = 3'b100; 
always @(*) begin
    z_mealy = 0;
    case (m_state)
        M0: m_next = x ? M1 : M0;
        M1: m_next = x ? M1 : M2;
        M2: m_next = x ? M3 : M0;
        M3: m_next = x ? M1 : M4;
        M4: begin
            if (x) begin
                z_mealy = 1;     
                m_next = M1;     
            end else
                m_next = M0;
        end
        default: m_next = M0;
    endcase
end
always @(posedge clk or posedge rst) begin
    if (rst)
        m_state <= M0;
    else
        m_state <= m_next;
end

reg [2:0] mo_state, mo_next;
parameter S0 = 3'b000, 
          S1 = 3'b001, 
          S2 = 3'b010, 
          S3 = 3'b011, 
          S4 = 3'b100, 
          S5 = 3'b101; 
always @(*) begin
    case (mo_state)
        S0: mo_next = x ? S1 : S0;
        S1: mo_next = x ? S1 : S2;
        S2: mo_next = x ? S3 : S0;
        S3: mo_next = x ? S1 : S4;
        S4: mo_next = x ? S5 : S0;
        S5: mo_next = x ? S1 : S2; 
        default: mo_next = S0;
    endcase
end
always @(posedge clk or posedge rst) begin
    if (rst)
        mo_state <= S0;
    else
        mo_state <= mo_next;
end
always @(*) begin
    if (mo_state == S5)
        z_moore = 1;
    else
        z_moore = 0;
end
endmodule


//OUTPUT//
T=0 x=0 Mealy=0 Moore=0
T=20 x=1 Mealy=0 Moore=0
T=30 x=0 Mealy=0 Moore=0
T=40 x=1 Mealy=0 Moore=0
T=50 x=0 Mealy=0 Moore=0
T=60 x=1 Mealy=1 Moore=0
T=65 x=1 Mealy=0 Moore=1
T=70 x=0 Mealy=0 Moore=1
T=75 x=0 Mealy=0 Moore=0
T=80 x=1 Mealy=0 Moore=0
