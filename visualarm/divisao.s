Divisao	stmfd	r13!,{r4-r7}
		mov		r4,#20
		mov		r6,#1
		mov		r5,#0 ;ans
while	subs		r2,r0,r1,LSL r4
		addge	r5,r5,r6,LSL r4
		subge	r0,r0,r1,LSL r4
		subs		r4,r4,#1
		bge		while
		mov		r0,r5
		ldmfd	r13!,{r4-r7}
		mov		pc,lr
		
		
		
		
		
