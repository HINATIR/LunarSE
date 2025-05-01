0x730198 BL 0x52B300

0x52B300 ; Chat
SUB SP, SP, #0xB0
MOV X19, X0
STP X20, X19, [SP,#0x70]
STP X22, X21, [SP,#0x80]
STP X24, X23, [SP,#0x90]
STP X29, X30, [SP,#0xA0]
ADD X29, SP, #0xA0
MOV X24, X0
LDR X0, [X24, #0x5B0] ; Player->Enventory
BL 0x1B1610 ; Inventory::getSelected((void))
MOV X1, X0
ADD X0, SP, #0x10
BL 0xCE60
LDR X21, [SP, #0x10] ; getSelectedItem
LDR X0, [X21, #0x18] ; ItemInstance->item
ADRP X1, #0x178B000
ADD X1, X1, #0x790
LDR X1, [X1]
LDR X1, [X1, #0xC18] ; itemid * 8 writtenbook
CMP X0, X1
B.EQ _bookChat
ADRP X1, #0x178B000
ADD X1, X1, #0x790
LDR X1, [X1]
LDR X1, [X1, #0x488] ; itemid * 8 anvil
CMP X0, X1
B.NE _END
MOV X0, X21 ; anvilChat
BL 0x176A18 ; ItemInstance::getCount(void)
CBZ W0, _END
MOV X0, X21
BL 0x1748DC ; ItemInstance::getTag((void))
CBZ X0, _END
ADRP X0, 0xD6C000
ADD X0, X0, 0xEE0 ; display
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
MOV X19, X1
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X1, X19
MOV X0, X21
BL 0x179048 ; ItemInstance::getTagElement
CBZ X0, _END
MOV X23, X0
ADRP X0, 0xD77000
ADD X0, X0, 0x50 ; Name
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
MOV X19, X1
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X0, X23
MOV X1, X19
ADD X8, SP, #0x30 ; NameMessage
BL 0xE1E60 ; CompoundTag::getString(std::wstring const&)
ADRP X0, #0x1870000
ADD X0, X0, #0x550
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
MOV X19, X1
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X0, X24
ADRP X8, #0x1870000
ADD X8, X8, #0xA00
BL 0x2D1024 ; LocalPlayer::getNetworkName(void)
ADRP X0, #0x1870000
ADD X0, X0, #0xA00
BL 0x52B270 ; getWchar(std::wstring)
MOV X1, X0
MOV X0, X19
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
MOV X0, X19
ADRP X1, #0x1870000
ADD X1, X1, #0x558
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
ADD X0, SP, #0x30 ; NameMessage
BL 0x52B270 ; getWchar(std::wstring)
MOV X1, X0
MOV X0, X19
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
MOV W0, #0x90
BL 0x9C9A78 ; operator new(ulong)
MOV X23, X0
MOV W2, #0x12
MOV W3, #0x46
MOV X1, X19 ; string
MOV X0, X23
BL 0xAE810 ; ChatPacket(string, int, int)
ADD X0, SP, #0x30
MOV X1, X23
MOV X2, XZR
BL 0x7520C
BL 0x31D4C ; MinecraftServerr::getInstance
BL 0x68DDE4 ; MinecraftServer::getPlayers(void)
ADD X1, SP, #0x30
Bl 0x70C4BC ; PlayerList::broadcastAll(packet)
ADD X0, SP, #0x30
BL 0x752E4
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV W0, #0x78 ; Resetitem
BL 0x9C9A78
ADRP X1, #0x178B000
ADD X1, X1, #0x790
LDR X1, [X1]
LDR X1, [X1, #0x488] ; itemid * 8 anvil
LDR W2, [X21, #0x10]
MOV X23, X0
BL 0x1C9968 ; ItemInstance(item, int)
ADRP X0, #0x178B000
ADD X0, X0, #0x790
LDR X0, [X0]
LDR X0, [X0] ; air
STR X0, [X21, #0x18]
STR WZR, [X21, #0x10]
ADD X0, SP, #0x50
MOV X1, X23
BL 0xBE2C
LDR X0, [X24, #0x5B0] ; Player->Enventory
LDR W1, [X0, #0xCC]
ADD X2, SP, #0x50
BL 0x1B31E4 ; Inventory::setItem(slot, iteminstance)
ADD X0, SP, #0x50
BL 0xB7C4
B _END
MOV X0, X21 <= _bookChat
BL 0x176A18 ; ItemInstance::getCount(void)
CBZ W0, _END
MOV X0, X21
BL 0x1748DC ; ItemInstance::getTag((void))
CBZ X0, _END
ADRP X1, #0x1775000
LDR X1, [X1, #0x8B0]
ADD X8, SP, #0x30 ; title
BL 0xE1E60 ; CompoundTag::getString(std::wstring const&)
ADRP X0, #0x1870000
ADD X0, X0, #0x550
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
MOV X19, X1
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X0, X24
ADRP X8, #0x1870000
ADD X8, X8, #0xA00
BL 0x2D1024 ; LocalPlayer::getNetworkName(void)
ADRP X0, #0x1870000
ADD X0, X0, #0xA00
BL 0x52B270 ; getWchar(std::wstring)
MOV X1, X0
MOV X0, X19
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
MOV X0, X19
ADRP X1, #0x1870000
ADD X1, X1, #0x558
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
ADD X0, SP, #0x30 ; title
BL 0x52B270 ; getWchar(std::wstring)
MOV X1, X0
MOV X0, X19
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
MOV W0, #0x90
BL 0x9C9A78 ; operator new(ulong)
MOV X23, X0
MOV W2, #0x12
MOV W3, #0x46
MOV X1, X19 ; string
MOV X0, X23
BL 0xAE810 ; ChatPacket(string, int, int)
ADD X0, SP, #0x30
MOV X1, X23
MOV X2, XZR
BL 0x7520C
BL 0x31D4C ; MinecraftServerr::getInstance
BL 0x68DDE4 ; MinecraftServer::getPlayers(void)
ADD X1, SP, #0x30
Bl 0x70C4BC ; PlayerList::broadcastAll(packet)
ADD X0, SP, #0x30
BL 0x752E4
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)
MOV W0, #0x78 ; Resetitem
BL 0x9C9A78
ADRP X1, #0x178B000
ADD X1, X1, #0x790
LDR X1, [X1]
LDR X1, [X1, #0xC10] ; book and quil
LDR W2, [X21, #0x10]
MOV X23, X0
BL 0x1C9968 ; ItemInstance(item, int)
ADRP X0, #0x178B000
ADD X0, X0, #0x790
LDR X0, [X0]
LDR X0, [X0] ; air
STR X0, [X21, #0x18]
STR WZR, [X21, #0x10]
ADD X0, SP, #0x50
MOV X1, X23
BL 0xBE2C
LDR X0, [X24, #0x5B0] ; Player->Enventory
LDR W1, [X0, #0xCC]
ADD X2, SP, #0x50
BL 0x1B31E4 ; Inventory::setItem(slot, iteminstance)
ADD X0, SP, #0x50
BL 0xB7C4
LDP X29, X30, [SP,#0xA0] <= _END
LDP X24, X23, [SP,#0x90]
LDP X22, X21, [SP,#0x80]
LDP X20, X19, [SP,#0x70]
ADD SP, SP, #0xB0
ADRP X0, #0x1777000
STR X19, [X0]
RET