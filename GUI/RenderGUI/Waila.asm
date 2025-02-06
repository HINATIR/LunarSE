#WIP


0x52A6A0
SUB SP, SP, #0xB0
STP X20, X19, [SP,#0x80]
STP X22, X21, [SP,#0x90]
STP X29, X30, [SP,#0xA0]
ADD X29, SP, #0xA0
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
MOV W3, W0
MOV W2, #1
MOV X1, X22
ADD X0, SP, #0x10
BL 0x1C997C ; ItemInstance::ItemInstance(Item *, int, int)
ADD X0, SP, #0x10
ADD X8, SP, #0x80
BL 0x1581E0 ; ItemInstance::getHoverName(void)
MOV W1, #240
MOV W2, #3
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #1
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADD X0, SP, #0x10
Bl 0x1C9B8C ; ItemInstance::~ItemInstance()
LDP X29, X30, [SP,#0xA0]
LDP X22, X21, [SP,#0x90]
LDP X20, X19, [SP,#0x80]
ADD SP, SP, #0xB0
RET