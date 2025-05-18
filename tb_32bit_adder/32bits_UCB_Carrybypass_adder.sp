.title 32bits_UCB_Carrybypass_Adder

*##############################Simulation Model##############################*
*##############################Simulation Model##############################*
*##############################Simulation Model*#############################*
*DEVICE NMOS
.model NM NMOS
*****Model Selectors/Controllers*********************************
+  LEVEL     =   5.4000E+01                          VERSION   =   4.3000E+00
+  BINUNIT   =   1.0000E+00                          PARAMCHK  =   1.0000E+00
+  MOBMOD    =   0.0000E+00                          RDSMOD    =   0.0000E+00
+  IGCMOD    =   1.0000E+00                          IGBMOD    =   1.0000E+00
+  CAPMOD    =   2.0000E+00                          RGATEMOD  =   0.0000E+00
+  RBODYMOD  =   0.0000E+00                          TRNQSMOD  =   0.0000E+00
+  ACNQSMOD  =   0.0000E+00                          DIOMOD    =   2.0000E+00
+  PERMOD    =   1.0000E+00                          GEOMOD    =   0.0000E+00
+  RGEOMOD   =   1.0000E+00
*****Process Parameters******************************************
+  EPSROX    =   3.9000E+00                          TOXE      =  '2.2500E-09'
+  TOXP      =  '1.8300E-09'        TOXM      =   2.2000E-09
+  XJ        =   1.2000E-07                          NDEP      =   3.4700E+17
+  NGATE     =   1.5000E+20                          NSD       =   8.0000E+20
+  RSH       =   7.0000E+00                          RSHG      =   0.8000E+01
*****Basic Model Parameters**************************************
+  VTH0      =  '7.0000E-02'        VFB       =  -1.0000E+00
+  PHIN      =   5.0000E-02                          K1        =   1.0530E-01
+  K2        =   3.1940E-03                          K3        =  -8.0000E+00
+  K3B       =   4.5510E+00                          W0        =   2.9030E-07
+  LPE0      =   6.1500E-08                          LPEB      =   1.2140E-08
+  VBM       =  -3.0000E+00                          DVT0      =   6.2680E-02
+  DVT1      =   1.1742E-01                          DVT2      =  -4.8400E-02
+  DVTP0     =   5.0000E-06                          DVTP1     =   5.0000E-01
+  DVT0W     =   8.0000E-06                          DVT1W     =   5.9030E+04
+  DVT2W     =   1.0000E-01                          U0        =   4.4760E-02
+  UA        =  '2.8000E-10'          UB        =   2.2800E-18
+  UC        =   1.1440E-11
+  VSAT      =  '1.0670E+05'        A0        =   1.0000E+00
+  AGS       =   1.0000E+00                          B0        =   1.0900E-06
+  B1        =   1.0000E-05                          KETA      =   3.2980E-03
+  A1        =   0.0000E+00                          A2        =   1.0000E+00
+  WINT      =   1.0000E-08                          LINT      =   3.0120E-09
+  DWG       =   0.0000E+00                          DWB       =   0.0000E+00
+  VOFF      =  -1.0800E-01                          VOFFL     =  -7.1000E-09
+  MINV      =   0.0000E+00                          NFACTOR   =   1.0000E+00
+  ETA0      =   5.2500E-04                          ETAB      =  -2.2000E-04
+  DSUB      =   1.7000E-01                          CIT       =   1.0000E-04
+  CDSC      =   9.8000E-05                          CDSCB     =   1.0000E-05
+  CDSCD     =   1.0000E-05                          PCLM      =   2.0000E-01
+  PDIBLC1   =   2.0586E-02                          PDIBLC2   =   1.0210E-02
+  PDIBLCB   =   1.9940E-03                          DROUT     =   5.0000E-01
+  PSCBE1    =   1.0000E+08                          PSCBE2    =   1.0000E-10
+  PVAG      =   5.0000E-02                          DELTA     =   8.5480E-03
+  FPROUT    =   2.0000E+02                          PDITS     =   0.0000E+00
+  PDITSL    =   0.0000E+00                          PDITSD    =   0.0000E+00
*****Parameters for Asymmetric and Bias-Dependent Rds Model******
+  RDSW      =   7.0197E+01                          RDSWMIN   =   5.0000E+01
+  RDW       =   1.0000E+02                          RDWMIN    =   0.0000E+00
+  RSW       =   1.0000E+02                          RSWMIN    =   0.0000E+00
+  PRWG      =   0.0000E+00                          PRWB      =   1.0000E-01
+  WR        =   1.0000E+00
*****Impact Ionization Current Model Parameters******************
+  ALPHA0    =   5.2060E-07                          ALPHA1    =   0.0000E+00
+  BETA0     =   1.6930E+01
*****Gate-Induced Drain Leakage Model Parameters*****************
+  AGIDL     =   1.1340E-08                          BGIDL     =   1.2540E+09
+  CGIDL     =   6.4950E-01                          EGIDL     =   9.6360E-01
*****Gate Dielectric Tunneling Current Model Parameters**********
+  AIGBACC   =   1.1410E-02                          BIGBACC   =   2.7360E-03
+  CIGBACC   =   3.4100E-02                          NIGBACC   =   2.8070E+00
+  AIGBINV   =   2.7220E-02                          BIGBINV   =   8.6390E-03
+  CIGBINV   =   7.4950E-03                          EIGBINV   =   2.2930E+00
+  NIGBINV   =   1.3850E+07                          AIGC      =   8.7650E-03
+  BIGC      =   1.2440E-03                          CIGC      =   1.2140E-04
+  AIGSD     =   1.1590E-02                          BIGSD     =   5.6280E-04
+  CIGSD     =  -8.7000E-04                          DLCIG     =   9.0160E-08
+  NIGC      =   1.1570E+00                          POXEDGE   =   9.3110E-01
+  PIGCD     =   3.4630E+00                          NTOX      =   9.2270E+00
+  TOXREF    =   1.8900E-09
*****Charge and Capacitance Model Parameters*********************
+  XPART     =   1.0000E+00                          CGSO      =  '2.7800E-10'
+  CGDO      =  '2.7800E-10'        CGBO      =   0.0000E+00
+  CGSL      =  '1.1870E-10'        CGDL      =  '1.1870E-10'
+  CKAPPAS   =   3.3230E-01
+  CF        =   0.0000E+00                          CLC       =   6.8400E-08
+  CLE       =   7.1560E-01                          DLC       =   8.0000E-09
+  DWC       =  -3.0000E-08                          VFBCV     =  -1.0000E+00
+  NOFF      =   3.3060E+00                          VOFFCV    =  -1.1290E-01
+  ACDE      =   4.2060E-02                          MOIN      =   1.3260E+01
*****Layout-Dependent Parasitics Model Parameters****************
+  DMCG      =   1.6000E-07                          DMCI      =   1.0000E-07
+  XL        = '-2.0000E-08'          XW        =  '0.7000E-08'
*****Asymmetric Source/Drain Junction Diode Model Parameters*****
+  IJTHSREV  =   1.9000E-03
+  IJTHSFWD  =   3.8250E-03
+  XJBVS     =   1.0000E+00
+  BVS       =   1.1100E+01
+  JSS       =   1.3780E-07
+  JSWS      =   2.1380E-14
+  JSWGS     =   0.0000E+00
+  CJS       =  '9.7200E-04'
+  MJS       =   3.7780E-01
+  MJSWS     =   1.2770E-01
+  CJSWS     =  '8.9700E-11'
+  CJSWGS    =  '2.7000E-10'
+  MJSWGS    =   3.5190E-01
+  PBS       =   6.9310E-01
+  PBSWS     =   7.6280E-01
+  PBSWGS    =   3.5510E-01
*****Temperature Dependence Parameters***************************
+  TNOM      =   2.5000E+01                          UTE       =  -1.4070E+00
+  KT1       =  -2.6000E-01                          KT1L      =  -1.3470E-09
+  KT2       =  -2.2150E-02                          UA1       =   4.2310E-09
+  UB1       =  -5.0560E-18                          UC1       =   2.3530E-10
+  AT        =   5.5000E+04                          PRT       =   0.0000E+00
+  NJS       =   1.1660E+00                          XTIS      =   3.0000E+00
+  TPB       =   1.1170E-03                          TPBSW     =   8.5390E-04
+  TPBSWG    =   6.5900E-04                          TCJ       =   9.3980E-04
+  TCJSW     =   2.5840E-04                          TCJSWG    =   1.0970E-03
*****dW and dL Parameters****************************************
+  WL        =  -3.6000E-15                          WLN       =   1.0200E+00
+  WW        =  -1.0000E-15                          WWN       =   1.0150E+00
+  WWL       =   3.0000E-22                          LL        =  -1.6000E-15
+  LLN       =   9.8000E-01                          LW        =  -2.5000E-16
+  LWN       =   1.0500E+00                          LWL       =   0.0000E+00
+  LLC       =   1.3590E-16                          LWC       =   0.0000E+00
+  LWLC      =   0.0000E+00                          WLC       =   0.0000E+00
+  WWC       =   1.2000E-15                         WWLC      =   0.0000E+00
*****Range Parameters for Model Application**********************
+  LMIN      =   8.0000E-08                          LMAX      =   4.0000E-07
+  WMIN      =   1.2000E-07                          WMAX      =   1.0000E-04
*****Other Parameters********************************************
+  PVTH0     =  '-2.5000E-04'      PVSAT     =  -4.2000E+02
+  LK3       =  -7.0000E-01                          WK3       = '-1.3580E+00'
+  WDVT0     =  -9.0000E-03                          WDVT2     =   1.0000E-02
+  LDSUB     =  -1.3800E-02                          LLPE0     =   5.1950E-08
+  WLPE0     =  -7.0000E-09                          LLPEB     =   1.8000E-08
+  WLPEB     =  -7.0000E-09                          PVOFF     =   1.6000E-04
+  LUA       = '-8.2860E-11'         WUA       =  '3.9000E-11'
+  PUA       =  '1.5000E-11'         LUB       =   1.1160E-21
+  PUC       =   2.5000E-12                          LVSAT     =   1.0000E+03
+  LA0       =  -8.3100E-01                          WA0       =   6.0000E-02
+  LKETA     =  -0.5100E-02                          PPCLM     =   3.0000E-03
+  WAIGC     =   2.6000E-05                          PKT1      =  -4.0000E-04
+  LUTE      =   7.0000E-02
**************************************************************
*               STRESS PARAMETERS
**************************************************************
+SAREF   = 1.76E-006       SBREF   = 1.76E-006
+WLOD    = 0               KVTH0   = 5E-008
+LKVTH0  = 3.9E-006        WKVTH0  = -5E-008
+PKVTH0  = 0               LLODVTH = 1
+WLODVTH = 1               STK2    = 0
+LODK2   = 1               LODETA0 = 1
+KU0     = -1.25E-008      LKU0    = -6.01E-009
+WKU0    = -4E-008         PKU0    = 1E-015
+LLODKU0 = 1.05            WLODKU0 = 1
+KVSAT   = 0.99            STETA0  = -2.8E-011
+TKU0    = 0
**************************************************************
*               Noise PARAMETERS
**************************************************************
+ fnoimod= 1
+ tnoimod= 0
+ ef=1.0615
+ noia=6.7563E+41
+ noib=9.3323E+25
+ noic=1.2778E+09
+ em=3.3749E+07
+ ntnoi=1.0

*DEVICE PMOS
.model PM PMOS
*****Model Selectors/Controllers*********************************
+  LEVEL     =   5.4000E+01                          VERSION   =   4.3000E+00
+  BINUNIT   =   1.0000E+00                          PARAMCHK  =   1.0000E+00
+  MOBMOD    =   0.0000E+00                          RDSMOD    =   0.0000E+00
+  IGCMOD    =   1.0000E+00                          IGBMOD    =   1.0000E+00
+  CAPMOD    =   2.0000E+00                          RGATEMOD  =   0.0000E+00
+  RBODYMOD  =   0.0000E+00                          TRNQSMOD  =   0.0000E+00
+  ACNQSMOD  =   0.0000E+00                          DIOMOD    =   2.0000E+00
+  PERMOD    =   1.0000E+00                          GEOMOD    =   0.0000E+00
+  RGEOMOD   =   1.0000E+00
*****Process Parameters******************************************
+  EPSROX    =   3.9000E+00                          TOXE      =  '2.4500E-09'
+  TOXP      =  '1.9100E-09'        	             TOXM      =   2.4000E-09
+  XJ        =   1.2000E-07                          NDEP      =   3.0000E+16
+  NGATE     =   1.0000E+20                          NSD       =   6.0000E+20
+  RSH       =   7.0000E+00                          RSHG      =   0.8000E+01
*****Basic Model Parameters**************************************
+  VTH0      = '-6.0000E-02'                         VFB       =  -1.0000E+00
+  PHIN      =  -1.0000E-02                          K1        =   1.4060E-01
+  K2        =   1.0960E-03                          K3        =   2.0000E-01
+  K3B       =   0.0000E+00                          W0        =   1.0000E-06
+  LPE0      =   8.0000E-08                          LPEB      =   7.0000E-08
+  VBM       =  -3.0000E+00                          DVT0      =   1.1400E-02
+  DVT1      =   7.3000E-02                          DVT2      =   1.0000E-02
+  DVTP0     =   2.4501E-06                          DVTP1     =   1.3000E+00
+  DVT0W     =   7.0050E-05                          DVT1W     =   2.2090E+05
+  DVT2W     =   1.0000E-02                          U0        =   1.7410E-02
+  UA        =   4.0060E-09                          UB        =  -3.8130E-19
+  UC        =   2.0073E-10
+  VSAT      =   2.1090E+05                          A0        =   2.2790E+00
+  AGS       =   1.5220E+00                          B0        =   9.0340E-08
+  B1        =   3.3750E-09                          KETA      =  -1.0500E-02
+  A1        =   0.0000E+00                          A2        =   3.0000E-01
+  WINT      =   1.6500E-08                          LINT      =  -9.0012E-09
+  DWG       =  -2.5000E-08                          DWB       =  -1.0000E-08
+  VOFF      =  -1.1750E-01                          VOFFL     =  -5.2000E-09
+  MINV      =   1.5000E+00                          NFACTOR   =   6.0350E-01
+  ETA0      =   1.8300E-02                          ETAB      =  -2.0000E-03
+  DSUB      =   3.0500E-01                          CIT       =   1.9642E-03
+  CDSC      =   4.1240E-05                          CDSCB     =   0.0000E+00
+  CDSCD     =   1.0000E-07                          PCLM      =   5.0116E-01
+  PDIBLC1   =   5.4250E-02                          PDIBLC2   =   3.3070E-04
+  PDIBLCB   =   1.0000E-02                          DROUT     =   2.4100E+00
+  PSCBE1    =   1.5350E+09                          PSCBE2    =   1.1470E-07
+  PVAG      =   5.0000E-01                          DELTA     =   1.0853E-02
+  FPROUT    =   3.6200E+02                          PDITS     =   1.2000E-02
+  PDITSL    =   0.0000E+00                          PDITSD    =   0.0000E+00
*****Parameters for Asymmetric and Bias-Dependent Rds Model******
+  RDSW      =   1.8500E+02                          RDSWMIN   =   0.0000E+00
+  RDW       =   1.0000E+02                          RDWMIN    =   0.0000E+00
+  RSW       =   1.0000E+02                          RSWMIN    =   0.0000E+00
+  PRWG      =   0.0000E+00                          PRWB      =   1.5000E-01
+  WR        =   1.0000E+00
*****Impact Ionization Current Model Parameters******************
+  ALPHA0    =   3.0000E-08                          ALPHA1    =   0.0000E+00
+  BETA0     =   2.1700E+01
*****Gate-Induced Drain Leakage Model Parameters*****************
+  AGIDL     =   1.5410E-09                          BGIDL     =   1.7300E+09
+  CGIDL     =   5.8570E-01                          EGIDL     =   3.1300E-01
*****Gate Dielectric Tunneling Current Model Parameters**********
+  AIGBACC   =   8.8550E-03                          BIGBACC   =   3.7500E-03
+  CIGBACC   =   1.3160E-01                          NIGBACC   =   6.0360E+00
+  AIGBINV   =   1.6930E-02                          BIGBINV   =   6.6720E-03
+  CIGBINV   =   2.1440E-01                          EIGBINV   =   1.1370E-01
+  NIGBINV   =   7.8180E+05                          AIGC      =   4.4670E-03
+  BIGC      =   8.9910E-04                          CIGC      =   6.5750E-02
+  AIGSD     =   6.1200E-03                          BIGSD     =  -1.5910E-04
+  CIGSD     =  -4.4880E-02                          DLCIG     =   4.3550E-08
+  NIGC      =   1.5520E+00                          POXEDGE   =   8.8230E-01
+  PIGCD     =   2.1600E+00                          NTOX      =   1.0260E+01
+  TOXREF    =   1.5450E-09
*****Charge and Capacitance Model Parameters*********************
+  XPART     =   1.0000E+00                          CGSO      =  '1.3000E-10'
+  CGDO      =  '1.3000E-10'        CGBO      =   0.0000E+00
+  CGSL      =  '2.1350E-10'        CGDL      =  '2.1350E-10'
+  CKAPPAS   =   1.3240E+00
+  CF        =   0.0000E+00                          CLC       =   1.0330E-07
+  CLE       =   5.7730E-01                          DLC       =   2.0000E-08
+  DWC       =  -3.0000E-08                          VFBCV     =  -1.0000E+00
+  NOFF      =   2.3060E+00                          VOFFCV    =  -5.3230E-02
+  ACDE      =   2.5490E-01                          MOIN      =   1.1710E+01
*****Layout-Dependent Parasitics Model Parameters****************
+  DMCG      =   1.6000E-07                          DMCI      =   1.0000E-07
+  XL        = '-1.0000E-08'          XW        =  '-1.0000E-09'
*****Asymmetric Source/Drain Junction Diode Model Parameters*****
+  IJTHSREV  =   2.3960E-03
+  IJTHSFWD  =   5.6440E-03
+  XJBVS     =   1.0000E+00
+  BVS       =   1.0480E+01
+  JSS       =   5.6890E-05
+  JSWS      =   4.8120E-11
+  JSWGS     =   0.0000E+00
+  CJS       =  '1.1700E-03'
+  MJS       =   3.1190E-01
+  MJSWS     =   1.0010E-01
+  CJSWS     =  '8.9400E-11'
+  CJSWGS    =  '2.7000E-10'
+  MJSWGS    =   6.4900E-01
+  PBS       =   6.3410E-01
+  PBSWS     =   6.2960E-01
+  PBSWGS    =   6.7230E-01
*****Temperature Dependence Parameters***************************
+  TNOM      =   2.5000E+01                          UTE       =  -1.3600E+00
+  KT1       =  -2.6670E-01                          KT1L      =  -4.3500E-09
+  KT2       =  -1.1920E-02                          UA1       =   10.7500E-10
+  UB1       =  -4.3800E-20                          UC1       =   3.3550E-10
+  AT        =   4.0000E+04                          PRT       =   0.0000E+00
+  NJS       =   1.4550E+00                          XTIS      =   3.0000E+00
+  TPB       =   1.3270E-03                          TPBSW     =   3.6050E-03
+  TPBSWG    =   5.3260E-04                          TCJ       =   9.2070E-04
+  TCJSW     =   6.3810E-04                          TCJSWG    =   6.6220E-04
*****dW and dL Parameters****************************************
+  WL        =  -5.0000E-16                          WLN       =   1.0000E+00
+  WW        =  -1.6000E-15                          WWN       =   9.9500E-01
+  WWL       =   1.0554E-22                          LL        =   1.0200E-15
+  LLN       =   1.0000E+00                          LW        =  -5.0000E-16
+  LWN       =   9.7000E-01                          LWL       =   0.0000E+00
+  LLC       =  -4.4710E-16                          LWC       =   0.0000E+00
+  LWLC      =   0.0000E+00                          WLC       =   0.0000E+00
+  WWC       =   8.0000E-16                          WWLC      =   0.0000E+00
*****Range Parameters for Model Application**********************
+  LMIN      =   8.0000E-08                          LMAX      =   4.0000E-07
+  WMIN      =   1.2000E-07                          WMAX      =   1.0000E-04
*****Other Parameters********************************************
+  WK3       =  '4.7000E-01'         WK3B      =  -3.0000E-01
+  LDSUB     =  -1.4000E-03                          LLPE0     =   2.7000E-08
+  WLPE0     =  -6.5000E-09                          LLPEB     =   1.5000E-08
+  PVOFF     =   4.0000E-04                          WETA0     =  -1.2000E-03
+  LUA       =  '0.7100E-10'         WUA       =  -7.0000E-11
+  PUA       =  '4.3000E-12'         LUB       =  -4.0000E-20
+  PUB       =   1.7000E-20                          PKETA     =   4.5000E-04
+  LPCLM     =  -2.0000E-02                          LAIGC     =  -2.1650E-05
+  LAIGSD    =  -3.0000E-05                          PAIGSD    =   3.5000E-06
+  WKT1      =  -2.0000E-03                          LUTE      =   3.6000E-02
+  PAT       =   2.0000E+03                          WLPEB     =   0.0000E+00
+  PVTH0     =  '5.0000E-05'       PVSAT     =  '1.5000E+02'
+  PKT1      =  -0.3700E-03
**************************************************************
*               STRESS PARAMETERS
**************************************************************
+SAREF   = 1.76E-006       SBREF   = 1.76E-006
+WLOD    = 0               KVTH0   = 8E-10
+LKVTH0  = -8.5E-006       WKVTH0  = 0
+PKVTH0  = 0               LLODVTH = 1
+WLODVTH = 1               STK2    = 0
+LODK2   = 1               LODETA0 = 1
+KU0     = 7E-008          LKU0    = 5E-007
+WKU0    = 0               PKU0    = 1E-013
+LLODKU0 = 0.96            WLODKU0 = 1
+KVSAT   = 1               STETA0  = 3.8E-010
+TKU0    = 0
*************************************************************
*               Noise PARAMETERS
**************************************************************
+ fnoimod= 1
+ tnoimod= 0
+ ef=1.1000
+ noia=1.0000E+41
+ noib=1.2100E+25
+ noic=8.1400E+10
+ em=1.1100E+07
+ ntnoi=1.0

*###############################################end of Simulation Model#############################################*
*###############################################end of Simulation Model#############################################*
*###############################################end of Simulation Model#############################################*














*########################################please add your code here##################################################*
*########################################please add your code here##################################################*
*########################################please add your code here##################################################*

*--------------------------------------------------------------------------------*
*NOTE:
*      VDD=1.2V
*      Minimum Channel Length      : 80n
*      Minimum Transistor Width    : 120n
*      Minimum Size of NMOS or PMOS: 120n / 80n
*--------------------------------------------------------------------------------*

*-------------------------------Inverter example---------------------------------*
*you can specify the actual value of the parameter "Sp" and "Scale" when instantiating this inverter.
.subckt inv A Z VDD VSS Sx=1 Sp=2 Scale=1
mp Z A VDD VDD PM  w='120n*Sp*Scale' l=80n
mn Z A VSS VSS NM  w='120n*Sx' l=80n
.ends inv
*-------------------------------end of Inverter example--------------------------*

* -------------------------XOR gate model----------------------- *
* This is a simple XOR gate model using transistors.
.subckt XOR A B Z VDD VSS
XINV A Abar VDD VSS inv Sx=1 Sp=2 Scale=1
m1 Z B A VDD PM w=120n l=80n
m2 Z A B VDD PM w=120n l=80n
m3 Z B Abar VSS NM w=120n l=80n
m4 Z Abar B VSS NM w=120n l=80n
.ends XOR
* -------------------------end of XOR gate model------------------ *

* -------------------------Multiplexer: A------------------------ *
.subckt MUXA A B S Z VDD VSS
* use pass transistor logic
* when S=1, Z=A
* when S=0, Z=B
XINV S Sbar VDD VSS inv scale=1
m1 A Sbar Z VDD PM w=120n l=80n
m2 A S Z VSS NM w=120n l=80n
m3 B S Z VDD PM w=120n l=80n
m4 B Sbar Z VSS NM w=120n l=80n
.ends MUXA
* -------------------------end of Multiplexer: A------------------ *

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

* ------------------------2bits NAND ------------------------ *
* This is a 2-bit NAND gate using the previously defined components.
.subckt NAND2 A B Z VDD VSS
mp1 Z A VDD VDD PM w=240n l=80n
mp2 Z B VDD VDD PM w=240n l=80n
mn1 Z A X0 VSS NM w=240n l=80n
mn2 X0 B VSS VSS NM w=240n l=80n
.ends NAND2
* --------------------------end of 2bits NAND ------------------------ *

* ------------------------2bits AND ------------------------ *
* This is a 2-bit AND gate using the previously defined components.
.subckt AND2 A B Z VDD VSS
XNAND2 A B Z1 VDD VSS NAND2
XINV1 Z1 Z VDD VSS inv
.ends AND2
* ------------------------end of 2bits AND ------------------------ *

* ------------------------4bits AND ------------------------ *
* This is a 4-bit AND gate using the previously defined components.
.subckt AND4 A B C D Z VDD VSS
XAND2_0  A B Z1 VDD VSS AND2
XAND2_1  C D Z2 VDD VSS AND2
XAND2_2 Z1 Z2 Z VDD VSS AND2
.ends AND4
* ------------------------end of 4bits AND ------------------------ *

* ------------------------SELGEN ------------------------ *
.subckt SELGEN A[3] A[2] A[1] A[0] B[3] B[2] B[1] B[0] SEL VDD VSS
XXOR0 A[0] B[0] P0 VDD VSS XOR
XXOR1 A[1] B[1] P1 VDD VSS XOR
XXOR2 A[2] B[2] P2 VDD VSS XOR
XXOR3 A[3] B[3] P3 VDD VSS XOR
XAND4 P0 P1 P2 P3 SEL VDD VSS AND4
.ends SELGEN
* ------------------------end of SELGEN ------------------------ *

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

*your code (design or implementation) goes here
.subckt UCB_ADDER_32 A[31] A[30] A[29] A[28] A[27] A[26] A[25] A[24]
+ A[23] A[22] A[21] A[20] A[19] A[18] A[17] A[16] A[15] A[14] A[13]
+ A[12] A[11] A[10] A[9] A[8] A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0]
+ B[31] B[30] B[29] B[28] B[27] B[26] B[25] B[24] B[23] B[22] B[21]
+ B[20] B[19] B[18] B[17] B[16] B[15] B[14] B[13] B[12] B[11] B[10]
+ B[9] B[8] B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] SUM[32] SUM[31]
+ SUM[30] SUM[29] SUM[28] SUM[27] SUM[26] SUM[25] SUM[24] SUM[23]
+ SUM[22] SUM[21] SUM[20] SUM[19] SUM[18] SUM[17] SUM[16] SUM[15]
+ SUM[14] SUM[13] SUM[12] SUM[11] SUM[10] SUM[9] SUM[8] SUM[7] SUM[6]
+ SUM[5] SUM[4] SUM[3] SUM[2] SUM[1] SUM[0] VDD VSS
* Initialize C[0] by connecting it to VSS
VC0_tie C[0] VSS 0
* Generate the select signals
XSELGEN_0 A[3] A[2] A[1] A[0] B[3] B[2] B[1] B[0]
+ SEL[0] VDD VSS SELGEN
XSELGEN_1 A[7] A[6] A[5] A[4] B[7] B[6] B[5] B[4]
+ SEL[1] VDD VSS SELGEN
XSELGEN_2 A[11] A[10] A[9] A[8] B[11] B[10] B[9] B[8]
+ SEL[2] VDD VSS SELGEN
XSELGEN_3 A[15] A[14] A[13] A[12] B[15] B[14] B[13] B[12]
+ SEL[3] VDD VSS SELGEN
XSELGEN_4 A[19] A[18] A[17] A[16] B[19] B[18] B[17] B[16]
+ SEL[4] VDD VSS SELGEN
XSELGEN_5 A[23] A[22] A[21] A[20] B[23] B[22] B[21] B[20]
+ SEL[5] VDD VSS SELGEN
XSELGEN_6 A[27] A[26] A[25] A[24] B[27] B[26] B[25] B[24]
+ SEL[6] VDD VSS SELGEN
XSELGEN_7 A[31] A[30] A[29] A[28] B[31] B[30] B[29] B[28]
+ SEL[7] VDD VSS SELGEN
* Instantiate the 4-bit Ripple Carry Adders
XRC4_0 A[3] A[2] A[1] A[0] B[3] B[2] B[1] B[0]
+ SUM[3] SUM[2] SUM[1] SUM[0] C[0] COUT[1] VDD VSS RCA4
XRC4_1 A[7] A[6] A[5] A[4] B[7] B[6] B[5] B[4]
+ SUM[7] SUM[6] SUM[5] SUM[4] C[1] COUT[2] VDD VSS RCA4
XRC4_2 A[11] A[10] A[9] A[8] B[11] B[10] B[9] B[8]
+ SUM[11] SUM[10] SUM[9] SUM[8] C[2] COUT[3] VDD VSS RCA4
XRC4_3 A[15] A[14] A[13] A[12] B[15] B[14] B[13] B[12]
+ SUM[15] SUM[14] SUM[13] SUM[12] C[3] COUT[4] VDD VSS RCA4
XRC4_4 A[19] A[18] A[17] A[16] B[19] B[18] B[17] B[16]
+ SUM[19] SUM[18] SUM[17] SUM[16] C[4] COUT[5] VDD VSS RCA4
XRC4_5 A[23] A[22] A[21] A[20] B[23] B[22] B[21] B[20]
+ SUM[23] SUM[22] SUM[21] SUM[20] C[5] COUT[6] VDD VSS RCA4
XRC4_6 A[27] A[26] A[25] A[24] B[27] B[26] B[25] B[24]
+ SUM[27] SUM[26] SUM[25] SUM[24] C[6] COUT[7] VDD VSS RCA4
XRC4_7 A[31] A[30] A[29] A[28] B[31] B[30] B[29] B[28]
+ SUM[31] SUM[30] SUM[29] SUM[28] C[7] COUT[8] VDD VSS RCA4
* Instantiate the Multiplexers
XMUXA_0 C[0] COUT[1] SEL[0] C[1] VDD VSS MUXA
XMUXA_1 C[1] COUT[2] SEL[1] C[2] VDD VSS MUXA
XMUXA_2 C[2] COUT[3] SEL[2] C[3] VDD VSS MUXA
XMUXA_3 C[3] COUT[4] SEL[3] C[4] VDD VSS MUXA
XMUXA_4 C[4] COUT[5] SEL[4] C[5] VDD VSS MUXA
XMUXA_5 C[5] COUT[6] SEL[5] C[6] VDD VSS MUXA
XMUXA_6 C[6] COUT[7] SEL[6] C[7] VDD VSS MUXA
XMUXA_7 C[7] COUT[8] SEL[7] SUM[32] VDD VSS MUXA
.ends UCB_ADDER_32


*your code (design or implementation) ends here

*#################################################end of your code##################################################*
*#################################################end of your code##################################################*
*#################################################end of your code##################################################*



*############################################test of 32bits_UCB_Carrybypass_Adder###################################*
*###########################################test of 32bits_UCB_Carrybypass_Adder####################################*
*############################################test of 32bits_UCB_Carrybypass_Adder###################################*

*to test the function of your 32bits UCB carry-bypass adder, just open the first line and close the other 2 lines;
*to fetch the critical delay of your adder, just open the second line, and close the other 2 lines.
*to fetch the average current(to calculate power consumption, PDP and EDP), just open the third line and close the other 2 lines.
* .vec sim_vec_function.vec
* .vec sim_vec_critical_path.vec
.vec sim_vec_I_P_PDP_EDP.vec



VDD vdd 0 1.2
VSS vss 0 0


*Instantiate your adder here
*Note: (1)"UCB_ADDER_32" is the name of the adder you designed. You can choose your favorite name, of course.
*      (2)"Cin" of the 32bits adder(which your designed) should be tied to "GND" inside the implementation
*          of "UCB_ADDER_32", therefore you don't need to add the extra port "Cin" to the "UCB_ADDER_32" explicitly.
*          Otherwise, the port definition will mis-match with the pattern of the provided simulation vectors.
*      (3)SUM[32] is the "Cout" of the 32bits adder.

x_adder32 A[31] A[30] A[29] A[28] A[27] A[26] A[25] A[24] A[23] A[22] A[21] A[20]
+ A[19] A[18] A[17] A[16] A[15] A[14] A[13] A[12] A[11] A[10] A[9] A[8] A[7] A[6]
+ A[5] A[4] A[3] A[2] A[1] A[0] B[31] B[30] B[29] B[28] B[27] B[26] B[25] B[24]
+ B[23] B[22] B[21] B[20] B[19] B[18] B[17] B[16] B[15] B[14] B[13] B[12] B[11] B[10]
+ B[9] B[8] B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] SUM[32] SUM[31] SUM[30] SUM[29]
+ SUM[28] SUM[27] SUM[26] SUM[25] SUM[24] SUM[23] SUM[22] SUM[21] SUM[20] SUM[19]
+ SUM[18] SUM[17] SUM[16] SUM[15] SUM[14] SUM[13] SUM[12] SUM[11] SUM[10] SUM[9]
+ SUM[8] SUM[7] SUM[6] SUM[5] SUM[4] SUM[3] SUM[2] SUM[1] SUM[0] vdd gnd UCB_ADDER_32


*Add 10fF load capacitance to the output ports of the 32bits adder
Csum_32 SUM[32] 0 10f
Csum_31 SUM[31] 0 10f
Csum_30 SUM[30] 0 10f
Csum_29 SUM[29] 0 10f
Csum_28 SUM[28] 0 10f
Csum_27 SUM[27] 0 10f
Csum_26 SUM[26] 0 10f
Csum_25 SUM[25] 0 10f
Csum_24 SUM[24] 0 10f
Csum_23 SUM[23] 0 10f
Csum_22 SUM[22] 0 10f
Csum_21 SUM[21] 0 10f
Csum_20 SUM[20] 0 10f
Csum_19 SUM[19] 0 10f
Csum_18 SUM[18] 0 10f
Csum_17 SUM[17] 0 10f
Csum_16 SUM[16] 0 10f
Csum_15 SUM[15] 0 10f
Csum_14 SUM[14] 0 10f
Csum_13 SUM[13] 0 10f
Csum_12 SUM[12] 0 10f
Csum_11 SUM[11] 0 10f
Csum_10 SUM[10] 0 10f
Csum_9 SUM[9] 0 10f
Csum_8 SUM[8] 0 10f
Csum_7 SUM[7] 0 10f
Csum_6 SUM[6] 0 10f
Csum_5 SUM[5] 0 10f
Csum_4 SUM[4] 0 10f
Csum_3 SUM[3] 0 10f
Csum_2 SUM[2] 0 10f
Csum_1 SUM[1] 0 10f
Csum_0 SUM[0] 0 10f


.OP

*to setup the simulator, of course, you can modify it yourself.
.option delmax=0.05n
.option post method=gear  probe

*Output the average current
.measure average avg I(VDD)

*Probe these outputs, of course, you can modify it yourself
.probe V(a[0]) V(b[0]) V(a[1]) V(b[1]) V(sum[0]) V(sum[1]) V(sum[2]) V(sum[3]) V(sum[4]) V(sum[5]) V(sum[6])
+ V(sum[7]) V(sum[8]) V(sum[9]) V(sum[10]) V(sum[11]) V(sum[12] V(sum[13]) V(sum[14]) V(sum[15]) V(sum[16])
+ V(sum[17]) V(sum[18]) V(sum[19]) V(sum[20]) V(sum[21]) V(sum[22] V(sum[23]) V(sum[24]) V(sum[25]) V(sum[26])
+ V(sum[27]) V(sum[28]) V(sum[29]) V(sum[30] V(sum[31]) V(sum[32]) v(vdd) I(VDD)

*to test the function of your 32bits UCB carry-bypass adder, just open the first line and close the other 2 lines;
*to fetch the critical delay of your adder, just open the second line, and close the other 2 lines.
*to fetch the average current(to calculate power consumption, PDP and EDP), just open the third line and close the other 2 lines.
* .tran 0.05n 30n
* .tran 0.05n 10n
.tran 0.1n 150n

.end

*################################################end of the test######################################################*
*################################################end of the test######################################################*
*################################################end of the test######################################################*