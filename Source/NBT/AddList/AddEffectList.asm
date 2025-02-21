0x521004 ; List CompoundTag::AddCustomEffectList();

SUB SP, SP, #0x40
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30 
MOV X21, X0
ADRP X0, #0xD89000 ; "CustomPotionEffects"
ADD X0, X0, #0x8DC
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV W0, #0x28
BL 0x9C9A78 ; operator new(ulong)
MOV W1, WZR
MOV X22, X0
BL 0x216280 ; ListTag::ListTag(0)
MOV X0, X21
MOV X1, X19
MOV X2, X22
BL 0xE1F4C ; CompoundTag::put(std::wstring const&, Tag *)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X22
LDP X29, X30, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x40
RET