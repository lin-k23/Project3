.title Ripple Carry Adder Testbench
.include "../simlib.sp"


*-------------------------------Inverter example---------------------------------*
*you can specify the actual value of the parameter "Sp" and "Scale" when instantiating this inverter.
.subckt inv A Z VDD VSS Sx=1 Sp=2 Scale=4
mp Z A VDD VDD PM  w='120n*Sp*Scale' l=80n
mn Z A VSS VSS NM  w='120n*Sx' l=80n
.ends inv
*-------------------------------end of Inverter example--------------------------*

* -------------------------XOR gate model----------------------- *
* This is a simple XOR gate model using transistors.
.subckt XOR A B Z VDD VSS
XINV A Abar VDD VSS inv Sx=1 Sp=2 Scale=2
m1 Z B A VDD PM w=120n l=80n
m2 Z A B VDD PM w=120n l=80n
m3 Z B Abar VSS NM w=120n l=80n
m4 Z Abar B VSS NM w=120n l=80n
.ends XOR
* -------------------------end of XOR gate model------------------ *

* -------------------------subcircuit for Full Adder------------------------ *
.subckt MID A B C Z VDD VSS
m1 AB A VDD VDD PM w=120n l=80n
m2 Z B AB VDD PM w=120n l=80n
m3 Z B BC VSS NM w=120n l=80n
m4 BC C VSS VSS NM w=120n l=80n
.ends MID
* -------------------------end of subcircuit for Full Adder------------------ *

* -------------------------Full Adder-------------------------------- *
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
* -------------------------end of Full Adder------------------------ *

* ------------------------4bits Ripple Carry Adder------------------------ *
* This is a 4-bit Ripple Carry Adder using the previously defined components.
.subckt RCA4 A[3] A[2] A[1] A[0] B[3] B[2] B[1] B[0]
+ SUM[3] SUM[2] SUM[1] SUM[0] CIN COUT VDD VSS
* Instantiate the Full Adders
XFA0 A[0] B[0] CIN SUM[0] C1bar VDD VSS FA
XFA1 A[1] B[1] C1 SUM[1] C2bar VDD VSS FA
XFA2 A[2] B[2] C2 SUM[2] C3bar VDD VSS FA
XFA3 A[3] B[3] C3 SUM[3] COUTbar VDD VSS FA
* Instantiate the Inverters
XINV1 C1bar C1 VDD VSS inv
XINV2 C2bar C2 VDD VSS inv
XINV3 C3bar C3 VDD VSS inv
XINV4 COUTbar COUT VDD VSS inv
.ends RCA4
* ------------------------end of 4bits Ripple Carry Adder------------------------ *


* ------------------------Testbench for 4bits Ripple Carry Adder------------------------ *
* power and ground
VDD VDD 0 1.2V
VSS VSS 0 0
* input signals
* Input A = 1001 (9)
Va3 ina3 VSS PWL(0ns 0V 9.9ns 0V 10ns 1.2V 19.9ns 1.2V 20ns 0V 29.9ns 0V 30ns 1.2V 39.9ns 1.2V 40ns 0V)
Va2 ina2 VSS PWL(0ns 0V 4.9ns 0V 5ns 1.2V 9.9ns 1.2V 10ns 0V 14.9ns 0V 15ns 1.2V 19.9ns 1.2V 20ns 0V 24.9ns 0V 25ns 1.2V 29.9ns 1.2V 30ns 0V 34.9ns 0V 35ns 1.2V 39.9ns 1.2V 40ns 0V)
Va1 ina1 VSS 0
Va0 ina0 VSS 0

* Input B = 0101 (5)
Vb3 inb3 VSS 0
Vb2 inb2 VSS 0
Vb1 inb1 VSS 0
Vb0 inb0 VSS 0

* Carry In = 0
Vcin incin VSS 0

* Instantiate the 4-bit Ripple Carry Adder
* Ports: A[3] A[2] A[1] A[0] B[3] B[2] B[1] B[0] SUM[3] SUM[2] SUM[1] SUM[0] CIN COUT VDD VSS
Xrca1 ina3 ina2 ina1 ina0 inb3 inb2 inb1 inb0
+ sum3 sum2 sum1 sum0 incin cout VDD VSS RCA4

* Analysis
.tran 0.1ns 40ns

.end
