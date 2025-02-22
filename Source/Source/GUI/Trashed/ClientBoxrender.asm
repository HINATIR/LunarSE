RenderClientGUI(x,y)
0x524554

RET
SUB SP, SP, #0x60
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X26, X25, [SP,#0x40]
STP X28, X27, [SP,#0x50]
STP X29, X30, [SP,#0x60]
ADD X29, SP, #0x60
MOV W25, #150
MOV W24, #150
MOV W23, #400
MOV W22, #60
MOV W27, W0 ; posX
MOV W28, W1 ; posY
NOP ; NameBoxRenderer
MOV W21, #0
MOV W0, W25 <= _RenderNameboxLoop
MUL W1, W21, W22
ADD W1, W24, W1
MOV W2, W23
MOV W3, W22
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
ADD W21, W21, #1
CMP W21, #0xD
B.NE _RenderNameboxLoop
NOP ; EditorBoxRenderer
CMP W27, #0
B.LE _NoEditorBox
MOV W21, #0
ADD W0, W25, W23 <= _RenderEditBoxLoop
MOV W2, #120
MUL W1, W21, W2
ADD W0, W0, W1
MOV W1, W28
CMP W28, #0xD
B.LE _Noadjustment1
MOV W1, #0xD
MUL W1, W1, W22 <= _Noadjustment1
ADD W1, W24, W1
MOV W2, #120
MOV W3, W22
MOV W4, #0x0
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
ADD W21, W21, #1
CMP W21, #4
B.NE _RenderEditBoxLoop
NOP <= _NoEditorBox ; SelectedNameBoxRender
MOV W0, W25
MOV W1, W28
CMP W28, #0xC
B.LE _Noadjustment2
MOV W1, #0xC
MUL W1, W1, W22 <= _Noadjustment2
ADD W1, W24, W1
MOV W2, W23
MOV W3, W22
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
NOP ; SelectedEditorBoxRenderer
CMP W27, #0
B.LE _NoSelectedEditorBox
ADD W0, W25, W23
SUB W2, W27, #1
MOV W3, #120
MUL W1, W2, W3
ADD W0, W0, W1
MOV W1, W28
CMP W28, #0xC
B.LE _Noadjustment3
MOV W1, #0xC
MUL W1, W1, W22 <= _Noadjustment3
ADD W1, W24, W1
MOV W2, #120
MOV W3, W22
MOVZ W4, #0x6F6F, LSL #16
MOVK W4, #0x6F6F
MOV W5, #0x6F
BL 0x521620 ; void display2DBox(int x, int y, int sX, int sY, int textcolor, int opacity):
ADD W21, W21, #1
CMP W21, #4
NOP <= _NoSelectedEditorBox
MOV W0, W27 ; posX
MOV W1, W28 ; posY
LDP X29, X30, [SP,#0x60]
LDP X28, X27, [SP,#0x50]
LDP X20, X19, [SP,#0x10]
LDP X22, X21, [SP,#0x20]
LDP X24, X23, [SP,#0x30]
LDP X26, X25, [SP,#0x40]
ADD SP, SP, #0x60
RET