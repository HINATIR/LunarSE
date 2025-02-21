0x52A950 ; LunarSEver
SUB SP, SP, #0xD0
STP X20, X19, [SP,#0xA0]
STP X22, X21, [SP,#0xB0]
STP X29, X30, [SP,#0xC0]
ADD X29, SP, #0xC0
ADRP X0, #0x1870000
ADD X0, X0, #0x420
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV W1, #480
MOV W2, #261
MOVZ W3, #0xF0FF,LSL #16
MOVK W3, #0xFFFF
MOV W4, #2
FMOV S0, 4.0
BL 0x521530 ; wstring  displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
LDP X29, X30, [SP,#0xC0]
LDP X22, X21, [SP,#0xB0]
LDP X20, X19, [SP,#0xA0]
ADD SP, SP, #0xD0
RET