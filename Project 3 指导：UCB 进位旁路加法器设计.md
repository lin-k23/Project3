# **Project 3 指导**

## **基于 Berkeley 全加器的 32 位 UCB 进位旁路加法器设计**

本项目（Project 3）要求设计并验证一个 32 位的无符号二进制 UCB (Uniform Carry-Bypass) 进位旁路加法器。以下是根据提供的文档整理的项目指导：

### **1\. 项目目标 (Design Objective)**

核心任务是设计一个 **32 位无符号二进制加法器**，其具体要求如下：

* **全加器单元:** 必须使用 **Berkeley 全加器** 作为基本构建单元。
* **进位链架构:** 采用 **进位旁路 (Carry-bypass)** 结构。
  * 加法器应分为 **8 个旁路级 (bypass stages)**。
  * 每个旁路级包含 **4 个位 (bits)** 的加法器和 **1 个多路选择器 (MUX)**。
  * 所使用的 MUX 可以从文档下一页（幻灯片 18）提供的 **三种 MUX 电路中任选一种**。
* **技术文件规格 (Tech-File):**
  * **工艺:** 80nm CMOS 逻辑工艺。
  * **电源电压 (**VDD​**):** 1.2V。
  * **最小晶体管尺寸:** NMOS 和 PMOS 的最小尺寸为 120nm / 80nm。
  * **仿真模型:** BSIM4 Level 54。
* **实现要求:** 必须严格遵守上述要求，且只能采用 **静态实现 (Static implementation)**。

### **2\. 设计套件 (Design Kit)**

项目提供了一个设计套件，包含以下 6 个文件（不含本指导 PPT）：

* **Project\_rpt\_template.doc:** 项目报告模板。
* **32bits\_UCB\_Carrybypass\_adder.sp:** 主要的 Spice 网表文件。
  * 包含库文件 (BSIM4 LEVEL54)。
  * 包含测试平台 (testbench)。
  * **所有代码应在此文件中编写**，并使用此文件进行所有仿真和验证。**不允许使用 .include 命令包含其他文件**。
* **sim\_vec\_function.vec:** 用于功能验证的向量文件。
* **sim\_vec\_critical\_path.vec:** 用于测量关键路径延迟的向量文件。
* **sim\_vec\_I\_P\_PDP\_EDP.vec:** 用于测量平均电流、计算功耗 (P)、功耗-延时积 (PDP) 和能量-延时积 (EDP) 的向量文件。

### **3\. 推荐设计流程 (Recommended Design Flow)**

建议遵循以下步骤进行项目设计和调试：

1. **阅读并理解 32bits\_UCB\_Carrybypass\_adder.sp 文件:** 了解文件结构，包括库文件、你的代码区域和仿真代码部分。注意 VDD 为 1.2V，最小晶体管尺寸为 120n/80n。
2. **确定参考反相器的 PMOS 尺寸:** NMOS 参考反相器尺寸已知为 120nm/80nm。通过仿真调整 PMOS 尺寸，使得 tpLH​=tpHL​ 来确定参考反相器的 PMOS 尺寸 (PS​)。
3. **设计并仿真 Berkeley 全加器:**
   * 设计 XOR 门并进行仿真。
   * 设计全加器的其他部分并进行仿真。
4. **设计并仿真 MUX:** 从提供的三种 MUX 中选择一种进行设计和仿真。
5. **组合构建 32 位加法器:** 将 32 个 Berkeley 全加器和 8 个 MUX 组合起来，构建完整的 32 位进位旁路加法器。
6. **功能仿真与验证:** 使用设计套件中提供的测试平台 (sim\_vec\_function.vec) 进行功能仿真和验证。参考下一节的详细步骤。
7. **功能仿真后:**
   * 根据仿真结果调整晶体管尺寸，以达到最优性能。
   * 测量关键路径延迟 (tp,critical​)、功耗 (P)、功耗-延时积 (PDP) 和能量-延时积 (EDP)。参考下一节的详细步骤。
8. **撰写项目报告:** 使用提供的 Project\_rpt.doc 模板完成项目报告。报告字数不限。可以将自己的测试程序或其他相关文件粘贴到报告中，**不要单独提交**。

### **4\. 仿真与验证 (Simulation and Verification)**

项目要求进行以下几项仿真和验证：

* **功能验证 (Function verification):**
  * **修改 .sp 文件:** 在 32bits\_UCB\_Carrybypass\_adder.sp 中，取消 .vec sim\_vec\_function.vec 和 .tran 0.05n 30n 的注释，同时注释掉其他 .vec 和 .tran 行。
  * **仿真:** 使用 HSPICE 进行仿真。
  * **检查结果:** 检查 32bits\_UCB\_Carrybypass\_adder.err 文件。如果出现 "Time Signal Simulated Expected" 后没有差异行，则功能正确。否则，错误信息会指出仿真值与期望值的差异。
  * **输入信号要求:** 输入信号 A\[31:0\] 和 B\[31:0\] 每 5ns 进行一次跳变或保持稳定，上升和下降时间均为 0.1ns。加法器的每个输出都驱动一个 10fF 的电容负载。
* **关键路径延迟测量 (**tp,critical​**):**
  * **修改 .sp 文件:** 在 32bits\_UCB\_Carrybypass\_adder.sp 中，取消 .vec sim\_vec\_critical\_path.vec 和 .tran 0.05n 10n 的注释，同时注释掉其他 .vec 和 .tran 行。
  * **仿真:** 使用 HSPICE 进行仿真。
  * **功能检查:** 同样检查 .err 文件确保功能正确。
  * **测量延迟:** **手动测量**从任意输入位到每个输出位的传播延迟，其中最大的值即为 tp,critical​。**注意：不要只依赖 sim\_vec\_critical\_path.vec 找到的关键路径，可能存在其他关键路径。助教可能会使用其他向量进行测试。**
* **功耗 (P)、PDP 和 EDP 测量:**
  * **修改 .sp 文件:** 在 32bits\_UCB\_Carrybypass\_adder.sp 中，取消 .vec sim\_vec\_I\_P\_PDP\_EDP.vec 和 .tran 0.1n 150n 的注释，同时注释掉其他 .vec 和 .tran 行。
  * **仿真:** 使用 HSPICE 进行仿真。
  * **功能检查:** 检查 .err 文件确保功能正确。
  * **获取平均电流:** 检查 32bits\_UCB\_Carrybypass\_adder.lis 文件，找到 "average=.." 的值，即为平均电流 Iaverage​。
  * **计算 P, PDP, EDP:**
    * P=1.2V×Iaverage​
    * PDP=P×tp,critical​
    * EDP=PDP×tp,critical​
* **面积估算 (Area estimation):**
  * 统计设计中所有 PMOS 晶体管的总宽度 (WPtotal​)。
  * 统计设计中所有 NMOS 晶体管的总宽度 (WNtotal​)。
  * 粗略估算面积：Area=WPtotal​+WNtotal​。注意所有晶体管的特征尺寸 (feature size) 为 80nm，最小 NMOS 尺寸为 120nm/80nm。

### **5\. 评分政策 (Grading Policy)**

* **总分:** 项目总计 15 分。
* **基本评分:**
  * **功能有效性 (Function validity):** 至少占 8 分。
  * **性能权衡:** tp,critical​、P、PDP、EDP 和面积之间的权衡。
  * **项目报告质量。**
* **奖励政策:**
  * 排名前 2 的设计者有机会参加面试（可选）。
  * 面试时长 10 分钟，无需额外准备材料。
  * 面试结果优秀可获得 1-4 分额外加分，表现不佳可能倒扣 1-4 分。
* **禁止行为:**
  * 伪造数据。
  * 抄袭或允许他人抄袭。

### **6\. 项目提交 (Project Submission)**

* **提交文件:** 将以下两个文件打包成 winrar 或 gzip 格式：
  * 32bits\_UCB\_Carrybypass\_adder.sp: 重命名为 姓名\_学号\_班号.sp。此文件应包含所有必需的代码，并确保在 HSPICE 中无需修改即可运行。
  * 项目报告 (PDF 格式): 转换为 PDF 格式，并命名为 姓名\_学号\_班号.pdf。
* **文件名格式:** 打包文件命名规则为 姓名\_学号\_班号.rar 或 姓名\_学号\_班号.gz，例如 LiXiaomao\_2022123456\_W19.rar。
* **提交截止日期:** 2025 年 6 月 6 日午夜 12 点。逾期一周扣 2 分，逾期两周以上不得分。
* **提交方式:** 在 [http://learn.tsinghua.edu.cn](http://learn.tsinghua.edu.cn) 上提交打包文件。**无需提交纸质版，不接受邮件提交。**

### **附注：MLL 和 Mirror 加法器 (Sizing of MLL and Mirror Adder)**

文档中也包含了关于 MLL 和 Mirror 加法器的尺寸优化分析，包括逻辑努力 (Logical Effort) 的概念和相关计算（幻灯片 3-29）。虽然项目要求使用 Berkeley 全加器，但这部分内容可能作为背景知识或参考，帮助理解加法器设计和优化的原理。特别是关于参考反相器尺寸确定 (tPHL​=tPLH​) 的方法，对确定设计所需的晶体管尺寸有指导意义。

希望这份指导能帮助您顺利完成 Project 3！
