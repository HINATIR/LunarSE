0x52A8F0 ; float getScreenScaleCord(void)

SUB SP, SP, #0x40
STP X20, X19, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30 

ADRP X0, 0x17A8000
ADD X0, X0, 0x380
LDR X0, [X0]
LDR S1, [X0, #0x294]
MOV W0, #1920
SCVTF S0, W0
FDIV S0, S1, S0
LDP X29, X30, [SP,#0x30]
LDP X20, X19, [SP,#0x20]
ADD SP, SP, #0x40
RET