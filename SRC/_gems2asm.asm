; --------------------------------------------------------------
; GEMS2ASM by DaxKatter
; --------------------------------------------------------------
;
; TODO - Write Macro Conversions of GEMS Squence Data Commands
;
; ---------------------------------------------------------------------------
; Mod Envelope Macros
; ---------------------------------------------------------------------------

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

; --------------------------------------------------------------
; FM Instrument Data Macros
; --------------------------------------------------------------
; PARAMETERS:
;	name	- FM instrument name
; --------------------------------------------------------------

gpType macro val
	dc.b val
	endm

gtFM		equ 0
gtDAC		equ 1
gtPSG		equ 2
gtNoise		equ 3

;gfiLFO macro 