
0x6CE49C
BL 0x52A300

0x52A300:
SUB SP, SP, #0x50
STP D9, D8, [SP,#0x10]
STR D10, [SP,#0x20]
STP X21, X20, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
MOV X20, X0
MOV W21, W1
ADRP X8, #0x17C4000
LDR X8, [X8, #0xC28]
LDR X8, [X8, #0xF8]
LDR X8, [X8, #0x28]
LDR X8, [X8, #0x10]
LDR X2, [X8, #0x60]
CBZ X2, _NoEntity
ADRP X21, #0x1800000
LDR D9, [X20, #0x88]
LDR D10, [X2, #0x88]
FSUB D0, D10, D9
FMUL D0, D0, D0
LDR D8, [X20, #0x78]
LDR D9, [X2, #0x78]
FSUB D1, D9, D8
FMUL D1, D1, D1
FADD D0, D0, D1
BL 0x9C9B88
STR D0, [X21, 0x88]
MOV X0, X20 <= _NoEntity
MOV W19, W21
LDP X29, X30, [SP,#0x40]
LDP X21, X20, [SP,#0x30]
LDR D10, [SP, #0x20]
LDP D9, D8, [SP, #0x10]
ADD SP, SP, #0x50
RET

0x52A3A0
SUB SP, SP, #0x30
STP X20, X19, [SP,#0x10]
STP X29, X30, [SP,#0x20]
ADD X29, SP, #0x20 
ADRP X20, #0x1800000
LDR D0, [X20, 0x88]
ADRP X2, #0x1870000
ADD X2, X2, #0x3A4
ADRP X19, #0x1870000
ADD X19, X19, #0xF00
ADRP X20, 0x1870000
ADD X20, X20, #0xA00
MOV W1, #0x100
MOV X0, X20
BL 0x9C9C58 ; swprintf
MOV X0, X20
STP XZR, XZR, [X19,#8]
STR XZR, [X19]
BL 0xB6BBC ; wcslen
MOV X2, X0
MOV X0, X19
MOV X1, X20
BL 0x9C9A98; std::wstring::__init(wchar_t const*,ulong)
MOV X0, X19
MOV W1, #0x1E0
MOV W2, #0x115
MOVZ W3, #0x6F9F,LSL #16
MOVK W3, #0x9F9F
MOV W4, #1
FMOV S0, 2
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x30
RET