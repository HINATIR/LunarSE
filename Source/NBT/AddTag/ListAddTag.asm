MOV W0, #0x10 ; unsigned __int64
BL _Znwm_0 ; operator new(ulong)
LDR D0, [X28]
MOV X22, X0
BL sub_7100109674
MOV X0, X27 ; ListTag
MOV X1, X22
BL add__7ListTagFP3Tag