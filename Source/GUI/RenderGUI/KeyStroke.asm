0x790264: ; CInput::GetJoypadStick_LX(int, bool)
B 0x529B40

0x7902EC: ; CInput::GetJoypadStick_LY(int, bool)
B 0x529B54

0x529B3C:
RET
FMUL S0, S0, S1
ADRP X8, #0x1800000
ADD X8, X8, #0x74
STR S0, [X8]
B 0x790268
FMUL S0, S0, S1
ADRP X8, #0x1800000
ADD X8, X8, #0x74
STR S0,[X8, #8]
B 0x7902F0
SUB SP, SP, #0x50 ; 0x529B68
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
FMUL S8, S0, S1
BL 0x67db90 ; Minecraft::GetInstance
MOV X22, X0
MOV W19, #1920 ; base posx
MOV W20, #25 ; base posy
MOV W21, #85
MOV W24, #5
SUB W19, W19, W24
SUB W19, W19, W20
SUB W19, W19, W21, LSL #1
ADRP X23, #0x1800000
ADD X23, X23, #0x74
FMOV S0, -0.125
STR S0, [X23, #0x4]
FMOV S0, 0.125
STR S0, [X23, #0xC]
LDR S0, [X23]
LDR S1, [X23, #0xC]
FCMP S0, S1
B.GT _D_NonPressed
ADD W4, W21, W24 ; D Non-Pressed
ADD W0, W19, W4
ADD W1, W20, W4
MOV W2, W21
MOV W3, W21
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDR S0, [X23] <= _D_NonPressed
LDR S1, [X23, #4]
FCMP S0, S1
B.LT _A_NonPressed
ADD W4, W21, W24 ; A Non-Pressed
SUB W0, W19, W4
ADD W1, W20, W4
MOV W2, W21
MOV W3, W21
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDR S0, [X23] <= _A_NonPressed
LDR S1, [X23, #0xC]
FCMP S0, S1
B.LE _D_Pressed
ADD W4, W21, W24 ; D Pressed
ADD W0, W19, W4
ADD W1, W20, W4
MOV W2, W21
MOV W3, W21
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDR S0, [X23] <=  _D_Pressed
LDR S1, [X23, #4]
FCMP S0, S1
B.GE _A_Pressed
ADD W4, W21, W24 ; A Pressed
SUB W0, W19, W4
ADD W1, W20, W4
MOV W2, W21
MOV W3, W21
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDR S0, [X23, #8] <=  _A_Pressed
LDR S1, [X23, #0xC]
FCMP S0, S1
B.GT _W_NotPressed
MOV W0, W19 ; W Non-Pressed
MOV W1, W20
MOV W2, W21
MOV W3, W21
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDR S0, [X23, #8] <=  _W_NotPressed
LDR S1, [X23, #4]
FCMP S0, S1
B.LT _S_NotPressed
ADD W4, W21, W24 ; S Non-Pressed
MOV W0, W19
ADD W1, W20, W4
MOV W2, W21
MOV W3, W21
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDR S0, [X23, #8] <=  _S_NotPressed
LDR S1, [X23, #0xC]
FCMP S0, S1
B.LE _W_Pressed
MOV W0, W19 ; W Pressed
MOV W1, W20
MOV W2, W21
MOV W3, W21
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDR S0, [X23, #8] <=  _W_Pressed
LDR S1, [X23, #4]
FCMP S0, S1
B.GE _S_Pressed
ADD W4, W21, W24 ; S Pressed
MOV W0, W19
ADD W1, W20, W4
MOV W2, W21
MOV W3, W21
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
NOP <= _S_Pressed
ADRP X8, #0x1779000
LDR X8, [X8, #0xEC8]
LDR X9, [X8]
LDR X8, [X9]
LDR X8, [X8,#0x60]
MOV W2, #0x22
MOV X0, X9
MOV W1, #0
BLR X8
TBZ W0, #0, _Not_ZRPressed
ADD W4, W21, W24
ADD W0, W19, W21, ASR #1
ADD W0, W0, W24, ASR #1
ADD W1, W20, W4, LSL #1
ADD W2, W21, W4, LSL #1
ASR W2, W2, #1
SUB W2, W2, W24, ASR #1
MOV W3, W21
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
B _ZRRendered
ADD W4, W21, W24 <= _Not_ZRPressed
ADD W0, W19, W21, ASR #1
ADD W0, W0, W24, ASR #1
ADD W1, W20, W4, LSL #1
ADD W2, W21, W4, LSL #1
ASR W2, W2, #1
SUB W2, W2, W24, ASR #1
MOV W3, W21
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
NOP <= _ZRRendered
ADRP X8, #0x1779000
LDR X8, [X8, #0xEC8]
LDR X9, [X8]
LDR X8, [X9]
LDR X8, [X8,#0x60]
MOV W2, #0x21
MOV X0, X9
MOV W1, #0
BLR X8
TBZ W0, #0, _Not_ZLPressed
ADD W4, W21, W24
SUB W0, W19, W4
ADD W1, W20, W4, LSL #1
ADD W2, W21, W4, LSL #1
ASR W2, W2, #1
SUB W2, W2, W24, ASR #1
MOV W3, W21
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
B _ZLRendered
ADD W4, W21, W24 <= _Not_ZLPressed
SUB W0, W19, W4
ADD W1, W20, W4, LSL #1
ADD W2, W21, W4, LSL #1
ASR W2, W2, #1
SUB W2, W2, W24, ASR #1
MOV W3, W21
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
LDP X29, X30, [SP,#0x40] <= _ZLRendered
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET