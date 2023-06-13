# Triangular Cone Volume Calculator (MASM 80x86 Assembly)
This assembly language program is written for the MASM 80x86 architecture. It calculates the volume of a triangular cone using floating-point registers.

## Overview
The program uses the formula V = π * r² * h / 3, where:

`V` is the volume of the cone,
`r` is the radius of the base of the cone,
`h` is the height of the cone,
`π` is a mathematical constant (approximately 3.14159).
The program has pre-set values for the radius and height, and the result of the calculation is the volume of the cone.

How the Program Works
The program starts by pushing π (`fldpi`) and the radius (`fld radius`) onto the floating-point stack. The `fmul` instruction multiplies these values. This process is repeated to square the radius (r²), and then the height (`fld height`) is added to the stack and multiplied to give `π * r² * h`.

The value 3 is loaded from the memory and the previous result is divided by 3, using `fdiv DWORD PTR [three]`. This final division gives the volume of the cone, according to the formula.
