
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h                 ; starts

mov ax, 0b800h 
mov ds,ax             ;Move the contents of Ds into segment register ax
mov di, (160*12) + (40*2)       ; set for row and column to display
mov bx[di], 44h      ; hex for letter CAP D
mov bx[di+1], 14h         ; attribute color blue 
mov bx[di+2], 45h        ; hex for letter CAP E
mov bx[di+3], 23h          ; attribute color green
mov bx[di+4], 53h             ; hex for CAP S
mov bx[di+5], 8753h       ; hex for letter CAP S
mov bx[di+6], 6153h           ;     attribute color yellow


int 20h                           ; exit program

ret                                ; return




