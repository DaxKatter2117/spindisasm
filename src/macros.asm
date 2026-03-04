; ---------------------------------------------------------------------------
; Align and pad
; input: length to align to, value to use as padding (default is 0)
; ---------------------------------------------------------------------------

align:	macro
	if (narg=1)
	dcb.b \1-(*%\1),0
	else
	dcb.b \1-(*%\1),\2
	endc
	endm
  
pad_to_nearest_mbit: macro
	dcb.b ($200000-($100000-*))-(*), $FF
	endm

BEW2LEW	macro val
	dc.w (val&$00FF)<<8|(val&$FF00)>>8
	endm
