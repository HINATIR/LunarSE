0x6A2A10 ; wstring mcprintf(std::wstring const&):

SUB SP, SP, #0x40
STR X21, [SP,#0x10]
STP X20, X19, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30
MOV X19, X0
BL 0x67DB90
LDR X0, [X0,#0x228] ; mc::getInstance()->gui
MOV X1, X19
MOV W2, WZR
MOV W3, WZR
MOV W4, WZR
MOV W5, WZR
MOV W6, WZR
BL 0x6AA8EC ; gui->addMessage
MOV X0, X19
LDP X29, X30, [SP,#0x30]
LDP X20, X19, [SP,#0x20]
LDR X21, [SP,#0x10]
ADD SP, SP, #0x40
RET