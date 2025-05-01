X0, [X19,#0x1D0] instance->gamerenderer



0x790374
B 0x52AB00

0x52AB00
FMUL S0, S0, S1
ADRP X8, #0x1800000
ADD X8, X8, #0xD0
STR S0, [X8]
B 0x790378


0x7903FC
B 0x52AB28

0x52AB28
FMUL S0, S0, S1
ADRP X8, #0x1800000
ADD X8, X8, #0xD4
STR S0, [X8]
B 0x790400



04000000 0069B07C 97FA3EB5
04000000 0069B164 97FA3E7B
04000000 0069B684 97FA3D33

0x52AB50

SUB SP, SP, #0x30
STP X20, X19, [SP,#0x10]
STP X29, X30, [SP,#0x20]
ADD X29, SP, #0x20 
LDR             X8, [X0,#0x28]
LDR             X8, [X8,#0x58]
MOV X19, X8
LDR             X9, [X8]
LDR             X9, [X9,#0xB20]
MOV             X0, X8
MOV             W1, WZR
BLR             X9
CBZ W0, _isFirstp
ADRP X8, 0x1800000
LDR S1, [X8, #0xE0]
LDR S2, [X8, #0xD8]
B _isnotFirstp
MOV X8, X19 <= _isFirstp
LDR             S1, [X8,#0xB0]
LDR             S2, [X8,#0xA8]
FSUB            S2, S2, S1 <= _isnotFirstp
FMUL            S0, S2, S0
FADD            S0, S1, S0
LDP X29, X30, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x30
RET



04000000 0069B0AC 97FA3ED5
04000000 0069B178 97FA3EA2
04000000 0069B608 97FA3D7E

0x52AC00
SUB SP, SP, #0x30
STP X20, X19, [SP,#0x10]
STP X29, X30, [SP,#0x20]
ADD X29, SP, #0x20 
LDR             X8, [X0,#0x28]
LDR             X8, [X8,#0x58]
MOV X19, X8
LDR             X9, [X8]
LDR             X9, [X9,#0xB20]
MOV             X0, X8
MOV             W1, WZR
BLR             X9
CBZ W0, _isFirstp
ADRP X8, 0x1800000
LDR S1, [X8, #0xE4]
LDR S2, [X8, #0xDC]
B _isnotFirstp
MOV X8, X19 <= _isFirstp
LDR             S1, [X8,#0xB4]
LDR             S2, [X8,#0xAC]
FSUB            S2, S2, S1 <= _isnotFirstp
FMUL            S0, S2, S0
FADD            S0, S1, S0
LDP X29, X30, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x30
RET

0x9CBC80
BL 0x52ACA0

0x52ACA0
SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
ADRP X24, 0x1800000
LDR W0, [X24, #0xD8] ; virtualYaw
CBNZ W0, _notZero1
FMOV S0, 0
B _Zero1
LDR S0, [X24, #0xD8] <= _notZero1
LDR S1, [X24, #0xD0] <= _Zero1
STR S0, [X24, #0xE0]
FADD S0, S0, S1
STR S0, [X24, #0xD8]
LDR W0, [X24, #0xDC] ; virtualPitch
CBNZ W0, _notZero2
FMOV S0, 0
B _Zero2
LDR S0, [X24, #0xDC] <= _notZero2
LDR S1, [X24, #0xD4] <= _Zero2
STR S0, [X24, #0xE4]
FADD S0, S0, S1
STR S0, [X24, #0xDC]
BL 0x67db90 ; Minecraft::GetInstance
LDR X20, [X0, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
LDR             X8, [X20]
LDR             X8, [X8,#0xB20]
MOV             X0, X20
MOV             W1, WZR
BLR             X8
CBZ W0, _noYaw
LDR X0, [X24, #0xE8]
STR X0, [X20, #0xA8]
LDR X0, [X20, #0xA8] <= _noYaw ; lock 
STR X0, [X24, #0xE8]
LDP X29, X30, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET