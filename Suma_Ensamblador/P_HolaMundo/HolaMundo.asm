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

	val1       dword  1000000h
	val2       dword  2000000h
	val3       dword  3000000h
	valFinal   dword  ?

	letrero1 BYTE "Valor con el que inicializo Ax",CR,LF,FSR
	letrero2 BYTE "Valor a sumar a Ax",CR,LF,FSR
	letrero3 BYTE "Valor a restar a Ax",CR,LF,FSR
	letrero4 BYTE "El resultado final es: ",CR,LF,FSR


;[===========================================================================================================]
;[                         �rea de C�digo                                                                    ]
;[                                                                                                           ]
;[ En esta secci�n deber�s incluir el c�digo de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		 
		mov	edx,OFFSET letrero1	; apunta al letrero1 a desplegar
		call 	WriteString		; despliega letrero en pantalla
		call    ReadHex         ; lee el entero
		mov val1,eax

		mov edx,OFFSET letrero2 ; apunta al letrero2 a desplegar
		call    WriteString     ; despliega el letrero en pantalla
		call    ReadHex			; lee el entero
		mov val2,eax

		mov edx,OFFSET letrero3 ; apunta al letro3 a desplegar
		call    WriteString		;despliega el letrero en pantalla
		call    ReadHex			; lee el entero
		mov val3,eax

		mov eax,val1			; empieza con el primer valor capturado
		add eax,val2			; suma el segundo valor
		sub eax,val3			; resta el tercer valor
		mov valFinal,eax	    ; guarda el resultado final
		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa