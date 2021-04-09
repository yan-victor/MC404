EncontraRetangulo	stmfd	r13!,{r4-r10}
				mov		r10,lr
				mov		r8,r0
				mov		r9,r1
				ldr		r0,[r8]
				ldr		r1,[r8,#4]!
				mov		r4,r0
				mov		r6,r0
				mov		r5,r1
				mov		r7,r1
				subs		r9,r9,#1
				beq		fimEncontra
Loop				ldr		r2,[r8,#4]!
				ldr		r3,[r8,#4]!
				mov		r0,r4
				mov		r1,r5
				bl		AjustaBordaInfEsq
				mov		r4,r0
				mov		r5,r1
				mov		r0,r6
				mov		r1,r7
				bl		AjustaBordaSupDir
				mov		r6,r0
				mov		r7,r1
				subs		r9,r9,#1
				bgt		Loop
				
fimEncontra		add		r4,r4,#-1
				add		r5,r5,#-1
				add		r6,r6,#1
				add		r7,r7,#1
				mov		r0,r4
				mov		r1,r5
				mov		r2,r6
				mov		r3,r7
				mov		lr,r10
				ldmfd	r13!,{r4-r10}
				mov		pc,lr
				
AjustaBordaInfEsq	cmp		r0,r2
				movgt	r0,r2
				cmp		r1,r3
				movgt	r1,r3
				mov		pc,lr
				
AjustaBordaSupDir	cmp		r0,r2
				movlt	r0,r2
				cmp		r1,r3
				movlt	r1,r3
				mov		pc,lr
				
