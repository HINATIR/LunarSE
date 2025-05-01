0x724420;
BL 0x52A9D0

0x70A2F0, 0x722FF4
ADD X1, SP, #0x28
BL 0x52AA04
MOV W2, #0x12
MOV W3, #0x46

0x52A9D0 ; whoKicked
SUB SP, SP, #0x30
STP X29, X30, [SP,#0x10]
STP X22, X21, [SP,#0x20]
ADD X29, SP, #0x20 
ADRP X8, #0x1800000
ADD X8, X8, #0xA0
LDR X0, [X20, #0x90]
STR X0, [X8]
LDP X22, X21, [SP,#0x20]
LDP X29, X30, [SP,#0x10]
ADD SP, SP, #0x30
LDR X0, [X20,#0x88]
RET 
SUB SP, SP, #0x50
STP X29, X30, [SP,#0x30]
STP X21, X20, [SP,#0x40]
ADD X29, SP, #0x40 
MOV X19, X1
ADRP X8, #0x1800000
ADD X8, X8, #0xA0
LDR X0, [X8]
ADD X8, SP, #0x10
BL 0x2D1024 ; LocalPlayer::getNetworkName(void)
MOV X0, X19
ADRP X1, #0x1870000
ADD X1, X1, #0x480
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
ADD X0, SP, #0x10
BL 0x52B270 ; getWchar(std::wstring)
MOV X1, X0
MOV X0, X19
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
MOV X1, X19
LDP X21, X20, [SP,#0x40]
LDP X29, X30, [SP,#0x30]
ADD SP, SP, #0x50
MOV X0, X22
RET