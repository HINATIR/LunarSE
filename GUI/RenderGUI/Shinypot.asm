0x6A66E4
BL 0x6A2890


0x6A2890
STP D11, D10, [SP,#-0x40]!
STP D9, D8, [SP,#0x10]
STR X19, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30
MOV W0, #3
LDR X1, [X20]
CBZ X1, _Skip
LDR X1, [X1, #0x18] ; ItemInstance->item
ADRP X2, #0x178B000
ADD X2, X2, #0x790
LDR X2, [X2]
LDR X2, [X2, #3504] ; itemid * 8 splash potion
CMP X1, X2
B.NE _Skip
CMP W19, #0x6
B.NE _Skip
MOV W0, #4
B 0x6B37E0 <= _Skip