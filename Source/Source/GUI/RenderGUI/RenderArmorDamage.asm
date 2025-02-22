0x6A2790:
SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
BL 0x67db90 ; Minecraft::GetInstance
MOV X22, X0
ADRP X20, #0x1800000
ADD X20, X20, #0x6C
MOV W23, #4
SUB W23, W23, #1 <= _GetArmorDamageLoop
LDR X19, [X22,#0x58] ; mc::Minecraft::getInstance()->LocalPlayer
LDR X0, [X19, #0x5B0] ; LocalPlayer->Enventory
MOV X8, X20
MOV W1, W23
BL 0x1B3C1C ; Inventory::getArmor(int)
LDR X0, [X20]
CBZ X0, _NoArmor
LDR X1, [X0, #0x18] ; ItemInstance->item
CBZ X1, _NoArmor
LDR W2, [X1, #0x1C] ; item->MaxDamage
LDR W3, [X0, #0x2C] ; damage
SUB W3, W2, W3
ADRP X2, #0x1870000
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
MOV W1, #0x22
MOV W2, #0xC9
MOV W3, #0x10
MUL W3, W3, W23
SUB W2, W2, W3
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #0
FMOV S0, 3
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 <= _NoArmor ; std::wstring::~wstring(void)
CBNZ W23, _GetArmorDamageLoop
LDP X29, X30, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET