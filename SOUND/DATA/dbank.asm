; ---------------------------------------------------------------------------
; GEMS Sample Macros
; ---------------------------------------------------------------------------

DACPtr macro loc, bit, sign, clip, rate, lpdac, endptr, lpstart, lpend
	if narg=1
		dc.l 0,0,0
	else
		dc.b	(bit&1)<<7|(sign&1)<<6|(clip&1)<<5|(lpdac&1)<<4|((rate+5)&$0F)
		dc.w	((loc-GEMSSamples)&$00FF)<<8|((loc-GEMSSamples)&$FF00)>>8
		dc.b	0
		dc.w	0
		dc.w	((endptr-loc)&$00FF)<<8|((endptr-loc)&$FF00)>>8
		if narg=<7
			dc.l	0
		else
			dc.w	((lpstart-GEMSSamples)&$00FF)<<8|((lpstart-GEMSSamples)&$FF00)>>8
			dc.w	((lpend-GEMSSamples)&$00FF)<<8|((lpend-GEMSSamples)&$FF00)>>8
		endif
	endif
	endm

IncDAC: macro name,path
\name:	incbin \path
\name\_End:
	endm

; ---------------------------------------------------------------------------
; GEMS Sample Pointers
; ---------------------------------------------------------------------------

GEMSSamples:		; TODO: Write a macro for DAC Pointers
	DACPtr	Sample_00, 0,0,1,0,0, Sample_00_End
	DACPtr	Sample_01, 0,0,1,0,0, Sample_01_End
	DACPtr	Sample_02, 0,0,0,0,0, Sample_02_End
	DACPtr	Sample_03, 0,0,1,0,0, Sample_03_End
	DACPtr	Sample_04, 0,0,0,0,0, Sample_04_End
	DACPtr	Sample_05, 0,1,0,0,0, Sample_05_End
	DACPtr	Sample_06, 0,1,0,0,0, Sample_06_End
	DACPtr	0
	DACPtr	0
	DACPtr	0
	DACPtr	0
	DACPtr	0
	DACPtr	Sample_0C, 0,1,1,0,0, Sample_0C_End
	DACPtr	Sample_0D, 0,1,1,0,0, Sample_0D_End
	DACPtr	0
	DACPtr	Sample_0F, 0,1,1,0,0, Sample_0F_End
	DACPtr	Sample_10, 0,1,1,0,0, Sample_10_End
	DACPtr	0
	DACPtr	Sample_12, 0,1,0,0,0, Sample_12_End
	DACPtr	0
	DACPtr	Sample_14, 0,1,1,0,0, Sample_14_End
	DACPtr	Sample_15, 0,1,1,0,0, Sample_15_End

; ---------------------------------------------------------------------------
; GEMS Sample Data
; ---------------------------------------------------------------------------

	IncDAC	Sample_00, "SOUND/DATA/DAC/00.pcm"
	IncDAC	Sample_01, "SOUND/DATA/DAC/01.pcm"
	IncDAC	Sample_02, "SOUND/DATA/DAC/02.pcm"
	IncDAC	Sample_03, "SOUND/DATA/DAC/03.pcm"
	IncDAC	Sample_04, "SOUND/DATA/DAC/04.pcm"
	IncDAC	Sample_05, "SOUND/DATA/DAC/05.pcm"
	IncDAC	Sample_06, "SOUND/DATA/DAC/06.pcm"
	IncDAC	Sample_0C, "SOUND/DATA/DAC/0C.pcm"
	IncDAC	Sample_0D, "SOUND/DATA/DAC/0D.pcm"
	IncDAC	Sample_0F, "SOUND/DATA/DAC/0F.pcm"
	IncDAC	Sample_10, "SOUND/DATA/DAC/10.pcm"
	IncDAC	Sample_12, "SOUND/DATA/DAC/12.pcm"
	IncDAC	Sample_14, "SOUND/DATA/DAC/14.pcm"
	IncDAC	Sample_15, "SOUND/DATA/DAC/15.pcm"
