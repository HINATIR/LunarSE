#0x1801000 = LivingPlayers[]
0x52AF50 ; getLivingPlayers
SUB SP, SP, #0x60
STP X20, X19, [SP,#0x30]
STP X22, X21, [SP,#0x40]
STP X29, X30, [SP,#0x50]
ADD X29, SP, #0x50
ADRP X0, #0x1801000
STP XZR, XZR, [X0]
STP XZR, XZR, [X0, #0x10]
STP XZR, XZR, [X0, #0x20]
STP XZR, XZR, [X0, #0x30]
STP XZR, XZR, [X0, #0x40]
BL 0x67db90 ; Minecraft::GetInstance
LDR X8,[X0, #0x58]
LDR X0, [X8, #0x58] ; LocalPlayer->lvl
LDP X21, X22, [X0, #0xE8]
ADRP X19, #0x1801000
LDR X0, [X21] <= _getPlayerloop
ADD X21, X21, #0x10
CBZ X0, _getPlayerloop
STR X0, [X19]
ADD X19, X19, #0x8
CMP X22, X21
B.NE _getPlayerloop
LDP X29, X30, [SP,#0x50]
LDP X22, X21, [SP,#0x40]
LDP X20, X19, [SP,#0x30]
ADD SP, SP, #0x60
RET