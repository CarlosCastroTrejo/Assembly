TITLE PLANTILLA MASM32	(PLANTILLA.asm)

;[===========================================================================================================]
;[                         Librer�as para 32 bis                                                             ]
;[===========================================================================================================]
	
	INCLUDE C:\Irvine\Irvine32.inc

;[===========================================================================================================]
;[                         �rea de Constantes                                                                ]
;[                                                                                                           ]
;[ En esta secci�n deber�s declarar tus valores constantes                                                   ]
;[===========================================================================================================]

	CR			EQU		0Dh			; retorno del cursos a la primera columna
	LF			EQU		0Ah			; nueva l�nea
	FSR			EQU		00h			; marcador de fin de string

;[===========================================================================================================]
;[                         �rea de Datos                                                                     ]
;[                                                                                                           ]
;[ En esta secci�n deber�s declarar tus bariables                                                            ]
;[===========================================================================================================]

	.DATA

	a       word  0
	b       word  0
	coc     word  0
	res     word  0

	letrero1 BYTE "Valor de Dividendo: ", CR,LF,FSR
	letrero2 BYTE "Valor de Divisor: ", CR,LF,FSR


;[===========================================================================================================]
;[                         �rea de C�digo                                                                    ]
;[                                                                                                           ]
;[ En esta secci�n deber�s incluir el c�digo de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		
		xor  eax,eax;			; Limpia registros
		xor  ebx,ebx;
		xor  ecx,ecx;
		xor  edx,edx;


		mov edx, OFFSET letrero1  ; Apunta al letrero a desplegar
		call WriteString		 ; Despliega el letrero en pantalla
		call ReadInt			 ; Lee entero
		mov a,ax;

		mov edx, OFFSET letrero2  ; Apunta al letrero a desplegar
		call WriteString		 ; Despliega el letrero en pantalla
		call ReadInt			 ; Lee entero
		mov b,ax;

		mov ax,a;
		mov bx,b;
		div bx;
		mov coc,ax;
		mov res,dx;

		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa