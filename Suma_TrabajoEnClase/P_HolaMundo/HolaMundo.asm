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

	;val1       dword  1000000h
	;val2       dword  2000000h
	;val3       dword  3000000h
	;valFinal   dword  ?

	;letrero1 BYTE "Valor con el que inicializo Ax",CR,LF,FSR
	;letrero2 BYTE "Valor a sumar a Ax",CR,LF,FSR
	;letrero3 BYTE "Valor a restar a Ax",CR,LF,FSR
	;letrero4 BYTE "El resultado final es: ",CR,LF,FSR


;[===========================================================================================================]
;[                         �rea de C�digo                                                                    ]
;[                                                                                                           ]
;[ En esta secci�n deber�s incluir el c�digo de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		
		mov eax,10000
		add eax,40000
		sub eax,30000
		call DumpRegs
		call ReadInt

		
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa