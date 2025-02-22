renderXZSpeed
0x52A440:
SUB SP, SP, #0x30
STP X20, X19, [SP,#0x10]
STP X29, X30, [SP,#0x20]
ADD X29, SP, #0x20 
BL 0x67db90 ; Minecraft::GetInstance
LDR X0, [X0,#0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR D0, [X0, #0x90]
LDR D1, [X0, #0xA0]
FMUL D0, D0, D0
FMUL D1, D1, D1
FADD D0, D0, D1
BL 0x9C9B88 ; sqrt
FMOV D1, 20
FMUL D0, D0, D1
ADRP X20, #0x1870000
ADD X2, X20, #0x3DC
ADD X19, X20, #0xF00
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
MOV W1, 5
MOV W2, #25
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, 0
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x30
RET