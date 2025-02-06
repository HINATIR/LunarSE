 ; wchar_t readFile(wchar_t filepath, temp)

SUB SP, SP, #0x80
STP X23, X22, [SP,#0x50]
STP X21, X20, [SP,#0x60]
STP X29, X30, [SP,#0x70]
ADD X29, SP, #0x70
ADD X8, SP, #0x10
MOV X23, X1
MOV X20, X0
ADRP X21, 0x1870000
MOV X0, X20 ; filepath from Common/
ADD X1, X21, #0xF00
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
MOV X1, X0
ADD X0, SP, #0x28
BL 0x16E860 ; File::File(std::wstring const&)
ADD X0, X21, #0xF00
BL 0x9C9AA8 ; std::wstring::~wstring(void)
ADD X0, SP, #0x28
BL 0x16E9E8 ; File::exists(void)
TBZ W0, #0, _Nofile
ADD X0, SP, #0x10
ADD X1, SP, #0x28
BL 0x170718 ; FileInputStream::FileInputStream(File const&)
MOV X22, X23 ; filecontent wchar_t
ADD X0, SP, #0x10 <= _FileReadLoop
BL 0x170860 ; FileInputStream::read()
CMP W0, -1
B.EQ _FileReadEnd
CMP W0, #0
B.EQ _FileReadEnd
STR W0, [X22]
ADD X22, X22, #4
B _FileReadLoop
STR WZR, [X22] <= _FileReadEnd
ADD X0, SP, #0x10
BL 0x1709EC ; FileInputStream::close()
ADD X0, SP, #0x10
BL 0x1707FC ; FileInputStream::~FileInputStream()
MOV X0, X23
LDP X29, X30, [SP,#0x70] <= _Nofile
LDP X21, X20, [SP,#0x60]
LDP X23, X22, [SP,#0x50]
ADD SP, SP, #0x80
RET