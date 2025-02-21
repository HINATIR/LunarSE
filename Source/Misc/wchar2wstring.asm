0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)

SUB SP, SP, #0x30
STP X20, X19, [SP,#0x10]
STP X29, X30, [SP,#0x20]
ADD X29, SP, #0x30 
MOV X20, X0
MOV X19, X1
MOV X0, X20
STP XZR, XZR, [X19,#8]
STR XZR, [X19]
BL 0xB6BBC ; wcslen
MOV X2, X0
MOV X0, X19
MOV X1, X20
BL 0x9C9A98 ; std::wstring::__init(wchar_t const*,ulong)
MOV X0, X19
LDP X29, X30, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x30
RET

example
ADRP X1, #0xD80000 ; "AttributeModifiers"
ADD X1, X1, #0xF10
ADRP X2, #0x1875000
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X19, X0
<code>
MOV X0, X19
BL 0x9C9AA8 ; std::wstring::~wstring(void)