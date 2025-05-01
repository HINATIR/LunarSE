0x52B270 ; getWchar(std::wstring)

SUB SP, SP, #0x20
STP X29, X30, [SP,#0x10]
ADD X29, SP, #0x10
LDR W8, [X0]
CMP W8, #8
B.LS _LowrOrSame
LDR X0, [X0, #0x10]
B _END
ADD X0, X0, #4 <= _LowrOrSame
LDP X29, X30, [SP,#0x10] <= _END
ADD SP, SP, #0x20
RET