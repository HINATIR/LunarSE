0x790374
BL 0x52AB00
0x52AB00
SUB SP, SP, #0x30
STP X20, X19, [SP,#0x10]
STP X29, X30, [SP,#0x20]
ADD X29, SP, #0x20 
FMUL S0, S0, S1
ADRP X20, #0x1800000
STR S0, [X20, #0xD0]
BL 0x67DB90 ; Minecraft::GetInstance
LDR X9, [X0, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
CBZ X9, _noYaw
LDR X8, [X9]
LDR X8, [X8,#0xB20]
MOV X0, X9
MOV W1, WZR
BLR X8
LDR S0, [X20, #0xD0]
CMP W0, #1
B.NE  _noYaw
FMOV S0, -8 ; virtualYaw
LDR S1, [X20, #0xD0]
FMUL S1, S1, S0
LDR S0, [X20, #0xD8]
STR S0, [X20, #0xE0]
FADD S0, S0, S1
STR S0, [X20, #0xD8]
FMOV S0, 0
LDP X29, X30, [SP,#0x20] <= _noYaw
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x30
RET


0x7903FC
BL 0x52ABA0
0x52ABA0
SUB SP, SP, #0x30
STP X20, X19, [SP,#0x10]
STP X29, X30, [SP,#0x20]
ADD X29, SP, #0x20 
FMUL S0, S0, S1
ADRP X20, #0x1800000
STR S0, [X20, #0xD4]
BL 0x67DB90 ; Minecraft::GetInstance
LDR X9, [X0, #0x58] ; mc::Minecraft::getInstance()->LocalPlayer;
CBZ X9, _noYaw
LDR X8, [X9]
LDR X8, [X8,#0xB20]
MOV X0, X9
MOV W1, WZR
BLR X8
LDR S0, [X20, #0xD4]
CMP W0, #1
B.NE  _noYaw
FMOV S0, 8 ; virtualYaw
LDR S1, [X20, #0xD4]
FMUL S1, S1, S0
LDR S0, [X20, #0xDC] ; virtualPitch
STR S0, [X20, #0xE4]
FADD S0, S0, S1
STR S0, [X20, #0xDC]
FMOV S0, 0
LDP X29, X30, [SP,#0x20] <= _noYaw
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x30
RET

0x52AC30
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
CMP W0, #1
B.NE _isFirstp
ADRP X9, 0x1800000
MOV X8, X19
LDR S3, [X8,#0xA8]
LDR S1, [X9, #0xE0]
FADD S1, S1, S3
LDR S2, [X9, #0xD8]
FADD S2, S2, S3
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


0x52AD00
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
CMP W0, #1
B.NE _isFirstp
ADRP X9, 0x1800000
MOV X8, X19
LDR S3, [X8,#0xAC]
LDR S1, [X9, #0xE4]
FADD S1, S1, S3
LDR S2, [X9, #0xDC]
FADD S2, S2, S3
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