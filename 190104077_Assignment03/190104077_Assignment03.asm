
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
 	
;5S1C9 | Y(ON)-G(ON)-Y+G(OFF)-R1+R2(ON) 
STEP1:
        MOV DX, 2030h	   ; first seven segment display
	    MOV AL,01101101b   ; show 5
	    OUT DX, AL 
         
    	
    	MOV DX, 2070h
    	 
    		
    	MOV AL, 02H        ;Y(ON)
	    OUT DX, AL
	    
	    MOV CX,0090H
        L0:LOOP L0
        
STEP2:  	     
    	
    	MOV DX, 2031h	   ; second seven segment display
	     
        MOV AL,01101101b   ; show S
	    OUT DX, AL
	     
        
        MOV DX, 2070h
         
        
    	MOV AL, 06H         ; Y(ON)-G(ON)
	    OUT DX, AL
	    
	    MOV CX,0090H
        L1:LOOP L1
    	
    	
STEP3:    	   
        MOV DX, 2032h	   ; third seven segment display
	     
        MOV AL,00000110b   ; show 1
	    OUT DX, AL
	    
        
        MOV DX, 2070h
         
           
        MOV AL, 00H         ; Y(ON)-G(ON)-Y+G(OFF)
	    OUT DX, AL
	    
	    MOV CX,0090H
        L2:LOOP L2 
	    
STEP4:	      
	    
	    MOV DX, 2033h	   ; forth seven segment display 
	     
        MOV AL,00111001b   ; show C
	    OUT DX, AL
	     
        
        MOV DX, 2070h
        
        
    	MOV AL, 09H        ; Y(ON)-G(ON)-Y+G(OFF)-R1+R2(ON) 
	    OUT DX, AL
	    
	    MOV CX,0090H
        L3:LOOP L3
	    
	    
STEP5:        
	    MOV DX, 2034h	   ; fifth seven segment display
	     
        MOV AL,01101111b ; show 9
	    OUT DX, AL
	    
	    MOV CX,0050H
        L4:LOOP L4
; return to operating system:

	RET
	
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point