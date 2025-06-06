.title testbench for XOR gate
.include "..\simlib.sp"

* ########################Inverter model######################## *
.subckt inv A Z VDD VSS Sx=1 Sp=3.5 Scale=1
mp Z A VDD VDD PM  w='120n*Sp*Scale' l=80n
mn Z A VSS VSS NM  w='120n*Sx*Scale' l=80n
.ends inv

* ########################XOR gate model: Behavioral######################## *
* .subckt XOR A B Z VDD VSS
* * This is a behavioral model for an XOR gate for testing purposes.
* * A more detailed transistor-level model would be used in a real scenario.
* E_XOR Z 0 VOL='(V(A) > 0.6 && V(B) <= 0.6 || V(A) <= 0.6 && V(B) > 0.6) ? V(VDD) : V(VSS)'
* .ends XOR
* # ########################END XOR: Behavioral######################## *

* ########################XOR gate model: ICSE2012######################## *
* This is a simple XOR gate model using transistors.
.subckt XOR A B Z VDD VSS
XINV A Abar VDD VSS inv
m1 Z B A VDD PM w=120n l=80n
m2 Z A B VDD PM w=120n l=80n
m3 Z B Abar VSS NM w=120n l=80n
m4 Z Abar B VSS NM w=120n l=80n
.ends XOR
* ########################END XOR: ICSE2012######################## *

* ########################XOR gate model: CMOS traditional######################## *
* .subckt XOR A B Z VDD VSS
* * This is a traditional CMOS XOR gate model.
* XINV1 A Z B Bbar inv
* XINV2 B Bbar VDD VSS inv
* m1 A Bbar Z VSS NM w=120n l=80n
* m2 A Bbar Z VDD PM w=120n l=80n
* .ends XOR
* ########################END XOR: CMOS traditional######################## *

VDD VDD 0 1.2V
VSS VSS 0 0

* Instantiate the XOR gate
XXOR A B Z_out VDD VSS XOR

* Define input signals to cover all 4 states (00, 01, 10, 11)
* A: 0011 pattern (changes every 10ns)
* B: 0101 pattern (changes every 5ns)
* Rise/fall time is 0.1ns
VA A VSS PWL(0ns 0V 9.9ns 0V 10ns 1.2V 19.9ns 1.2V 20ns 0V 29.9ns 0V 30ns 1.2V 39.9ns 1.2V 40ns 0V)
VB B VSS PWL(0ns 0V 4.9ns 0V 5ns 1.2V 9.9ns 1.2V 10ns 0V 14.9ns 0V 15ns 1.2V 19.9ns 1.2V 20ns 0V 24.9ns 0V 25ns 1.2V 29.9ns 1.2V 30ns 0V 34.9ns 0V 35ns 1.2V 39.9ns 1.2V 40ns 0V)

* Transient analysis
.tran 0.1n 40n
.end

