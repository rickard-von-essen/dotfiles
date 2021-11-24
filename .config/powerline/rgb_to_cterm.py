#!/usr/bin/env python3
import sys

N = []
for i, n in enumerate([47, 68, 40, 40, 40, 21]):
    N.extend([i]*n)

def rgb_to_xterm(r, g, b):
    mx = max(r, g, b)    
    mn = min(r, g, b)

    if (mx-mn)*(mx+mn) <= 6250:
        c = 24 - (252 - ((r+g+b) // 3)) // 10
        if 0 <= c <= 23:
            return 232 + c

    return 16 + 36*N[r] + 6*N[g] + N[b]

rgb = (int(sys.argv[1][0:2], 16), int(sys.argv[1][2:4], 16), int(sys.argv[1][4:6], 16))
print(f"[{rgb_to_xterm(*rgb)}, \"{sys.argv[1]}\"]")
