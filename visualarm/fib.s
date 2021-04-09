		mov		r3,#1
		mov		r1,#1
		mov		r5,#1
		cmp		r0,#2
		ble		fim
fib		add		r1,r2,r3
		mov		r2,r3
		mov		r3,r1
		add		r5,r5,#1
		cmp		r5,r0
		blt		fib
fim

