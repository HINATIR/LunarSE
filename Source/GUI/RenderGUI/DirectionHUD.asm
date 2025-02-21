0x5296BC:
RET
SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
BL 0x67db90 ; Minecraft::GetInstance
MOV X22, X0
LDR X19, [X22, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR S0, [X19,#0xA8] ; get Yaw
FCVT D0, S0
ADRP X19, 0xD6A000
ADD X19, X19, #0xE0
LDR D1, [X19]
FADD D0, D0, D1
BL 0x9C9EB8 ; double fmod_0(double x)
FCVTZS W3, D0
CMP W3, #0
B.GE _yawPlusSkip1 ; yaw >= 0
MOV W0, #360
ADD W3, W3, W0
ADRP X2, #0x1870000 <= _yawPlusSkip1
ADD X2, X2, #0x1E8
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
MOV W2, #3
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #1
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0x1870000
ADD X0, X0, #0x1E0
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV W1, #320
MOV W2, #13
MOVZ W3, #0xFFFF,LSL #16
MOV W4, 0
FMOV S0, 3
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV W24, #24
SUB W24, W24, #1 <= _Renderloop
LDR X19, [X22, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR S0, [X19,#0xA8] ; get Yaw
FCVT D0, S0
ADRP X19, 0xD6A000
ADD X19, X19, #0xE0
LDR D1, [X19]
FADD D0, D0, D1
BL 0x9C9EB8 ; double fmod_0(double x)
FCVTZS W23, D0
CMP W23, #0
B.GE _yawPlusSkip2 ; yaw >= 0
MOV W0, #360
ADD W23, W23, W0
MOV W1, #15 <= _yawPlusSkip2
MUL W0, W1, W24 ; loop = 360,345,330... 15
SUB W2, W23, W0 ; W2 = yaw - loop
MOV W3, # 180
CMP W2, W3
B.GT _MoreThan180 ; W2 > 180
MOV W3, #-180
CMP W2, W3
B.LE _LessOrEq-180 ; W2 <= -180
MOV W1, #-60 <= _Fixed
CMP W2, W1
B.LE _LoopSkip ; W2 <= -60
MOV W1, #60
CMP W2, W1
B.GT _LoopSkip ; W2 > 60
MOV W23, W2
MOV W0, W2
BL 0x9C9CF8 ; void __noreturn abs_0(void)
MOV W1, #0xFF
SUB W0, W1, W0
MOV W1, #0x100
MUL W0, W0, W1
MOV W2, W23
MOV W23, W0
MOV W1, #-2
MUL W1, W1, W2
MOV W0, #320
ADD W20, W1, W0
MOV W1, #0x10
MUL W1, W1, W24
SXTW X0, W1
MOV X1, #0x1F4
ADD X1, X1, X0
ADRP X0, #0x1870000
ADD X0, X0, X1
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV W1, W20
MOV W2, #25
MOVZ W3, #0x00FF,LSL #16
ADD W3, W3, W23,LSL #16
MOVK W3, #0xFFFF
MOV W4, #1
FMOV S0, 3
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0x1870000
ADD X0, X0, #0x1E0
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV W1, W20
MOV W2, #17
MOVZ W3, #0xFFFF,LSL #16
ADD W3, W3, W23,LSL #16
MOVK W3, #0xFFFF
MOV W4, 0
FMOV S0, 3
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
CBNZ W24, _Renderloop <= _LoopSkip
B _LoopEnd
MOV W1, #360 <= _LessOrEq-180
ADD W2, W2, W1
B _Fixed
MOV W1, #360 <= _MoreThan180
SUB W2, W2, W1
B _Fixed
LDP X29, X30, [SP,#0x40] <= _LoopEnd
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET