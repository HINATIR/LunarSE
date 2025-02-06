0x520E5C ; void ListTag::AddAttributeTag(ID,Operation,UUID,Amount)

SUB SP, SP, #0x70
STR D8, [SP,#0x10]
STR X25, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X20, X19, [SP,#0x40]
STP X22, X21, [SP,#0x50]
STP X29, X30, [SP,#0x60]
ADD X29, SP, #0x60 
MOV X21, X0
MOV W23, W1
MOV W24, W2
MOV W25, W3
FMOV D8, D0
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADRP X0, #0xD80000
ADD X0, X0, #0xF5C ; "ID"
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W23
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD8B000
ADD X0, X0, #0x23C ; "Operation"
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W24
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD79000
ADD X0, X0, #0x3E4 ; "UUID"
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W25
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD8B000
ADD X0, X0, #0x220 ; "Amount"
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
FMOV D0, D8
BL 0xE62D8 ; CompoundTag::putDouble(std::wstring const&, double)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X21
MOV X1, X22
BL 0x20BFC8 ; ListTag::add((Tag *))
LDP X29, X30, [SP,#0x60]
LDP X22, X21, [SP,#0x50]
LDP X20, X19, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDR X25, [SP,#0x20]
LDR D8, [SP,#0x10]
ADD SP, SP, #0x70
RET


0xD80F10 : AttributeModifiers
0xD80F5C : ID
0xD8B23C : Operation
0xD8B220 : Amount
0xD793E4 : UUID