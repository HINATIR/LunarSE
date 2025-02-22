0x52953C:
RET
SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
BL 0x67db90 ; Minecraft::GetInstance
MOV X22, X0
LDR X0, [X22, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDRB W1, [X0,#0xC0] ; isOnGround
CBZ W1, _OnGroundskip
ADRP X0, #0x1870000
ADD X0, X0, #0xE0
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV W1, 5
MOV W2, #240
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, 0
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDR X0, [X22,#0x58] <= _OnGroundskip ; mc::Minecraft::getInstance()->LocalPlayer
LDRB W1, [X0,#0x6F1] ; isFlying
CBZ W1, _isSprinting
ADRP X2, #0x1870000
ADD X2, X2, #0x104
B _jump1
LDR X0, [X22,#0x58] <= _isSprinting ; mc::Minecraft::getInstance()->LocalPlayer
BL 0x6CDF28 ; LocalPlayer::isSprinting(void)
CBZ W0, _isSneaking
ADRP X0, #0x6D0000
LDR W0, [X0, #0x430]
MOVZ W8, #0xD503,LSL #16
MOVK W8, #0x201F
CMP W0, W8
B.EQ _isToggleSprint
ADRP X3, #0x1870000
ADD X3, X3, #0x1BC
B _isToggled2
ADRP X3, #0x1870000 <= _isToggleSprint
ADD X3, X3, #0x19C
ADRP X2, #0x1870000 <= _isToggled2
ADD X2, X2, #0x154
B _jump1
LDR X0, [X22,#0x58] <= _isSneaking ; mc::Minecraft::getInstance()->LocalPlayer
BL 0x6CFE04 ; LocalPlayer::isSneaking(void)
CBZ W0, _noStatus
ADRP X2, #0x1870000
ADD X2, X2, #0x128
ADRP X19, #0x1870000 <= _jump1
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
MOV W1, 5
MOV W2, #250
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #0
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x40] <= _noStatus
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET