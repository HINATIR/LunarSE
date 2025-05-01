0x52B300 ; DebugScreen
SUB SP, SP, #0x90
STP X20, X19, [SP,#0x60]
STP X22, X21, [SP,#0x70]
STP X29, X30, [SP,#0x80]
ADD X29, SP, #0x80 ; ===============
BL 0x67db90 ; Minecraft::GetInstance
LDR X0,[X0, #0x58]
ADD X8, SP, #0x10
BL 0x15A408 ; Entity::getUUID(void)
BL 0x67DB90
LDR X8, [X0, #0x58]
LDR X0, [X8, #0x58]
ADD X1, SP, #0x10
ADD X8, SP, #0x30
BL 0x205314 ; Level::getPlayerByUUID(uuid)
LDR X0, [SP, #0x30]
ADD X8, SP, #0x48
BL 0x2D1024 ; LocalPlayer::getNetworkName(void)
ADD X0, SP, #0x48
MOV W1, #5
MOV W2, #75
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #0
FMOV S0, 4
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x80]
LDP X22, X21, [SP,#0x70]
LDP X20, X19, [SP,#0x60]
ADD SP, SP, #0x90
RET