0x52946C:
RET
SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
BL 0x67db90 ; Minecraft::GetInstance
MOV X22, X0
LDR X19, [X22,#0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR D0, [X19,#0x78]
LDR D1, [X19,#0x80]
FMOV D2, 1
FADD D1, D1, D2
LDR D2, [X19,#0x88]
ADRP X21, 0x1870000
ADD X21, X21, #0xA00
ADRP X2, #0x1870000
ADD X2, X2, #0x58
MOV W1, #0x100
MOV X0, X21
ADRP X19, #0x1870000
ADD X19, X19, #0xF00
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
MOV W1, #5
MOV W2, #5
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #0
FMOV S0, 4
BL 0x521530 ; wstring displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
LDP X29, X30, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET