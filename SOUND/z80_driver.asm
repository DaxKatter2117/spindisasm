; ---------------------------------------------------------------------------
; GEMS Z80 Sound Driver (Sonic Spinball ver.)
; ---------------------------------------------------------------------------
	cpu Z80

Entry:
		di
		im	1
		ld	sp, 1B20h
		jp	loc_8C3
; ---------------------------------------------------------------------------
		db	0
		db	0
		db	0
		db	0
		db	0FFh
		db	0FFh
		db	0FFh
		db	0FFh
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
unk_1C:		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
byte_36:	db	0		; DATA XREF: sub_1D1+8↓r
					; ROM:0945↓r
byte_37:	db	0		; DATA XREF: sub_1D1+C↓r
					; sub_1D1+1F↓w ...
; ---------------------------------------------------------------------------

loc_38:
		ld	(word_3E), sp
		reti
; ---------------------------------------------------------------------------
word_3E:	dw	0		; DATA XREF: ROM:loc_38↑w
byte_40:	db	0		; DATA XREF: ROM:0908↓r
					; ROM:090F↓w

; =============== S U B R O U T I N E =======================================


sub_41:					; CODE XREF: sub_310↓p
					; sub_3EF+41↓p ...
		di
		push	af
		push	hl
		ld	hl, 3Fh ; '?'
		ld	a, (hl)
		or	a
		jr	z, loc_62
		ld	(hl), 0
		inc	hl
		inc	(hl)
		call	loc_2B7
		push	de
		ld	hl, (word_8C0)
		ld	de, (word_8BE)
		add	hl, de
		ld	(word_8C0), hl
		pop	de
		call	loc_2B7

loc_62:					; CODE XREF: sub_41+8↑j
		pop	hl
		pop	af
		ei
		ret
; End of function sub_41


; =============== S U B R O U T I N E =======================================


sub_66:					; CODE XREF: ROM:0912↓p
		ld	iy, 9
		ld	hl, 7F11h
		ld	d, 80h
		ld	e, 4

loc_71:					; CODE XREF: sub_66+FD↓j
		call	loc_2B7
		ld	c, (iy+0)
		ld	(iy+0), 0
		bit	2, c
		jr	z, loc_98
		ld	(iy+4), 0FFh
		ld	(iy+28h), 1
		ld	(iy+18h), 0
		ld	a, 1
		cp	e
		jr	nz, loc_98
		ld	ix, 17CAh
		res	5, (ix+0)

loc_98:					; CODE XREF: sub_66+17↑j
					; sub_66+28↑j
		bit	1, c
		jr	z, loc_AB
		ld	a, (iy+18h)
		cp	0
		jr	z, loc_AB
		ld	(iy+28h), 1
		ld	(iy+18h), 4

loc_AB:					; CODE XREF: sub_66+34↑j
					; sub_66+3B↑j
		bit	0, c
		jr	z, loc_C9
		ld	(iy+4), 0FFh
		ld	a, (iy+1Ch)
		or	d
		ld	(hl), a
		ld	a, 1
		cp	e
		jr	z, loc_C1
		ld	a, (iy+20h)
		ld	(hl), a

loc_C1:					; CODE XREF: sub_66+55↑j
		ld	(iy+28h), 1
		ld	(iy+18h), 1

loc_C9:					; CODE XREF: sub_66+47↑j
		call	loc_2B7
		ld	a, (iy+18h)
		cp	0
		jp	z, loc_15C
		cp	1
		jr	nz, loc_FE
		ld	(iy+28h), 1
		ld	a, (iy+4)
		ld	b, (iy+24h)
		sub	(iy+8)
		jr	c, loc_F4
		jr	z, loc_F4
		cp	b
		jr	c, loc_F4
		jr	z, loc_F4
		ld	(iy+4), a
		jp	loc_15C
; ---------------------------------------------------------------------------

loc_F4:					; CODE XREF: sub_66+7F↑j
					; sub_66+81↑j ...
		ld	(iy+4), b
		ld	(iy+18h), 2
		jp	loc_15C
; ---------------------------------------------------------------------------

loc_FE:					; CODE XREF: sub_66+70↑j
		cp	2
		jp	nz, loc_132
		ld	(iy+28h), 1
		ld	a, (iy+4)
		ld	b, (iy+10h)
		cp	b
		jr	c, loc_11C
		jr	z, loc_129
		sub	(iy+0Ch)
		jr	c, loc_129
		cp	b
		jr	c, loc_129
		jr	loc_124
; ---------------------------------------------------------------------------

loc_11C:				; CODE XREF: sub_66+A8↑j
		add	a, (iy+0Ch)
		jr	c, loc_129
		cp	b
		jr	nc, loc_129

loc_124:				; CODE XREF: sub_66+B4↑j
		ld	(iy+4), a
		jr	loc_15C
; ---------------------------------------------------------------------------

loc_129:				; CODE XREF: sub_66+AA↑j
					; sub_66+AF↑j ...
		ld	(iy+4), b
		ld	(iy+18h), 3
		jr	loc_15C
; ---------------------------------------------------------------------------

loc_132:				; CODE XREF: sub_66+9A↑j
		cp	4
		jr	nz, loc_15C
		ld	(iy+28h), 1
		ld	a, (iy+4)
		add	a, (iy+14h)
		jr	c, loc_147
		ld	(iy+4), a
		jr	loc_15C
; ---------------------------------------------------------------------------

loc_147:				; CODE XREF: sub_66+DA↑j
		ld	(iy+4), 0FFh
		ld	(iy+18h), 0
		ld	a, 1
		cp	e
		jr	nz, loc_15C
		ld	ix, 17CAh
		res	5, (ix+0)

loc_15C:				; CODE XREF: sub_66+6B↑j
					; sub_66+8B↑j ...
		inc	iy
		ld	a, 20h ; ' '
		add	a, d
		ld	d, a
		dec	e
		jp	nz, loc_71
		call	loc_2B7
		ld	iy, 9
		bit	0, (iy+28h)
		jr	z, loc_185
		ld	(iy+28h), 0
		ld	a, (iy+4)
		srl	a
		srl	a
		srl	a
		srl	a
		or	90h
		ld	(hl), a

loc_185:				; CODE XREF: sub_66+10B↑j
		bit	0, (iy+29h)
		jr	z, loc_19D
		ld	(iy+29h), 0
		ld	a, (iy+5)
		srl	a
		srl	a
		srl	a
		srl	a
		or	0B0h
		ld	(hl), a

loc_19D:				; CODE XREF: sub_66+123↑j
		bit	0, (iy+2Ah)
		jr	z, loc_1B5
		ld	(iy+2Ah), 0
		ld	a, (iy+6)
		srl	a

loc_1AC:
		srl	a
		srl	a
		srl	a
		or	0D0h
		ld	(hl), a

loc_1B5:				; CODE XREF: sub_66+13B↑j
		bit	0, (iy+2Bh)
		jr	z, loc_1CD
		ld	(iy+2Bh), 0
		ld	a, (iy+7)
		srl	a
		srl	a
		srl	a
		srl	a
		or	0F0h
		ld	(hl), a

loc_1CD:				; CODE XREF: sub_66+153↑j
		call	loc_2B7
		ret
; End of function sub_66


; =============== S U B R O U T I N E =======================================


sub_1D1:				; CODE XREF: sub_8A5↓p
					; ROM:0950↓p ...
		push	bc
		push	hl

loc_1D3:				; CODE XREF: sub_1D1+10↓j
		call	loc_2B7
		call	locret_302
		ld	a, (byte_36)
		ld	b, a
		ld	a, (byte_37)
		cp	b
		jr	z, loc_1D3
		ld	b, 0
		ld	c, a
		ld	hl, 1B40h
		call	loc_2B7
		add	hl, bc
		inc	a
		and	3Fh ; '?'
		ld	(byte_37), a
		ld	a, (hl)
		pop	hl
		pop	bc
		ret
; End of function sub_1D1

; ---------------------------------------------------------------------------
unk_1F7:	db	0		; DATA XREF: sub_1F9+9↓w
					; sub_1F9+16↓r ...
unk_1F8:	db	0	; DATA XREF: sub_1F9+31↓r

; =============== S U B R O U T I N E =======================================


sub_1F9:				; CODE XREF: sub_310+34↓p
					; sub_310+64↓p ...
		call	loc_2B7
		push	ix
		ld	ix, 1B20h
		ld	(unk_1F7), hl
		res	7, h
		ld	b, 0
		dec	c
		add	hl, bc
		bit	7, h
		jr	nz, loc_21A
		ld	hl, (unk_1F7)
		inc	c
		ld	b, a
		call	sub_23D
		pop	ix
		ret
; ---------------------------------------------------------------------------

loc_21A:				; CODE XREF: sub_1F9+14↑j
		ld	b, a
		push	bc
		push	hl
		ld	a, c
		sub	l
		ld	c, a
		ld	hl, (unk_1F7)
		call	sub_23D
		pop	hl
		pop	bc
		ld	c, l
		inc	c
		ld	a, (unk_1F8)
		and	80h
		add	a, 80h
		ld	h, a
		ld	l, 0
		jr	nc, loc_237
		inc	b

loc_237:				; CODE XREF: sub_1F9+3B↑j
		call	sub_23D
		pop	ix
		ret
; End of function sub_1F9


; =============== S U B R O U T I N E =======================================


sub_23D:				; CODE XREF: sub_1F9+1B↑p
					; sub_1F9+2A↑p ...
		call	loc_2B7
		push	de
		ld	de, 6000h
		ld	a, h
		rlc	a
		ld	(de), a
		ld	a, b
		ld	(de), a
		rra
		ld	(de), a
		rra
		ld	(de), a
		rra
		ld	(de), a
		rra
		ld	(de), a
		rra
		ld	(de), a
		rra
		ld	(de), a
		rra
		ld	(de), a
		pop	de
		set	7, h
		ld	a, c
		ld	b, 0
		call	loc_2B7
		set	0, (ix+1)
		sub	7
		jr	c, loc_27A

loc_269:				; CODE XREF: sub_23D+3B↓j
		ld	c, 6
		bit	0, (ix+0)
		jr	nz, loc_28D

loc_271:				; CODE XREF: sub_23D+61↓j
		ldir
		call	loc_2B7
		sub	6
		jr	nc, loc_269

loc_27A:				; CODE XREF: sub_23D+2A↑j
		add	a, 7
		ld	c, a
		bit	0, (ix+0)
		jr	nz, loc_2A0

loc_283:				; CODE XREF: sub_23D+74↓j
		ldir
		call	loc_2B7
		res	0, (ix+1)
		ret
; ---------------------------------------------------------------------------

loc_28D:				; CODE XREF: sub_23D+32↑j
		res	0, (ix+1)

loc_291:				; CODE XREF: sub_23D+5B↓j
		call	loc_2B7
		bit	0, (ix+0)
		jr	nz, loc_291
		set	0, (ix+1)
		jr	loc_271
; ---------------------------------------------------------------------------

loc_2A0:				; CODE XREF: sub_23D+44↑j
		res	0, (ix+1)

loc_2A4:				; CODE XREF: sub_23D+6E↓j
		call	loc_2B7
		bit	0, (ix+0)
		jr	nz, loc_2A4
		set	0, (ix+1)
		jr	loc_283
; End of function sub_23D

; ---------------------------------------------------------------------------
word_2B3:	dw	0		; DATA XREF: ROM:02D1↓r
					; ROM:08E9↓w ...
word_2B5:	dw	0		; DATA XREF: ROM:08EF↓w
					; ROM:1416↓r
; ---------------------------------------------------------------------------

loc_2B7:				; CODE XREF: sub_41+E↑p
					; sub_41+1E↑p ...
		jr	loc_2DF
; ---------------------------------------------------------------------------
		ld	(hl), 27h ; '''

loc_2BB:				; CODE XREF: ROM:02BD↓j
		bit	0, (hl)
		jp	z, loc_2BB
		inc	l
		ld	(hl), b
		dec	l
		ld	a, (de)

loc_2C4:				; DATA XREF: ROM:08EC↓r
					; ROM:loc_141D↓w
		jr	loc_2EC
; ---------------------------------------------------------------------------
		nop
		inc	e

loc_2C8:				; CODE XREF: ROM:02F6↓j
		ld	(hl), 2Ah ; '*'
		inc	hl
		ld	(hl), a
		dec	l
		ex	af, af'
		exx

locret_2CF:				; DATA XREF: ROM:loc_1409↓w
		ret
; ---------------------------------------------------------------------------
		ex	af, af'
		ld	a, (word_2B3)
		ld	(loc_2B7), a
		ld	a, (word_2B3+1)
		ld	(loc_2B7+1), a
		ex	af, af'
		ret
; ---------------------------------------------------------------------------

loc_2DF:				; CODE XREF: ROM:loc_2B7↑j
		ex	af, af'
		ld	a, 0D9h
		ld	(loc_2B7), a
		ld	a, 8
		ld	(loc_2B7+1), a
		ex	af, af'
		ret
; ---------------------------------------------------------------------------

loc_2EC:				; CODE XREF: ROM:loc_2C4↑j
		rrc	c
		jr	c, loc_2F8
		rla
		rla
		rla
		rla

loc_2F4:				; CODE XREF: ROM:02F9↓j
		and	0F0h
		jr	loc_2C8
; ---------------------------------------------------------------------------

loc_2F8:				; CODE XREF: ROM:02EE↑j
		inc	e
		jr	loc_2F4
; ---------------------------------------------------------------------------
byte_2FB:	db	0		; DATA XREF: ROM:0304↓r
					; sub_310+25↓r ...
byte_2FC:	db	0		; DATA XREF: sub_310+2E↓r
					; sub_310+37↓r ...
		db	0
byte_2FE:	db	0		; DATA XREF: sub_310+31↓r
					; sub_310+3A↓r ...
word_2FF:	dw	0		; DATA XREF: sub_310+12↓r
					; sub_310+20↓w ...
byte_301:	db	0		; DATA XREF: sub_310+A↓r
					; sub_310+68↓r ...
; ---------------------------------------------------------------------------

locret_302:				; CODE XREF: sub_1D1+5↑p
					; sub_458+4F↓p ...
		ret
; ---------------------------------------------------------------------------
		push	af
		ld	a, (byte_2FB)
		exx
		xor	e
		exx
		and	80h
		jr	nz, loc_314
		pop	af
		ret

; =============== S U B R O U T I N E =======================================


sub_310:				; CODE XREF: ROM:13EF↓p
		call	sub_41
		push	af

loc_314:				; CODE XREF: ROM:030C↑j
		call	loc_2B7
		push	bc
		push	de
		push	hl
		ld	a, (byte_301)
		cp	7
		jp	nc, loc_3CC
		ld	hl, (word_2FF)
		ld	bc, 80h
		scf
		ccf
		sbc	hl, bc
		jr	c, loc_35C
		jr	z, loc_35C
		ld	(word_2FF), hl
		ld	d, 1Fh
		ld	a, (byte_2FB)
		ld	e, a
		add	a, 80h
		ld	(byte_2FB), a
		ld	hl, (byte_2FC)
		ld	a, (byte_2FE)
		call	sub_1F9
		ld	hl, (byte_2FC)
		ld	a, (byte_2FE)
		ld	bc, 80h
		add	hl, bc
		adc	a, 0
		ld	(byte_2FC), hl
		ld	(byte_2FE), a
		jp	loc_3EA
; ---------------------------------------------------------------------------

loc_35C:				; CODE XREF: sub_310+1C↑j
					; sub_310+1E↑j
		ld	a, l
		add	a, 80h
		ld	c, a
		ld	b, 0
		push	bc
		ld	d, 1Fh
		ld	a, (byte_2FB)
		ld	e, a
		add	a, 80h
		ld	(byte_2FB), a
		ld	hl, (byte_2FC)
		ld	a, (byte_2FE)
		call	sub_1F9
		pop	bc
		ld	a, (byte_301)
		cp	5
		jp	nz, loc_3CC
		ld	hl, (byte_2FC)
		ld	a, (byte_2FE)
		push	bc
		add	hl, bc
		adc	a, 0
		ld	bc, (unk_1429)
		scf
		ccf
		sbc	hl, bc
		sbc	a, 0
		ld	(byte_2FC), hl
		ld	(byte_2FE), a
		ld	(word_2FF), bc
		pop	bc
		ld	a, 80h
		sub	c
		ld	c, a
		jp	z, loc_3EA
		ld	hl, (word_2FF)
		scf
		ccf
		sbc	hl, bc
		ld	(word_2FF), hl
		ld	hl, (byte_2FC)
		ld	a, (byte_2FE)
		push	bc
		call	sub_1F9
		pop	bc
		ld	hl, (byte_2FC)
		ld	a, (byte_2FE)
		add	hl, bc
		adc	a, 0
		ld	(byte_2FC), hl
		ld	(byte_2FE), a
		jr	loc_3EA
; ---------------------------------------------------------------------------

loc_3CC:				; CODE XREF: sub_310+F↑j
					; sub_310+6D↑j
		ld	a, 0C9h
		ld	(loc_2B7), a
		ld	(locret_302), a
		ld	hl, 4000h
		ld	(hl), 2Bh ; '+'
		inc	hl
		ld	(hl), 0
		ld	hl, 17ADh
		ld	(hl), 0C6h
		inc	hl
		inc	hl
		inc	hl
		inc	hl
		ld	(hl), 0
		inc	hl
		ld	(hl), 0

loc_3EA:				; CODE XREF: sub_310+49↑j
					; sub_310+93↑j ...
		pop	hl
		pop	de
		pop	bc
		pop	af
		ret
; End of function sub_310


; =============== S U B R O U T I N E =======================================


sub_3EF:				; CODE XREF: sub_4B4:loc_4BC↓p
					; sub_4B4:loc_4CD↓p ...
		call	loc_2B7
		push	bc
		push	hl
		ld	a, (ix+3)
		sub	(ix+0)
		ld	c, a
		ld	a, (ix+4)
		sbc	a, (ix+1)
		jr	nz, loc_42D
		ld	a, (ix+5)
		sbc	a, (ix+2)
		jr	nz, loc_42D
		ld	a, c
		cp	10h
		jr	nc, loc_42D

loc_410:				; CODE XREF: sub_3EF+63↓j
		call	loc_2B7
		ld	b, 0
		ld	hl, (word_454)
		add	hl, bc
		ld	a, (hl)
		inc	(ix+3)
		jr	nz, loc_427
		inc	(ix+4)
		jr	nz, loc_427
		inc	(ix+5)

loc_427:				; CODE XREF: sub_3EF+2E↑j
					; sub_3EF+33↑j
		pop	hl
		pop	bc
		call	loc_2B7
		ret
; ---------------------------------------------------------------------------

loc_42D:				; CODE XREF: sub_3EF+12↑j
					; sub_3EF+1A↑j ...
		call	loc_2B7
		call	sub_41
		push	de
		ld	de, (word_454)
		ld	l, (ix+3)
		ld	(ix+0), l
		ld	h, (ix+4)
		ld	(ix+1), h
		ld	a, (ix+5)
		ld	(ix+2), a
		ld	c, 10h
		call	sub_1F9
		pop	de
		ld	c, 0
		jr	loc_410
; End of function sub_3EF

; ---------------------------------------------------------------------------
word_454:	dw	0		; DATA XREF: sub_3EF+26↑r
					; sub_3EF+45↑r ...
word_456:	dw	0		; DATA XREF: sub_458+D↓w
					; sub_458+2B↓r ...

; =============== S U B R O U T I N E =======================================


sub_458:				; CODE XREF: ROM:093C↓p
		ld	ix, 1B80h
		ld	hl, 1D80h
		ld	(word_454), hl
		ld	hl, 1886h
		ld	(word_456), hl
		ld	a, (byte_8C2)
		ld	c, a
		ld	a, 10h
		ld	b, 0
		jr	loc_48C
; ---------------------------------------------------------------------------

loc_472:				; CODE XREF: sub_458+59↓j
		call	loc_2B7
		ld	de, 20h ; ' '
		add	ix, de
		ld	hl, (word_454)
		ld	e, 10h
		add	hl, de
		ld	(word_454), hl
		ld	hl, (word_456)
		ld	e, 27h ; '''
		add	hl, de
		ld	(word_456), hl

loc_48C:				; CODE XREF: sub_458+18↑j
		bit	4, (ix+6)
		jr	z, loc_4AF
		bit	3, (ix+6)
		jr	nz, loc_49E
		bit	1, c
		jr	nz, loc_4A2
		jr	loc_4AF
; ---------------------------------------------------------------------------

loc_49E:				; CODE XREF: sub_458+3E↑j
		bit	0, c
		jr	z, loc_4AF

loc_4A2:				; CODE XREF: sub_458+42↑j
		call	loc_2B7
		push	af
		push	bc
		call	locret_302
		call	sub_4B4
		pop	bc
		pop	af

loc_4AF:				; CODE XREF: sub_458+38↑j
					; sub_458+44↑j ...
		inc	b
		dec	a
		jr	nz, loc_472
		ret
; End of function sub_458


; =============== S U B R O U T I N E =======================================


sub_4B4:				; CODE XREF: sub_458+52↑p

; FUNCTION CHUNK AT ROM:07A6 SIZE 00000060 BYTES

		inc	(ix+7)
		ret	nz
		inc	(ix+8)
		ret	nz

loc_4BC:				; CODE XREF: sub_4B4+B2↓j
					; sub_4B4+109↓j ...
		call	sub_3EF

loc_4BF:				; CODE XREF: sub_4B4+51↓j
					; sub_4B4+90↓j
		bit	7, a
		jp	z, loc_547
		bit	6, a
		jr	z, loc_507
		and	3Fh ; '?'
		ld	e, a
		ld	d, 0

loc_4CD:				; CODE XREF: sub_4B4+40↓j
		call	sub_3EF
		bit	7, a
		jr	z, loc_4F6
		bit	6, a
		jr	z, loc_4F6
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		and	3Fh ; '?'
		or	e
		ld	e, a
		jr	loc_4CD
; ---------------------------------------------------------------------------

loc_4F6:				; CODE XREF: sub_4B4+1E↑j
					; sub_4B4+22↑j
		ld	h, a
		ld	a, e
		cpl
		ld	e, a
		ld	a, d
		cpl
		ld	d, a
		inc	de
		ld	(ix+9), e
		ld	(ix+0Ah), d
		ld	a, h
		jr	loc_4BF
; ---------------------------------------------------------------------------

loc_507:				; CODE XREF: sub_4B4+12↑j
		and	3Fh ; '?'
		ld	e, a
		ld	d, 0

loc_50C:				; CODE XREF: sub_4B4+7F↓j
		call	sub_3EF
		bit	7, a
		jr	z, loc_535
		bit	6, a
		jr	nz, loc_535
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		sla	e
		rl	d
		and	3Fh ; '?'
		or	e
		ld	e, a
		jr	loc_50C
; ---------------------------------------------------------------------------

loc_535:				; CODE XREF: sub_4B4+5D↑j
					; sub_4B4+61↑j
		ld	h, a
		ld	a, e
		cpl
		ld	e, a
		ld	a, d
		cpl
		ld	d, a
		inc	de
		ld	(ix+0Bh), e
		ld	(ix+0Ch), d
		ld	a, h
		jp	loc_4BF
; ---------------------------------------------------------------------------

loc_547:				; CODE XREF: sub_4B4+D↑j
		cp	60h ; '`'
		jr	nc, loc_570
		bit	1, (ix+6)
		jr	nz, loc_55B
		push	bc
		push	ix
		ld	c, a
		call	loc_1206
		pop	ix
		pop	bc

loc_55B:				; CODE XREF: sub_4B4+9B↑j
					; sub_4B4+CA↓j ...
		call	loc_2B7
		ld	e, (ix+9)
		ld	d, (ix+0Ah)
		ld	a, d
		or	e
		jp	z, loc_4BC
		ld	(ix+7), e
		ld	(ix+8), d
		ret
; ---------------------------------------------------------------------------

loc_570:				; CODE XREF: sub_4B4+95↑j
		sub	60h ; '`'
		jp	z, loc_606
		dec	a
		jp	z, loc_613
		dec	a
		jp	z, loc_5C0
		dec	a
		jp	z, loc_55B
		dec	a
		jp	z, loc_621
		dec	a
		jp	z, loc_64C
		dec	a
		jp	z, loc_5DD
		dec	a
		jp	z, loc_5F2
		dec	a
		jp	z, loc_68B
		dec	a
		jp	z, loc_696
		dec	a
		jp	z, loc_6D3
		dec	a
		jp	z, loc_6DC
		dec	a
		jp	z, loc_6EB
		dec	a
		jp	z, loc_70C
		dec	a
		jp	z, loc_713
		dec	a
		jp	z, loc_725
		dec	a
		jp	z, loc_74B
		dec	a
		jp	z, loc_752
		dec	a
		jp	z, loc_7A6
		jp	loc_4BC
; ---------------------------------------------------------------------------

loc_5C0:				; CODE XREF: sub_4B4+C6↑j
		call	sub_3EF
		ld	(ix+1Dh), a
		bit	6, (ix+6)
		jp	nz, loc_55B
		push	bc
		push	ix
		ld	e, b
		ld	c, (ix+1Dh)
		call	sub_E2D
		pop	ix
		pop	bc
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_5DD:				; CODE XREF: sub_4B4+D6↑j
		call	sub_3EF
		or	a
		jp	nz, loc_5EB
		res	6, (ix+6)
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_5EB:				; CODE XREF: sub_4B4+12D↑j
		set	6, (ix+6)
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_5F2:				; CODE XREF: sub_4B4+DA↑j
		call	sub_3EF
		or	a
		jr	nz, loc_5FF
		res	7, (ix+6)
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_5FF:				; CODE XREF: sub_4B4+142↑j
		set	7, (ix+6)
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_606:				; CODE XREF: sub_4B4+BE↑j
		ld	(ix+6), 0
		ld	(ix+0Bh), 0
		ld	(ix+0Ch), 0
		ret
; ---------------------------------------------------------------------------

loc_613:				; CODE XREF: sub_4B4+C2↑j
		call	sub_3EF
		ld	(ix+0Dh), a
		push	bc
		call	sub_1737
		pop	bc
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_621:				; CODE XREF: sub_4B4+CE↑j
		push	ix
		pop	iy
		ld	de, 10h
		add	iy, de
		ld	de, 3

loc_62D:				; CODE XREF: sub_4B4+181↓j
		ld	a, (iy+0)
		or	a
		jr	z, loc_637
		add	iy, de
		jr	loc_62D
; ---------------------------------------------------------------------------

loc_637:				; CODE XREF: sub_4B4+17D↑j
		call	sub_3EF
		ld	(iy+0), a
		ld	a, (ix+3)
		ld	(iy+1), a
		ld	a, (ix+4)
		ld	(iy+2), a
		jp	loc_4BC
; ---------------------------------------------------------------------------

loc_64C:				; CODE XREF: sub_4B4+D2↑j
		push	ix
		pop	iy
		ld	de, 19h
		add	iy, de
		ld	de, 0FFFDh

loc_658:				; CODE XREF: sub_4B4+1AC↓j
		ld	a, (iy+0)
		or	a
		jr	nz, loc_662
		add	iy, de
		jr	loc_658
; ---------------------------------------------------------------------------

loc_662:				; CODE XREF: sub_4B4+1A8↑j
		cp	7Fh
		jr	z, loc_66D
		dec	a
		ld	(iy+0), a
		jp	z, loc_4BC

loc_66D:				; CODE XREF: sub_4B4+1B0↑j
		ld	l, (iy+1)
		ld	e, (ix+3)
		ld	(ix+3), l
		ld	h, (iy+2)
		ld	d, (ix+4)
		ld	(ix+4), h
		scf
		ccf
		sbc	hl, de
		jr	c, loc_688
		dec	(ix+5)

loc_688:				; CODE XREF: sub_4B4+1CF↑j
		jp	loc_4BC
; ---------------------------------------------------------------------------

loc_68B:				; CODE XREF: sub_4B4+DE↑j
		call	sub_3EF
		add	a, 28h ; '('
		call	sub_E1B
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_696:				; CODE XREF: sub_4B4+E2↑j
		call	sub_3EF
		ld	h, a
		ld	l, 10h
		ld	iy, 1B80h
		ld	de, 20h ; ' '

loc_6A3:				; CODE XREF: sub_4B4+20B↓j
		bit	0, (iy+6)
		jr	z, loc_6B9
		ld	a, (iy+0Eh)
		cp	(ix+0Eh)
		jr	nz, loc_6B9
		ld	a, h
		and	0Fh
		cp	(iy+0Fh)
		jr	z, loc_6C1

loc_6B9:				; CODE XREF: sub_4B4+1F3↑j
					; sub_4B4+1FB↑j
		dec	l
		jp	z, loc_55B
		add	iy, de
		jr	loc_6A3
; ---------------------------------------------------------------------------

loc_6C1:				; CODE XREF: sub_4B4+203↑j
		bit	4, h
		jr	nz, loc_6CC
		set	1, (iy+6)
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_6CC:				; CODE XREF: sub_4B4+20F↑j
		res	1, (iy+6)
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_6D3:				; CODE XREF: sub_4B4+E6↑j
		call	sub_3EF
		ld	(ix+1Ch), a
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_6DC:				; CODE XREF: sub_4B4+EA↑j
		call	sub_3EF
		push	ix
		push	bc
		call	sub_BDF
		pop	bc
		pop	ix
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_6EB:				; CODE XREF: sub_4B4+EE↑j
		ld	iy, 0F76h
		ld	e, b
		ld	d, 0
		add	iy, de
		call	sub_3EF
		ld	(iy+0), a
		call	sub_3EF
		ld	(iy+10h), a
		set	0, (iy+40h)
		ld	a, 1
		ld	(byte_F75), a
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_70C:				; CODE XREF: sub_4B4+F2↑j
		set	3, (ix+6)
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_713:				; CODE XREF: sub_4B4+F6↑j
		call	sub_3EF
		ld	d, a
		ld	hl, (word_456)
		ld	a, (hl)
		cp	1
		jp	nz, loc_55B
		inc	hl
		ld	(hl), d
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_725:				; CODE XREF: sub_4B4+FA↑j
		call	sub_3EF
		ld	l, a
		call	sub_3EF
		ld	h, a
		rla
		ld	a, 0
		sbc	a, 0
		ld	d, a

loc_733:				; CODE XREF: sub_4B4+2DC↓j
		ld	a, (ix+3)
		add	a, l
		ld	(ix+3), a
		ld	a, (ix+4)
		adc	a, h
		ld	(ix+4), a
		ld	a, (ix+5)
		adc	a, d
		ld	(ix+5), a
		jp	loc_4BC
; ---------------------------------------------------------------------------

loc_74B:				; CODE XREF: sub_4B4+FE↑j
		call	sub_798
		ld	(hl), a
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_752:				; CODE XREF: sub_4B4+102↑j
		call	sub_798
		ld	d, a
		call	sub_3EF
		dec	d
		jr	nz, loc_761
		cp	(hl)
		jr	nz, loc_792
		jr	loc_788
; ---------------------------------------------------------------------------

loc_761:				; CODE XREF: sub_4B4+2A6↑j
		dec	d
		jr	nz, loc_769
		cp	(hl)
		jr	c, loc_792
		jr	loc_788
; ---------------------------------------------------------------------------

loc_769:				; CODE XREF: sub_4B4+2AE↑j
		dec	d
		jr	nz, loc_773
		cp	(hl)
		jr	c, loc_792
		jr	z, loc_792
		jr	loc_788
; ---------------------------------------------------------------------------

loc_773:				; CODE XREF: sub_4B4+2B6↑j
		dec	d
		jr	nz, loc_77D
		cp	(hl)
		jr	c, loc_788
		jr	z, loc_788
		jr	loc_792
; ---------------------------------------------------------------------------

loc_77D:				; CODE XREF: sub_4B4+2C0↑j
		dec	d
		jr	nz, loc_785
		cp	(hl)
		jr	nc, loc_792
		jr	loc_788
; ---------------------------------------------------------------------------

loc_785:				; CODE XREF: sub_4B4+2CA↑j
		cp	(hl)
		jr	z, loc_792

loc_788:				; CODE XREF: sub_4B4+2AB↑j
					; sub_4B4+2B3↑j ...
		call	sub_3EF
		ld	l, a
		ld	h, 0
		ld	d, 0
		jr	loc_733
; ---------------------------------------------------------------------------

loc_792:				; CODE XREF: sub_4B4+2A9↑j
					; sub_4B4+2B1↑j ...
		call	sub_3EF
		jp	loc_4BC
; End of function sub_4B4


; =============== S U B R O U T I N E =======================================


sub_798:				; CODE XREF: sub_4B4:loc_74B↑p
					; sub_4B4:loc_752↑p
		call	sub_3EF
		ld	e, a
		ld	d, 0
		ld	hl, 1B22h
		add	hl, de
		call	sub_3EF
		ret
; End of function sub_798

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_4B4

loc_7A6:				; CODE XREF: sub_4B4+106↑j
		call	sub_3EF
		ld	d, a
		call	sub_3EF
		ld	e, a
		ld	a, d
		cp	0
		jp	z, loc_7DB
		cp	1
		jp	z, loc_7E8
		cp	2
		jp	z, loc_7FA
		cp	3
		jp	z, loc_7F5
		cp	4
		jr	z, loc_7CE
		cp	5
		jr	z, loc_7D5
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_7CE:				; CODE XREF: sub_4B4+311↑j
		ld	a, e
		ld	(byte_15CF), a
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_7D5:				; CODE XREF: sub_4B4+315↑j
		ld	(ix+1Eh), e
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_7DB:				; CODE XREF: sub_4B4+2FD↑j
		push	ix
		push	bc
		ld	a, e
		call	sub_C9E
		pop	bc
		pop	ix
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_7E8:				; CODE XREF: sub_4B4+302↑j
		ld	a, e

loc_7E9:				; CODE XREF: sub_4B4+344↓j
		push	ix
		push	bc
		call	sub_CD1
		pop	bc
		pop	ix
		jp	loc_55B
; ---------------------------------------------------------------------------

loc_7F5:				; CODE XREF: sub_4B4+30C↑j
		ld	a, (1B22h)
		jr	loc_7E9
; ---------------------------------------------------------------------------

loc_7FA:				; CODE XREF: sub_4B4+307↑j
		push	ix
		push	bc
		call	sub_B89
		pop	bc
		pop	ix
		jp	loc_55B
; END OF FUNCTION CHUNK FOR sub_4B4

; =============== S U B R O U T I N E =======================================


sub_806:				; CODE XREF: ROM:0936↓p
		ld	de, 7
		ld	a, (byte_8C2)
		ld	b, a
		ld	h, 0
		ld	ix, 1791h
		call	sub_828
		inc	h
		ld	ix, 17BCh
		call	sub_828
		ld	ix, 17D2h
		call	sub_828
		ret
; End of function sub_806

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_828

loc_826:				; CODE XREF: sub_828+F↓j
					; sub_828+15↓j ...
		add	ix, de
; END OF FUNCTION CHUNK FOR sub_828

; =============== S U B R O U T I N E =======================================


sub_828:				; CODE XREF: sub_806+D↑p
					; sub_806+15↑p ...

; FUNCTION CHUNK AT ROM:0826 SIZE 00000002 BYTES

		ld	a, (ix+0)
		cp	0FFh
		ret	z
		call	loc_2B7
		bit	3, a
		jr	nz, loc_83B
		bit	1, b
		jr	z, loc_826
		jr	loc_83F
; ---------------------------------------------------------------------------

loc_83B:				; CODE XREF: sub_828+B↑j
		bit	0, b
		jr	z, loc_826

loc_83F:				; CODE XREF: sub_828+11↑j
		bit	6, a
		jr	z, loc_84F
		dec	(ix+6)
		jr	nz, loc_826
		res	6, a
		ld	(ix+0), a
		jr	loc_826
; ---------------------------------------------------------------------------

loc_84F:				; CODE XREF: sub_828+19↑j
		bit	4, a
		jr	z, loc_826
		and	7
		ld	c, a
		inc	(ix+4)
		jr	nz, loc_826
		inc	(ix+5)
		jr	nz, loc_826
		res	4, (ix+0)
		res	3, (ix+0)
		ld	a, (ix+0)
		and	2Fh ; '/'
		cp	26h ; '&'
		jr	z, loc_8A0
		set	6, (ix+0)
		set	7, (ix+0)
		bit	0, h
		jr	z, loc_88C
		ld	e, c
		ld	iy, 9
		add	iy, de
		ld	e, 7
		set	1, (iy+0)
		jr	loc_826
; ---------------------------------------------------------------------------

loc_88C:				; CODE XREF: sub_828+53↑j
		ld	iy, 4000h
		ld	a, c

loc_891:				; CODE XREF: sub_828+6D↓j
		bit	7, (iy+0)
		jr	nz, loc_891
		ld	(iy+0), 28h ; '('
		ld	(iy+1), a
		jr	loc_826
; ---------------------------------------------------------------------------

loc_8A0:				; CODE XREF: sub_828+47↑j
		call	sub_1712
		jr	loc_826
; End of function sub_828


; =============== S U B R O U T I N E =======================================


sub_8A5:				; CODE XREF: ROM:loc_9D6↓p
					; ROM:loc_A54↓p ...
		call	sub_1D1
		ld	d, 0
		ld	e, a
		sla	e
		sla	e
		sla	e
		sla	e
		sla	e
		rl	d
		ld	ix, 1B80h
		add	ix, de
		ret
; End of function sub_8A5

; ---------------------------------------------------------------------------
word_8BE:	dw	0CCh		; DATA XREF: sub_41+15↑r
					; sub_E1B+E↓w
word_8C0:	dw	0		; DATA XREF: sub_41+12↑r
					; sub_41+1A↑w ...
byte_8C2:	db	0		; DATA XREF: sub_458+10↑r
					; sub_806+3↑r ...
; ---------------------------------------------------------------------------

loc_8C3:				; CODE XREF: ROM:0006↑j
		exx
		ld	b, 15h
		ld	d, 1Fh
		ld	hl, 4000h
		exx
		ei
		ld	hl, 7F11h
		ld	(hl), 9Fh
		ld	(hl), 0BFh
		ld	(hl), 0DFh
		ld	(hl), 0FFh
		ld	hl, 1886h
		ld	de, 27h ; '''
		ld	b, 10h

loc_8E0:				; CODE XREF: ROM:08E4↓j
		ld	(hl), 0FFh
		add	hl, de
		dec	b
		jr	nz, loc_8E0
		ld	hl, (loc_2B7)
		ld	(word_2B3), hl
		ld	hl, (loc_2C4)
		ld	(word_2B5), hl
		ld	a, 0C9h
		ld	(loc_2B7), a

loc_8F7:				; CODE XREF: ROM:094D↓j
					; ROM:0955↓j ...
		call	sub_41
		call	loc_2B7
		call	locret_302
		call	loc_2B7
		call	sub_41
		ld	b, 0
		ld	a, (byte_40)
		sub	1
		jr	c, loc_91A
		ld	(byte_40), a
		call	sub_66
		call	sub_41
		ld	b, 1

loc_91A:				; CODE XREF: ROM:090D↑j
		call	loc_2B7
		ld	a, (word_8C0+1)
		sub	1
		jr	c, loc_929
		ld	(word_8C0+1), a
		set	1, b

loc_929:				; CODE XREF: ROM:0922↑j
		ld	a, b
		or	a
		jr	z, loc_942
		ld	(byte_8C2), a
		call	sub_EC8
		call	sub_41
		call	sub_806
		call	sub_41
		call	sub_458
		call	sub_41

loc_942:				; CODE XREF: ROM:092B↑j
		call	loc_FC6
		ld	a, (byte_36)
		ld	b, a
		ld	a, (byte_37)
		cp	b
		jp	z, loc_8F7
		call	sub_1D1
		cp	0FFh
		jp	nz, loc_8F7
		call	sub_1D1
		cp	0
		jp	z, loc_9D6
		cp	1
		jp	z, loc_9EA
		cp	2
		jp	z, loc_9F8
		cp	3
		jp	z, loc_9FE
		cp	4
		jp	z, loc_A07
		cp	5
		jp	z, loc_A4B
		cp	6
		jp	z, loc_A54
		cp	7
		jp	z, loc_A6D
		cp	0Bh
		jp	z, loc_A96
		cp	0Ch
		jp	z, loc_AB1
		cp	0Dh
		jp	z, loc_AC9
		cp	0Eh
		jp	z, loc_ACF
		cp	10h
		jp	z, loc_A84
		cp	12h
		jp	z, loc_A8D
		cp	14h
		jp	z, loc_AE6
		cp	16h
		jp	z, loc_AF2
		cp	17h
		jp	z, loc_B12
		cp	1Ah
		jp	z, loc_B4F
		cp	1Bh
		jp	z, loc_B64
		cp	1Ch
		jp	z, loc_B75
		cp	1Dh
		jp	z, loc_B7F
		cp	1Eh
		jp	z, loc_A10
		cp	1Fh
		jp	z, loc_BA8
		cp	20h ; ' '
		jp	z, loc_BB4
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_9D6:				; CODE XREF: ROM:095D↑j
		call	sub_8A5
		ld	b, a
		call	sub_1151
		ld	(word_456), hl
		call	sub_1D1
		ld	c, a
		call	loc_1206
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_9EA:				; CODE XREF: ROM:0962↑j
		call	sub_1D1
		ld	b, a
		call	sub_1D1
		ld	c, a
		call	sub_169E
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_9F8:				; CODE XREF: ROM:0967↑j
		call	sub_1728
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_9FE:				; CODE XREF: ROM:096C↑j
		call	sub_1D1
		call	sub_1766
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A07:				; CODE XREF: ROM:0971↑j
		call	sub_1D1
		call	sub_F56
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A10:				; CODE XREF: ROM:09C6↑j
		call	sub_1D1
		ld	c, a
		call	sub_1D1
		ld	h, a
		ld	l, 0
		ld	ix, 1B80h
		ld	de, 20h ; ' '
		ld	b, 10h

loc_A23:				; CODE XREF: ROM:0A40↓j
		bit	0, (ix+6)
		jr	z, loc_A3C
		ld	a, (ix+0Eh)
		cp	c
		jr	nz, loc_A3C
		ld	a, (ix+0Fh)
		cp	h
		jr	nz, loc_A3C
		ld	a, l
		call	sub_F56
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A3C:				; CODE XREF: ROM:0A27↑j
					; ROM:0A2D↑j ...
		add	ix, de
		inc	l
		dec	b
		jr	nz, loc_A23
		call	sub_1D1
		call	sub_1D1
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A4B:				; CODE XREF: ROM:0976↑j
		call	sub_1D1
		call	sub_E1B
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A54:				; CODE XREF: ROM:097B↑j
		call	sub_8A5
		ld	b, a
		call	sub_1D1
		ld	(ix+1Dh), a
		bit	6, (ix+6)
		jp	nz, loc_8F7
		ld	c, a
		ld	e, b
		call	sub_E2D
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A6D:				; CODE XREF: ROM:0980↑j
		call	sub_8A5
		call	sub_1D1
		or	a
		jr	z, loc_A7D
		set	6, (ix+6)
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A7D:				; CODE XREF: ROM:0A74↑j
		res	6, (ix+6)
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A84:				; CODE XREF: ROM:0999↑j
		call	sub_1D1
		call	sub_BDF
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A8D:				; CODE XREF: ROM:099E↑j
		call	sub_1D1
		call	sub_C9E
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_A96:				; CODE XREF: ROM:0985↑j
		ld	hl, 0AA5h
		ld	b, 0Ch

loc_A9B:				; CODE XREF: ROM:0AA0↓j
		call	sub_1D1
		ld	(hl), a
		inc	hl
		djnz	loc_A9B
		jp	loc_8F7
; ---------------------------------------------------------------------------
word_AA5:	dw	0		; DATA XREF: sub_1737+7↓r
					; sub_1737+1C↓r
byte_AA7:	db	0		; DATA XREF: sub_1737+A↓r
					; sub_1737+1F↓r
word_AA8:	dw	0		; DATA XREF: sub_E2D+40↓r
					; sub_E2D+55↓r
byte_AAA:	db	0		; DATA XREF: sub_E2D+43↓r
					; sub_E2D+58↓r
word_AAB:	dw	0		; DATA XREF: sub_BDF+8↓r
					; sub_BDF+1D↓r ...
byte_AAD:	db	0		; DATA XREF: sub_BDF+B↓r
					; sub_BDF+20↓r ...
word_AAE:	dw	0		; DATA XREF: ROM:1336↓r
					; ROM:13B7↓r
byte_AB0:	db	0		; DATA XREF: ROM:1339↓r
					; ROM:13BB↓r
; ---------------------------------------------------------------------------

loc_AB1:				; CODE XREF: ROM:098A↑j
		ld	ix, 1B80h
		ld	b, 10h
		ld	de, 20h ; ' '

loc_ABA:				; CODE XREF: ROM:0AC1↓j
		res	4, (ix+6)
		add	ix, de
		dec	b
		jr	nz, loc_ABA
		call	sub_CF9
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_AC9:				; CODE XREF: ROM:098F↑j
		call	sub_B89
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_ACF:				; CODE XREF: ROM:0994↑j
		call	sub_8A5
		call	sub_1D1
		or	a
		jr	z, loc_ADF
		set	7, (ix+6)
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_ADF:				; CODE XREF: ROM:0AD6↑j
		res	7, (ix+6)
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_AE6:				; CODE XREF: ROM:09A3↑j
		call	sub_8A5
		call	sub_1D1
		ld	(ix+1Ch), a
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_AF2:				; CODE XREF: ROM:09A8↑j
		ld	ix, 1B80h
		ld	de, 20h ; ' '
		ld	b, 10h

loc_AFB:				; CODE XREF: ROM:0B0A↓j
		ld	(ix+6), 0
		ld	(ix+0Bh), 0
		ld	(ix+0Ch), 0
		add	ix, de
		dec	b
		jr	nz, loc_AFB
		call	sub_CF9
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_B12:				; CODE XREF: ROM:09AD↑j
		call	sub_1D1
		ld	c, a
		call	sub_1D1
		ld	h, a
		call	sub_1D1
		ld	l, a
		ld	ix, 1B80h
		ld	de, 20h ; ' '
		ld	b, 10h

loc_B27:				; CODE XREF: ROM:0B4D↓j
		bit	0, (ix+6)
		jr	z, loc_B47
		ld	a, (ix+0Eh)
		cp	c
		jr	nz, loc_B47
		ld	a, (ix+0Fh)
		cp	h
		jr	nz, loc_B47
		bit	0, l
		jr	nz, loc_B43
		res	1, (ix+6)
		jr	loc_B47
; ---------------------------------------------------------------------------

loc_B43:				; CODE XREF: ROM:0B3B↑j
		set	1, (ix+6)

loc_B47:				; CODE XREF: ROM:0B2B↑j
					; ROM:0B31↑j ...
		dec	b
		jp	z, loc_8F7
		add	ix, de
		jr	loc_B27
; ---------------------------------------------------------------------------

loc_B4F:				; CODE XREF: ROM:09B2↑j
		call	sub_1D1
		call	sub_1151
		call	sub_1D1
		ld	b, a
		ld	a, (hl)
		cp	1
		jp	nz, loc_8F7
		inc	hl
		ld	(hl), b
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_B64:				; CODE XREF: ROM:09B7↑j
		call	sub_1D1
		ld	d, 0
		ld	e, a
		ld	hl, 1B22h
		add	hl, de
		call	sub_1D1
		ld	(hl), a
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_B75:				; CODE XREF: ROM:09BC↑j
		call	sub_8A5
		set	5, (ix+6)
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_B7F:				; CODE XREF: ROM:09C1↑j
		call	sub_8A5
		res	5, (ix+6)
		jp	loc_8F7

; =============== S U B R O U T I N E =======================================


sub_B89:				; CODE XREF: sub_4B4+349↑p
					; ROM:loc_AC9↑p
		ld	ix, 1B80h
		ld	b, 10h
		ld	de, 20h ; ' '

loc_B92:				; CODE XREF: sub_B89+1D↓j
		bit	5, (ix+6)
		jr	nz, loc_BA2
		bit	0, (ix+6)
		jr	z, loc_BA2
		set	4, (ix+6)

loc_BA2:				; CODE XREF: sub_B89+D↑j
					; sub_B89+13↑j
		dec	b
		ret	z
		add	ix, de
		jr	loc_B92
; End of function sub_B89

; ---------------------------------------------------------------------------

loc_BA8:				; CODE XREF: ROM:09CB↑j
		call	sub_8A5
		call	sub_1D1
		ld	(ix+1Eh), a
		jp	loc_8F7
; ---------------------------------------------------------------------------

loc_BB4:				; CODE XREF: ROM:09D0↑j
		call	sub_1D1
		ld	(byte_15CF), a
		jp	loc_8F7
; ---------------------------------------------------------------------------
unk_BBD:	db	0		; DATA XREF: sub_BDF+19↓r
					; sub_BDF+2E↓r ...
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
byte_BDE:	db	0		; DATA XREF: sub_BDF+2↓w
					; sub_BDF+7C↓r

; =============== S U B R O U T I N E =======================================


sub_BDF:				; CODE XREF: sub_4B4+22E↑p
					; ROM:0A87↑p
		ld	d, 0
		ld	(byte_BDE), a
		ld	e, a
		sla	e
		ld	hl, (word_AAB)
		ld	a, (byte_AAD)
		add	hl, de
		adc	a, 0
		ld	c, 2
		ld	de, 0BBDh
		call	sub_1F9
		ld	de, (unk_BBD)
		ld	hl, (word_AAB)
		ld	a, (byte_AAD)
		add	hl, de
		adc	a, 0
		ld	c, 21h ; '!'
		ld	de, 0BBDh
		call	sub_1F9
		ld	a, (unk_BBD)
		or	a
		ret	z
		ld	ix, 1B80h
		ld	iy, 0F76h
		ld	de, 20h ; ' '
		ld	c, 0
		ld	hl, 0BBEh
		ld	b, 10h

loc_C24:				; CODE XREF: sub_BDF+BD↓j
		ld	a, (ix+6)
		and	21h ; '!'
		jr	nz, loc_C96
		ld	(ix+6), 11h
		ld	a, (word_AAB)
		add	a, (hl)
		inc	hl
		ld	(ix+3), a
		ld	a, (word_AAB+1)
		adc	a, (hl)
		inc	hl
		ld	(ix+4), a
		ld	a, (byte_AAD)
		adc	a, 0
		ld	(ix+5), a
		ld	(ix+0), 0FFh
		ld	(ix+1), 0FFh
		ld	(ix+2), 0FFh
		ld	(ix+7), 0FFh
		ld	(ix+8), 0FFh
		ld	a, (byte_BDE)
		ld	(ix+0Eh), a
		ld	(ix+0Fh), c
		ld	(ix+10h), 0
		ld	(ix+13h), 0
		ld	(ix+16h), 0
		ld	(ix+19h), 0
		ld	(ix+1Dh), 0
		ld	(ix+1Ch), 0
		ld	(ix+1Eh), 0
		ld	(iy+20h), 0
		ld	(iy+30h), 0
		ld	(iy+0), 0
		ld	(iy+10h), 0
		inc	c
		ld	a, (unk_BBD)
		cp	c
		ret	z

loc_C96:				; CODE XREF: sub_BDF+4A↑j
		dec	b
		ret	z
		add	ix, de
		inc	iy
		jr	loc_C24
; End of function sub_BDF


; =============== S U B R O U T I N E =======================================


sub_C9E:				; CODE XREF: sub_4B4+32B↑p
					; ROM:0A90↑p
		ld	ix, 1B80h
		ld	de, 20h ; ' '
		ld	b, 10h

loc_CA7:				; CODE XREF: sub_C9E+2D↓j
		bit	0, (ix+6)
		jr	z, loc_CC8
		bit	5, (ix+6)
		jr	nz, loc_CC8
		cp	0FFh
		jr	z, loc_CBC
		cp	(ix+0Eh)
		jr	nz, loc_CC8

loc_CBC:				; CODE XREF: sub_C9E+17↑j
		ld	(ix+6), 0
		ld	(ix+0Bh), 0
		ld	(ix+0Ch), 0

loc_CC8:				; CODE XREF: sub_C9E+D↑j
					; sub_C9E+13↑j ...
		add	ix, de
		dec	b
		jr	nz, loc_CA7
		call	sub_CF9
		ret
; End of function sub_C9E


; =============== S U B R O U T I N E =======================================


sub_CD1:				; CODE XREF: sub_4B4+338↑p
		ld	ix, 1B80h
		ld	de, 20h ; ' '
		ld	b, 10h

loc_CDA:				; CODE XREF: sub_CD1+21↓j
		bit	0, (ix+6)
		jr	z, loc_CEF
		bit	5, (ix+6)
		jr	nz, loc_CEF
		cp	(ix+0Eh)
		jr	nz, loc_CEF
		res	4, (ix+6)

loc_CEF:				; CODE XREF: sub_CD1+D↑j
					; sub_CD1+13↑j ...
		add	ix, de
		dec	b
		jr	nz, loc_CDA
		call	sub_CF9
		ret
; End of function sub_CD1

; ---------------------------------------------------------------------------
byte_CF8:	db	0		; DATA XREF: ROM:0D79↓w
					; ROM:0DEF↓r

; =============== S U B R O U T I N E =======================================


sub_CF9:				; CODE XREF: ROM:0AC3↑p
					; ROM:0B0C↑p ...
		ld	ix, 1791h
		ld	e, 0
		call	loc_D42
		ld	ix, 17BCh
		ld	e, 1
		call	loc_D42
		ld	ix, 17D2h
		ld	e, 1
		call	loc_D42
		ld	iy, 0EAAh

loc_D18:				; CODE XREF: sub_CF9+29↓j
					; sub_CF9+40↓j ...
		inc	iy
		ld	a, (iy+0)
		bit	7, a
		ret	nz
		bit	6, a
		jr	nz, loc_D18
		ld	b, 0
		sla	a
		sla	a
		sla	a
		sla	a
		sla	a
		ld	c, a
		rl	b
		ld	hl, 1B86h
		add	hl, bc
		bit	4, (hl)
		jp	nz, loc_D18
		set	6, (iy+0)
		jr	loc_D18
; End of function sub_CF9

; ---------------------------------------------------------------------------

loc_D42:				; CODE XREF: sub_CF9+6↑p
					; sub_CF9+F↑p ...
		ld	a, (ix+0)
		cp	0FFh
		ret	z
		ld	d, a
		ld	b, 0
		ld	c, (ix+3)
		sla	c
		sla	c
		sla	c
		sla	c
		sla	c
		rl	b
		ld	hl, 1B86h
		add	hl, bc
		bit	4, (hl)
		jp	nz, loc_E04
		ld	a, d
		and	7
		or	80h
		ld	(ix+0), a
		ld	(ix+4), 0
		ld	(ix+5), 0
		ld	(ix+6), 0
		and	7
		ld	(byte_CF8), a
		bit	0, e
		jp	nz, loc_E0C
		bit	5, d
		jr	z, loc_D98
		ld	a, 0C9h
		ld	(loc_2B7), a
		ld	(locret_302), a
		ld	hl, 4000h
		ld	(hl), 2Bh ; '+'
		inc	hl
		ld	(hl), 0
		jp	loc_E04
; ---------------------------------------------------------------------------

loc_D98:				; CODE XREF: ROM:0D83↑j
		ld	d, 0
		cp	3
		jr	c, loc_DA2
		sub	4
		ld	d, 2

loc_DA2:				; CODE XREF: ROM:0D9C↑j
		push	de
		ld	e, a
		ld	h, 40h ; '@'
		ld	l, 0
		ld	a, 40h ; '@'
		add	a, e
		ld	b, a
		ld	c, 7Fh

loc_DAE:				; CODE XREF: ROM:0DB1↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_DAE+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		ld	l, 0
		ld	a, 44h ; 'D'
		add	a, e
		ld	b, a
		ld	c, 7Fh

loc_DC0:				; CODE XREF: ROM:0DC3↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_DC0+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		ld	l, 0
		ld	a, 48h ; 'H'
		add	a, e
		ld	b, a
		ld	c, 7Fh

loc_DD2:				; CODE XREF: ROM:0DD5↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_DD2+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		ld	l, 0
		ld	a, 4Ch ; 'L'
		add	a, e
		ld	b, a
		ld	c, 7Fh

loc_DE4:				; CODE XREF: ROM:0DE7↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_DE4+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		pop	de
		ld	a, (byte_CF8)
		ld	iy, 4000h
		ld	a, a

loc_DF7:				; CODE XREF: ROM:0DFB↓j
		bit	7, (iy+0)
		jr	nz, loc_DF7
		ld	(iy+0), 28h ; '('
		ld	(iy+1), a

loc_E04:				; CODE XREF: ROM:0D60↑j
					; ROM:0D95↑j ...
		ld	bc, 7
		add	ix, bc
		jp	loc_D42
; ---------------------------------------------------------------------------

loc_E0C:				; CODE XREF: ROM:0D7E↑j
		ld	iy, 9
		ld	c, a
		ld	b, 0
		add	iy, bc
		ld	(iy+0), 4
		jr	loc_E04

; =============== S U B R O U T I N E =======================================


sub_E1B:				; CODE XREF: sub_4B4+1DC↑p
					; ROM:0A4E↑p
		ld	de, 0DAh
		call	sub_1159
		xor	a
		sla	l
		rl	h
		rla
		ld	l, h
		ld	h, a
		ld	(word_8BE), hl
		ret
; End of function sub_E1B


; =============== S U B R O U T I N E =======================================


sub_E2D:				; CODE XREF: sub_4B4+120↑p
					; ROM:0A67↑p ...
		ld	b, (ix+6)
		ld	d, 0
		ld	iy, 0F76h
		add	iy, de
		ld	ix, 0EABh

loc_E3C:				; CODE XREF: sub_E2D+1B↓j
		ld	a, (ix+0)
		bit	7, a
		jr	nz, loc_E4A
		cp	e
		jr	z, loc_E5C
		inc	ix
		jr	loc_E3C
; ---------------------------------------------------------------------------

loc_E4A:				; CODE XREF: sub_E2D+14↑j
		ld	ix, 0EABh

loc_E4E:				; CODE XREF: sub_E2D+2D↓j
		ld	a, (ix+0)
		bit	7, a
		ret	nz
		bit	6, a
		jr	nz, loc_E5C
		inc	ix
		jr	loc_E4E
; ---------------------------------------------------------------------------

loc_E5C:				; CODE XREF: sub_E2D+17↑j
					; sub_E2D+29↑j
		bit	3, b
		jr	z, loc_E62
		set	5, e

loc_E62:				; CODE XREF: sub_E2D+31↑j
		ld	(ix+0), e
		ld	(ix+0Dh), 0
		ld	b, 0
		sla	c
		ld	hl, (word_AA8)
		ld	a, (byte_AAA)
		add	hl, bc
		adc	a, 0
		ld	c, 2
		ld	de, 1726h
		call	sub_1F9
		ld	de, (word_1726)
		ld	hl, (word_AA8)
		ld	a, (byte_AAA)
		add	hl, de
		adc	a, 0
		ld	c, 20h ; ' '
		ld	d, 1Eh
		ld	e, (ix+19h)
		call	sub_1F9
		ld	d, 1Eh
		ld	e, (ix+19h)
		ld	a, (de)
		ld	(iy+20h), a
		inc	de
		ld	a, (de)
		ld	(iy+30h), a
		inc	de
		ld	(ix+5), e
		ld	(ix+9), d
		ret
; End of function sub_E2D

; ---------------------------------------------------------------------------
		db	40h
		db	40h
		db	40h
		db	40h
		db	0FFh
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	80h
		db	0A0h
		db	0C0h
		db	0E0h

; =============== S U B R O U T I N E =======================================


sub_EC8:				; CODE XREF: ROM:0930↑p
		ld	ix, 0EABh

loc_ECC:				; CODE XREF: sub_EC8+13↓j
		call	loc_2B7
		ld	c, (ix+0)
		bit	7, c
		ret	nz
		bit	6, c
		jr	z, loc_EDD

loc_ED9:				; CODE XREF: sub_EC8+20↓j
					; sub_EC8+24↓j ...
		inc	ix
		jr	loc_ECC
; ---------------------------------------------------------------------------

loc_EDD:				; CODE XREF: sub_EC8+F↑j
		ld	a, (byte_8C2)
		bit	5, c
		jr	nz, loc_EEA
		bit	1, a
		jr	nz, loc_EEE
		jr	loc_ED9
; ---------------------------------------------------------------------------

loc_EEA:				; CODE XREF: sub_EC8+1A↑j
		bit	0, a
		jr	z, loc_ED9

loc_EEE:				; CODE XREF: sub_EC8+1E↑j
		ld	a, (ix+0Dh)
		sub	1
		jr	nc, loc_F14
		ld	l, (ix+5)
		ld	h, (ix+9)
		ld	a, (hl)
		sub	1
		jr	c, loc_F3E
		inc	hl
		ld	b, (hl)
		ld	(ix+11h), b
		inc	hl
		ld	b, (hl)
		ld	(ix+15h), b
		inc	hl
		call	loc_2B7
		ld	(ix+5), l
		ld	(ix+9), h

loc_F14:				; CODE XREF: sub_EC8+2B↑j
		ld	iy, 0F76h
		ld	b, 0
		res	5, c
		add	iy, bc
		ld	(ix+0Dh), a
		ld	a, (iy+20h)
		add	a, (ix+11h)
		ld	(iy+20h), a
		ld	a, (iy+30h)
		adc	a, (ix+15h)
		ld	(iy+30h), a

loc_F33:				; CODE XREF: sub_EC8+8C↓j
		set	0, (iy+40h)
		ld	a, 1
		ld	(byte_F75), a
		jr	loc_ED9
; ---------------------------------------------------------------------------

loc_F3E:				; CODE XREF: sub_EC8+36↑j
		ld	iy, 0F76h
		ld	b, 0
		res	5, c
		add	iy, bc
		ld	(iy+20h), 0
		ld	(iy+30h), 0
		ld	(ix+0), 40h ; '@'
		jr	loc_F33
; End of function sub_EC8


; =============== S U B R O U T I N E =======================================


sub_F56:				; CODE XREF: ROM:0A0A↑p
					; ROM:0A36↑p
		ld	c, a
		ld	b, 0
		ld	ix, 0F76h
		add	ix, bc
		call	sub_1D1
		ld	(ix+0), a
		call	sub_1D1
		ld	(ix+10h), a
		set	0, (ix+40h)
		ld	a, 1
		ld	(byte_F75), a
		ret
; End of function sub_F56

; ---------------------------------------------------------------------------
byte_F75:	db	0		; DATA XREF: sub_4B4+252↑w
					; sub_EC8+71↑w ...
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
		db	0
; ---------------------------------------------------------------------------

loc_FC6:				; CODE XREF: ROM:loc_942↑p
		ld	a, (byte_F75)
		or	a
		ret	z
		xor	a
		ld	(byte_F75), a
		call	sub_41
		ld	iy, 1791h

loc_FD6:				; CODE XREF: ROM:1041↓j
		call	loc_2B7
		ld	a, (iy+0)
		cp	0FFh
		jr	z, loc_1043
		and	7
		ld	b, a
		ld	c, (iy+2)
		ld	e, (iy+3)
		ld	a, 0
		ld	ix, 0F76h
		ld	d, 0
		add	ix, de
		bit	0, (ix+40h)
		jr	z, loc_103C
		call	sub_10A8
		ld	(word_142D), de
		ld	d, 0
		ld	a, b
		cp	3
		jr	c, loc_100B
		sub	4
		ld	d, 2

loc_100B:				; CODE XREF: ROM:1005↑j
		ld	e, a
		ld	h, 40h ; '@'
		push	iy
		ld	iy, 142Dh
		ld	l, 0
		ld	a, 0A4h
		add	a, e
		ld	b, a
		ld	c, (iy+1)

loc_101D:				; CODE XREF: ROM:1020↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_101D+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		ld	l, 0
		ld	a, 0A0h
		add	a, e
		ld	b, a
		ld	c, (iy+0)

loc_1030:				; CODE XREF: ROM:1033↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_1030+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		pop	iy

loc_103C:				; CODE XREF: ROM:0FF7↑j
		ld	de, 7
		add	iy, de
		jr	loc_FD6
; ---------------------------------------------------------------------------

loc_1043:				; CODE XREF: ROM:0FDE↑j
		ld	iy, 17BCh

loc_1047:				; CODE XREF: ROM:1098↓j
		call	loc_2B7
		ld	a, (iy+0)
		cp	0FFh
		jr	z, loc_109A
		and	7
		ld	b, a
		ld	c, (iy+2)
		ld	e, (iy+3)
		ld	a, 1
		ld	ix, 0F76h
		ld	d, 0
		add	ix, de
		bit	0, (ix+40h)
		jr	z, loc_1093
		call	sub_10A8
		call	loc_2B7
		rrc	b
		rrc	b
		rrc	b
		ld	a, e
		and	0Fh
		or	80h
		or	b
		ld	(7F11h), a
		srl	d
		rr	e
		srl	d
		rr	e
		srl	d
		rr	e
		srl	d
		rr	e
		ld	a, e
		ld	(7F11h), a

loc_1093:				; CODE XREF: ROM:1068↑j
		ld	de, 7
		add	iy, de
		jr	loc_1047
; ---------------------------------------------------------------------------

loc_109A:				; CODE XREF: ROM:104F↑j
		ld	hl, 0FB6h
		ld	a, 10h

loc_109F:				; CODE XREF: ROM:10A3↓j
		ld	(hl), 0
		inc	hl
		dec	a
		jr	nz, loc_109F
		ret
; ---------------------------------------------------------------------------
word_10A6:	dw 0			; DATA XREF: sub_10A8+14↓w
					; sub_10A8+27↓w ...

; =============== S U B R O U T I N E =======================================


sub_10A8:				; CODE XREF: ROM:0FF9↑p
					; ROM:106A↑p ...
		push	bc
		push	hl
		call	loc_2B7
		ld	b, a
		ld	a, (ix+0)
		add	a, (ix+20h)
		ld	e, a
		ld	a, (ix+10h)
		adc	a, (ix+30h)
		ld	d, a
		ld	(word_10A6), de
		call	loc_2B7
		ld	a, c
		add	a, d
		cp	60h ; '`'
		jr	c, loc_10DB
		bit	7, d
		jr	z, loc_10D4
		ld	a, 0
		ld	(word_10A6), a
		jr	loc_10DB
; ---------------------------------------------------------------------------

loc_10D4:				; CODE XREF: sub_10A8+23↑j
		ld	a, 0FFh
		ld	(word_10A6), a
		ld	a, 5Fh ; '_'

loc_10DB:				; CODE XREF: sub_10A8+1F↑j
					; sub_10A8+2A↑j
		call	loc_2B7
		bit	0, b
		jr	nz, loc_1102
		ld	c, 0
		cp	30h ; '0'
		jr	c, loc_10EC
		sub	30h ; '0'
		set	2, c

loc_10EC:				; CODE XREF: sub_10A8+3E↑j
		cp	18h
		jr	c, loc_10F4
		sub	18h
		set	1, c

loc_10F4:				; CODE XREF: sub_10A8+46↑j
		cp	0Ch
		jr	c, loc_10FC
		sub	0Ch
		set	0, c

loc_10FC:				; CODE XREF: sub_10A8+4E↑j
		ld	ix, 1168h
		jr	loc_110F
; ---------------------------------------------------------------------------

loc_1102:				; CODE XREF: sub_10A8+38↑j
		sub	21h ; '!'
		jr	nc, loc_110B
		ld	a, 0
		ld	(word_10A6), a

loc_110B:				; CODE XREF: sub_10A8+5C↑j
		ld	ix, 1182h

loc_110F:				; CODE XREF: sub_10A8+58↑j
		rlca
		ld	e, a
		ld	d, 0
		add	ix, de
		call	loc_2B7
		ld	a, (ix+2)
		sub	(ix+0)
		ld	e, a
		ld	a, (ix+3)
		sbc	a, (ix+1)
		ld	d, a
		ld	a, (word_10A6)
		call	sub_1159
		call	loc_2B7
		ld	l, 0
		bit	7, h
		jr	z, loc_1137
		ld	l, 0FFh

loc_1137:				; CODE XREF: sub_10A8+8B↑j
		ld	a, (ix+0)
		add	a, h
		ld	e, a
		ld	a, (ix+1)
		adc	a, l
		ld	d, a
		bit	0, b
		jr	nz, loc_114B
		ld	a, c
		rlca
		rlca
		rlca
		or	d
		ld	d, a

loc_114B:				; CODE XREF: sub_10A8+9B↑j
		pop	hl
		pop	bc
		call	loc_2B7
		ret
; End of function sub_10A8


; =============== S U B R O U T I N E =======================================


sub_1151:				; CODE XREF: ROM:09DA↑p
					; ROM:0B52↑p ...
		ld	hl, 1886h
		ld	de, 27h ; '''
		jr	loc_115C
; End of function sub_1151


; =============== S U B R O U T I N E =======================================


sub_1159:				; CODE XREF: sub_E1B+3↑p
					; sub_10A8+81↑p ...
		ld	hl, 0

loc_115C:				; CODE XREF: sub_1151+6↑j
					; sub_1159+D↓j
		srl	a
		jr	nc, loc_1161
		add	hl, de

loc_1161:				; CODE XREF: sub_1159+5↑j
		ret	z
		sla	e
		rl	d
		jr	loc_115C
; End of function sub_1159

; ---------------------------------------------------------------------------
		dw	284h
		dw	2AAh
		dw	2D3h
		dw	2FEh
		dw	32Bh
		dw	35Bh
		dw	38Eh
		dw	3C5h
		dw	3FEh
		dw	43Bh
		dw	47Bh
		dw	4BFh
		dw	508h
		dw	3F9h
		dw	3C0h
		dw	38Ah
		dw	357h
		dw	327h
		dw	2FAh
		dw	2CFh
		dw	2A7h
		dw	281h
		dw	25Dh
		dw	23Bh
		dw	21Bh
		dw	1FCh
		dw	1E0h
		dw	1C5h
		dw	1ACh
		dw	194h
		dw	17Dh
		dw	168h
		dw	153h
		dw	140h
		dw	12Eh
		dw	11Dh
		dw	10Dh
		dw	0FEh
		dw	0F0h
		dw	0E2h
		dw	0D6h
		dw	0CAh
		dw	0BEh
		dw	0B4h
		dw	0AAh
		dw	0A0h
		dw	97h
		dw	8Fh
		dw	87h
		dw	7Fh
		dw	78h
		dw	71h
		dw	6Bh
		dw	65h
		dw	5Fh
		dw	5Ah
		dw	55h
		dw	50h
		dw	4Ch
		dw	47h
		dw	43h
		dw	40h
		dw	3Ch
		dw	39h
		dw	35h
		dw	32h
		dw	2Fh
		dw	2Dh
		dw	2Ah
		dw	28h
		dw	26h
		dw	23h
		dw	21h
		dw	20h
		dw	1Eh
		dw	1Ch
		dw	1Ch
unk_1202:	db	0		; DATA XREF: ROM:1217↓w
					; ROM:12B2↓r ...
		db	0
byte_1204:	db 0			; DATA XREF: ROM:1264↓r
					; ROM:1289↓r ...
byte_1205:	db 0			; DATA XREF: ROM:loc_1214↓w
					; ROM:1600↓r
; ---------------------------------------------------------------------------

loc_1206:				; CODE XREF: sub_4B4+A1↑p
					; ROM:09E4↑p
		call	loc_2B7
		ld	a, (byte_15CF)
		add	a, (ix+1Eh)
		jp	p, loc_1214
		ld	a, 7Fh

loc_1214:				; CODE XREF: ROM:120F↑j
		ld	(byte_1205), a
		ld	(unk_1202), bc
		call	locret_302
		call	sub_41
		ld	hl, (word_456)
		ld	a, (hl)
		cp	0
		jp	z, loc_142F
		cp	1
		jp	z, loc_12F7
		cp	2
		jp	z, loc_1243
		cp	3
		jp	z, loc_123A
		ret
; ---------------------------------------------------------------------------

loc_123A:				; CODE XREF: ROM:1236↑j
		ld	iy, 17D2h
		call	sub_1841
		jr	loc_124A
; ---------------------------------------------------------------------------

loc_1243:				; CODE XREF: ROM:1231↑j
		ld	iy, 17BCh
		call	sub_17DE

loc_124A:				; CODE XREF: ROM:1241↑j
		cp	0FFh
		ret	z
		call	sub_1659
		ld	a, 1
		ld	e, b
		ld	ix, 0F76h
		ld	d, 0
		add	ix, de
		call	sub_10A8
		ld	ix, (word_456)
		inc	ix
		ld	a, (byte_1204)
		ld	c, a
		ld	b, 0
		ld	iy, 9
		add	iy, bc
		ld	a, e
		and	0Fh
		ld	(iy+1Ch), a
		srl	d
		rr	e
		srl	d
		rr	e
		srl	d
		rr	e
		srl	d
		rr	e
		ld	(iy+20h), e
		ld	a, (byte_1204)
		cp	3
		jr	nz, loc_12C4
		ld	hl, 17CAh
		res	5, (hl)
		ld	a, (ix+0)
		and	3
		cp	3
		jr	nz, loc_12BE
		ld	hl, 7F11h
		ld	a, (iy+1Ch)
		or	0C0h
		ld	(hl), a
		ld	a, (iy+20h)
		ld	(hl), a
		ld	hl, 17CAh
		ld	(hl), 0A2h
		inc	hl
		inc	hl
		ld	bc, (unk_1202)
		ld	(hl), c
		inc	hl
		ld	(hl), b
		ld	hl, 0Bh
		ld	(hl), 4

loc_12BE:				; CODE XREF: ROM:129C↑j
		ld	a, (ix+0)
		ld	(iy+1Ch), a

loc_12C4:				; CODE XREF: ROM:128E↑j
		ld	a, (ix+1)
		ld	(iy+8), a
		ld	a, (ix+2)
		sla	a
		sla	a
		sla	a
		sla	a
		ld	(iy+10h), a
		ld	a, (ix+3)
		sla	a
		sla	a
		sla	a
		sla	a
		ld	(iy+24h), a
		ld	a, (ix+4)
		ld	(iy+0Ch), a
		ld	a, (ix+5)
		ld	(iy+14h), a
		set	0, (iy+0)
		ret
; ---------------------------------------------------------------------------

loc_12F7:				; CODE XREF: ROM:122C↑j
		ld	iy, 17ADh
		call	sub_1841
		cp	0FFh
		ret	z
		bit	7, a
		jr	nz, loc_1324
		ld	a, 0C9h
		ld	(loc_2B7), a
		ld	a, (hl)
		bit	5, a
		jr	nz, loc_1324
		and	7
		ld	iy, 4000h
		ld	a, a

loc_1316:				; CODE XREF: ROM:131A↓j
		bit	7, (iy+0)
		jr	nz, loc_1316
		ld	(iy+0), 28h ; '('
		ld	(iy+1), a
		ld	a, (hl)

loc_1324:				; CODE XREF: ROM:1303↑j
					; ROM:130D↑j
		call	sub_1659
		ld	hl, 17ADh
		set	5, (hl)
		ld	a, c
		sub	30h ; '0'
		jr	nc, loc_1333
		add	a, 60h ; '`'

loc_1333:				; CODE XREF: ROM:132F↑j
		ld	c, a
		ld	b, 0
		ld	hl, (word_AAE)
		ld	a, (byte_AB0)
		sla	c
		rl	b
		sla	c
		rl	b
		add	hl, bc
		adc	a, 0
		sla	c
		rl	b
		add	hl, bc
		adc	a, 0
		ld	c, 0Ch
		ld	de, 1421h
		call	sub_1F9
		ld	bc, (unk_1427)
		ld	a, b
		or	c
		jr	nz, loc_1364
		ld	hl, 17ADh
		ld	(hl), 0C6h
		ret
; ---------------------------------------------------------------------------

loc_1364:				; CODE XREF: ROM:135C↑j
		ld	hl, (word_456)
		inc	hl
		ld	a, (hl)
		cp	4
		jr	z, loc_1377
		ld	b, a
		ld	a, (byte_1421)
		and	0F0h
		or	b
		ld	(byte_1421), a

loc_1377:				; CODE XREF: ROM:136B↑j
		exx
		ld	e, 0
		ld	(hl), 24h ; '$'
		inc	hl
		ld	a, (byte_1421)
		and	0Fh
		neg
		sra	a
		sra	a
		ld	(hl), a
		dec	hl
		ld	(hl), 25h ; '%'
		inc	hl
		ld	a, (byte_1421)
		and	0Fh
		neg
		and	3
		ld	(hl), a
		dec	hl
		ld	(hl), 2Bh ; '+'
		inc	hl
		ld	(hl), 80h
		dec	hl
		ld	(hl), 27h ; '''
		inc	hl
		ld	(hl), b
		dec	hl
		exx
		ld	iy, 4002h
		ld	a, 0C0h

loc_13AA:				; CODE XREF: ROM:13AE↓j
		bit	7, (iy+0)
		jr	nz, loc_13AA
		ld	(iy+0), 0B6h
		ld	(iy+1), a
		ld	bc, (word_AAE)
		ld	a, (byte_AB0)
		ld	d, a
		ld	hl, (unk_1422)
		ld	a, (byte_1424)
		add	hl, bc
		adc	a, d
		ld	bc, (unk_1425)
		add	hl, bc
		adc	a, 0
		ld	(byte_2FC), hl
		ld	(byte_2FE), a
		ld	hl, (unk_1427)
		ld	(word_2FF), hl
		ld	a, 0
		ld	(locret_302), a
		ld	(byte_2FB), a
		ld	a, (byte_1421)
		bit	4, a
		ld	a, 4
		jr	z, loc_13EC
		inc	a

loc_13EC:				; CODE XREF: ROM:13E9↑j
		ld	(byte_301), a
		call	sub_310
		ld	a, 0D9h
		ld	(loc_2B7), a
		ld	a, 8
		ld	(loc_2B7+1), a
		ld	a, (byte_1421)
		and	0Fh
		cp	0Ah
		ld	a, 0
		jr	nc, loc_1409
		ld	a, 0C9h

loc_1409:				; CODE XREF: ROM:1405↑j
		ld	(locret_2CF), a
		ld	a, (byte_1421)
		bit	7, a
		ld	hl, 0
		jr	z, loc_141D
		ld	hl, (word_2B5)
		exx
		ld	c, 0AAh
		exx

loc_141D:				; CODE XREF: ROM:1414↑j
		ld	(loc_2C4), hl
		ret
; ---------------------------------------------------------------------------
byte_1421:	db	0		; DATA XREF: ROM:136E↑r
					; ROM:1374↑w ...
unk_1422:	db	0		; DATA XREF: ROM:13BF↑r
		db	0
byte_1424:	db	0		; DATA XREF: ROM:13C2↑r
unk_1425:	db	0		; DATA XREF: ROM:13C7↑r
		db	0
unk_1427:	db	0		; DATA XREF: ROM:1356↑r
					; ROM:13D4↑r
		db	0
unk_1429:	db	0		; DATA XREF: sub_310+7A↑r
		db	0
		db	0
		db	0
word_142D:	dw	0		; DATA XREF: ROM:0FFC↑w
					; ROM:147C↓w
; ---------------------------------------------------------------------------

loc_142F:				; CODE XREF: ROM:1227↑j
		inc	hl
		inc	hl
		ld	d, (hl)
		bit	6, d
		jr	z, loc_143F
		ld	iy, 17B4h
		call	sub_1841
		jr	loc_1446
; ---------------------------------------------------------------------------

loc_143F:				; CODE XREF: ROM:1434↑j
		ld	iy, 1791h
		call	sub_17DE

loc_1446:				; CODE XREF: ROM:143D↑j
		call	loc_2B7
		cp	0FFh
		ret	z
		bit	7, a
		jr	nz, loc_1465
		and	7
		ld	iy, 4000h
		ld	a, a

loc_1457:				; CODE XREF: ROM:145B↓j
		bit	7, (iy+0)
		jr	nz, loc_1457
		ld	(iy+0), 28h ; '('
		ld	(iy+1), a
		ld	a, (hl)

loc_1465:				; CODE XREF: ROM:144E↑j
		push	de
		call	sub_1659
		pop	de
		bit	6, d
		jr	nz, loc_1483
		ld	a, 0
		ld	e, b
		ld	ix, 0F76h
		ld	d, 0
		add	ix, de
		call	sub_10A8
		ld	(word_142D), de
		call	loc_2B7

loc_1483:				; CODE XREF: ROM:146C↑j
		ld	ix, (word_456)
		inc	ix
		ld	a, (byte_1204)
		ld	c, a
		ld	iy, 4000h
		cp	2
		jr	nz, loc_14B3
		ld	a, (ix+1)
		or	15h
		exx
		ld	b, a
		exx
		ld	a, (ix+1)
		or	5
		ld	h, a
		ld	l, 27h ; '''

loc_14A5:				; CODE XREF: ROM:14A9↓j
		bit	7, (iy+0)
		jr	nz, loc_14A5
		ld	a, l
		ld	(4000h), a
		ld	a, h
		ld	(4001h), a

loc_14B3:				; CODE XREF: ROM:1493↑j
		ld	d, 0
		ld	a, c
		cp	3
		jr	c, loc_14BE
		sub	4
		ld	d, 2

loc_14BE:				; CODE XREF: ROM:14B8↑j
		ld	e, a
		ld	h, (ix+0)
		bit	3, h
		jr	z, loc_14D6
		ld	l, 22h ; '"'

loc_14C8:				; CODE XREF: ROM:14CC↓j
		bit	7, (iy+0)
		jr	nz, loc_14C8
		ld	a, l
		ld	(4000h), a
		ld	a, h
		ld	(4001h), a

loc_14D6:				; CODE XREF: ROM:14C4↑j
		push	bc
		ld	hl, 15C6h
		ld	b, 0
		ld	a, (ix+2)
		and	7
		ld	c, a
		add	hl, bc
		ld	a, (hl)
		ld	(byte_15CE), a
		ld	h, 40h ; '@'
		ld	bc, 161Ch
		call	loc_15D0
		bit	6, (ix+1)
		jr	nz, loc_1522
		ld	iy, 142Dh
		ld	l, 0
		ld	a, 0A4h
		add	a, e
		ld	b, a
		ld	c, (iy+1)

loc_1502:				; CODE XREF: ROM:1505↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_1502+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		ld	l, 0
		ld	a, 0A0h
		add	a, e
		ld	b, a
		ld	c, (iy+0)

loc_1515:				; CODE XREF: ROM:1518↓j
		ld	a, 80h
		and	(hl)
		jp	m, loc_1515+1
		ld	l, d
		ld	(hl), b
		inc	l
		ld	(hl), c
		jp	loc_15A6
; ---------------------------------------------------------------------------

loc_1522:				; CODE XREF: ROM:14F3↑j
		ld	iy, 4000h
		ld	a, (ix+1Ch)

loc_1529:				; CODE XREF: ROM:152D↓j
		bit	7, (iy+0)
		jr	nz, loc_1529
		ld	(iy+0), 0A6h
		ld	(iy+1), a
		ld	a, (ix+1Dh)

loc_1539:				; CODE XREF: ROM:153D↓j
		bit	7, (iy+0)
		jr	nz, loc_1539
		ld	(iy+0), 0A2h
		ld	(iy+1), a
		ld	a, (ix+1Eh)

loc_1549:				; CODE XREF: ROM:154D↓j
		bit	7, (iy+0)
		jr	nz, loc_1549
		ld	(iy+0), 0ACh
		ld	(iy+1), a
		ld	a, (ix+1Fh)

loc_1559:				; CODE XREF: ROM:155D↓j
		bit	7, (iy+0)
		jr	nz, loc_1559
		ld	(iy+0), 0A8h
		ld	(iy+1), a
		ld	a, (ix+20h)

loc_1569:				; CODE XREF: ROM:156D↓j
		bit	7, (iy+0)
		jr	nz, loc_1569
		ld	(iy+0), 0ADh
		ld	(iy+1), a
		ld	a, (ix+21h)

loc_1579:				; CODE XREF: ROM:157D↓j
		bit	7, (iy+0)
		jr	nz, loc_1579
		ld	(iy+0), 0A9h
		ld	(iy+1), a
		ld	a, (ix+22h)

loc_1589:				; CODE XREF: ROM:158D↓j
		bit	7, (iy+0)
		jr	nz, loc_1589
		ld	(iy+0), 0AEh
		ld	(iy+1), a
		ld	a, (ix+23h)

loc_1599:				; CODE XREF: ROM:159D↓j
		bit	7, (iy+0)
		jr	nz, loc_1599
		ld	(iy+0), 0AAh
		ld	(iy+1), a

loc_15A6:				; CODE XREF: ROM:151F↑j
		ld	a, (ix+24h)
		sla	a
		sla	a
		sla	a
		sla	a
		pop	bc
		or	c
		ld	iy, 4000h
		ld	a, a

loc_15B8:				; CODE XREF: ROM:15BC↓j
		bit	7, (iy+0)
		jr	nz, loc_15B8
		ld	(iy+0), 28h ; '('
		ld	(iy+1), a
		ret
; ---------------------------------------------------------------------------
		db	8
		db	8
		db	8
		db	8
		db	0Ah
		db	0Eh
		db	0Eh
		db	0Fh
byte_15CE:	db	0		; DATA XREF: ROM:14E4↑w
byte_15CF:	db	0		; DATA XREF: sub_4B4+31B↑w
					; ROM:0BB7↑w ...
; ---------------------------------------------------------------------------

loc_15D0:				; CODE XREF: ROM:14EC↑p
					; ROM:1619↓j
		ld	a, (bc)
		or	a
		ret	z
		inc	bc
		ld	l, 0

loc_15D6:				; CODE XREF: ROM:15D8↓j
		bit	7, (hl)
		jr	nz, loc_15D6
		ld	l, d
		add	a, e
		ld	(hl), a
		inc	l
		ld	a, (bc)
		or	a
		jp	z, loc_1617
		jp	p, loc_1611
		and	7Fh
		push	hl
		ld	hl, 15CEh
		rr	(hl)
		jp	nc, loc_1610
		push	de
		ld	(loc_15F7+2), a
		ld	a, 7Fh

loc_15F7:				; DATA XREF: ROM:15F2↑w
		sub	(ix+0)
		push	af
		sla	a
		ld	e, a
		ld	d, 0
		ld	a, (byte_1205)
		call	sub_1159
		pop	af
		sub	h
		ld	h, a
		ld	a, 7Fh
		sub	h
		pop	de
		pop	hl
		jr	loc_1617
; ---------------------------------------------------------------------------

loc_1610:				; CODE XREF: ROM:15EE↑j
		pop	hl

loc_1611:				; CODE XREF: ROM:15E3↑j
		ld	(loc_1614+2), a

loc_1614:				; DATA XREF: ROM:loc_1611↑w
		ld	a, (ix+0)

loc_1617:				; CODE XREF: ROM:15E0↑j
					; ROM:160E↑j
		ld	(hl), a
		inc	bc
		jp	loc_15D0
; ---------------------------------------------------------------------------
		db	0B0h
		db	2
		db	0B4h
		db	3
		db	30h
		db	4
		db	40h
		db	85h
		db	50h
		db	6
		db	60h
		db	7
		db	70h
		db	8
		db	80h
		db	9
		db	90h
		db	0
		db	38h
		db	10h
		db	48h
		db	91h
		db	58h
		db	12h
		db	68h
		db	13h
		db	78h
		db	14h
		db	88h
		db	15h
		db	98h
		db	0
		db	34h
		db	0Ah
		db	44h
		db	8Bh
		db	54h
		db	0Ch
		db	64h
		db	0Dh
		db	74h
		db	0Eh
		db	84h
		db	0Fh
		db	94h
		db	0
		db	3Ch
		db	16h
		db	4Ch
		db	97h
		db	5Ch
		db	18h
		db	6Ch
		db	19h
		db	7Ch
		db	1Ah
		db	8Ch
		db	1Bh
		db	9Ch
		db	0
		db	0

; =============== S U B R O U T I N E =======================================


sub_1659:				; CODE XREF: ROM:124D↑p
					; ROM:loc_1324↑p ...
		and	7
		ld	(byte_1204), a
		ld	(hl), a
		ld	e, (ix+0Bh)
		ld	d, (ix+0Ch)
		ld	a, d
		or	e
		jr	z, loc_166B
		set	4, (hl)

loc_166B:				; CODE XREF: sub_1659+E↑j
		bit	3, (ix+6)
		jr	z, loc_1673
		set	3, (hl)

loc_1673:				; CODE XREF: sub_1659+16↑j
		inc	hl
		ld	a, (ix+1Ch)
		ld	(hl), a
		ld	bc, (unk_1202)
		inc	hl
		ld	(hl), c
		inc	hl
		ld	(hl), b
		inc	hl
		ld	(hl), e
		inc	hl
		ld	(hl), d
		inc	hl
		ld	(hl), 0FEh
		call	loc_2B7
		bit	6, (ix+6)
		ret	z
		push	bc
		ld	c, (ix+1Dh)
		ld	e, b
		call	sub_E2D
		call	loc_2B7
		pop	bc
		ret
; End of function sub_1659

; ---------------------------------------------------------------------------
byte_169C:	db	0		; DATA XREF: sub_169E↓w
					; sub_169E:loc_16CF↓r ...
		db	0

; =============== S U B R O U T I N E =======================================


sub_169E:				; CODE XREF: ROM:09F2↑p
		ld	(byte_169C), bc
		ld	ix, 1791h
		call	loc_2B7
		call	sub_1858
		cp	0FFh
		jr	z, loc_16CF
		and	27h ; '''
		cp	26h ; '&'
		jr	z, loc_16CB
		and	7
		ld	iy, 4000h
		ld	a, a

loc_16BD:				; CODE XREF: sub_169E+23↓j
		bit	7, (iy+0)
		jr	nz, loc_16BD
		ld	(iy+0), 28h ; '('
		ld	(iy+1), a
		ret
; ---------------------------------------------------------------------------

loc_16CB:				; CODE XREF: sub_169E+16↑j
		call	sub_1712
		ret
; ---------------------------------------------------------------------------

loc_16CF:				; CODE XREF: sub_169E+10↑j
		ld	bc, (byte_169C)
		ld	ix, 17BCh
		call	loc_2B7
		call	sub_1858
		cp	0FFh
		jr	z, loc_16F1
		and	3
		ld	ix, 9
		ld	c, a
		ld	b, 0
		add	ix, bc
		set	1, (ix+0)
		ret
; ---------------------------------------------------------------------------

loc_16F1:				; CODE XREF: sub_169E+41↑j
		ld	bc, (byte_169C)
		ld	ix, 17D2h
		call	loc_2B7
		call	sub_1858
		cp	0FFh
		ret	z
		and	3
		ld	ix, 9
		ld	c, a
		ld	b, 0
		add	ix, bc
		set	1, (ix+0)
		ret
; End of function sub_169E


; =============== S U B R O U T I N E =======================================


sub_1712:				; CODE XREF: sub_828:loc_8A0↑p
					; sub_169E:loc_16CB↑p
		ld	a, (byte_1421)
		bit	5, a
		jr	nz, loc_1720
		bit	4, a
		ret	z
		ld	a, 6
		jr	loc_1722
; ---------------------------------------------------------------------------

loc_1720:				; CODE XREF: sub_1712+5↑j
		ld	a, 7

loc_1722:				; CODE XREF: sub_1712+C↑j
		ld	(byte_301), a
		ret
; End of function sub_1712

; ---------------------------------------------------------------------------
word_1726:	dw	0		; DATA XREF: sub_E2D+51↑r
					; sub_1737+18↓r

; =============== S U B R O U T I N E =======================================


sub_1728:				; CODE XREF: ROM:loc_9F8↑p
		call	sub_8A5
		call	sub_1151
		ld	(word_456), hl
		call	sub_1D1
		ld	(ix+0Dh), a
; End of function sub_1728


; =============== S U B R O U T I N E =======================================


sub_1737:				; CODE XREF: sub_4B4+166↑p
					; sub_1766+14↓p
		ld	d, 0
		ld	e, (ix+0Dh)
		sla	e
		ld	hl, (word_AA5)
		ld	a, (byte_AA7)
		add	hl, de
		adc	a, 0
		ld	c, 2
		ld	de, 1726h
		call	sub_1F9
		ld	de, (word_1726)
		ld	hl, (word_AA5)
		ld	a, (byte_AA7)
		add	hl, de
		adc	a, 0
		ld	c, 27h ; '''
		ld	de, (word_456)
		call	sub_1F9
		ret
; End of function sub_1737


; =============== S U B R O U T I N E =======================================


sub_1766:				; CODE XREF: ROM:0A01↑p
		ld	b, a
		ld	c, 10h
		ld	ix, 1B80h
		ld	hl, 1886h
		ld	(word_456), hl

loc_1773:				; CODE XREF: sub_1766+28↓j
		ld	a, b
		cp	(ix+0Dh)
		jr	nz, loc_177E
		push	bc
		call	sub_1737
		pop	bc

loc_177E:				; CODE XREF: sub_1766+11↑j
		ld	de, 20h ; ' '
		add	ix, de
		ld	de, 27h ; '''
		ld	hl, (word_456)
		add	hl, de
		ld	(word_456), hl
		dec	c
		jr	nz, loc_1773
		ret
; End of function sub_1766

; ---------------------------------------------------------------------------
		db	80h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	81h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	84h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	85h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	86h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	82h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	0FFh
		db	80h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	81h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	82h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	0FFh
		db	83h
		db	0
		db	50h 
		db	0
		db	0
		db	0
		db	0
		db	0FFh
word_17DA:	dw	0		; DATA XREF: sub_17DE+27↓w
					; sub_17DE:loc_183C↓r ...
word_17DC:	dw	0		; DATA XREF: sub_17DE+43↓w
					; sub_17DE+4E↓r

; =============== S U B R O U T I N E =======================================


sub_17DE:				; CODE XREF: ROM:1247↑p
					; ROM:1443↑p
		ld	c, 0FFh
		ld	l, 0FFh
		ld	de, 7
		ld	h, (ix+6)
		jr	loc_17EC
; ---------------------------------------------------------------------------

loc_17EA:				; CODE XREF: sub_17DE+1A↓j
					; sub_17DE+24↓j ...
		add	iy, de

loc_17EC:				; CODE XREF: sub_17DE+A↑j
		call	loc_2B7
		ld	a, (iy+0)
		cp	0FFh
		jr	z, loc_1827
		bit	5, a
		jr	nz, loc_17EA
		bit	7, a
		jr	nz, loc_180B
		ld	a, (iy+1)
		cp	c
		jr	nc, loc_17EA
		ld	c, a
		ld	(word_17DA), iy
		jr	loc_17EA
; ---------------------------------------------------------------------------

loc_180B:				; CODE XREF: sub_17DE+1E↑j
		ld	a, (iy+3)
		cp	b
		jr	nz, loc_181A
		bit	7, h
		jr	nz, loc_181A
		push	iy
		pop	hl
		ld	a, (hl)
		ret
; ---------------------------------------------------------------------------

loc_181A:				; CODE XREF: sub_17DE+31↑j
					; sub_17DE+35↑j
		ld	a, (iy+6)
		cp	l
		jr	nc, loc_17EA
		ld	l, a
		ld	(word_17DC), iy
		jr	loc_17EA
; ---------------------------------------------------------------------------

loc_1827:				; CODE XREF: sub_17DE+16↑j
		ld	a, l
		cp	0FFh
		jr	z, loc_1831
		ld	hl, (word_17DC)
		ld	a, (hl)
		ret
; ---------------------------------------------------------------------------

loc_1831:				; CODE XREF: sub_17DE+4C↑j
		ld	a, c

loc_1832:				; CODE XREF: sub_1841+15↓j
		cp	(ix+1Ch)
		jr	z, loc_183C
		jr	c, loc_183C
		ld	a, 0FFh
		ret
; ---------------------------------------------------------------------------

loc_183C:				; CODE XREF: sub_17DE+57↑j
					; sub_17DE+59↑j
		ld	hl, (word_17DA)
		ld	a, (hl)
		ret
; End of function sub_17DE


; =============== S U B R O U T I N E =======================================


sub_1841:				; CODE XREF: ROM:123E↑p
					; ROM:12FB↑p ...
		call	loc_2B7
		ld	a, (iy+0)
		bit	7, a
		jr	z, loc_184F
		push	iy
		pop	hl
		ret
; ---------------------------------------------------------------------------

loc_184F:				; CODE XREF: sub_1841+8↑j
		ld	a, (iy+1)
		ld	(word_17DA), iy
		jr	loc_1832
; End of function sub_1841


; =============== S U B R O U T I N E =======================================


sub_1858:				; CODE XREF: sub_169E+B↑p
					; sub_169E+3C↑p ...
		ld	de, 7
		jr	loc_185F
; ---------------------------------------------------------------------------

loc_185D:				; CODE XREF: sub_1858+10↓j
					; sub_1858+16↓j ...
		add	ix, de

loc_185F:				; CODE XREF: sub_1858+3↑j
		ld	a, (ix+0)
		ld	h, a
		cp	0FFh
		ret	z
		bit	7, a
		jr	nz, loc_185D
		ld	a, (ix+2)
		cp	c
		jr	nz, loc_185D
		ld	a, (ix+3)
		cp	b
		jr	nz, loc_185D
		ld	a, h
		and	27h ; '''
		cp	26h ; '&'
		jr	z, loc_1884
		and	27h ; '''
		or	0C0h
		ld	(ix+0), a

loc_1884:				; CODE XREF: sub_1858+23↑j
		ld	a, h
		ret
; End of function sub_1858
