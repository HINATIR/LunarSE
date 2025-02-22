0x520D94 ; void ListTag::AddEnchTag(id,lvl)

SUB SP, SP, #0x60
STP X24, X23, [SP,#0x20]
STP X20, X19, [SP,#0x30]
STP X22, X21, [SP,#0x40]
STP X29, X30, [SP,#0x50]
ADD X29, SP, #0x50 
MOV X21, X0
MOV W23, W1
MOV W24, W2
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADRP X0, #0xD6D000 ; "id"
ADD X0, X0, #0x6F8
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W23
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD80000
ADD X0, X0, #0xC70 ; "lvl"
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W24
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X21
MOV X1, X22
BL 0x20BFC8 ; ListTag::add((Tag *))
LDP X29, X30, [SP,#0x50]
LDP X22, X21, [SP,#0x40]
LDP X20, X19, [SP,#0x30]
LDP X24, X23, [SP,#0x20]
ADD SP, SP, #0x60
RET


0xD78B30 : ench
0xD6D6F8 : id
0xD80C70 : lvl