0x1801100

0x52B150 ; sprintGlitchDetector
SUB SP, SP, #0x80
STP X20, X19, [SP,#0x50]
STP X22, X21, [SP,#0x60]
STP X29, X30, [SP,#0x70]
ADD X29, SP, #0x70
ADRP X22, 0x1801000
ADD X21, X22, #0x100
ADD X22, X22, #8 <= _playerDetectLoop
ADD X21, X21, #0x10
LDR X0, [X22]
CBZ X0, _endLoop
BL 0x220B68 ; LivingEntity::isUsingItem(void)
CBZ W0, _playerDetectLoop
LDR X0, [X22]
BL 0x1592F4 ; Entity::isSprinting(void)
CBZ W0, _playerDetectLoop
BL #0x37D588 ; System::processTimeInMilliSecs(void)
LDR X1, [X21]
SUB X1, X0, X1
MOV X2, #200
CMP X1, X2
B.LE _playerDetectLoop ; 前の検知より0.2秒たっていなければスキップ。
LDR X3, [X21, #0x8] ; 最初の実行かのフラグ取得
CBNZ X3, _secondDetection
STR X0, [X21] <= _tooLate
STR X0, [X21, #0x8]  ; 初期実行フラグを設定する。
B _playerDetectLoop
MOV X2, #1000 <= _secondDetection
CMP X1, X2
B.GT _tooLate ; 初期実行から1秒以上立っている2回目実行なら無効にし、それを新たな初期実行とする。
STR XZR, [X21, #0x8] ; 初期実行フラグを0にする。
MOV X1, #5000
ADD X0, X0, X1
STR X0, [X21] ; 未来の時間を設定する
ADRP X0, #0x1870000
ADD X0, X0, #0x4D8
ADRP X1, #0x1870000
ADD X1, X1, #0xF00
MOV X19, X1
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
LDR X0, [X22]
CBZ X0, _endLoop
ADRP X8, #0x1870000
ADD X8, X8, #0xA00
BL 0x2D1024 ; LocalPlayer::getNetworkName(void)
ADRP X8, #0x1870000
ADD X8, X8, #0xA00
ADD X8, X8, #0x4
LDR X2, [X8]
MOV X0, X19
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
MOV X0, X19
ADRP X1, #0x1870000
ADD X1, X1, #0x514
BL 0x9C9AB8 ; std::wstring::append(wchar_t const*)
MOV X0, X19
BL 0x6A2A10 ; wstring mcprintf(std::wstring const&):
BL 0x9C9AA8 ; std::wstring::~wstring(void)
B _playerDetectLoop
LDP X29, X30, [SP,#0x70] <= _endLoop
LDP X22, X21, [SP,#0x60]
LDP X20, X19, [SP,#0x50]
ADD SP, SP, #0x80
RET