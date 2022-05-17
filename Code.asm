asect  0x00
ldi r2, 246
ld r2, r2
if
	ldi r3, 1
	sub r2, r3
	tst r3
is z
	ldi r2, 244
	ld r2, r2
	ldi r1, 243
	ld r1, r1
	ldi r3, 247
	ld r3, r3
	sub r3, r1
	shra r1
	add r1, r2
	if 
	is cs
		ldi r3, 255
		sub r3, r2
	fi
	move r2, r0
fi
if
	ldi r3, 2
	sub r2, r3
	tst r3
is z
	ldi r2, 244
	ld r2, r2
	ldi r1, 243
	ld r1, r1
	ldi r3, 247
	ld r3, r3
	sub r3, r1
	add r1, r2
	if 
	is cs
		ldi r3, 255
		sub r3, r2
	fi
	move r2, r0
fi
if
	ldi r3, 3
	sub r2, r3
	tst r3
is z
	ldi r2, 244
	ld r2, r2
	ldi r1, 243
	ld r1, r1
	ldi r3, 247
	ld r3, r3
	sub r3, r1
	move r1, r3
	shra r1
	add r3, r1
	if 
	is cs
		add r1, r2
		ldi r3, 255
		sub r3, r2
	else 
		add r1, r2
		if 
		is cs
			ldi r3, 255
			sub r3, r2
		fi
	fi
	move r2, r0
fi
if
	ldi r3, 1
	add r2, r3
	tst r3
is z
	ldi r2, 244
	ld r2, r2
	ldi r1, 243
	ld r1, r1
	ldi r3, 247
	ld r3, r3
	sub r3, r1
	shra r1
	sub r2, r1
	if
		tst r1
	is mi
		neg r1
	fi
	move r1, r0
fi
if
	ldi r3, 2
	add r2, r3
	tst r3
is z
	ldi r2, 244
	ld r2, r2
	ldi r1, 243
	ld r1, r1
	ldi r3, 247
	ld r3, r3
	sub r3, r1
	sub r2, r1
	if
		tst r1
	is mi
		neg r1
	fi
	move r1, r0
fi
if
	ldi r3, 3
	add r2, r3
	tst r3
is z
	ldi r2, 244
	ld r2, r2
	ldi r1, 243
	ld r1, r1
	ldi r3, 247
	ld r3, r3
	sub r3, r1
	move r1, r3
	shra r1
	sub r2, r1
	sub r1, r3
	if
		tst r3
	is mi
		neg r3
	fi
	move r3, r0
fi
br 0x00
end


