; ---------------------------------------------------------------------------
; GEMS Pointer Macro
; ---------------------------------------------------------------------------

PatchPtr macro loc
	dc.w ((loc-GEMSPatches)&$00FF)<<8|((loc-GEMSPatches)&$FF00)>>8
	endm

; ---------------------------------------------------------------------------
; GEMS Patch Index
; ---------------------------------------------------------------------------
GEMSPatches:
	PatchPtr	Patch_00
	PatchPtr	Patch_01
	PatchPtr	Patch_02
	PatchPtr	Patch_03
	PatchPtr	Patch_04
	PatchPtr	Patch_05
	PatchPtr	Patch_06
	PatchPtr	Patch_07
	PatchPtr	Patch_08
	PatchPtr	Patch_09
	PatchPtr	Patch_0A
	PatchPtr	Patch_0B
	PatchPtr	Patch_0C
	PatchPtr	Patch_0D
	PatchPtr	Patch_0E
	PatchPtr	Patch_0F
	PatchPtr	Patch_10
	PatchPtr	Patch_11
	PatchPtr	Patch_12
	PatchPtr	Patch_13
	PatchPtr	Patch_14
	PatchPtr	Patch_15
	PatchPtr	Patch_16
	PatchPtr	Patch_17
	PatchPtr	Patch_18
	PatchPtr	Patch_19
	PatchPtr	Patch_1A
	PatchPtr	Patch_1B
	PatchPtr	Patch_1C
	PatchPtr	Patch_1D
	PatchPtr	Patch_1E
	PatchPtr	Patch_1F
	PatchPtr	Patch_20
	dc.w	$C705
	dc.w	$EE05
	dc.w	$1506
	dc.w	$3C06
	dc.w	$6306
	dc.w	$8A06
	dc.w	$B106
	dc.w	$D806
	dc.w	$FF06
	dc.w	$2607
	dc.w	$4D07
	dc.w	$7407
	dc.w	$9B07
	dc.w	$C207
	dc.w	$E907
	dc.w	$1008	; $30
	dc.w	$3708
	dc.w	$5E08
	dc.w	$8508
	dc.w	$AC08
	dc.w	$D308
	dc.w	$FA08
	dc.w	$2109
	dc.w	$4809
	dc.w	$6F09
	dc.w	$9609
	dc.w	$BD09
	dc.w	$E409
	dc.w	$EB09
	dc.w	$120A
	dc.w	$390A
	dc.w	$600A	; $40
	dc.w	$870A
	dc.w	$AE0A
	dc.w	$D50A
	dc.w	$FC0A
	dc.w	$230B
	dc.w	$4A0B
	dc.w	$710B
	dc.w	$980B
	dc.w	$BF0B
	dc.w	$E60B
	dc.w	$0D0C
	dc.w	$340C
	dc.w	$5B0C
	dc.w	$820C
	dc.w	$A90C
	dc.w	$D00C	; $50
	dc.w	$F70C
	dc.w	$1E0D
	dc.w	$450D
	dc.w	$6C0D
	dc.w	$930D
	dc.w	$BA0D
	dc.w	$E10D
	dc.w	$080E
	dc.w	$2F0E
	dc.w	$560E
	dc.w	$7D0E
	dc.w	$A40E
	dc.w	$CB0E
	dc.w	$F20E
	dc.w	$190F
	dc.w	$400F	; $60
	dc.w	$670F
	dc.w	$8E0F
	dc.w	$B50F
	dc.w	$DC0F
	dc.w	$0310
	dc.w	$2A10
	dc.w	$5110
	dc.w	$7810
	dc.w	$9F10
	dc.w	$C610
	dc.w	$ED10
	dc.w	$1411
	dc.w	$3B11
	dc.w	$6211
	dc.w	$8911
	dc.w	$B011	; $70
	dc.w	$D711
	dc.w	$FE11
	dc.w	$2512
	dc.w	$4C12
	dc.w	$7312
	dc.w	$9A12
	dc.w	$C112
	dc.w	$E812
	dc.w	$0F13
	dc.w	$3613
	dc.w	$3813
	dc.w	$5F13
	dc.w	$8613
	dc.w	$AD13
	dc.w	$D413

; ---------------------------------------------------------------------------
; GEMS Patch Data
; ---------------------------------------------------------------------------

Patch_00:
	gpType		gtFM
;	gfiLFO		
;	gfiCH3		
;	gfiAlgorithm	
;	gfiFeedback	
;	gfiPan		
;	gfiAMSFMS	
;	gfiMult		
;	gfiDetune	
;	gfiTotalLevel	
;	gfiRateScale	
;	gfiAttack	
;	gfiAmpMod	
;	gfiDecayRt1	
;	gfiDecayRt2	
;	gfiDecayLv	
;	gfiReleaseRt	
;	gfiOpFreq	
;	gfiOpEnable	
	dc.b	$0A, $00, $25, $F3, $72, $00, $05, $97
	dc.b	$00, $0F, $74, $05, $56, $9B, $03, $3F
	dc.b	$03, $05, $14, $9D, $05, $3F, $32, $07
	dc.b	$17, $99, $02, $3F, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_01:
	gpType		gtFM
	dc.b	$0B, $00, $35, $E4, $77, $13, $1A, $97
	dc.b	$13, $7C, $74, $05, $56, $9D, $0F, $1D
	dc.b	$03, $07, $14, $9F, $0F, $1D, $32, $09
	dc.b	$17, $9F, $0E, $1D, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_02:
	gpType		gtFM
	dc.b	$0B, $00, $3D, $C1, $3B, $11, $DC, $12
	dc.b	$0D, $4F, $66, $0C, $5E, $18, $17, $1B
	dc.b	$72, $10, $9F, $0B, $0C, $1B, $21, $0F
	dc.b	$9D, $08, $11, $1B, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_03:
	gpType		gtFM
	dc.b	$0B, $00, $2C, $C5, $73, $04, $9F, $1A
	dc.b	$08, $DA, $00, $07, $5F, $0F, $02, $BC
	dc.b	$33, $02, $5F, $15, $06, $AC, $01, $02
	dc.b	$5F, $0A, $0D, $8C, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_04:
	gpType		gtFM
	dc.b	$0B, $00, $2C, $C2, $70, $08, $9F, $1A
	dc.b	$08, $28, $00, $0B, $5F, $0C, $02, $BA
	dc.b	$32, $06, $1F, $15, $06, $AA, $00, $06
	dc.b	$5E, $05, $09, $8A, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_05:
	gpType		gtFM
	dc.b	$09, $00, $0C, $E1, $23, $1D, $19, $0A
	dc.b	$00, $BA, $51, $16, $19, $14, $0C, $AF
	dc.b	$20, $0D, $18, $03, $19, $AB, $52, $04
	dc.b	$5C, $87, $19, $AF, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $07, $00

Patch_06:
	gpType		gtFM
	dc.b	$0E, $00, $01, $C2, $10, $21, $16, $03
	dc.b	$07, $98, $10, $16, $54, $0A, $0A, $B8
	dc.b	$50, $21, $0B, $04, $0C, $78, $50, $0C
	dc.b	$18, $01, $04, $9B, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_07:
	gpType		gtFM
	dc.b	$0C, $00, $09, $C4, $00, $27, $1F, $09
	dc.b	$07, $08, $50, $1D, $5B, $11, $00, $F8
	dc.b	$00, $11, $5A, $09, $00, $F8, $61, $07
	dc.b	$5F, $09, $00, $3A, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_08:
	gpType		gtFM
	dc.b	$00, $00, $22, $C0, $00, $00, $15, $06
	dc.b	$09, $27, $70, $03, $17, $07, $05, $29
	dc.b	$00, $03, $05, $07, $0A, $59, $00, $0A
	dc.b	$0F, $0B, $0F, $39, $0D, $05, $0A, $75
	dc.b	$09, $28, $0A, $02, $0D, $00


Patch_09:
	gpType		gtFM
	dc.b	$03, $00, $25, $52, $53, $03, $42, $84
	dc.b	$00, $79, $11, $08, $51, $84, $04, $59
	dc.b	$02, $14, $4D, $09, $02, $09, $01, $14
	dc.b	$5C, $09, $06, $99, $1F, $FF, $1F, $FF
	dc.b	$20, $00, $1F, $FF, $0F, $01

Patch_0A:
	gpType		gtFM
	dc.b	$0A, $00, $38, $A4, $03, $06, $5E, $98
	dc.b	$0C, $68, $20, $0F, $94, $1C, $05, $28
	dc.b	$62, $17, $93, $9F, $06, $38, $01, $0E
	dc.b	$52, $01, $1F, $A7, $1F, $FF, $1F, $FF
	dc.b	$1F, $FF, $1F, $FF, $0F, $00

Patch_0B:
	gpType		gtFM
	dc.l	$00001FC0, $00021F08
	dc.l	$07070407, $14040608
	dc.l	$07071D07, $08580002
	dc.l	$1B040E77, $00000000
	dc.l	$00000000
	dc.w	$0F00

Patch_0C:
	gpType		gtFM
	dc.l	$0D0022D0, $70051A8F
	dc.l	$0B763301, $4E8C0C17
	dc.l	$1006D48A, $0C363205
	dc.l	$5F880B17, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0B00

Patch_0D:
	gpType		gtFM
	dc.l	$0F0015E2, $000B5E0F
	dc.l	$0568100D, $1F8B072C
	dc.l	$001B198A, $03295011
	dc.l	$178B053A, $1FFF1FFF
	dc.l	$1FFF0000
	dc.w	$0F00

Patch_0E:
	gpType		gtFM
	dc.l	$0F0015E2, $000B5E0F
	dc.l	$05681005, $1F8B072C
	dc.l	$0013198A, $03295009
	dc.l	$178B053A, $1FFF1FFF
	dc.l	$1FFF0000
	dc.w	$0F00

Patch_0F:
	gpType		gtFM
	dc.l	$0D0029F1, $7108DF0B
	dc.l	$0216050B, $5A0A0208
	dc.l	$54249E0D, $02680105
	dc.l	$5F0B02B8, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_10:
	gpType		gtFM
	dc.l	$0B0030E5, $71255502
	dc.l	$03667219, $5B8F0003
	dc.l	$61071D0F, $0313730E
	dc.l	$1D040156, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_11:
	gpType		gtFM
	dc.l	$060021F5, $70001F00
	dc.l	$00057011, $1F111028
	dc.l	$70081F1F, $0C180005
	dc.l	$1D101018, $1F403FCC
	dc.l	$3FE83F82
	dc.w	$0F00

Patch_12:
	gpType		gtFM
	dc.l	$0B003ED1, $76021F97
	dc.l	$137C7406, $56990A1A
	dc.l	$0327149B, $0A193207
	dc.l	$17960B1B, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_13:
	gpType		gtFM
	dc.l	$0A002AD0, $03159E86
	dc.l	$03360316, $1E080026
	dc.l	$120CDE89, $0607610B
	dc.l	$1F830706, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_14:
	gpType		gtFM
	dc.l	$000023C4, $3005088B
	dc.l	$018B300B, $1D96003A
	dc.l	$750D1F16, $003A7003
	dc.l	$5B95003A, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_15:
	gpType		gtFM
	dc.l	$000033C0, $01185F05
	dc.l	$02180309, $5F050218
	dc.l	$0D129905, $02180109
	dc.l	$940702A8, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_16:
	gpType		gtFM
	dc.l	$000033C0, $01185F05
	dc.l	$02180309, $5F050218
	dc.l	$0D129905, $02180114
	dc.l	$940702A8, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_17:
	gpType		gtFM
	dc.l	$000002C0, $00001F08
	dc.l	$07040405, $1404060A
	dc.l	$0F051D07, $08580000
	dc.l	$1B041F7F, $00000000
	dc.l	$00000000
	dc.w	$0D00

Patch_18:
	gpType		gtFM
	dc.l	$000002C0, $00001F08
	dc.l	$07040405, $14040605
	dc.l	$0F051D07, $08580000
	dc.l	$1B041F77, $00000000
	dc.l	$00000000
	dc.w	$0D00

Patch_19:
	gpType		gtFM
	dc.l	$0A001FC7, $33140381
	dc.l	$15480116, $04810C38
	dc.l	$52140381, $0F382116
	dc.l	$86810F38, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_1A:
	gpType		gtFM
	dc.l	$0B002AC5, $73089F19
	dc.l	$08CA000D, $5F1305BC
	dc.l	$33055F19, $06AC0106
	dc.l	$5F0F118C, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_1B:
	gpType		gtPSG
	dc.w	$00FF
	dc.l	$09011312

Patch_1C:
	gpType		gtPSG
	dc.w	$00FF
	dc.l	$04011009

Patch_1D:
	gpType		gtFM
	dc.l	$0A003DD2, $3110D71F
	dc.l	$0B376110, $910E0837
	dc.l	$31049208, $0838311B
	dc.l	$90800208, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_1E:
	gpType		gtFM
	dc.l	$0A003DD2, $3110D71F
	dc.l	$0B376116, $910E0837
	dc.l	$310A9208, $08383121
	dc.l	$90800208, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_1F:
	gpType		gtFM
	dc.l	$080003D1, $120C8900
	dc.l	$00087110, $D38B1D8F
	dc.l	$710B0F00, $00081104
	dc.l	$D58F062F, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0E00

Patch_20:
	gpType		gtFM
	dc.l	$0A0037C4, $531C5417
	dc.l	$088A3100, $5B1B06AB
	dc.l	$04055817, $05BB0106
	dc.l	$1412166C, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_21:
	gpType		gtFM
	dc.l	$040025C2, $10110603
	dc.l	$12481005, $49040878
	dc.l	$1002190A, $11185006
	dc.l	$1F030C99, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

; Unorganised Data
Patch_22:
	gpType		gtFM
	dc.l	$0C0034C2, $110F1606
	dc.l	$12981014, $14040877
	dc.l	$511B1506, $11075106
	dc.l	$5F0A0C98, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_23:
	gpType		gtFM
	dc.l	$0B003EF5, $05201988
	dc.l	$008F3216, $578C051C
	dc.l	$55065A8C, $051C3109
	dc.l	$5C8B051C, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0F00

Patch_24:
	dc.l	$00000032
	dc.l	$C070031F, $04060670
	dc.l	$021F0806, $3570031F
	dc.l	$08030600, $01DF0306
	dc.l	$15000000, $00000000
	dc.l	$000F0000, $00002DC0
	dc.l	$78041300, $02053000
	dc.l	$94000406, $37060F00
	dc.l	$03077303, $090602A8
	dc.l	$00000000, $00000000
	dc.l	$0300000B, $002CE331
	dc.l	$161E170B, $58311314
	dc.l	$1C052770, $130F0105
	dc.l	$37010C13, $011FA81F
	dc.l	$FF1FFF1F, $FF1FFF0F
	dc.l	$00000900, $3ED63102
	dc.l	$D18D0B37, $7200878E
	dc.l	$003F3104, $4E03033F
	dc.l	$71158880, $020F1FFF
	dc.l	$1FFF1FFF, $1FFF0F00
	dc.l	$000A0035, $D222158E
	dc.l	$00010721, $1A8F0002
	dc.l	$1732189B, $05023634
	dc.l	$0C948002, $081FFF1F
	dc.l	$FF1FFF1F, $FF0F0000
	dc.l	$090000F0, $13065301
	dc.l	$1B303B1F, $1D0F1FE3
	dc.l	$710C5B03, $1D03710F
	dc.l	$1F000D0F, $1FFF1FFF
	dc.l	$1FFF1FFF, $0F00000C
	dc.l	$0006C400, $1A1F0907
	dc.l	$08507F9F, $1F1FEF00
	dc.l	$005A0900, $F8607F5F
	dc.l	$1F1FFF1F, $FF1FFF1F
	dc.l	$FF1FFF03, $00000800
	dc.l	$26E3121C, $91080B6F
	dc.l	$74099B8E, $14F87112
	dc.l	$1306000D, $4401DB8F
	dc.l	$1FF81FFF, $1FFF1FFF
	dc.l	$1FFF0F00, $00090001
	dc.l	$F0130253, $011B473B
	dc.l	$1C1D0F1F, $F8710B5B
	dc.l	$031D0671, $091F000D
	dc.l	$0A1FFF1F, $FF1FFF1F
	dc.l	$FF0F0000, $0F000FF5
	dc.l	$1104DA88, $118A6100
	dc.l	$98001F0E, $72001D00
	dc.l	$180E7001, $1E0F1FAF
	dc.l	$1FFF1FFF, $1FFF1FFF
	dc.l	$0F00000C, $000AC402
	dc.l	$1C1A0907, $0F511656
	dc.l	$11083B00, $1158090B
	dc.l	$4B610054, $09093B1F
	dc.l	$FF1FFF1F, $FF1FFF0E
	dc.l	$00000F00, $04F71F03
	dc.l	$4501000F, $70089B03
	dc.l	$00500A13, $4F01070F
	dc.l	$7003198B, $1FFF1FFF
	dc.l	$1FFF1FFF, $1FFF0F00
	dc.l	$000A0035, $D221198E
	dc.l	$00014720, $11950002
	dc.l	$1931089B, $05023715
	dc.l	$0B948002, $071FFF1F
	dc.l	$FF1FFF1F, $FF0F0000
	dc.l	$0F0038F7, $7000801D
	dc.l	$1F507000, $9F001800
	dc.l	$0000DD8F, $1FA07000
	dc.l	$1F000C0F, $1FFF1FFF
	dc.l	$1FFF1FFF, $0C00000C
	dc.l	$0002C000, $1DD30500
	dc.l	$2A0227DF, $06125A05
	dc.l	$14DF0A00, $8F00009F
	dc.l	$07000A1F, $FF1FFF1F
	dc.l	$FF1FFF0F, $00000A00
	dc.l	$0BF60000, $1F000025
	dc.l	$00081F1F, $0C180511
	dc.l	$1F111028, $01041D0F
	dc.l	$141B1FFF, $1FFF1FFF
	dc.l	$1FFF0F00, $00084024
	dc.l	$C03F085F, $0F1C881F
	dc.l	$00DC8000, $087C00DF
	dc.l	$80104D70, $06DF1110
	dc.l	$4D207520, $5F205E20
	dc.l	$000F0000, $0F4038C0
	dc.l	$06275F07, $00950300
	dc.l	$DF120946, $32009F11
	dc.l	$07060F03, $DF1E1019
	dc.l	$070807C2, $07D00064
	dc.l	$0F00000B, $0000C500
	dc.l	$181F0000, $9501071F
	dc.l	$1F0C0800, $12DF1110
	dc.l	$2805009D, $94118C20
	dc.l	$191FFF1F, $FF1FFF0F
	dc.l	$00000C00, $31F52F06
	dc.l	$5F050281, $7D029905
	dc.l	$02710F01, $9F050253
	dc.l	$33089F0F, $01AA1FFF
	dc.l	$1FFF1FFF, $1FFF0F00
	dc.l	$00080024, $C038065F
	dc.l	$0F1CB41C, $05DC8E00
	dc.l	$F47705DF, $8D10B970
	dc.l	$05DF0E10, $D9207520
	dc.l	$5F205E20, $000F0000
	dc.l	$06003DC5, $1300DF06
	dc.l	$11B50008, $DF081408
	dc.l	$00079F0E, $1FF80003
	dc.l	$1F101068, $1F353FB7
	dc.l	$3FB63F70, $0F00000B
	dc.l	$0032C510, $025F1908
	dc.l	$CB000B1F, $1305BB31
	dc.l	$0A1F1906, $AB01061F
	dc.l	$0E112B1F, $FF1FFF1F
	dc.l	$FF1FFF0F, $00000C40
	dc.l	$01C4001F, $191C0EDB
	dc.l	$00091F15, $0DFD001C
	dc.l	$1F110EEC, $00021F01
	dc.l	$165C138A, $0FBF1FEC
	dc.l	$13880F00, $0304FF0F
	dc.l	$000E1C00, $0C0039B5
	dc.l	$08001F00, $00270F08
	dc.l	$1F1F0C1A, $0F111F11
	dc.l	$102A000F, $1D12143C
	dc.l	$1FFF1FFF, $1FFF1FFF
	dc.l	$0F00000C, $0028750F
	dc.l	$001F0000, $250F081F
	dc.l	$1F0C180F, $111F1110
	dc.l	$280F0F1D, $12143A1F
	dc.l	$FF1FFF1F, $FF1FFF0F
	dc.l	$00000840, $3283010E
	dc.l	$50850211, $02265F85
	dc.l	$0211721B, $99850211
	dc.l	$3107950F, $02F938AB
	dc.l	$34643D11, $33360F00
	dc.l	$00084032, $43010E50
	dc.l	$85021102, $265F8502
	dc.l	$11721B99, $85021131
	dc.l	$07950F02, $F938AB34
	dc.l	$643D1133, $360F0000
	dc.l	$000002C0, $00001F08
	dc.l	$07040405, $14040605
	dc.l	$0F051D07, $08580005
	dc.l	$1B041F77, $00000000
	dc.l	$00000000, $0D00000B
	dc.l	$002C8270, $089F1A08
	dc.l	$28000B5F, $0C02BA32
	dc.l	$061F1506, $AA00065E
	dc.l	$05098A1F, $FF1FFF1F
	dc.l	$FF1FFF0F, $00000B00
	dc.l	$2C427008, $9F1A0828
	dc.l	$000B5F0C, $02BA3206
	dc.l	$1F1506AA, $00065E05
	dc.l	$098A1FFF, $1FFF1FFF
	dc.l	$1FFF0F00, $0000002D
	dc.l	$C00805C5, $07030530
	dc.l	$00940004, $463900DC
	dc.l	$00017773, $03090602
	dc.l	$A8000000, $00000A00
	dc.l	$00070000, $09002CD2
	dc.l	$2212D205, $0048330B
	dc.l	$5709003F, $20028805
	dc.l	$003F1107, $8895000F
	dc.l	$20050C03, $1FCB1FDA
	dc.l	$0F00000A, $0035D231
	dc.l	$10D71F0B, $37611091
	dc.l	$0E083731, $04920808
	dc.l	$38311B90, $8002081F
	dc.l	$FF1FFF1F, $FF1FFF0F
	dc.l	$00000A00, $35D2310E
	dc.l	$D71F0B37, $6110910E
	dc.l	$08373104, $92080838
	dc.l	$311B9080, $02081FFF
	dc.l	$1FFF1FFF, $1FFF0F00
	dc.l	$000A0035, $D2310CD7
	dc.l	$1F0B3761, $10910E08
	dc.l	$37310492, $08083831
	dc.l	$1B908002, $081FFF1F
	dc.l	$FF1FFF1F, $FF0F0000
	dc.l	$0C4013E0, $7000150A
	dc.l	$1FED5000, $0B891FA7
	dc.l	$70005A0A, $1FBF7000
	dc.l	$0D0415FF, $1FFF2001
	dc.l	$200B2003, $0B000006
	dc.l	$003CF502, $00150000
	dc.l	$0570001F, $00100860
	dc.l	$000E000C, $0800001F
	dc.l	$0010091F, $403FCC3F
	dc.l	$E83F8203, $00000A00
	dc.l	$1F723210, $C8000008
	dc.l	$327F9F9F, $0FCF727F
	dc.l	$5F1F0F7F, $127FDF9F
	dc.l	$0F7F1FFF, $1FFF1FFF
	dc.l	$1FFF0100, $000C4003
	dc.l	$C0007F1F, $1F1FFF00
	dc.l	$001F150D, $FD00111F
	dc.l	$110EEC01, $021F0116
	dc.l	$5B1B5813, $880FA013
	dc.l	$880E0000, $0C4003C0
	dc.l	$007F1F1F, $1FFF0000
	dc.l	$1F150DFD, $04111F11
	dc.l	$0EEC0102, $1F01165B
	dc.l	$1B581388, $0FA01388
	dc.l	$0E000000, $0015C470
	dc.l	$00D8001A, $83740E8E
	dc.l	$060E4908, $03D5091E
	dc.l	$8A0E05D0, $031A691F
	dc.l	$353FB73F, $B63F700F
	dc.l	$00000F00, $04F71F03
	dc.l	$4501000F, $70089B03
	dc.l	$00500A13, $4F01070F
	dc.l	$7003198B, $1FFF1FFF
	dc.l	$1FFF1FFF, $1FFF0F00
	dc.l	$000A001D, $F7031114
	dc.l	$171F8F09, $075B1B06
	dc.l	$AF010718, $1705B602
	dc.l	$0454121F, $6F1FFF1F
	dc.l	$FF1FFF1F, $FF090000
	dc.l	$0A0014C3, $71198F8D
	dc.l	$0FC8721A, $9A94041B
	dc.l	$70061580, $000B4016
	dc.l	$8D80000B, $1FFF1FFF
	dc.l	$1FFF1FFF, $0F000009
	dc.l	$002CD222, $17D20500
	dc.l	$48331A57, $09003F20
	dc.l	$138E0500, $2F111588
	dc.l	$95000F20, $050C031F
	dc.l	$CB1FDA0F, $00000800
	dc.l	$14C00607, $1F8117FE
	dc.l	$441D9F8A, $05FC3802
	dc.l	$1F14143A, $42061F05
	dc.l	$051B1FFF, $1FFF1FFF
	dc.l	$1FFF0B00, $000A0035
	dc.l	$D2210A8E, $00014720
	dc.l	$08950002, $1731009B
	dc.l	$05023614, $00948002
	dc.l	$081FFF1F, $FF1FFF1F
	dc.l	$FF0F0000, $09003AD2
	dc.l	$071D4D0C, $0127021E
	dc.l	$92050A57, $02209713
	dc.l	$02460108, $95870018
	dc.l	$1FFF1FFF, $1FFF1FFF
	dc.l	$0D000007, $002AE001
	dc.l	$0F5F0A02, $8403195F
	dc.l	$0502547C, $159F0B02
	dc.l	$34320794, $0802A71F
	dc.l	$FF1FFF1F, $FF1FFF0F
	dc.l	$00000B00, $04D40129
	dc.l	$1F0A000F, $07259D00
	dc.l	$1847730F, $0E0000DB
	dc.l	$01111398, $090F1FFF
	dc.l	$1FFF1FFF, $1FFF0F00
	dc.l	$000B0023, $C0031B12
	dc.l	$180C6902, $101A1C0C
	dc.l	$3701131A, $1F0B3901
	dc.l	$031E1109, $261FFF1F
	dc.l	$FF1FFF1F, $FF0F0000
	dc.l	$0F4015E2, $0E000B80
	dc.l	$00060D00, $1F9F0C1B
	dc.l	$07031F11, $10280F00
	dc.l	$1D92144A, $2002218F
	dc.l	$2009200C, $0F00000B
	dc.l	$003FD236, $00D81C0D
	dc.l	$5F007F5F, $9F1FFF73
	dc.l	$00DA0B0C, $0B207F5F
	dc.l	$9F1FFF1F, $FF1FFF1F
	dc.l	$FF1FFF03, $00000E00
	dc.l	$1AC53117, $D8000B5C
	dc.l	$1426D300, $14BB3A0E
	dc.l	$D608002F, $02019607
	dc.l	$062D1FFF, $1FFF1FFF
	dc.l	$1FFF0F00, $00000007
	dc.l	$C000021F, $80010A04
	dc.l	$0B14000F, $0A07071D
	dc.l	$00035A00, $021B000E
	dc.l	$7A000000, $00000000
	dc.l	$000F0000, $00003CC0
	dc.l	$72001F0B, $0A253000
	dc.l	$96000C06, $33001F00
	dc.l	$09077100, $1F060506
	dc.l	$00000000, $00000000
	dc.l	$0F00000A, $003DF200
	dc.l	$001F0B09, $FA01021F
	dc.l	$11199904, $00DF1319
	dc.l	$FA00061D, $111F791F
	dc.l	$E01FEF20, $021FFF0F
	dc.l	$00000000, $3CC07200
	dc.l	$1F0B0A21, $30009600
	dc.l	$0C053300, $1F000906
	dc.l	$71001F06, $05010000
	dc.l	$00000000, $00000F00
	dc.l	$000F401D, $C7110B9F
	dc.l	$80000E20, $009F8000
	dc.l	$0E517F9F, $9F1FFF61
	dc.l	$019F8000, $0E25E425
	dc.l	$E4238C17, $D40F0000
	dc.l	$03403CF5, $22005F03
	dc.l	$198F0301, $9F1402AB
	dc.l	$7D008A0B, $12BB3109
	dc.l	$9F1B0B39, $07541119
	dc.l	$027120BB, $0B00000B
	dc.l	$0025C575, $058F8B0D
	dc.l	$C873149A, $8F041B70
	dc.l	$00158000, $0B40118D
	dc.l	$80000B1F, $FF1FFF1F
	dc.l	$FF1FFF07, $00000800
	dc.l	$07F0260E, $1F9316FF
	dc.l	$447F9F91, $001E3C06
	dc.l	$1F101FFA, $320B1F0B
	dc.l	$0EB91FFF, $1FFF1FFF
	dc.l	$1FFF0B00, $00000007
	dc.l	$F028001F, $8E15FF76
	dc.l	$7F9F9000, $1E3C021F
	dc.l	$161FFA32, $081F0012
	dc.l	$D71FFF1F, $FF1FFF1F
	dc.l	$FF0B0000, $0A0035D2
	dc.l	$310AD71F, $0B376110
	dc.l	$910E0837, $31049208
	dc.l	$0838311B, $90800208
	dc.l	$1FFF1FFF, $1FFF1FFF
	dc.l	$0F00000A, $0035D231
	dc.l	$08D71F0B, $37611091
	dc.l	$0E083731, $04920808
	dc.l	$38311B90, $8002081F
	dc.l	$FF1FFF1F, $FF1FFF0F
	dc.l	$00000A00, $35D23106
	dc.l	$D71F0B37, $6110910E
	dc.l	$08373104, $92080838
	dc.l	$311B9080, $02081FFF
	dc.l	$1FFF1FFF, $1FFF0F00
	dc.l	$000A0035, $D23104D7
	dc.l	$1F0B3761, $10910E08
	dc.l	$37310492, $08083831
	dc.l	$1B908002, $081FFF1F
	dc.l	$FF1FFF1F, $FF0F0000
	dc.l	$0A0035D2, $3102D71F
	dc.l	$0B376110, $910E0837
	dc.l	$31049208, $0838311B
	dc.l	$90800208, $1FFF1FFF
	dc.l	$1FFF1FFF, $0F00000C
	dc.l	$4013E570, $041F0A1F
	dc.l	$E850000B, $891FA770
	dc.l	$004E0A1F, $B970000C
	dc.l	$0415FA1F, $FF200120
	dc.l	$0B20030B, $00000300
	dc.l	$3CF52301, $5F03198F
	dc.l	$03019F14, $02AB700A
	dc.l	$8D0B12BF, $31099F1B
	dc.l	$0B390754, $11190271
	dc.l	$20BB0300, $000A003D
	dc.l	$F200001F, $0D09FF01
	dc.l	$001F1119, $9F0400DF
	dc.l	$1319FF00, $001D141F
	dc.l	$7F1FE01F, $EF20021F
	dc.l	$FF090000, $0A0014C3
	dc.l	$72108F8D, $0FC7730A
	dc.l	$9A94041B, $73001580
	dc.l	$0009400E, $8D80000B
	dc.l	$1FFF1FFF, $1FFF1FFF
	dc.l	$0700000A, $0014C375
	dc.l	$138F8D0F, $C873149A
	dc.l	$94041B70, $00158000
	dc.l	$0B40118D, $80000B1F
	dc.l	$FF1FFF1F, $FF1FFF07
	dc.l	$00000B00, $2CC57304
	dc.l	$9F1A08DA, $00075F0F
	dc.l	$02BC3102, $5F1506AC
	dc.l	$01025F0A, $0D8C1FFF
	dc.l	$1FFF1FFF, $1FFF0E00
	dc.l	$0006002E, $C010031F
	dc.l	$04060A74, $021F0806
	dc.l	$3951031F, $08030A04
	dc.l	$01DF0306, $17000000
	dc.l	$00000000, $00030000
	dc.l	$080013C7, $09061F81
	dc.l	$17FE4B0A, $9F8A05FB
	dc.l	$3C0A1F15, $143C4504
	dc.l	$1F05051B, $1FFF1FFF
	dc.l	$1FFF1FFF, $0E000008
	dc.l	$0013C009, $061F8117
	dc.l	$FE40079F, $8A05FB37
	dc.l	$0A1F1514, $3C42001F
	dc.l	$05051B1F, $FF1FFF1F
	dc.l	$FF1FFF0F, $00000B00
	dc.l	$2CC57304, $911A086F
	dc.l	$7108D40F, $02BF3302
	dc.l	$511506AC, $3102190A
	dc.l	$0D8F1FFF, $1FFF1FFF
	dc.l	$1FFF0C00, $000B002C
	dc.l	$C5730491, $1A086F00
	dc.l	$07D10D0B, $BF330251
	dc.l	$1506AC01, $02540A0D
	dc.l	$8F1FFF1F, $FF1FFF1F
	dc.l	$FF0C0000, $0A002DC4
	dc.l	$02159417, $088A3007
	dc.l	$580D169B, $12065811
	dc.l	$05BB0200, $1419167C
	dc.l	$1FFF1FFF, $1FFF1FFF
	dc.l	$0F000009, $001DE123
	dc.l	$04190A00, $BA511119
	dc.l	$140CAF23, $04180319
	dc.l	$AB52005C, $8719AF1F
	dc.l	$FF1FFF1F, $FF1FFF03
	dc.l	$00000900, $1DE12304
	dc.l	$190A00BA, $51111914
	dc.l	$0CAF2104, $180319AB
	dc.l	$52005C87, $19AF1FFF
	dc.l	$1FFF1FFF, $1FFF0300
	dc.l	$000B403C, $F5220352
	dc.l	$00198903, $019F0602
	dc.l	$A373048A, $0012BA12
	dc.l	$008E0400, $09075411
	dc.l	$19027120, $BB0B0000
	dc.l	$080013C0, $09001F81
	dc.l	$17FE4307, $9F8A05F8
	dc.l	$37001F15, $143A4200
	dc.l	$1F05051A, $1FFF1FFF
	dc.l	$1FFF1FFF, $0F000104
	dc.l	$000C4013, $E5700E1F
	dc.l	$0A1FEF50, $000B891F
	dc.l	$A670004E, $0A1FB670
	dc.l	$000C0415, $F71FFF20
	dc.l	$01200B20, $030B0000
	dc.l	$074033D5, $73101F8A
	dc.l	$1FEF5100, $0B091FA6
	dc.l	$73004E8A, $1FB65000
	dc.l	$4C0A1EE8, $1FFF2001
	dc.l	$200B2003, $0F000000
	dc.l	$4036C010, $031F8406
	dc.l	$0A74021F, $08063930
	dc.l	$031F8803, $0A0401DF
	dc.l	$03061700, $00000000
	dc.l	$00000003, $00000000
	dc.l	$22C40200, $15060927
	dc.l	$70031707, $05290003
	dc.l	$05070A59, $010A0F0B
	dc.l	$0F390D05, $0A750928
	dc.l	$0A020D00

	dc.b	$00
	dc.l	$080014C0, $46161F81
	dc.l	$17FE447F, $9F9F1FFF
	dc.l	$38091F14, $14374212
	dc.l	$1F050518, $1FFF1FFF
	dc.l	$1FFF1FFF
	dc.w	$0B00
