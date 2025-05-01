# Waila Ver 1.0
0x52AE00
SUB SP, SP, #0x80
STP X20, X19, [SP,#0x50]
STP X22, X21, [SP,#0x60]
STP X29, X30, [SP,#0x70]
ADD X29, SP, #0x70
BL 0x67db90 ; Minecraft::GetInstance
LDR X19, [X0, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR X8, [X19,#0x900]
LDR X0, [X8,#0x238]
CBZ X0, _isAir
BL 0x16B984 ; HitResult::getBlockPos(void)const
MOV X21, X0
CBZ X0, _isAir
LDR W1, [X21]
LDR W2, [X21, #4]
LDR W3, [X21, #8]
LDR X0, [X19, #0x58] ; LocalPlayer->lvl
BL 0x1FC700 ; Level::getBlockId(int, int, int)
CBZ W0, _isAir
MOV X1, X21
LDR X0, [X19, #0x58] ; LocalPlayer->lvl
BL 0x1FC768 ; Level::getBlock(BlockPos const&)
MOV             X9, X0
ADRP            X8, #0x176A000
LDR             X8, [X8,#0xEE8]
LDR             X0, [X8]
LDR             X8, [X0]
LDR             X10, [X8,#0x30]
ADD X8, SP, #0x10
MOV             X1, X9
BLR             X10
ADD X8, SP, #0x30
ADD X0, SP, #0x10
BL   0x718D40
LDR W1, [X21]
LDR W2, [X21, #4]
LDR W3, [X21, #8]
LDR X0, [X19, #0x58] ; LocalPlayer->lvl
BL 0x1FC7D4 ; Level::getBlockData(int, int, int)
CBZ W0, _noBlockData
MOV W3, W0
ADRP X20, #0x1870000
ADD X2, X20, #0x4C0
ADD X20, X20, #0xA00
MOV W1, #0x100
MOV X0, X20
BL 0x9C9C58 ; swprintf
ADD X0, SP, #0x30
MOV X1, X20
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
ADD X0, SP, #0x30 <= _noBlockData
MOV W1, #5
MOV W2, #45
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #0
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x70] <= _isAir
LDP X22, X21, [SP,#0x60]
LDP X20, X19, [SP,#0x50]
ADD SP, SP, #0x80
RET