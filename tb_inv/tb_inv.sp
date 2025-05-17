.title testbench for inverter
.include "..\simlib.sp"

* ########################Inverter model######################## *

.subckt inv A Z VDD VSS Sx=1 Sp=2 Scale=4
mp Z A VDD VDD PM  w='120n*Sp*Scale' l=80n
mn Z A VSS VSS NM  w='120n*Sx' l=80n
.ends inv

* 电源和地
VDD VDD 0 1.2V
VSS VSS 0 0

* 输入激励：脉冲信号
VIN A 0 PWL 0 0 5n 0 5.1n 1.2 10n 1.2 10.1n 0 15n 0 15.1n 1.2 20n 1.2 20.1n 0 25n 0 25.1n 1.2 30n 1.2 30.1n 0 35n 0 35.1n 1.2 40n 1.2 40.1n 0 45n 0 45.1n 1.2 50n 1.2

* 实例化反相器
XINV A Z VDD VSS inv Scale=2 Sp=2 Sx=1

* 仿真控制
.tran 1p 20n
.measure tran tphl  TRIG V(A) VAL=0.6 RISE=2  TARG V(Z) VAL=0.6 FALL=2
.measure tran tplh  TRIG V(A) VAL=0.6 FALL=1  TARG V(Z) VAL=0.6 RISE=1
.end