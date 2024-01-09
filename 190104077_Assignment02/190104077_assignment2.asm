DSEG    SEGMENT 'DATA'

DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'


START   PROC    FAR

; Store return address to OS:
 	PUSH    DS
 	MOV     AX, 0
 	PUSH    AX

; set segment registers:
	MOV     AX, DSEG
 	MOV     DS, AX
 	MOV     ES, AX

   ;Y(ON)-G(ON)-Y+G(OFF)-R1+R2(ON) 
	MOV DX, 2070h




   
PART1 :

	    MOV AL, 02H 
	    OUT DX, AL
	    
	    MOV CX,0090H
        L0:LOOP L0
        
PART2 :
	    MOV AL, 06H   
	    OUT DX, AL
	    
	    MOV CX,0090H
        L1:LOOP L1
        
PART3 :
	    MOV AL, 00H   
	    OUT DX, AL
	    
	    MOV CX,0090H
        L2:LOOP L2
        
PART4 :
	    MOV AL, 09H       
	    OUT DX, AL
	    
	    MOV CX,0050H
        L3:LOOP L3
	
	
	

; return to operating system:
	RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.

