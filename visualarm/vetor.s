		mov		r1,#2
		mov		r0,#1000
		mov		r10,#10
		str		r10,[r0]
		mov		r10,#11
		str		r10,[r0,#4]
		mov		r5,#0
		mov		r6,r1
		ldr		r2,[r0,#0]
		add		r5,r5,#1
for		cmp		r5,r6
		bge		fim
		ldr		r3,[r0,#4]!
		cmp		r3,r2
		movlt	r2,r3
		add		r5,r5,#1
		bal		for
fim
