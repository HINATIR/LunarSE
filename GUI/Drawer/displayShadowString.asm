0x521530 ; wstring displayString(std::wstring const&, int x, int y, int textcolor, int textalign, float scale):

SUB SP, SP, #0x60
STP X20, X19, [SP,#0x10]
STP X22, X21, [SP,#0x20]
STP X24, X23, [SP,#0x30]
STP X29, X30, [SP,#0x40]
STR S8, [SP,#0x50]
ADD X29, SP, #0x50 
MOV X19, X0
MOV W20, W1
MOV W21, W2
MOV W22, W3
MOV W23, W4
FMOV S8, S0
BL 0x67db90 ; Minecraft::GetInstance
LDR X24, [X0, #0x1B0] ; mc::Minecraft::getInstance()->defaultFonts;
BL 0x683b58 ; mc::GlStateManager::disableCull(); 
BL 0x6a5d68 ; mc::GlStateManager::disableDepthTest();
BL 0x683BA0 ; GlStateManager::enableAlphaTest(void)
BL 0x6824c4 ; mc::GlStateManager::pushMatrix();
FMOV S0, S8
FMOV S1, S8
FMOV S2, WZR
BL 0x6827b8 ; mc::GlStateManager::scalef(float scale, float scale, float );
MOV X0, X24
MOV X1, X19
BL 0x69576C ; Font::width(std::wstring const&):
MOV W1, W20
MOV W4, W23
CMP W4, #0
B.EQ _align01
CMP W0, #0
CINC W8, W0, LT
CMP W4, #1
B.NE _align2
SUB W1, W20, W8, ASR#1
B _align01
SUB W1, W20, W8 <= _align2
SCVTF S0, W1 <= _align01
SCVTF S1, W21
FMOV S2, WZR
BL 0x6824dc ; mc::GlStateManager::translatef(int x, int y ,0);
MOV X0, X24
MOV X1, X19
MOV W2, WZR
MOV W3, WZR
MOV W4, W22
BL 0x694C0C ; Font::drawShadow(std::wstring const&, 0, 0, int textcolor)
BL 0x68252c ; mc::GlStateManager::popMatrix();
BL 0x682818 ; GlStateManager::disableRescaleNormal(void)
BL 0x6A0BA4 ; GlStateManager::enableDepthTest(void)
MOV X0, X19
LDR S8, [SP,#0x50]
LDP X29, X30, [SP,#0x40]
LDP X24, X23, [SP,#0x30]
LDP X22, X21, [SP,#0x20]
LDP X20, X19, [SP,#0x10]
ADD SP, SP, #0x60
RET