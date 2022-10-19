
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 				                    ;this directive required for a simple 1 segment .com program.
                                
mov ax,0b800h 				                ;set AX to hexadecimal value of B800h.

mov ds, ax 				                    ;copy value of AX to DS.

mov di, 0

mov cx, 80        ; number of repetition

mov di, (160*12) + (4*2)		            ;set the screen to the center

print: 					                    ;Variable
 
    push cx
    mov cx,0ffffh
    
        delay: 				                ;Variable
        
            
            push cx
            mov cx,0ffh
            des:
                 add di, 2                  ;spacing
                 mov bx[di], 44h             ;hex for letter D
                 mov bx[di+2], 45h           ; hex for letter E
                 mov bx[di+4], 53h            ; hex for letter S
                 mov bx[di+6], 49h           ; hex for letter I
                 mov bx[di++8], 52h           ; hex for letter R
                 mov bx[di+10], 45h           ; hex for letter E
                 mov bx[di+12], 45h           ; hex for letter E 
                 mov bx[di+14], ' '           ; NO LETTER, ACT LIKE A SPACE
                 mov bx[di+16], 41h           ; hex for letter A
                 mov bx[di+18], 50h           ; hex for letter P 
                 mov bx[di+20], 49h           ; hex for letter I
                 mov bx[di+22], 4Ch           ; hex for letter L
                 mov bx[di+24], 4Ch           ; hex for letter L
                 mov bx[di+26], 41h           ; hex for letter A
                 mov bx[di+28], 4Eh           ; hex for letter N
                 mov bx[di+30], 45h           ; hex for letter E
                 mov bx[di+32], 53h           ; hex for letter S 
                              
         
                 mov bx[di],' '      ;let letter D disappear
                 mov bx[di+2], ' '    ;let E disappear
                 mov bx[di+4], ' '    ;let S disappear
                 mov bx[di+6], ' '    ;make the letter I disappear 
                 mov bx[di++8], ' '    ;let R disappear
                 mov bx[di+10], ' '    ;let E disappear
                 mov bx[di+12], ' '    ;let E disappear 
                 mov bx[di+14], ' '    ;disappear 
                 mov bx[di+16], ' '    ;let A disappear 
                 mov bx[di+18], ' '    ;let P disappear  
                 mov bx[di+20], ' '    ;let I disappear 
                 mov bx[di+22], ' '    ;let L disappear 
                 mov bx[di+24], ' '    ;let L disappear 
                 mov bx[di+26], ' '    ;let A disappear 
                 mov bx[di+28], ' '    ;let N disappear 
                 mov bx[di+30], ' '    ;let E disappear  
                 mov bx[di+32], ' '    ;let S disappear                      
                              
        
                      push cx
                      mov cx,0ffffh
                      pop cx
        loop des 				            ; loop the varialbe des to repeat the process
        pop cx 
        
    loop delay
    pop cx

loop print


int 20h

ret						                    ;return function