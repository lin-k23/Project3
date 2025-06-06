.title testbench for Full Adder
.include "..\simlib.sp"

* ########################Inverter model######################## *
.subckt inv A Z VDD VSS Sx=1 Sp=3.5 Scale=1
mp Z A VDD VDD PM  w='120n*Sp*Scale' l=80n
mn Z A VSS VSS NM  w='120n*Sx*Scale' l=80n
.ends inv
* ########################Inverter end######################## *

* ########################XOR gate model######################## *
* This is a simple XOR gate model using transistors.
.subckt XOR A B Z VDD VSS
XINV A Abar VDD VSS inv
m1 Z B A VDD PM w=120n l=80n
m2 Z A B VDD PM w=120n l=80n
m3 Z B Abar VSS NM w=120n l=80n
m4 Z Abar B VSS NM w=120n l=80n
.ends XOR
* ########################XOR gate end######################## *

* ########################subcircuit for Full Adder######################## *
.subckt MID A B C Z VDD VSS
m1 AB A VDD VDD PM w="120n*2.57" l=80n
m2 Z B AB VDD PM w="120n*2.57" l=80n
m3 Z B BC VSS NM w=120n l=80n
m4 BC C VSS VSS NM w=120n l=80n
.ends MID
* ########################subcircuit for Full Adder end######################## *

* ########################Full Adder model######################## *
.subckt FA A B C SUM COUT VDD VSS
* Instantiate the XOR gates and AND gates to create a Full Adder
XXOR A B X1 VDD VSS XOR
XINV1 X1 X2 VDD VSS inv
XINV2 C Cbar VDD VSS inv
XMID1 X2 C X1 COUT VDD VSS MID
XMID2 X1 A X2 COUT VDD VSS MID
XINV3 Cbar MIDSUM X1 X2 inv
m11 Cbar X2 MIDSUM VSS NM w=120n l=80n
m12 Cbar X1 MIDSUM VDD PM w=120n l=80n
XINV4 MIDSUM SUM VDD VSS inv
.ends FA
* ########################Full Adder end######################## *

* power and ground
VDD VDD 0 1.2V
VSS VSS 0 0


* input signals
VA A_in 0 PULSE(0V 1.2V 40ns 0.1ns 0.1ns 39.9ns 80ns)
VB B_in 0 PULSE(0V 1.2V 20ns 0.1ns 0.1ns 19.9ns 40ns)
VCIN CIN_in 0 PULSE(0V 1.2V 10ns 0.1ns 0.1ns 9.9ns 20ns)

* Instantiate the Full Adder
XFA A_in B_in CIN_in SUM_out COUT_out VDD VSS FA

* Transient Analysis
.tran 0.1ns 80ns

.end

