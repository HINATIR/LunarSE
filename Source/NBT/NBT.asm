524554

RET
SUB SP, SP, #0x70
STP X26, X25, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X20, X19, [SP,#0x40]
STP X22, X21, [SP,#0x50]
STP X29, X30, [SP,#0x60]
ADD X29, SP, #0x60 
ADRP X21,#0x17BE000 ; スピガポーション
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21]
LDR X20, [X21,#0x28]
CBNZ X20, _END
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x521004 ; List CompoundTag::AddCustomEffectList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x1 ; Amplifier
MOV W2, #0x1 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
MOV X0, X22
MOV W1, #0x1 ; Amplifier
MOV W2, #0x5 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
MOV X0, X22
MOV W1, #0x9 ; Amplifier
MOV W2, #0x10 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
LDR X0, [X21,#0x28]
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#2984] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; 耐久ポーション
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21 , #0x8]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x521004 ; List CompoundTag::AddCustomEffectList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x4 ; Amplifier
MOV W2, #11 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
MOV X0, X22
MOV W1, #0x1 ; Amplifier
MOV W2, #1 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
MOV X0, X22
MOV W1, #0x9 ; Amplifier
MOV W2, #16 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
LDR X0, [X21,#0x28]
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#2984] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; 力ポーション
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21 , #0x10]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x521004 ; List CompoundTag::AddCustomEffectList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x1 ; Amplifier
MOV W2, #5 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
MOV X0, X22
MOV W1, #0x9 ; Amplifier
MOV W2, #16 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
LDR X0, [X21,#0x28]
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#2984] ; itemid * 8 
STR X19,[X21,#0x20]
MOV W0, #0
STR W0,[X21,#0x34]
ADRP X21,#0x17BE000 ; 暗視スプラッシュ
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21 , #0x18]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x521004 ; List CompoundTag::AddCustomEffectList();
MOV W1, #0x9 ; Amplifier
MOV W2, #16 ; Id
MOV W3, #0x7FFFFFFF ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
LDR X0, [X21,#0x28]
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#3504] ; itemid * 8 
STR X19,[X21,#0x20]
MOV W0, #64
STR W0,[X21,#0x18]
ADRP X21,#0x17BE000 ; 即死ポ
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x20]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x521004 ; List CompoundTag::AddCustomEffectList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x1D ; Amplifier
MOV W2, #0x6 ; Id
MOV W3, #0x0 ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
LDR X0, [X21,#0x28]
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#2984] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; 即死ポスプラッシュ
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x28]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x521004 ; List CompoundTag::AddCustomEffectList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x1D ; Amplifier
MOV W2, #0x6 ; Id
MOV W3, #0x0 ; Duration
BL 0x520C54 ; void ListTag::AddEffectTag(Amplifier,Id,Duration)
LDR X0, [X21,#0x28]
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#3504] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; 防護4ダイヤフル
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x30]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X26, X0
BL 0xE5A44 ; CompoundTag(void)
MOV X0, X26
MOV W1, #1
BL 0x520F8C ; void CompoundTag::AddUnbreakableTag(bool)
MOV X0, X26
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #0 ; ID
MOV W2, #4 ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X26
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19, #2480] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x38]
ADD X0, X21, #8
MOV X1, X26
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19, #2488] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x40]
ADD X0, X21, #8
MOV X1, X26
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19, #2496] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x48]
ADD X0, X21, #8
MOV X1, X26
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19, #2504] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; ダイヤ剣
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x50]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X26, X0
BL 0xE5A44 ; CompoundTag(void)
MOV X0, X26
MOV W1, #1
BL 0x520F8C ; void CompoundTag::AddUnbreakableTag(bool)
MOV X0, X26
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV X22, X0
MOV X0, X22
MOV W1, #16 ; ID
MOV W2, #5 ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
MOV X0, X22
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X26
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19, #2208] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; ガップル
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x58]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X26, X0
BL 0xE5A44 ; CompoundTag(void)
MOV X0, X26
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADD X0, X21, #8
MOV X1, X26
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19, #2576] ; itemid * 8 
STR X19,[X21,#0x20]
MOV W0, #1
STR W0,[X21,#0x34]
ADRP X21,#0x17BE000 ; スピードブーツ
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x60]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x5210F4 ; List CompoundTag::AddAttributeList();
MOV W1, #0x3 ; ID
MOV W2, #0x0 ; Operation
MOV W3, #0x4 ; UUID
FMOV D0, 0.125
BL 0x520E5C ; void ListTag::AddAttributeTag(ID,Operation,UUID,Amount)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#2504] ; itemid * 8 
STR X19,[X21,#0x20]
MOV W0, #0
STR W0,[X21,#0x34]
ADRP X21,#0x17BE000 ; 鍵シュルカー
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x68]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x5211E4 ; Tag CompoundTag::AddBlockEntityTag();
MOV X22, X0
ADRP X0, #0xD84000 ; "Lock"
ADD X0, X0, #0x898
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV X2, X19
BL 0xE1EE8 ; CompoundTag::putString(std::wstring const&, std::wstring const&)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#1872] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; エフェクトスポナー
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x70]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADD X20, X21, #8
MOV X0, X20
MOV X1, X22
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
LDR X0, [X21,#0x28]
BL 0x5211E4 ; Tag CompoundTag::AddBlockEntityTag();
MOV X22, X0
ADRP X0, #0xD6D000 ; "Delay"
ADD X0, X0, #0x714
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "MinSpawnDelay"
ADD X0, X0, #0x794
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #100
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "MaxSpawnDelay"
ADD X0, X0, #0x7CC
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #100
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "SpawnCount"
ADD X0, X0, #0x804
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #1
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "MaxNearbyEntities"
ADD X0, X0, #0x830
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #8
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "RequiredPlayerRange"
ADD X0, X0, #0x878
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #4
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "SpawnRange"
ADD X0, X0, #0x8C8
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0
BL 0xE61A4 ; CompoundTag::putShort(std::wstring const&, short)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X24, X22
ADRP X0, #0xD6D000 ; "SpawnData"
ADD X0, X0, #0x76C
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
MOV X0, X24
MOV X1, X19
MOV X2, X22
BL 0xE1F4C ; CompoundTag::put(std::wstring const&, Tag *)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "id"
ADD X0, X0, #0x6F8
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X20, X0
ADRP X0, #0xD81000 ; "minecraft:area_effect_cloud"
ADD X0, X0, #0xA2C
ADRP X1, #0x1876000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X20
MOV X2, X19
BL 0xE1EE8 ; CompoundTag::putString(std::wstring const&, std::wstring const&)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X20
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X24
ADRP X1, #0xD6D000 ; "SpawnPotentials"
ADD X1, X1, #0x72C
BL 0x52116C ; List CompoundTag::AddList(wchat_t const*);
MOV X24, X0
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
ADRP X0, #0xD93000
ADD X0, X0, #0x3DC ; "Weight"
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #1
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X23, X22
ADRP X0, #0xD93000 ; "Entity"
ADD X0, X0, #0x3F8
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X22, X0
BL 0xE5A44 ; CompoundTag(void)
MOV X0, X23
MOV X1, X19
MOV X2, X22
BL 0xE1F4C ; CompoundTag::put(std::wstring const&, Tag *)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6D000 ; "id"
ADD X0, X0, #0x6F8
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X20, X0
ADRP X0, #0xD81000 ; "minecraft:area_effect_cloud"
ADD X0, X0, #0xA2C
ADRP X1, #0x1876000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X20
MOV X2, X19
BL 0xE1EE8 ; CompoundTag::putString(std::wstring const&, std::wstring const&)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X20
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD79000 ; "CustomName"
ADD X0, X0, #0x3F8
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X20, X0
ADRP X0, #0x1870000 ; "Name" ======================================================================= YOur Name
ADD X0, X0, #0x800
ADRP X1, #0x1876000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X20
MOV X2, X19
BL 0xE1EE8 ; CompoundTag::putString(std::wstring const&, std::wstring const&)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X20
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD79000 ; "CustomNameVisible"
ADD X0, X0, #0x4E4
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #1
BL 0xE1370 ; CompoundTag::putBoolean(std::wstring const&, bool)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6C000 ; "Age"
ADD X0, X0, #0x91C
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6C000 ; "Duration"
ADD X0, X0, #0x91C
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0x7FFFFFFF
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6C000 ; "Particle"
ADD X0, X0, #0xC10
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6C000 ; "ReapplicationDelay"
ADD X0, X0, #0xB08
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, #0xD6C000 ; "Waittime"
ADD X0, X0, #0xAE4
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
MOV W2, #0
BL 0xE4458 ; CompoundTag::putInt(std::wstring const&, int)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, 0xD6C000 ; "DurationOnUse"
ADD X0, X0, #0xB54
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
FMOV S0, 0
BL 0xE626C ; CompoundTag::putFloat(std::wstring const&, Float)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, 0xD6C000 ; "Radiuspertick"
ADD X0, X0, #0xBBC
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
FMOV S0, 0
BL 0xE626C ; CompoundTag::putFloat(std::wstring const&, Float)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, 0xD6C000 ; "RadiusOnUse"
ADD X0, X0, #0xB8C
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
FMOV S0, 0
BL 0xE626C ; CompoundTag::putFloat(std::wstring const&, Float)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADRP X0, 0xD6C000 ; "Radius"
ADD X0, X0, #0xBF4
ADRP X1, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
MOV X0, X22
MOV X1, X19
FMOV S0, 2
BL 0xE626C ; CompoundTag::putFloat(std::wstring const&, Float)
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV X0, X24
MOV X1, X23
BL 0x20BFC8 ; ListTag::add((Tag *))
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#0x1A0] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; バリブロ
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x78]
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#1328] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; 水
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x80]
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#72] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; 溶岩
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x88]
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#88] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; debug_forj
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x90]
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19,#0x4678] ; itemid * 8 
STR X19,[X21,#0x20]
ADRP X21,#0x17BE000 ; 発光の矢
ADD X21,X21,#0x6B0
LDR X21, [X21]  ; get food menu
LDR X21, [X21, #0x98]
MOV W0, #0x30
BL 0x9C9A78 ; operator new(ulong)
MOV X26, X0
BL 0xE5A44 ; CompoundTag(void)
MOV X0, X26
BL 0x52107C ; List CompoundTag::AddEnchList();
MOV W1, #0x47 ; ID
MOV W2, #0xA ; lvl
BL 0x520D94 ; void ListTag::AddEnchTag(id,lvl)
ADD X0, X21, #8
MOV X1, X26
BL 0x1777C4 ; ItemInstance::setTag(struct CompoundTag* _tag)
ADRP X19,#0x178B000
ADD X19,X19,#0x790
LDR X19,[X19]
LDR X19,[X19, #3512] ; itemid * 8 
STR X19,[X21,#0x20]
LDP X29, X30, [SP,#0x60] <= _END
LDP X22, X21, [SP,#0x50]
LDP X20, X19, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDP X26, X25, [SP,#0x20]
ADD SP, SP, #0x70
RET