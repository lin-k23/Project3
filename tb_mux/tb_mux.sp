.title testbench for muxiplexer
.include "..\simlib.sp"

* ########################Inverter model######################## *
.subckt inv A Z VDD VSS Sx=1 Sp=2 Scale=4
mp Z A VDD VDD PM  w='120n*Sp*scale' l=80n
mn Z A VSS VSS NM  w='120n*Sx*scale' l=80n
.ends inv
* ########################Inverter end######################## *

* ########################Multiplexer model: A######################## *
* .subckt muxa A B S Z VDD VSS
* * use pass transistor logic
* * when S=1, Z=A
* * when S=0, Z=B
* XINV S Sbar VDD VSS inv scale=2
* m1 A Sbar Z VDD PM w=120n l=80n
* m2 A S Z VSS NM w=120n l=80n
* m3 B S Z VDD PM w=120n l=80n
* m4 B Sbar Z VSS NM w=120n l=80n
* .ends muxa
* ########################END Multiplexer: A######################## *

* ########################Multiplexer model: B######################## *
* .subckt muxb A B S Z VDD VSS
* * use 2 invs
* * when S=1, Z=~A
* * when S=0, Z=~B
* XINV1 S Sbar VDD VSS inv scale=2
* m1 A S X VSS NM w=120n l=80n
* m2 B Sbar X VSS NM w=120n l=80n
* m3 X Z VDD VDD PM w=120n l=80n
* XINV2 X Z VDD VSS inv scale=2
* .ends muxb
* ########################END Multiplexer: B######################## *

* ########################Multiplexer model: C######################## *
.subckt muxc A B S Z VDD VSS
* use 2 MIDSUM
* when S=1, Z=~A
* when S=0, Z=~B
XINV S Sbar VDD VSS inv scale=2
m1 X11 Sbar VDD VDD PM w=120n l=80n
m2 Z A X11 VDD PM w=120n l=80n
m3 Z A X12 VSS NM w=120n l=80n
m4 X12 S VSS VSS NM w=120n l=80n
m5 X21 S VDD VDD PM w=120n l=80n
m6 Z B X21 VDD PM w=120n l=80n
m7 Z B X22 VSS NM w=120n l=80n
m8 X22 Sbar VSS VSS NM w=120n l=80n
.ends muxc
* ########################END Multiplexer: C######################## *

* testbench for 2:1 multiplexer

* power and ground
VDD VDD 0 1.2V
VSS VSS 0 0
* input signals
VA S_in 0 PULSE(0V 1.2V 40ns 0.1ns 0.1ns 39.9ns 80ns)
VB A_in 0 PULSE(0V 1.2V 20ns 0.1ns 0.1ns 19.9ns 40ns)
VC B_in 0 PULSE(0V 1.2V 10ns 0.1ns 0.1ns 9.9ns 20ns)

* Instantiate the Multiplexer
* XMUXA A_in B_in S_in Z_out VDD VSS muxa
* XMUXB A_in B_in S_in Z_out VDD VSS muxb
XMUXC A_in B_in S_in Z_out VDD VSS muxc

* Transient Analysis
.tran 0.1ns 80ns
.end