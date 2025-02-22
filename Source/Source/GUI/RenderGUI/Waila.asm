#WIP


0x52A900
SUB SP, SP, #0x80
STP X20, X19, [SP,#0x50]
STP X22, X21, [SP,#0x60]
STP X29, X30, [SP,#0x70]
ADD X29, SP, #0x70
BL 0x67db90 ; Minecraft::GetInstance
LDR X19, [X0, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR X8, [X19,#0x900]
LDR X0, [X8,#0x238]
BL 0x16B984 ; HitResult::getBlockPos(void)const
MOV X21, X0
MOV X1, X21
LDR X0, [X19, #0x58] ; LocalPlayer->lvl
BL 0x1FC768 ; Level::getBlock(BlockPos const&)
BL 0x16C878 ; Item::byBlock(Block *)
MOV X22, X0
LDR W1, [X21]
LDR W2, [X21, #4]
LDR W3, [X21, #8]
LDR X0, [X19, #0x58] ; LocalPlayer->lvl
BL 0x1FC7D4 ; Level::getBlockData(int, int, int)
MOV W20, W0
MOV W0, #0x78 ; 'x' ; unsigned __int64
BL 0x9C9A78 ; _Znwm_0
MOV W3, W20
MOV W2, #1
MOV X1, X22
MOV X21, X0
BL 0x1C997C ; ItemInstance::ItemInstance(Item *, int, int)
MOV X0, X21
ADD X8, SP, #0x30
BL 0x18DE3C ; ItemInstance::getUnfilteredHoverName(void)
ADD X0, SP, #0x30
MOV W1, #5
MOV W2, #35
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #0
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x70]
LDP X22, X21, [SP,#0x60]
LDP X20, X19, [SP,#0x50]
ADD SP, SP, #0x80
RET


# Waila Ver 1.0
0x52A860
SUB SP, SP, #0xD0
STP X20, X19, [SP,#0xA0]
STP X22, X21, [SP,#0xB0]
STP X29, X30, [SP,#0xC0]
ADD X29, SP, #0xC0
BL 0x67db90 ; Minecraft::GetInstance
LDR X19, [X0, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR X8, [X19,#0x900]
LDR X0, [X8,#0x238]
BL 0x16B984 ; HitResult::getBlockPos(void)const
MOV X21, X0
MOV X1, X21
LDR X0, [X19, #0x58] ; LocalPlayer->lvl
BL 0x1FC768 ; Level::getBlock(BlockPos const&)
ADD X8, SP, #0x10
BL 0x4DB60 ; Block::toString(void)
ADD X0, SP, #0x10
MOV W1, #5
MOV W2, #35
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #0
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0xC0]
LDP X22, X21, [SP,#0xB0]
LDP X20, X19, [SP,#0xA0]
ADD SP, SP, #0xD0
RET