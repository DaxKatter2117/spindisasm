GEMSSamples:		; TODO: Write a macro for DAC Pointers
	; Sample 00
		dc.b $25
		dc.b $08, $01, $00
		dc.b 0, 0
		dc.b $73, $0A
		dc.b 0, 0, 0, 0

	; Sample 01
		dc.b $25
		dc.b $7B, $0B, $00
		dc.b 0, 0
		dc.b $B3, $05
		dc.b 0, 0, 0, 0

	; Sample 02
		dc.b $05
		dc.b $2E, $11, $00
		dc.b 0, 0
		dc.b $36, $0C
		dc.b 0, 0, 0, 0

	; Sample 03
		dc.b $25
		dc.b $64, $1D, $00
		dc.b 0, 0
		dc.b $6A, $06
		dc.b 0, 0, 0, 0

	; Sample 04
		dc.b $05
		dc.b $CE, $23, $00
		dc.b 0, 0
		dc.b $1F, $10
		dc.b 0, 0, 0, 0

	; Sample 05
		dc.b $45
		dc.b $ED, $33, $00
		dc.b 0, 0
		dc.b $B9, $13
		dc.b 0, 0, 0, 0

	; Sample 06
		dc.b $45
		dc.b $A6, $47, $00
		dc.b 0, 0
		dc.b $FA, $08
		dc.b 0, 0, 0, 0

	; Sample 07
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 08
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 09
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 0A
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 0B
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 0C
		dc.b $65
		dc.b $A0, $50, $00
		dc.b 0, 0
		dc.b $52, $0D
		dc.b 0, 0, 0, 0

	; Sample 0D
		dc.b $65
		dc.b $F2, $5D, $00
		dc.b 0, 0
		dc.b $C6, $0F
		dc.b 0, 0, 0, 0

	; Sample 0E
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 0F
		dc.b $65
		dc.b $B8, $6D, $00
		dc.b 0, 0
		dc.b $E5, $0B
		dc.b 0, 0, 0, 0

	; Sample 10
		dc.b $65
		dc.b $9D, $79, $00
		dc.b 0, 0
		dc.b $6B, $08
		dc.b 0, 0, 0, 0

	; Sample 11
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 12
		dc.b $45
		dc.b $08, $82, $00
		dc.b 0, 0
		dc.b $AA, $07
		dc.b 0, 0, 0, 0

	; Sample 13
		dc.b 0
		dc.b 0, 0, 0
		dc.b 0, 0
		dc.b 0, 0
		dc.b 0, 0, 0, 0

	; Sample 14
		dc.b $65
		dc.b $B2, $89, $00
		dc.b 0, 0
		dc.b $4A, $0E
		dc.b 0, 0, 0, 0

	; Sample 15
		dc.b $65
		dc.b $FC, $97, $00
		dc.b 0, 0
		dc.b $54, $0B
		dc.b 0, 0, 0, 0

	INCBIN	"SOUND/DATA/DAC/SampleData.bin"		; TODO - Identify individual samples