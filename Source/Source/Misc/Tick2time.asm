wstring Tick2time(int duration):

SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STR X21, [SP,#0x20]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
MOV W1, #20
UDIV W19, W0, W1
MOV W1, #60
UDIV W21, W19, W1
MUL W1, W1, W21
SUB W20, W19, W1
ADRP X22, 0x1870000
CMP W20, #10
B.GE _NoZerofill
ADD X19, X19, #0x508
B _Jumper
ADD X19, X19, #0x4F0 <= _NoZerofill
MOV W3, W21 <= _Jumper
MOV W4, W20
MOV X2, X19
ADD X19, SP, #0x28
ADRP X21, 0x1870000
ADD X21, X21, #0xA00
MOV W1, #0x100
MOV X0, X21
BL 0x9C9C58 ; swprintf
MOV X0, X21
STP XZR, XZR, [X19,#8]
STR XZR, [X19]
BL 0xB6BBC ; wcslen
MOV X2, X0
MOV X0, X19
MOV X1, X21
BL 0x9C9A98; std::wstring::__init(wchar_t const*,ulong)
MOV X0, X19
LDP X29, X30, [SP,#0x40]
LDR X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET