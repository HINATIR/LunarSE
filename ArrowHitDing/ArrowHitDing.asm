Hook from 0x28E98
;Customskyの空きスペースに書き込み

0x6A2900:
SUB SP, SP, #0x40
STP X19, X20, [SP,#0x20]
STP X29, X30, [SP,#0x30]
ADD X29, SP, #0x30 
LDR X19,[X19,#0x2C0]
CBZ X19,#0x6A2970 ; Entityが撃った矢ではない場合スキップ
MOV W0, #0x58 ; unsigned __int64
BL 0x9C9A78 ; _Znwm_0
LDR D0, [X19,#0x78]
LDR D1, [X19,#0x80]
LDR D2, [X19,#0x88]
FMOV S3,0.75
FMOV S4,0.5
MOV W2, #7
ADRP X8,#0x17A3000
ADD X8,X8,#0x460
LDR X1,[X8] ; SoundEvent::random_orb
MOV X20, X0
BL 0xD987C ;  ClientboundSoundPacket(SoundEvent* sound, SoundSource::ESoundSource source, double x, double y, double z, float vol, float pitch)
ADD X0, SP, #0x10
MOV X1, X20
MOV X2, XZR
BL 0x6D40A0
ADD X1, SP, #0x10
LDR X0,[X19,#0x8B8] ; packetlisner
BL 0x7057C4 ; send(SoundPacket)
ADD X0, SP, #0x10
BL 0xD9CE0 ; deletepacket
MOV W0,#0x38;辻褄合わせ処理
LDP X29, X30, [SP,#0x30]
LDP X19, X20, [SP,#0x20]
ADD SP, SP, #0x40
RET