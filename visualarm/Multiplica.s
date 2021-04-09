Multiplica	stmfd	r13!,{lr,r4-r5}
			mov		r4,#1
			cmp		r0,#0
			mov		r5,#0
			sublt	r0,r5,r0
			sublt	r4,r5,r4
			cmp		r1,#0
			sublt	r1,r5,r1
			sublt	r4,r5,r4
			bl		Multrec
fimMult		cmp		r4,#0
			sublt	r0,r5,r0
			ldmfd	r13!,{lr,r4-r5}
			mov		pc,lr
			
Multrec		stmfd	r13!,{lr,r4}
			cmp		r1,#0
			moveq	r0,#0
			ldmfdeq	r13!,{lr,r4}
			moveq	pc,lr
			sub		r1,r1,#1
			mov		r4,r0
			bl		Multrec
			add		r0,r0,r4
			ldmfdeq	r13!,{lr,r4}
			mov		pc,lr
			
