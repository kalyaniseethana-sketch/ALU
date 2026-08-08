//====================================================
// 8-bit Arithmetic Logic Unit (ALU)
//====================================================

module alu_8bit(
    input [7:0] A,
    input [7:0] B,
    input [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output Zero
);

always @(*) begin
    case(ALU_Sel)

        3'b000: ALU_Out = A + B;      // Addition
        3'b001: ALU_Out = A - B;      // Subtraction
        3'b010: ALU_Out = A & B;      // AND
        3'b011: ALU_Out = A | B;      // OR
        3'b100: ALU_Out = A ^ B;      // XOR
        3'b101: ALU_Out = ~A;         // NOT
        3'b110: ALU_Out = A << 1;     // Left Shift
        3'b111: ALU_Out = A >> 1;     // Right Shift

        default: ALU_Out = 8'b00000000;

    endcase
end

assign Zero = (ALU_Out == 8'b00000000);

endmodule