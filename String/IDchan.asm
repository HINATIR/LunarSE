0x553540
BL 0x52A510

0x52A510:
SUB SP, SP, #0x40
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30
MOV X21, X0
MOV X22, X1
ADRP X20, #0x1870000
LDR W0, [X20, #0x4C4]
CBNZ W0, _noload
ADRP X8, #0x177C000
LDR X8, [X8, #0xE40]
LDR X19, [X8]
ADD X3, X19, #0x208
LDR W2, [X3]
CBZ W2, _noload
LDR X2, [X20, #0x4C8]
CBZ X2, _noload
ADD X2, X20, #0x4C8
MOV W1, #0x100
MOV X0, X3
BL 0x9C9C58 ; swprintf
ADD X3, X19, #0x124
ADD X2, X20, #0x4C8
MOV W1, #0x100
MOV X0, X3
BL 0x9C9C58 ; swprintf
MOV W0, #1
STR W0, [X20, #0x4C4]
MOV X0, X21 <= _noload
MOV X1, X22
FMOV S0, 0
LDP X29, X30, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x40
RET