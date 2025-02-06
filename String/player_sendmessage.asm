; この関数は未テストです
wstring Player::sendMessage(std::wstring const&):

0x6A2990:
SUB SP, SP, #0x40
STR X21, [SP,#0x10]
STP X19, X20, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30 
MOV X19, X0
MOV X20, X1
MOV W0, #0x90 ; unsigned __int64
BL 0x9C9A78 ; _Znwm_0
MOV X21, X0
MOV W2, #0x12
MOV W3, #0x46
MOV X1, X20 ; string
MOV X0, X21
BL 0xAE810 ; ChatPacket
ADD X0, SP, #0x18
MOV X1, X21
MOV X2, XZR
BL 0x7520C
ADD X1, SP, #0x18
LDR X0,[X19,#0x8B8] ; player->packetlistener
BL 0x7057C4 ; sendpacket
ADD X0, SP, #0x18
BL 0xF400 ; deletepacket
MOV X0, X20
LDP X29, X30, [SP,#0x30]
LDP X19, X20, [SP,#0x20]
LDR X21, [SP,#0x10]
ADD SP, SP, #0x40
RET