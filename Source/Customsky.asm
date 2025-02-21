; ================================== DATA ==================================
0x1880000 ; SIZEDATA
0x1880070 ; "/misc/sky.png"
0x1880100 ; temp
0x1880170 ; "Common/"
0x1880200 ; temp
0x1890000 ; Bufferimage
0x6A2100 ; main



; ================================== getUVfunc ==================================
; void getUV(int x, int y);
; 0x6A2660:

FMOV S0,3
FMOV S1,2
FMOV S2,1
FDIV S0,S2,S0 ; S0 = width
FDIV S1,S2,S1 ; S1 = height
ADRP X8,#0x1880000 ; SIZEDATA
SCVTF S3, W1 ; S3 = x
SCVTF S4, W2 ; S4 = y
FMUL S2,S0,S3
STR S2,[X8]
FADD S2,S2,S0
STR S2,[X8,#8]
FMUL S2,S1,S4
STR S2,[X8,#0x18]
FADD S2,S2,S1
STR S2,[X8,#0x10]
RET

; f[0] ... [X8],[X8,#8],[X8,#0x10],[X8,#0x18]
; imageid [X8,#0x20]



; ================================== main ==================================
0x6A2100:


SUB SP, SP, #0x50
STR S8,[SP,#0x10]
STP X20, X19, [SP,#0x20]
STP X22, X21, [SP,#0x30]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
BL 0x67DB90 ; mc::Minecraft::getInstance();
MOV X22, X0
ADRP X8, 0x1880000 ; SIZEDATA
LDR W0, [X8,0x20] ; get Image ID
CBNZ W0, _skipGenTexture
BL 0x6A7BD0 ; genTexture()
ADRP X8, 0x1880000 ; SIZEDATA
STR W0, [X8,#0x20] ; Store Imageid
ADRP X0, #0x1870000 ; "/misc/sky.png"
ADRP X1, #0x1880000
ADD X1, X1, #0x100
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
ADRP X0, #0x1870000 ; "Common/"
ADD X0, X0, #0x38
ADRP X1, #0x1880000
ADD X1, X1, #0x200
BL 0x521340 ; wstring Wchar2Wstring(wchat_t const*, temp)
ADRP X19, #0x1890000
ADRP X1, #0x1880000
ADD X1, X1, #0x100
MOV W2, #0
MOV W3, #0
MOV X0, X19
ADRP X4, #0x1880000
ADD X4, X4, #0x200
MOV W5, #2
BL 0x638E24 ; BufferedImage(L"/misc/sky.png", false, false, L"Common/", 2);
MOV X1, X19
LDR X0,[X22,#0x1A8] ; Minecraft::getInstance->textures
ADRP X8, 0x1880000 ; SIZEDATA
LDR W2, [X8,#0x20] ; get Image ID
BL 0x761410 ; ->loadTexture(image, img_id);
BL 0x683b58 <= _skipGenTexture ; mc::GlStateManager::disableCull()
BL 0x683F08 ; mc::GlStateManager::disableLighting();
BL 0x6A5D68 ; mc::GlStateManager::disableDepthTest(void)
BL 0x683A90 ; GlStateManager::disableTexture(void)
ADRP X8, 0x1880000 ; SIZEDATA
LDR W0, [X8,#0x20] ; Load Imageid
BL 0x68B840 ; GlStateManager::bindTexture(textureid)
BL 0x6824c4 ; GlStateManager::pushMatrix();
MOV W0,#250
SCVTF S0, W0
FMOV S1,-1
FMUL S0,S0,S1
FMOV S1, S0
FMOV S2, S0
BL 0x6824dc ; mc::GlStateManager::translatef(-250, -250, -250);
MOV W0,#500
SCVTF S0,W0
FMOV S1, S0
FMOV S2, S0
BL 0x6827b8 ; mc::GlStateManager::scalef(500, 500, 500);
BL 0x70521c ; Tesselator::getInstance();
BL 0x70522c ; Tesselator::getBuilder();
MOV X20,X0
MOV X0,X20 ; <================================== TOP ==================================
MOV W1, #3
BL 0x610E50 ; BufferBuilder::begin(3)
MOV W1,#1
MOV w2,wzr
BL 0x6A2660 ; getUV(1,0)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,1
FMOV S2,1
LDR S3,[X8,#0x8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,1
FMOV S2,1
LDR S3,[X8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,1
FMOV S2,0
LDR S3,[X8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,1
FMOV S2,0
LDR S3,[X8,#8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
MOV X0,X20
BL 0x6109D8 ; BufferBuilder::end(void)
MOV X0,X20 ; <================================== BOTTOM ==================================
MOV W1, #3
BL 0x610E50 ; BufferBuilder::begin(3)
MOV w1,wzr
MOV w2,wzr
BL 0x6A2660 ; getUV(0,0)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,0
FMOV S2,1
LDR S3,[X8,#0x8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,0
FMOV S2,1
LDR S3,[X8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,0
FMOV S2,0
LDR S3,[X8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,0
FMOV S2,0
LDR S3,[X8,#8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
MOV X0,X20
BL 0x6109D8 ; BufferBuilder::end(void)
MOV X0,X20 ; <================================== SOUTH ==================================
MOV W1, #3
BL 0x610E50 ; BufferBuilder::begin(3)
MOV w1,#2
MOV w2,#1
BL 0x6A2660 ; getUV(2,1)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,1
FMOV S2,1
LDR S3,[X8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,1
FMOV S2,0
LDR S3,[X8,#8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,0
FMOV S2,0
LDR S3,[X8,#8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,0
FMOV S2,1
LDR S3,[X8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
MOV X0,X20
BL 0x6109D8 ; BufferBuilder::end(void)
MOV X0,X20 ; <================================== WEST ==================================
MOV W1, #3
BL 0x610E50 ; BufferBuilder::begin(3)
MOV w1,#2
MOV w2,wzr
BL 0x6A2660 ; getUV(2,0)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,1
FMOV S2,0
LDR S3,[X8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,1
FMOV S2,0
LDR S3,[X8,#8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,0
FMOV S2,0
LDR S3,[X8,#8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,0
FMOV S2,0
LDR S3,[X8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
MOV X0,X20
BL 0x6109D8 ; BufferBuilder::end(void)
MOV X0,X20 ; <================================== NORTH ==================================
MOV W1, #3
BL 0x610E50 ; BufferBuilder::begin(3)
MOV w1,WZR
MOV w2,#1
BL 0x6A2660 ; getUV(0,1)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,1
FMOV S2,0
LDR S3,[X8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,1
FMOV S2,1
LDR S3,[X8,#8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,0
FMOV S2,1
LDR S3,[X8,#8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,0
FMOV S2,0
LDR S3,[X8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
MOV X0,X20
BL 0x6109D8 ; BufferBuilder::end(void)
MOV X0,X20 ; <================================== EAST ==================================
MOV W1, #3
BL 0x610E50 ; BufferBuilder::begin(3)
MOV W1,#1
MOV w2,#1
BL 0x6A2660 ; getUV(1,1)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,1
FMOV S2,1
LDR S3,[X8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,1
FMOV S2,1
LDR S3,[X8,#8]
LDR S4,[X8,#0x18]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,0
FMOV S1,0
FMOV S2,1
LDR S3,[X8,#8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
ADRP X8,#0x1880000 ; SIZEDATA
FMOV S0,1
FMOV S1,0
FMOV S2,1
LDR S3,[X8]
LDR S4,[X8,#0x10]
MOV X0,X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
MOV X0,X20
BL 0x6109D8 ; BufferBuilder::end(void)
BL 0x68252C ; GlStateManager::popMatrix(void); ; <================================== END ==================================
BL 0x683B80 ; GlStateManager::enableTexture(void)
BL 0x6A0BA4 ; GlStateManager::enableDepthTest(void);
BL 0x683F48 ; GlStateManager::enableLighting(void)
BL 0x682518 ; GlStateManager::enableCull(void)
LDR S8,[SP,#0x10]
MOV V0.16B,V8.16B
LDP X29, X30, [SP,#0x40]
LDP X22, X21, [SP,#0x30]
LDP X20, X19, [SP,#0x20]
ADD SP, SP, #0x50
RET