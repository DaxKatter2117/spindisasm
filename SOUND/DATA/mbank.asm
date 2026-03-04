; ---------------------------------------------------------------------------
; GEMS ModEnv Macros
; ---------------------------------------------------------------------------

ModPtr	macro loc
	dc.w ((loc-GEMSModEnv)&$00FF)<<8|((loc-GEMSModEnv)&$FF00)>>8
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
	dc.b	$00, $00
	dc.b	$19, $2C, $01
	dc.b	$43, $50, $FB
	dc.b	0

ModEnv_01:
	dc.b	$00, $00
	dc.b	$02, $00, $00
	dc.b	$27, $38, $FF
	dc.b	0

ModEnv_02:
	dc.b	$00, $00
	dc.b	$1C, $FE, $FF
	dc.b	$38, $02, $00
	dc.b	$38, $FE, $FF
	dc.b	$36, $02, $00
	dc.b	$36, $FE, $FF
	dc.b	0

ModEnv_03:
	dc.b	$14, $00
	dc.b	$0F, $0A, $00
	dc.b	$13, $1D, $00
	dc.b	$0D, $0A, $00
	dc.b	0

ModEnv_04:
	dc.b	$00, $00
	dc.b	$1C, $FE, $FF
	dc.b	$38, $02, $00
	dc.b	$38, $FE, $FF
	dc.b	$38, $02, $00
	dc.b	$38, $FE, $FF
	dc.b	$1C, $02, $00
	dc.b	0

ModEnv_05:
	dc.b	$00, $00
	dc.b	$20, $FA, $00
	dc.b	0
