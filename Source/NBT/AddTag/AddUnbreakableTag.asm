0x520F8C ; void CompoundTag::AddUnbreakableTag(bool)

SUB SP, SP, #0x40
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30 
MOV X21, X0
MOV W22, W1
ADRP X0, #0xD80000
ADD X0, X0, #0xCA0 ; "Unbreakable"
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X21
MOV X1, X19
MOV W2, W22
BL 0xE1370 ; CompoundTag::putBoolean(std::wstring const&, bool)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x40
RET