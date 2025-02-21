0x52A880 ; double hypot(double x, double y)
SUB SP, SP, #0x20
STP X29, X30, [SP,#0x10]
ADD X29, SP, #0x10
FMUL D0, D0, D0
FMUL D1, D1, D1
FADD D0, D0, D1
BL 0x9C9B88 ; double sqrtf_0(double x)
LDP X29, X30, [SP,#0x10]
ADD SP, SP, #0x20
RET

0x52A8A8 ; float hypot(float x, float y)
SUB SP, SP, #0x20
STP X29, X30, [SP,#0x10]
ADD X29, SP, #0x10
FMUL S0, S0, S0
FMUL S1, S1, S1
FADD S0, S0, S1
BL 0x9C9BF8 ; float sqrtf_0(float x)
LDP X29, X30, [SP,#0x10]
ADD SP, SP, #0x20
RET