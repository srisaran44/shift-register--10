SERIAL-IN-SERIAL-OUT-SHIFTREGISTER
AIM:

To implement SISO Shift Register using verilog and validating their functionality using their functional tables

SOFTWARE REQUIRED:

Quartus prime

THEORY

SISO shift Register

A Serial-In Serial-Out shift register is a sequential logic circuit that allows data to be shifted in and out one bit at a time in a serial manner. It consists of a cascade of flip-flops connected in series, forming a chain. The input data is applied to the first flip-flop in the chain, and as the clock pulses, the data propagates through the flip-flops, ultimately appearing at the output.

The logic circuit provided below demonstrates a serial-in serial-out (SISO) shift register. It comprises four D flip-flops that are interconnected in a sequential manner. These flip-flops operate synchronously with one another, as they all receive the same clock signal.

image<img width="778" height="232" alt="Screenshot 2025-12-27 133648" src="https://github.com/user-attachments/assets/d70f451c-a3b5-441e-b8ab-0691b657e9d0" />


Figure 01 4 Bit SISO Register

The synchronous nature of the flip-flops ensures that the shifting of data occurs in a coordinated manner. When the clock signal rises, the input data is sampled and stored in the first flip-flop. On subsequent clock pulses, the stored data propagates through the flip-flops, moving from one flip-flop to the next. Each D flip-flop in the circuit has a Data (D) input, a Clock (CLK) input, and an output (Q). The D input represents the data to be loaded into the flip-flop, while the CLK input is connected to the common clock signal. The output (Q) of each flip-flop is connected to the D input of the next flip-flop, forming a cascade.

Procedure 1.Declare a Verilog module named EXP11 with input ports clk, rst, sin, and an output port q.

2.Declare input ports: clk for the clock signal, rst for the reset signal, and sin for the input signal. Also, declare the output port q as a 4-bit vector representing the state of flip-flops.

3.Declare an internal register q as a 4-bit vector to store the state of the flip-flops.

4.Create an always block that triggers on the positive edge of both the clock (clk) and the reset signal (rst), containing the following steps:

5.If the reset signal is asserted (rst), assign q to 4'b0000 to reset all flip-flops to 0.

6.If the reset signal is not asserted, assign the value of sin to the first flip-flop (q[0]) and shift the values of q to the right.

PROGRAM

module EXP10(clk, sin, q);
input clk;
input sin;
output [3:0] q;
reg [3:0] q;
always @(posedge clk)
begin
q[0] <= sin;
q[1] <= q[0];
q[2] <= q[1];
q[3] <= q[2];
end
endmodule
Developed by: J.SRI SARAN  RegisterNumber:25015592

RTL LOGIC FOR SISO Shift Register image
<img width="1043" height="538" alt="Screenshot 2025-12-27 133814" src="https://github.com/user-attachments/assets/28ef7724-5233-485f-b45f-c8a382f0ab54" />


TIMING DIGRAMS FOR SISO Shift Register image
<img width="1059" height="578" alt="Screenshot 2025-12-27 133839" src="https://github.com/user-attachments/assets/20f46601-91e8-4d75-b68e-61d90f3cf18a" />


RESULTS Thus the SISO Shift Register using verilog is validated and the logic diagrams are designedd the truth table is verified.
