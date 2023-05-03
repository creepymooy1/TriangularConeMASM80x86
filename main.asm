; general comments

; preprocessor directives
.586
.MODEL FLAT

; stack configuration
.STACK 4096

.DATA
    height REAL8 10.0 ; height of the cone
    radius REAL8 5.0 ; radius of the base of the cone
    three DWORD 3    ; constant for dividing by 3 on point stack
.CODE
main PROC
    ; calculate volume
    fldpi ; push pi onto the floating-point stack
    fld radius ; push r onto the stack
    fmul ; multiply pi by r and push the result onto the stack
    fld radius ; push r onto the stack
    fmul ; multiply the previous result by r and push the result onto the stack
    fld height ; push h onto the stack
    fmul ; multiply the previous result by h and push the result onto the stack
    fdiv DWORD PTR [three]
    ; The final result, the volume of the cone, is now in ST(0).

    ret
main ENDP

END main
