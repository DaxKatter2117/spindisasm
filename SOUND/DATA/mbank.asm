; ---------------------------------------------------------------------------
; GEMS ModEnv Macros
; ---------------------------------------------------------------------------

ModPtr	macro loc
	dc.w ((loc-GEMSModEnv)&$00FF)<<8|((loc-GEMSModEnv)&$FF00)>>8
	endm

gmModStart macro mod
	BEW2LEW	\mod
	endm

gmModSect macro len,mod
	dc.b	len
	BEW2LEW	\mod
	endm

gmModEnd macro
	dc.b	0
	endm

; ---------------------------------------------------------------------------
; GEMS Modulation Pointers
; ---------------------------------------------------------------------------

; ModEnv Index

GEMSModEnv:
	ModPtr	ModEnv_00
	ModPtr	ModEnv_01
	ModPtr	ModEnv_02
	ModPtr	ModEnv_03
	ModPtr	ModEnv_04
	ModPtr	ModEnv_05

ModEnv_00:
	gmModStart	0
	gmModSect	25, 300
	gmModSect	67, -1200
	gmModEnd

ModEnv_01:
	gmModStart	0
	gmModSect	2, 0
	gmModSect	39, -200
	gmModEnd

ModEnv_02:
	gmModStart	0
	gmModSect	28, -2
	gmModSect	56,  2
	gmModSect	56, -2
	gmModSect	54,  2
	gmModSect	54, -2
	gmModEnd

ModEnv_03:
	gmModStart	20
	gmModSect	15, 10
	gmModSect	19, 29
	gmModSect	13, 10
	gmModEnd

ModEnv_04:
	gmModStart	0
	gmModSect	28, -2
	gmModSect	56, 2
	gmModSect	56, -2
	gmModSect	56, 2
	gmModSect	56, -2
	gmModSect	28, 2
	gmModEnd

ModEnv_05:
	gmModStart	0
	gmModSect	32, 250
	gmModEnd
