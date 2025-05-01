0x6A2990 ; plaery::sendMessage(std::wstring)
SUB SP, SP, #0x50
STP X22, X21, [SP,#0x20]
STP X20, X19, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40
MOV X19, X0
MOV X20, X1
MOV W0, #0x90
BL 0x9C9A78 ; operator new(ulong)
MOV X21, X0
MOV W2, #0x12
MOV W3, #0x46
MOV X1, X20 ; string
MOV X0, X21
BL 0xAE810 ; ChatPacket(string, int, int)
ADD X0, SP, #0x10
MOV X1, X21
MOV X2, XZR
BL 0x7520C
ADD X1, SP, #0x10
LDR X0, [X19, #0x8B8]
BL 0x7057C4 ; ServerGamePacketListenerImpl::send(boost::shared_ptr_Packet)
ADD X0, SP, #0x10
BL 0x752E4
LDP X29, X30, [SP,#0x40]
LDP X20, X19, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
ADD SP, SP, #0x50
RET