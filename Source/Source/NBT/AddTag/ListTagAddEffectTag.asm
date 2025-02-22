0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)

RET
SUB SP, SP, #0x70
STP X26, X25, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X20, X19, [SP,#0x40]
STP X22, X21, [SP,#0x50]
STP X29, X30, [SP,#0x60]
ADD X29, SP, #0x60 
MOV X21, X0
MOV W23, W1
MOV W24, W2
MOV W25, W3
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADRP X0, #0xD85000 ; "Ambient"
ADD X0, X0, #0xB38
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0x0
BL 0xE6140 ; CompoundTag::putByte(std::wstring const&, unsigned char)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD85000 ; "Amplifier"
ADD X0, X0, #0xB10
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W23
BL 0xE6140 ; CompoundTag::putByte(std::wstring const&, unsigned char)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD85000 ; "Id"
ADD X0, X0, #0xB04
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W24
BL 0xE6140 ; CompoundTag::putByte(std::wstring const&, unsigned char)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD85000 ; "ShowParticles"
ADD X0, X0, #0xB58
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0x1
BL 0xE6140 ; CompoundTag::putByte(std::wstring const&, unsigned char)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6C000 ; "Duration"
ADD X0, X0, #0xAC0
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, W25 ; max = 7FFFFFFF
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X21
MOV X1, X22
BL 0x20BFC8 ; ListTag::add((Tag *))
LDP X29, X30, [SP,#0x60]
LDP X22, X21, [SP,#0x50]
LDP X20, X19, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDP X26, X25, [SP,#0x20]
ADD SP, SP, #0x70
RET


0xD898DC : CustomPotionEffects
0xD85B04 : Id
0xD85B10 : Amplifier
0xD85B38 : Ambient
0xD85B58 : ShowParticles
0xD6CAC0 : Duration