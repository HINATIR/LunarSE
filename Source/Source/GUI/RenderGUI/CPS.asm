0x6D3720:
BL 0x6a2700

0x6A2700:
SUB SP, SP, #0x40
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30
MOV X21, X0
MOV W22, W1
CMP W1, #0
B.EQ _ZRcps
CMP W1, #1
B.NE _END
ADRP X19, 0x1800000
ADD X19, X19, #0x4C
LDR X1, [X19]
LDR W8, [X19, #0x8]
ADD W8, W8, #1
STR W8, [X19, #0x8]
B _END
ADRP X19, #0x1800000 <= _ZRcps
ADD X19, X19, #0x5C
LDR X1, [X19]
LDR W8, [X19, #0x8]
ADD W8, W8, #1
STR W8, [X19, #0x8]
MOV X0, X21 <= _END
MOV W1, W22
LDP X29, X30, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x40
MOV X19, X0
RET

0x52993C:
RET
SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
BL 0x67db90 ; Minecraft::GetInstance
MOV X22, X0
BL #0x37D588
ADRP X19, #0x1800000
ADD X19, X19, #0x4C
LDR X1, [X19]
SUB X9, X0, X1
CMP X9, #0x3E8
B.LS _cps
STR X0, [X19]
LDR W8, [X19, #0x8]
STR W8, [X19, #0xC]
LDR W8, [X19, #0x18]
STR W8, [X19, #0x1C]
STR WZR, [X19, #0x8]
STR WZR, [X19, #0x18]
LDR W3, [X19, #0xC] <= _cps
LDR W4, [X19, #0x1C]
ADRP X2, #0x1870000
ADD X2, X2, #0x374
ADRP X19, #0x1870000
ADD X19, X19, #0xF00
ADRP X21, 0x1870000
ADD X21, X21, #0xA00
MOV W1, #0x100
MOV X0, X21
BL 0x9C9C58 ; swprintf
MOV X0, X21
STP XZR, XZR, [X19,#8]
STR XZR, [X19]
BL 0xB6BBC ; wcslen
MOV X2, X0
MOV X0, X19
MOV X1, X21
BL 0x9C9A98; std::wstring::__init(wchar_t const*,ulong)
MOV X0, X19
MOV W1, #240
MOV W2, #190
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #1
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET