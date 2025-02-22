BL 0x521620 ; void display2DBox(int x, int y, int sizeX, int sizeY, int textcolor, int opacity):

SUB SP, SP, #0x50
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STR S8, [SP,#0x30]
STR S9, [SP,#0x34]
STR S10, [SP,#0x38]
STR S11, [SP,#0x3C]
STP X29, X30, [SP,#0x40]
ADD X29, SP, #0x40 
SCVTF S8, W0
SCVTF S9, W1
SCVTF S10, W2
SCVTF S11, W3
MOV W19, W4
MOV W21, W5
FMOV S8, S0
BL 0x52A8F0 ; float getScreenScaleCord(void)
FMUL S8, S8, S0
BL 0x67DB90 ; mc::Minecraft::getInstance();
MOV X22, X0
BL 0x683b58 ; mc::GlStateManager::disableCull()
BL 0x6A5D68 ; mc::GlStateManager::disableDepthTest(void)
BL 0x683A90 ; GlStateManager::disableTexture(void)
BL 0x6824c4 ; GlStateManager::pushMatrix();
FMOV S0, 0
FMOV S1, 0
FMOV S2, 0
BL 0x6824dc ; mc::GlStateManager::translatef(0, 0, 0);
FMOV S0, S8
FMOV S1, S8
FMOV S2, 1
BL 0x6827b8 ; mc::GlStateManager::scalef(1, 1, 1);
BL 0x70521c ; Tesselator::getInstance();
BL 0x70522c ; Tesselator::getBuilder();
MOV X20, X0
MOV X0, X20
MOV W1, #3
BL 0x610E50 ; BufferBuilder::begin(3)
MOV X0, X20
MOV W1, W19
MOV W2, W21
BL 0x638D5C
FMOV S0, S8
FMOV S1, S9
FMOV S2, 0
FMOV S3, 0
FMOV S4, 0
MOV X0, X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
FADD S0, S8, S10
FMOV S1, S9
FMOV S2, 0
FMOV S3, 1
FMOV S4, 0
MOV X0, X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
FADD S0, S8, S10
FADD S1, S9, S11
FMOV S2, 0
FMOV S3, 1
FMOV S4, 1
MOV X0, X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
FMOV S0, S8
FADD S1, S9, S11
FMOV S2, 0
FMOV S3, 0
FMOV S4, 1
MOV X0, X20
BL 0x610984 ; BufferBuilder::vertexUV(float, float, float, float, float)
MOV X0, X20
BL 0x6109D8 ; BufferBuilder::end(void)
BL 0x68252C ; GlStateManager::popMatrix(void)
BL 0x683B80 ; GlStateManager::enableTexture(void)
BL 0x6A0BA4 ; GlStateManager::enableDepthTest(void);
BL 0x682518 ; GlStateManager::enableCull(void)
LDP X29, X30, [SP,#0x40]
LDR S8, [SP,#0x30]
LDR S9, [SP,#0x34]
LDR S10, [SP,#0x38]
LDR S11, [SP,#0x3C]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x50
RET