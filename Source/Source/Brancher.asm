0x5535F4:
BL 0x9CBC30

0x553540
BL 0x9CBCA8

0x9CBC30:
SUB SP, SP, #0x20
STP X29, X30, [SP,#0x10]
ADD X29, SP, #0x20 
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
BL 0x52A950 ; LunarSEver
LDP X29, X30, [SP,#0x10]
ADD SP, SP, #0x20
RET
SUB SP, SP, #0x40
STP X22, X21, [SP,#0x10]
STP X20, X19, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30 
MOV X19, X0
MOV X20, X1
ADRP X22, #0x1800000
MOV X0, X22
LDR W1, [X0]
CBZ W1, _notLoaded
LDR W2, [X22, #0x44] ; fileReadFlag
CBNZ W2, _NofileReadFlag
ADRP X1, #0x1870000
BL 0x52A5D0 ; wchar_t readFile(wchar_t filepath, temp)
MOV W2, #1
STR W2, [X22, #0x44]
LDR W2, [X22, #0x48] <= _NofileReadFlag ; idChangeFlag
CBNZ W2, _notLoaded
BL 0x052A510 ; idchanger
MOV W2, #1
STR W2, [X22, #0x48]
MOV X0, X19 <= _notLoaded
MOV X1, X20
FMOV S0, 0
LDP X29, X30, [SP,#0x30]
LDP X20, X19, [SP,#0x20]
LDP X22, X21, [SP,#0x10]
ADD SP, SP, #0x40
RET