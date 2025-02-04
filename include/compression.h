#pragma once

// THUMB!!
#define	SystemCall(Number)	 __asm ("SWI	  "#Number"\n" :::  "r0", "r1", "r2", "r3")

void LZ77UnCompVram(const void *src, void *dst);