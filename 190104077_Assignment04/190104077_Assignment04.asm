TITLE   8086 Code Template (for EXE file)

;       AUTHOR          emu8086
;       DATE            ?
;       VERSION         1.00
;       FILE            ?.ASM

; 8086 Code Template

; Directive to make EXE output:
       #MAKE_EXE#

DSEG    SEGMENT 'DATA'
    
   Count DB 0
    

DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'

;*******************************************

START   PROC    FAR

; Store return address to OS:
    PUSH    DS
    MOV     AX, 0
    PUSH    AX

; set segment registers:
	MOV     AX, DSEG
    MOV     DS, AX
    MOV     ES, AX 
    

PRINT:
    MOV DX, 2001H
    MOV AL, 00000001b
	OUT DX, AL
	MOV DX, 2030H  
	MOV AL, 00000001b  
	OUT DX, AL
	
	MOV CX, 0010H
    L1:LOOP L1
    
    
    MOV DX, 2002H	
	MOV AL, 00000001b
	OUT DX, AL  
	MOV DX, 2030H  
	MOV AL, 00100001b  
	OUT DX, AL
	
	MOV CX, 0010H
    L2:LOOP L2 
	   
	  
    MOV DX, 2003H
    MOV AL, 00000001b
    OUT DX, AL
    MOV DX, 2030H  
	MOV AL, 01100001b  
	OUT DX, AL 
    
    MOV CX, 0010H
    L3:LOOP L3 
               
    MOV DX, 2004H
    MOV AL, 00000001b
    OUT DX, AL 
    MOV DX, 2030H  
	MOV AL, 01100101b  
	OUT DX, AL
    
    MOV CX, 0010H
    L4:LOOP L4            
               
    
    MOV DX, 2005H
    MOV AL, 00000001b
    OUT DX, AL  
    MOV DX, 2030H  
	MOV AL, 01101101b ;S 
	OUT DX, AL
    MOV DX, 2070H 
    MOV AL, 01H  
    OUT DX, AL    ;LED 
    MOV CX, 0060H
    L5:LOOP L5 
    
    MOV DX, 2006H
    MOV AL, 00000001b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00010000b  
	OUT DX, AL
    
    MOV CX, 0010H
    L6:LOOP L6 
    
    
    MOV DX, 2007H
    MOV AL, 00000001b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110000b  
	OUT DX, AL
    MOV CX, 00FH
    L8:LOOP L8   
    
    MOV DX, 2008H
    MOV AL, 00000010b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110001b  
	OUT DX, AL
    MOV CX, 0010H
    L7:LOOP L7  
   
    MOV DX, 2009H
    MOV AL, 00000100b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110011b  
	OUT DX, AL
    MOV CX, 0010H
    L9:LOOP L9   
   
    MOV DX, 2009H
    MOV AL, 00001100b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 01110011b  
	OUT DX, AL
    MOV CX, 0010H
    L10:LOOP L10  
   
    MOV DX, 2009H
    MOV AL, 00011100b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 01110111b     ;SR
	OUT DX, AL 
	MOV DX, 2070H ;LED
    MOV AL, 03H  
    OUT DX, AL  
    MOV CX, 0060H 
    L11:LOOP L11   
   
    MOV DX, 2009H
    MOV AL, 00111100b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 00000001b   
	OUT DX, AL
    MOV CX, 0010H
    L12:LOOP L12  
    
    MOV DX, 2009H
    MOV AL, 01111100b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 00100001b   
	OUT DX, AL
    MOV CX, 0010H
    L13:LOOP L13  
    
    MOV DX, 2008H
    MOV AL, 01000010b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 01100001b   
	OUT DX, AL
    MOV CX, 0010H
    L14:LOOP L14  
    
    MOV DX, 2008H
    MOV AL, 01000010b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 01100101b  
	OUT DX, AL
    MOV CX, 0010H
    L15:LOOP L15   
   
    MOV DX, 2007H
    MOV AL, 01000001b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 01101101b  ;SRS 
	OUT DX, AL
	
	MOV DX, 2070H ;LED
    MOV AL, 03H  
    OUT DX, AL  
    MOV CX, 0060H   
    L16:LOOP L16
   
    MOV DX, 2006H
    MOV AL, 01000001b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00000001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L17:LOOP L17  

    MOV DX, 2005H
    MOV AL, 01000001b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00100001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L18:LOOP L18  

    MOV DX, 2004H
    MOV AL, 01000001b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00110001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L19:LOOP L19 

    MOV DX, 2003H
    MOV AL, 01000001b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00111001b  ;SRSC 
	OUT DX, AL 
	MOV DX, 2070H ;LED
    MOV AL, 03H  
    OUT DX, AL  
    MOV CX, 0060H  	
    L20:LOOP L20  
    



    MOV DX, 2002H
    MOV AL, 01000001b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00010000b     
	OUT DX, AL
    
    MOV CX, 0010H
    L21:LOOP L21 
    
    MOV DX, 2001H
    MOV AL, 01000001b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00110000b   
	OUT DX, AL
    
    MOV CX, 0010H
    L22:LOOP L22

    MOV DX, 2000H
    MOV AL, 01000000b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00110001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L23:LOOP L23 

    MOV DX, 2000H
    MOV AL, 01100000b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00110011b    
	OUT DX, AL
    
    MOV CX, 0010H
    L24:LOOP L24 

    MOV DX, 2000H
    MOV AL, 01110000b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 01110011b    
	OUT DX, AL
    
    MOV CX, 0010H
    L26:LOOP L26 

    MOV DX, 2000H
    MOV AL, 01111000b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 01110111b ;SRSCR    
	OUT DX, AL 
	MOV DX, 2070H ;LED
    MOV AL, 03H  
    OUT DX, AL  
    
    MOV CX, 0060H
    L25:LOOP L25  
    
    MOV DX, 2000H
    MOV AL, 01111100b
    OUT DX, AL
    MOV CX, 0010H
    L28:LOOP L28
    MOV DX, 2000H
    MOV AL, 01111110b
    OUT DX, AL 
    MOV CX, 0060H
    L27:LOOP L27  
    
    
    
    
    MOV DX, 2001H
    MOV AL, 01000000b
	OUT DX, AL
	MOV DX, 2030H  
	MOV AL,01100101b 
	OUT DX, AL
	
	MOV CX, 0010H
    L01:LOOP L01
    
    
    MOV DX, 2002H	
	MOV AL, 01000000b
	OUT DX, AL  
	MOV DX, 2030H  
	MOV AL, 01100001b 
	OUT DX, AL
	
	MOV CX, 0010H
    L02:LOOP L02 
	   
	  
    MOV DX, 2003H
    MOV AL, 01000000b
    OUT DX, AL
    MOV DX, 2030H  
	MOV AL, 00100001b  
	OUT DX, AL 
    
    MOV CX, 00FH
    L03:LOOP L03 
               
    MOV DX, 2004H
    MOV AL, 01000000b
    OUT DX, AL 
    MOV DX, 2030H  
	MOV AL, 00000001b  
	OUT DX, AL
    
    MOV CX, 00FH
    L04:LOOP L04            
               
    
    MOV DX, 2005H
    MOV AL, 01000000b
    OUT DX, AL  
    MOV DX, 2030H  
	MOV AL, 00000000b ;S Removed
	OUT DX, AL
    MOV DX, 2070H 
    MOV AL, 03H  
    OUT DX, AL    ;LED 
    MOV CX, 0040H
    L05:LOOP L05 
    
    MOV DX, 2006H
    MOV AL, 01000000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 01110011b  
	OUT DX, AL
    
    MOV CX, 00FH
    L06:LOOP L06 
    
    
    MOV DX, 2007H
    MOV AL, 01000000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110011b  
	OUT DX, AL
    MOV CX, 00FH
    L08:LOOP L08   
    
    MOV DX, 2008H
    MOV AL, 01000000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110001b  
	OUT DX, AL
    MOV CX, 0010H
    L07:LOOP L07  
   
    MOV DX, 2009H
    MOV AL, 01111000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110000b    
	OUT DX, AL
    MOV CX, 0010H
    L09:LOOP L09   
   
    MOV DX, 2009H
    MOV AL, 01110000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00010000b  
	OUT DX, AL
    MOV CX, 0010H
    L010:LOOP L010  
   
    MOV DX, 2009H
    MOV AL, 01100000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00000000b     ;SR Removed
	OUT DX, AL 
	MOV DX, 2070H ;LED
    MOV AL, 03H  
    OUT DX, AL  
    MOV CX, 0040H 
    L011:LOOP L011  
    
    
    MOV DX, 2009H
    MOV AL, 01000000b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 01100101b   
	OUT DX, AL
    MOV CX, 0010H
    L012:LOOP L012  
    
    MOV DX, 2009H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 01100001b   
	OUT DX, AL
    MOV CX, 0010H
    L013:LOOP L013  
    
    MOV DX, 2008H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 00100001b   
	OUT DX, AL

    MOV CX, 0010H
    L014:LOOP L014  
    
    MOV DX, 2008H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 00000001b  
	OUT DX, AL
    MOV CX, 0010H
    L015:LOOP L015   
   
    MOV DX, 2007H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2032H  
	MOV AL, 00000000b  ;SRS  Removed
	OUT DX, AL
	
	MOV DX, 2070H ;LED
    MOV AL, 02H  
    OUT DX, AL  
    MOV CX, 0040H   
    L016:LOOP L016 
    

   
    MOV DX, 2006H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00110001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L017:LOOP L017  

    MOV DX, 2005H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00100001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L018:LOOP L018  

    MOV DX, 2004H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00000001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L019:LOOP L019 

    MOV DX, 2003H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2033H  
	MOV AL, 00000000b  ;SRSC REMOVED 
	OUT DX, AL 
	MOV DX, 2070H ;LED
    MOV AL, 02H  
    OUT DX, AL  
    MOV CX, 0040H  	
    L020:LOOP L020                              

            
   
    MOV DX, 2002H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 01110011b     
	OUT DX, AL
    
    MOV CX, 0010H
    L021:LOOP L021 
    
    MOV DX, 2001H
    MOV AL, 00000000b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00110011b   
	OUT DX, AL
    
    MOV CX, 0010H
    L022:LOOP L022

    MOV DX, 2000H
    MOV AL, 00111110b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00110001b   
	OUT DX, AL
    
    MOV CX, 0010H
    L023:LOOP L023 

    MOV DX, 2000H
    MOV AL, 00011110b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00110000b    
	OUT DX, AL
    
    MOV CX, 0010H
    L024:LOOP L024 

    MOV DX, 2000H
    MOV AL, 00001110b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00010000b    
	OUT DX, AL
    
    MOV CX, 0010H
    L026:LOOP L026 

    MOV DX, 2000H
    MOV AL, 00000110b
    OUT DX, AL  
    MOV DX, 2034H  
	MOV AL, 00000000b ;SRSCR  Removed  
	OUT DX, AL 
	MOV DX, 2070H ;LED
    MOV AL, 00H  
    OUT DX, AL  
    
    MOV CX, 0040H
    L025:LOOP L025  
    
    MOV DX, 2000H
    MOV AL, 00000010b
    OUT DX, AL
    MOV CX, 0015H
    L028:LOOP L028
    MOV DX, 2000H
    MOV AL, 00000000b
    OUT DX, AL 
    MOV CX, 0080H
    L027:LOOP L027   
   
    INC COUNT
    CMP COUNT,5
    JL PRINT 



; return to operating system:
    RET
    
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point