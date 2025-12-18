// 3-bit SISO (Serial-In Serial-Out) Shift Register
module Shift_register (
    input  wire clk,        // clock input
    input  wire rst,        // synchronous reset
    input  wire serial_in,  // serial input bit
    output wire serial_out  // serial output bit
);

    reg [2:0] q;  // internal 3-bit storage

    always @(posedge clk) begin
        if (rst)
            q <= 3'b000;                // clear register
        else
            q <= {q[1:0], serial_in};   // shift left
    end

    assign serial_out = q[2];  // MSB is the SISO output

endmodule

