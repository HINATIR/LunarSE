0x1870540 : Write frag
 ; wchar_t writeFile(wchar_t filepath, wchar_t text)

SUB SP, SP, #0x80
STP X23, X22, [SP,#0x50]
STP X21, X20, [SP,#0x60]
STP X29, X30, [SP,#0x70]
ADD X29, SP, #0x70
ADD X8, SP, #0x10
MOV X20, X0
MOV X23, X1
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
BL 0x170A44 ; FileOutputStream::FileOutputStream(File const&)
MOV X22, X23 ; filecontent wchar_t
ADD X0, SP, #0x10 <= _FileWriteLoop
LDR W1, [X22]
BL 0x170B48 ; FileOutputStream::write(unsigned int) 
LDR W0, [X22]
CBZ W0, _FileWriteEnd
ADD X22, X22, #4
B _FileWriteLoop
ADD X0, SP, #0x10 <= _FileWriteEnd
BL 0x170BF4 ; FileOutputStream::close(void)
ADD X0, SP, #0x10
BL 0x170AE4 ; FileOutputStream::~FileOutputStream()
MOV X0, X23
LDP X29, X30, [SP,#0x70] <= _Nofile
LDP X21, X20, [SP,#0x60]
LDP X23, X22, [SP,#0x50]
ADD SP, SP, #0x80
RET